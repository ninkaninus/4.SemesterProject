/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: rtcs.c
*
* PROJECT....: EMP
*
* DESCRIPTION: See module specification file (.h-file).
*
* Change Log:
*****************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 150303  MoH   Module created.
*
*****************************************************************************/

/***************************** Include files *******************************/
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "glob_def.h"
#include "rtcs.h"
#include "systick.h"

/*****************************    Defines    *******************************/

// Task structure
typedef struct
{
	INT8U 	condition;		// Ready, waiting, disabled osv
	INT8U 	name;
	INT8U	priority;		// Primary or secondary
	INT8U 	state;			// States to be delivered to function
	INT8U 	event;			// Events to be delivered to function
	INT8U 	semaphores;		// Semaphores to be delivered to function
	INT16U 	timer;			// time in n x 5ms to next scheduled function call
	void (*tast_function)(INT8U, INT8U, INT8U, INT8U);	// Pointer to task function with (Tast ID, state, event, data)
} task_structure;

// Semaphore structure
typedef struct
{
	INT8U	condition;
	INT8U	type;
	INT8U	count;		// Antal gange semaphoren er sat i kø
}semaphore_structure;


// Queue structure - current
typedef struct
{
	INT8U	head;
	INT8U	tail;
	SEM		queue_not_full;
	SEM		queue_not_empty;
	INT8U	bufferfer[QUEUE_SIZE];
}queue_structure;

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/
extern volatile INT16S ticks;	// Systick ticks - 5ms

HANDLE current_task;			// Current task ID

task_structure		pool_of_tasks[MAX_TASKS];				// Pool of tasks
semaphore_structure	pool_of_semaphores[MAX_SEMAPHORES];		// Pool of semaphores
queue_structure		pool_of_queues[MAX_QUEUES];				// Pool of queues

								// Array of objects/structures, not values.

/*****************************   Functions   *******************************/


HANDLE retrieve_id(void)		// Return id number, then increment
/*****************************************************************************
*   Input    :
*   Output   :
*   Function :
******************************************************************************/
{
  static HANDLE next_id = 0;

  return( next_id++ );
}



extern void set_state( INT8U new_state )		// Set state of current task
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
  pool_of_tasks[current_task].state = new_state;
}


extern void wait( INT16U timeout )				// Set timeout countdown in number of 5ms
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
  pool_of_tasks[current_task].timer     = timeout;
  pool_of_tasks[current_task].condition = TASK_WAIT_FOR_TIMEOUT;
}


extern BOOLEAN wait_semaphore( INT8U semaphore, INT16U timeout )		// Retunerer true og sætter task condition til ready hvis der er en semaphor.
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
  BOOLEAN result = TRUE;

  if( pool_of_semaphores[semaphore].count )
  {
	pool_of_semaphores[semaphore].count--;
	pool_of_tasks[current_task].condition = TASK_READY;
	result = TRUE;
  }
  else
  {
	pool_of_tasks[current_task].semaphore       = semaphore;
	pool_of_tasks[current_task].condition = TASK_WAIT_FOR_SEMAPHORE;		// Hvis der ikker er en semaphor sættes task condition til wait for semephor
    if( timeout )
    {
    	pool_of_tasks[current_task].timer     = timeout;
    	pool_of_tasks[current_task].condition |= TASK_WAIT_FOR_TIMEOUT;		// Hvis der er en timer på sættes task condition til wait for timeout
    }
    result = FALSE;
  }
  return( result );
}


extern void signal( INT8U semaphore )									// Tilføj semaphor hvis der er plads
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
  if( semaphore < MAX_SEMAPHORES )
	pool_of_semaphores[semaphore].count++;
}


extern void preset_semaphore( INT8U semaphore, INT8U signals )				// Set semaphor count to a signaled value
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
  if( semaphore < MAX_SEMAPHORES )
    pool_of_semaphores[semaphore].count = signals;
}


INT8S open_queue( id )
INT8U id;
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
  INT8S result;

	if( id < MAX_QUEUES )
	{
	  pool_of_queues[id].head        = 0;
	  pool_of_queues[id].tail        = 0;
	  pool_of_queues[id].queue_not_full  = id;
	  pool_of_queues[id].queue_not_empty = MAX_QUEUES + id;
      preset_semamphore( pool_of_queues[id].queue_not_full, QUEUE_SIZE );
      result = id;
	}
	else
	{
	  result = -1;
	}

	return( result );
}


BOOLEAN put_queue( id, character, timeout )
INT8U  id;
INT8U  character;
INT16U timeout;
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
  BOOLEAN result = FALSE;

  if( id < MAX_QUEUES )
  {
	if( wait_semaphore( pool_of_queues[id].queue_not_full, timeout ))
    {
      pool_of_queues[id].buffer[pool_of_queues[id].head++] = ch;
      pool_of_queues[id].head &= 0x7F;				// &= 0b01111111
      signal( pool_of_queues[id].queue_not_empty );
      result = TRUE;
    }
  }
  return( result );
}


//eh?!frtfgrfgrftgrfftgfrdfrdftgr
BOOLEAN get_queue( id, pointer_character, timeout )
INT8U  id;
INT8U *pointer_character;
INT16U timeout;
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
  BOOLEAN result = FALSE;

  if( id < MAX_QUEUES )
  {
	if( wait_semaphore( pool_of_queues[id].queue_not_empty, timeout ))
    {
      *pointer_character = pool_of_queues[id].buffer[pool_of_queues[id].tail++];
      pool_of_queues[id].tail &= 0x7F;				// &= 0b01111111
      signal( pool_of_queues[id].queue_not_full );
      result = TRUE;
    }
  }
  return( result );
}




extern HANDLE start_task( INT8U name, void (*task_function)(INT8U, INT8U, INT8U, INT8U) )
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
  HANDLE this_id;

  this_id = retrieve_id();
  if( this_id != ERROR_TASK )
  {
	pool_of_tasks[this_id].id			= this_id;
	pool_of_tasks[this_id].condition	= TASK_READY;
	pool_of_tasks[this_id].name			= name;
	pool_of_tasks[this_id].state		= 0;
	pool_of_tasks[this_id].timer		= 0;
	pool_of_tasks[this_id].task_function        = task_function;
  }
  return( 0 );
}


extern INT8U init_rtcs()
{
  INT8U i;

  init_systick();
  for( i = 0; i < MAX_TASKS; i++ )
  {
	pool_of_tasks[i].condition = TASK_EMPTY;
  }
  start_task( SYS_TASK, i_am_alive );
  return( 1 );
}



void schedule()
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
	while(1)
	{
		while(ticks)
		{
			ticks--;
			schedule_time_update();
			schedule_primary_run_all();
			schedule_secondary_run_one();
		}

		while(systic < 4.5ms)
		{
			schedule_secondary_run_one();
		}
	}
}

void schedule_time_update()
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
	INT8U i;

	while(pool_of_tasks[i].condition !=TASK_EMPTY)
	{
		if(pool_of_tasks[i].timer != 0)
		{
			pool_of_tasks[i].timer--;

			if(pool_of_tasks[i].timer == 0 && pool_of_tasks[i].condition & TASK_WAIT_FOR_TIMEOUT)
			{
				pool_of_tasks[i].event     = EVENT_TIMEOUT;
				pool_of_tasks[i].condition = TASK_READY;
			}
		}
		i++;
	}
}

void schedule_primary_run_all()
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
	current_task = 0;
	while(pool_of_tasks[current_task].condition !=TASK_EMPTY)
	{
		if(pool_of_tasks[current_task].priority == PRIMARY)
		{
			if(pool_of_tasks[current_task].condition & TASK_WAIT_FOR_SEMAPHORE)
			{
				if(pool_of_semaphores[pool_of_tasks[current_task].semaphores].count)
				{
					pool_of_semaphores[pool_of_tasks[current_task].semaphores].count--;
					pool_of_tasks[current_task].event     = EVENT_SIGNAL;
					pool_of_tasks[current_task].condition = TASK_READY;
				}
			}
			if( pool_of_tasks[current_task].condition == TASK_READY )
			{
				pool_of_tasks[current_task].task_function(current_task, pool_of_tasks[current_task].state, pool_of_tasks[current_task].event, 0);
			}
		}
		current_task++;
	}
}

void schedule_secondary_run_one()
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{
	static INT8U i;
	INT8U first_task = i;
	current_task = i;
	BOOLEAN task_done = 0;

	while(!task_done)
	{
		if(pool_of_tasks[current_task].condition == TASK_EMPTY)
		{
			current_task = 0;
		}

		if(pool_of_tasks[current_task].priority == Secondary)
		{
			if(pool_of_tasks[current_task].condition & TASK_WAIT_FOR_SEMAPHORE)
			{
				if(pool_of_semaphores[pool_of_tasks[current_task].semaphores].count)
				{
					pool_of_semaphores[pool_of_tasks[current_task].semaphores].count--;
					pool_of_tasks[current_task].event     = EVENT_SIGNAL;
					pool_of_tasks[current_task].condition = TASK_READY;
				}
			}
			if( pool_of_tasks[current_task].condition == TASK_READY )
			{
				pool_of_tasks[current_task].task_function(current_task, pool_of_tasks[current_task].state, pool_of_tasks[current_task].event, 0);
				task_done++;
			}
		}
		current_task++;
	}
	i = current_task;
}


void scheduley()
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/
{

  while(1)
  {
    while( !ticks );
    ticks--;
    current_task = 0;
    do
    {
      if( pot[current_task].condition & TASK_WAIT_FOR_SEMAPHORE )  	// If pool of tasks [current_task] condition & 0b00000100 != 0
      {
    	if( pos[pot[current_task].sem].count )						// If pool of semaphores [pool of tasks [current_task] semephor nummer] count != 0
    	{
    	  if( !( pot[current_task].sem < (2 * MAX_QUEUES )))		// If not pool of tasks [current task] semaphor nummer < 2* max antal queues
		  {
			pos[pot[current_task].sem].count--;						// Pool of semaphoes [pool of tasks [current task] semaphor nummer] count -1
		  }
   	      pot[current_task].event     = EVENT_SIGNAL;				// Pool of tasks [current task] event = event signal
    	  pot[current_task].condition = TASK_READY;					// Pool of tasks [current task] condition = task ready
    	}
      }
      if( pot[current_task].condition & TASK_WAIT_FOR_TIMEOUT )		// If pool of tasks [current task] condition & 0b00000010 != 0
      {
    	if( pot[current_task].timer )								// If pool of tasks [current task] timer != 0
    	{
          pot[current_task].timer--;								// Pool of tasks [current task] timer -1
  	      if( pot[current_task].timer == 0 )						// If pool of tasks [current task] timer == 0
  	      {
    	    pot[current_task].event     = EVENT_TIMEOUT;			// Pool of tasks [current task] event = event timeout
    	    pot[current_task].condition = TASK_READY;				// Pool of tasks [current task] condition = task ready
  	      }
    	}
      }

      if( pot[current_task].condition == TASK_READY )				// If pool of tasks [current task] condition == task ready
        pot[current_task].tf(current_task, pot[current_task].state, pot[current_task].event, 0);		// Pool of tasks [current task] task function(parameters)
   	  current_task++;												// Current task +1
	} while ( pot[current_task].condition != TASK_EMPTY );			// Go to next task if it exists
  }
}
/****************************** End Of Module *******************************/












