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

#define DT 		4		// 5ms * 1000
#define O_MAX	40
#define O_MIN	-40
#define I_MAX	1000
#define I_MIN	-1000
#define DC_MAX	150
#define DC_MIN	60
#define KP		33
#define KI		0
#define KD		20

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

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
