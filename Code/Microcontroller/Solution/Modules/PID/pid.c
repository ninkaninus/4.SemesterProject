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

#define DT 		0.005
#define O_MAX		40
#define O_MIN		-40
#define I_MAX	10
#define I_MIN	-10
#define DC_MAX	255
#define DC_MIN	50
#define KP		0.1
#define KI		0.01
#define KD		0.005

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

PID pan_sys;
PID tilt_sys;

/*****************************   Functions   *******************************/

void init_pid()
{
	pan_sys.Kp = KP;
	pan_sys.Ki = KI;
	pan_sys.Kd = KD;
	pan_sys.integral = 0;
	pan_sys.prev_error = 0;

	tilt_sys.Kp = KP;
	tilt_sys.Ki = KI;
	tilt_sys.Kd = KD;
	tilt_sys.integral = 0;
	tilt_sys.prev_error = 0;
}

INT8U pid_task()
{
	init_pid();
	FP32 adjust;
	BOOLEAN dir;
	INT8U duty_cycle;

	while(1)
	{
	// hent ny værdi fra feedback for PAN
	// udregn PWM værdi fra pid_calc() og send til SPI modul
		adjust = pid_calc(set_point_tilt,SPI_pan,&pan_sys);

		if(adjust < 0)
			dir = 0;
		else
			dir = 1;

		duty_cycle = pwm_conv(adjust);

		// send duty cycle og direction til SPI

	// hent ny værdi fra feedback for TILT
	// udregn PWM værdi fra pid_calc() og send til SPI modul
		adjust = pid_calc(set_point_tilt,SPI_tilt,&tilt_sys);

		if(adjust < 0)
			dir = 0;
		else
			dir = 1;

		duty_cycle = pwm_conv(adjust);

		// send duty cycle og direction til SPI
	}
}

FP32 pid_calc(FP32 desired, FP32 actual, PID *controller)
{
	FP32 error;
	FP32 derivative;
	FP32 integral;
	FP32 output;
	
	error = desired - actual;
	integral = controller->integral;
	integral = integral + error*DT;
	
	if(integral > I_MAX)
		integral = I_MAX;
	if(integral < I_MIN)
		integral = I_MIN;
		
	derivative = (error - controller->prev_error)/DT;
	output = controller->Kp*error + controller->Ki*integral + controller->Kd*derivative;


	if(output > O_MAX)
		output = O_MAX;
	if(output < O_MIN)
		output = O_MIN;

	controller->integral = integral;
	controller->prev_error = error;

	return output;
}

INT8U pwm_conv(FP32 output)
{
	if(output < 0)
		output *= -1;

	ratio = output / O_MAX;

	INT8U result = 255 * ratio;

	if(result > dcMax)
		result = dcMax;
	if(result < dcMin)
		result = dcMin;

	return result;

}

/****************************** End Of Module *******************************/
