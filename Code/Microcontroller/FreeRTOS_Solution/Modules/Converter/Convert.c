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

#define INDEX			2000
#define INDEX_PAN		1730
#define INDEX_TILT		1730
#define PAN_DIRECTION_OFFSET 0
#define	THETA_1			90
#define	THETA_2			90
#define THETA_3			270
#define	THETA_4			270
#define TILT_MIN		250
#define TILT_MAX		290


/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

extern xSemaphoreHandle coordinate_access_sem;

/*****************************   Functions   *******************************/

void convert_and_secure(void)
{
	INT32U pan = 	get_msg_state(SSM_SP_DEG_PAN);
	INT32U tilt =	get_msg_state(SSM_SP_DEG_TILT);

	while (pan >= 360)
	{
		pan = pan-360;
	}
	while (tilt >= 360)
	{
		tilt = tilt-360;
	}

	if (0)//(tilt > TILT_MIN && tilt < TILT_MAX) || (pan > THETA_1 && pan < THETA_2) || (pan > THETA_3 && pan < THETA_4) || pan > 360 || tilt > 360)
	{
		tilt = INDEX;
		pan = INDEX;

	}
	else
	{
		// Pan transformation
		if (pan >= 270)
		{
			pan = pan-270;
		}
		else
		{
			pan = pan+90;
		}
		// Tilt transformation
		if (tilt >= 270)
		{
			tilt = tilt-270;
		}
		else
		{
			tilt = tilt+90;
		}
		// Flip hvis pan er st�rre end 180 grader
		if (pan > 180)
		{
			pan = pan-180;

			if(tilt > 180)
			{
				tilt = tilt - 2*(tilt-180);
			}
			else
			{
				tilt = tilt + 2*(180-tilt);
			}
		}

		tilt = 3 * tilt + INDEX_TILT;
		pan = 3 * pan + INDEX_PAN + PAN_DIRECTION_OFFSET;

	}

	tilt = tilt + get_msg_state(SSM_OFFSET_TILT);
	pan = pan + get_msg_state(SSM_OFFSET_PAN);
	put_msg_state(SSM_SP_TILT,tilt);
	put_msg_state(SSM_SP_PAN,pan);
}

/****************************** End Of Module *******************************/
