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
#define O_MAX	40
#define O_MIN	-40
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

extern xQueueHandle SPI_queue;
extern xQueueHandle PID_queue;

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

void PID_task(void *pvParameters)
{
	init_pid();

	INT8U received;

	while(1)
	{
		if (xQueueReceive(PID_queue, &received, 500 / portTICK_RATE_MS))
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

void pid_update()
{
	FP32 adjust;
	INT8U dir;
	INT16U duty_cycle;
	FP32 set_point;
	FP32 actual;

	set_point 	= get_msg_state(SSM_SP_PAN);
	actual 		= get_msg_state(SSM_POS_PAN);

	adjust = pid_calc(set_point,actual,&pan_sys);

	if(adjust < 0)
		dir = 1;
	else
		dir = 2;

	duty_cycle = pwm_conv(adjust);

	duty_cycle = (dir<<8) | duty_cycle;		// direction is ored to the 9-10th bit
	duty_cycle = 0x0400 | duty_cycle;		// enable

	put_msg_state(SSM_PWM_DIR_EN_PAN,duty_cycle);

	// send duty cycle og direction til SPI

	// hent ny værdi fra feedback for TILT
	// udregn PWM værdi fra pid_calc() og send til SPI modul

	set_point 	= get_msg_state(SSM_SP_TILT);
	actual	  	= get_msg_state(SSM_POS_TILT);

	adjust = pid_calc(set_point,actual,&tilt_sys);

	if(adjust < 0)
		dir = 1;
	else
		dir = 2;

	duty_cycle = pwm_conv(adjust);

	duty_cycle = (dir<<8) | duty_cycle;
	duty_cycle = 0x0400 | duty_cycle;

	put_msg_state(SSM_PWM_DIR_EN_TILT,duty_cycle);

	// send duty cycle og direction til SPI
	INT8U event = SET_PWM_EVENT;
	xQueueSend(SPI_queue,&event,500 / portTICK_RATE_MS);

		vTaskDelay(5 / portTICK_RATE_MS);

	event = GET_POS_EVENT;
	xQueueSend(SPI_queue,&event,500 / portTICK_RATE_MS);
}

INT16U pwm_conv(FP32 output)
{
	if(output < 0)
		output *= -1;

	FP32 ratio = output / O_MAX;

	INT16U result = 255 * ratio;

	if(result > DC_MAX)
		result = DC_MAX;
	if(result < DC_MIN)
		result = DC_MIN;

	return result;

}


/****************************** End Of Module *******************************/
