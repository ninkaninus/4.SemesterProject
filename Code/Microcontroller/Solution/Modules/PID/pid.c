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

#include "Modules/EMP/emp_type.h"
#include "Modules/LCD/lcd.h"
#include "Modules/Tasking/tmodel.h"
#include "Modules/Tasking/messages.h"

/*****************************    Defines    *******************************/

#define DT 		0.005
#define MAX		4
#define MIN		-4
#define KP		0.1
#define KI		0.01
#define KD		0.005

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

/*****************************   Functions   *******************************/

INT8U pid_task()
{
	// hent ny værdi fra feedback for PAN
	// udregn PWM værdi fra pid_calc() og send til SPI modul

	// hent ny værdi fra feedback for TILT
	// udregn PWM værdi fra pid_calc() og send til SPI modul
}

FP32 pid_calc(FP32 desired, FP32 actual)
{
	static FP32 prev_error = 0;
	static FP32 integral = 0;

	FP32 error;
	FP32 derivative;
	FP32 output;

	error = desired - actual;

	integral = integral + error*DT;
	derivative = (error - prev_error)/DT;
	output = KP*error + KI*integral + KD*derivative;

	if(output > MAX)
		output = MAX;
	if(output < MIN)
		output = MIN;

	prev_error = error;

	return output;
}

/****************************** End Of Module *******************************/