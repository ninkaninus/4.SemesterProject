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
#define INDEX_PAN		1730;//1700
#define INDEX_TILT		1190;//1970
#define PAN_DIRECTION_OFFSET 0
#define	THETA_1			90
#define	THETA_2			90
#define THETA_3			270
#define	THETA_4			270
#define TILT_MIN		160
#define TILT_MAX		200


/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

extern xSemaphoreHandle coordinate_access_sem;

/*****************************   Functions   *******************************/

void convert_and_secure(void)
{
	INT32U pan = 	get_msg_state(SSM_SP_DEG_PAN);
	INT32U tilt =	get_msg_state(SSM_SP_DEG_TILT);


	while (pan >= 3600)
	{
		pan = pan-3600;
	}
	while (tilt >= 3600)
	{
		tilt = tilt-3600;
	}

	if (0)//(tilt > TILT_MIN && tilt < TILT_MAX) || (pan > THETA_1 && pan < THETA_2) || (pan > THETA_3 && pan < THETA_4) || pan > 360 || tilt > 360)
	{
		tilt = INDEX;
		pan = INDEX;

	}
	else
	{
		//Pan transformation
		if (pan >= 2700)
		{
			pan = pan-2700;
		}
		else
		{
			pan = pan+900;
		}
		// Tilt transformation
		if (tilt >= 1800)
		{
			tilt = tilt-1800;
		}
		else
		{
			tilt = tilt+1800;
		}
		// Flip hvis pan er større end 180 grader
		if (pan > 1800)
		{
			pan = pan-1800;

			tilt = 3600 - tilt;

		}


		INT8U pan_modulus = pan % 10;
		INT8U tilt_modulus = tilt % 10;
		pan = pan / 10 * 3;
		tilt = tilt / 10 * 3;
		switch (pan_modulus)
		{
			case 9:
				pan++;
			case 8:
			case 7:
			case 6:
			case 5:
				pan++;
			case 4:
			case 3:
			case 2:
				pan++;
				break;

			default:
				break;
		}
		switch (tilt_modulus)
		{
			case 9:
				tilt++;
			case 8:
			case 7:
			case 6:
			case 5:
				tilt++;
			case 4:
			case 3:
			case 2:
				tilt++;
				break;

			default:
				break;
		}

		pan =  pan + INDEX_PAN + PAN_DIRECTION_OFFSET;
		tilt = tilt + INDEX_TILT;

	}

	pan = pan + get_msg_state(SSM_OFFSET_PAN);
	tilt = tilt + get_msg_state(SSM_OFFSET_TILT);
//	pan = 2000;
//	tilt = 2000;
	put_msg_state(SSM_SP_PAN,pan);
	put_msg_state(SSM_SP_TILT,tilt);
}

/****************************** End Of Module *******************************/
