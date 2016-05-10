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

#define INDEX_PAN		1
#define INDEX_TILT		1
#define PAN_DIRECTION_OFFSET 0
#define	THETA_1			160
#define THETA_3			340
#define TILT_MIN		250
#define TILT_MAX		290


/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

extern xSemaphoreHandle coordinate_access_sem;

/*****************************   Functions   *******************************/

void convert_and_secure_pan(void)
{

	if(xSemaphoreTake(coordinate_access_sem, 100))
	{
		INT32U pan = get_msg_state(SSM_SP_PAN);
		INT32U tilt =get_msg_state(SSM_SP_TILT);

		if (tilt > TILT_MIN && tilt < TILT_MAX)
		{
			tilt = INDEX_TILT;
			pan = INDEX_PAN;
			xSemaphoreGive(coordinate_access_sem);
			return;
		}

		if(pan > 180)
		{
			if(pan > THETA_3)
			{
				tilt = INDEX_TILT;
				pan = INDEX_PAN;
				xSemaphoreGive(coordinate_access_sem);
				return;
			}

			pan = pan-180;
			if(tilt < 90)
			{
				tilt = tilt - 2*(tilt-90);
			}
			else if(tilt > 90)
			{
				tilt = tilt + 2*(90-tilt);
			}

		}
		else if(pan > THETA_1)
		{
			tilt = INDEX_TILT;
			pan = INDEX_PAN;
			xSemaphoreGive(coordinate_access_sem);
			return;
		}
		xSemaphoreGive(coordinate_access_sem);
		tilt = 3 * tilt + INDEX_TILT;
		pan = 3 * pan + INDEX_PAN + PAN_DIRECTION_OFFSET;

	}
}

/****************************** End Of Module *******************************/
