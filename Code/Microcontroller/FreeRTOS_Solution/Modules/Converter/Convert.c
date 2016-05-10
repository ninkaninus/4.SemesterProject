/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: lcd.c
*
* PROJECT....: EMP
*
* DESCRIPTION: See module specification file (.h-file).
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 090222  MoH   Module created.
*
*****************************************************************************/

/***************************** Include files *******************************/
#include <stdint.h>
#include <tm4c123gh6pm.h>
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

#include "PID/pid.h"
#include "EMP/emp_type.h"
#include "Tasking/tmodel.h"
#include "Tasking/messages.h"

/*****************************    Defines    *******************************/

#define INDEX_PAN		1778
#define INDEX_TILT		1778
#define PAN_DIRECTION_OFFSET 0
#define	THETA_1			20
#define	THETA_2			160
#define THETA_3			200
#define	THETA_4			340
#define TILT_MIN		20
#define TILT_MAX		340


/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

extern xSemaphoreHandle coordinate_access_sem;

/*****************************   Functions   *******************************/

void convert_and_secure(void)
{

	//if(xSemaphoreTake(coordinate_access_sem, 100))
	//{
		INT32U pan = 	get_msg_state(SSM_SP_DEG_PAN);
		INT32U tilt =	get_msg_state(SSM_SP_DEG_TILT);

		if (pan >= 270)
		{
			pan = pan-270;
		}
		else
		{
			pan = pan+90;
		}

		if (tilt >= 270)
		{
			tilt = tilt-270;
		}
		else
		{
			tilt = tilt+90;
		}

		if (tilt < TILT_MIN || tilt > TILT_MAX)
		{
			tilt = INDEX_TILT;
			pan = INDEX_PAN;
			//xSemaphoreGive(coordinate_access_sem);
			return;
		}

		if(pan > 180)
		{
			if(pan < THETA_3 || pan < THETA_4)
			{
				tilt = INDEX_TILT;
				pan = INDEX_PAN;
				//xSemaphoreGive(coordinate_access_sem);
				return;
			}

			pan = pan-180;
			if(tilt < 180)
			{
				tilt = tilt - 2*(tilt-90);
			}
			else
			{
				tilt = tilt + 2*(90-tilt);
			}

		}
		else if(pan < THETA_1 || pan > THETA_2)
		{
			tilt = INDEX_TILT;
			pan = INDEX_PAN;
			//xSemaphoreGive(coordinate_access_sem);
			return;
		}
		tilt = 3 * tilt + INDEX_TILT;
		pan = 3 * pan + INDEX_PAN + PAN_DIRECTION_OFFSET;

		put_msg_state(SSM_SP_TILT,tilt);
		put_msg_state(SSM_SP_PAN,pan);

		//xSemaphoreGive(coordinate_access_sem);
	//}
}

/****************************** End Of Module *******************************/
