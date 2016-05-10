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
#include <Converter/convert.h>
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

#define SCALE_FACTOR	1000
#define DT 				5		//  5ms * 1000
#define O_MAX			40
#define O_MIN			-40
#define I_MAX			1000
#define I_MIN			-1000
#define DC_MAX			150
#define DC_MIN			60
#define KP1				50
#define KI1				1
#define KD1				20
#define KP2				60
#define KI2				2
#define KD2				40

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

PID pan_sys;
PID tilt_sys;

extern xQueueHandle SPI_queue;
extern xQueueHandle PID_queue;

/*****************************   Functions   *******************************/

void init_pid()
{
	pan_sys.Kp = KP1;
	pan_sys.Ki = KI1;
	pan_sys.Kd = KD1;
	pan_sys.integral = 0;
	pan_sys.prev_error = 0;

	tilt_sys.Kp = KP2;
	tilt_sys.Ki = KI2;
	tilt_sys.Kd = KD2;
	tilt_sys.integral = 0;
	tilt_sys.prev_error = 0;
}

void PID_task(void *pvParameters)
{
	init_pid();

	INT8U received;

	while(1)
	{

		if (xQueueReceive(PID_queue, &received, 20500 / portTICK_RATE_MS))
		{
			switch(received)
			{
			case PID_UPDATE_EVENT:
				pid_update();
				break;

			default:
				break;
			}
		}
	}
}

INT32S pid_calc(INT32U desired, INT32U actual, PID *controller)
{
	INT32S error;
	INT32S derivative;
	INT32S integral;
	INT32S output;
	
	error = desired - actual;
	integral = controller->integral;
	integral = integral + error*DT;
	
	if(integral > I_MAX)
		integral = I_MAX;
	if(integral < I_MIN)
		integral = I_MIN;
		
	if(error == 0)			// nulstiller integral-delen når målet er nået.
		integral = 0;

	derivative = (error - controller->prev_error)/DT;

	output = controller->Kp*error + controller->Ki*integral + controller->Kd*derivative;

	output /= 1000;

	if(output > O_MAX)
		output = O_MAX;
	if(output < O_MIN)
		output = O_MIN;

	controller->integral = integral;
	controller->prev_error = error;

	return output;
}

void pid_update()
{
	INT32S set_point;
	INT32S actual;
	INT32S adjust;
	INT8U dir;
	INT16U duty_cycle;

	set_point 	= get_msg_state(SSM_SP_PAN);
	actual 		= get_msg_state(SSM_POS_PAN);

	adjust = pid_calc(set_point,actual,&pan_sys);

	////
	dir = 0;
	////

	if(set_point != actual)
	{
		if(adjust < 0)
			dir = 1;
		else
			dir = 2;
	}

	duty_cycle = pwm_conv(adjust);

	duty_cycle = (dir<<8) | duty_cycle;		// direction is ored to the 9-10th bit
	//if(set_point != actual)
		duty_cycle = 0x0400 | duty_cycle;

	put_msg_state(SSM_PWM_DIR_EN_PAN,duty_cycle);

	// send duty cycle og direction til SPI
	dir = 0;
	// hent ny vï¿½rdi fra feedback for TILT
	// udregn PWM vï¿½rdi fra pid_calc() og send til SPI modul

	set_point 	= get_msg_state(SSM_SP_TILT);
	actual	  	= get_msg_state(SSM_POS_TILT);
	adjust = pid_calc(set_point,actual,&tilt_sys);
	if(set_point != actual)
	{
		if(adjust < 0)
			dir = 1;
		else
			dir = 2;
	}


	duty_cycle = pwm_conv(adjust);

	duty_cycle = (dir<<8) | duty_cycle;
	//if(set_point != actual)
		duty_cycle = 0x0400 | duty_cycle;

	put_msg_state(SSM_PWM_DIR_EN_TILT,duty_cycle);

	// send duty cycle og direction til SPI
	INT8U event;
	event = SET_PWM_EVENT;
	xQueueSend(SPI_queue,&event,500 / portTICK_RATE_MS);

		vTaskDelay(5 / portTICK_RATE_MS);

	event = GET_POS_EVENT;
	xQueueSend(SPI_queue,&event,500 / portTICK_RATE_MS);
}

INT16U pwm_conv(INT32S output)
{
	if(output < 0)
		output *= -1;

	INT32U ratio = (output*1000) / O_MAX ;

	INT32U result = 255 * ratio;
	result /= 1000;

	if(result > DC_MAX)
		result = DC_MAX;
	if(result < DC_MIN)
		result = DC_MIN;

	return result;

}


/****************************** End Of Module *******************************/
