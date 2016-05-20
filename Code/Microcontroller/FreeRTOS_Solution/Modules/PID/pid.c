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

#define SCALE_FACTOR	10000
#define DT 				50		//  50 * 0.0001 = 0,005s
#define O_MAX			200000
#define O_MIN			-200000
#define I_MAX			5000000
#define I_MIN			-5000000
#define DC_MAX			150
#define DC_MIN			40
#define K1				161
#define K2				27		// 0.0027 * 10000
#define KP1				2*K1
#define KI1				1*K1
#define KD1				1*K1
#define KP2				6*K2
#define KI2				6*K2
#define KD2				1*K2

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

enum pid_states{
	IDLE,
	RUN
};

PID pan_sys;
PID pan_sys_2;
PID tilt_sys;
PID tilt_sys_2;

extern xQueueHandle SPI_queue;
extern xQueueHandle PID_queue;

extern xSemaphoreHandle coordinate_access_sem;

/*****************************   Functions   *******************************/

void init_pid()
{
	pan_sys.Kp = KP1;
	pan_sys.Ki = KI1;
	pan_sys.Kd = KD1;
	pan_sys.gain = K1;
	pan_sys.integral = 0;
	pan_sys.prev_error = 0;

	pan_sys_2.Kp = 100*K1;
	pan_sys_2.Ki = 100*K1;
	pan_sys_2.Kd = 1*K1;
	pan_sys_2.gain = K1;
	pan_sys_2.integral = 0;
	pan_sys_2.prev_error = 0;

	tilt_sys.Kp = KP2;
	tilt_sys.Ki = KI2;
	tilt_sys.Kd = KD2;
	tilt_sys.gain = K2;
	tilt_sys.integral = 0;
	tilt_sys.prev_error = 0;

	tilt_sys_2.Kp = 100*K2;
	tilt_sys_2.Ki = 100*K2;
	tilt_sys_2.Kd = 1*K2;
	tilt_sys_2.gain = 0;
	tilt_sys_2.integral = 0;
	tilt_sys_2.prev_error = 0;
}

void PID_task(void *pvParameters)
{
	init_pid();

	INT8U received;
	INT8U pid_state = IDLE;

	while(1)
	{
	switch(pid_state)
	{
	case IDLE:
		if (xQueueReceive(PID_queue, &received, 20500 / portTICK_RATE_MS))
		{
			switch(received)
			{
			case PID_START_EVENT:
				pid_state = RUN;
				pid_update();
				break;

			default:
				break;
			}
		}
		break;

	case RUN:
		if (xQueueReceive(PID_queue, &received, 20500 / portTICK_RATE_MS))
		{
			switch(received)
			{
			case PID_UPDATE_EVENT:
				pid_update();
				break;

			case PID_STOP_EVENT:
				pid_state = IDLE;
				break;

			default:
				break;
			}
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

	INT32S P_term = controller->Kp*error;			// scaled by 10E4

	INT32S I_term = controller->Ki*integral;		// scaled by 10E8
	I_term /= SCALE_FACTOR;							// scaled by 10E4

	INT32S D_term = controller->Kd*derivative;		// scaled by 10E0
	D_term *= SCALE_FACTOR;							// scaled by 10E4

	if(error > 300 || error < -300)					// integration is only active when close to the target
	{
		I_term = 0;
		integral = 0;
	}

	output = P_term + I_term + D_term;

	if(I_term > 80000)
	{
		output += 1;
		output -= 1;
	}

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
	//static INT16U offset = 0;

	if(xSemaphoreTake(coordinate_access_sem,1000000))
	{
		set_point 	= get_msg_state(SSM_SP_PAN);
		actual 		= get_msg_state(SSM_POS_PAN);

		if(set_point - actual > 16 || set_point - actual < -16)
			adjust = pid_calc(set_point,actual,&pan_sys);

		else
		{
			pan_sys.integral = 0;
			pan_sys.prev_error = 0;
			adjust = pid_calc(set_point,actual,&pan_sys_2);
		}


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

		//offset++;

		//set_point = set_point + offset/5;

		if(set_point - actual > 16 || set_point - actual < -16)
			adjust = pid_calc(set_point,actual,&tilt_sys);

		else
		{
			tilt_sys.integral = 0;
			tilt_sys.prev_error = 0;
			adjust = pid_calc(set_point,actual,&tilt_sys_2);
		}


		if(set_point != actual)
		{
			if(adjust < 0)
				dir = 1;
			else
				dir = 2;
		}

		duty_cycle = pwm_conv(adjust);

		duty_cycle = (dir<<8) | duty_cycle;

		duty_cycle = 0x0400 | duty_cycle;

		put_msg_state(SSM_PWM_DIR_EN_TILT,duty_cycle);
		xSemaphoreGive(coordinate_access_sem);
	}

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

	INT32U ratio = (output << 10) / O_MAX ;

	INT32U result;// = 255 * ratio;

	result = (DC_MAX - DC_MIN) * ratio;

	result = result >> 10;

	result += DC_MIN;

	/*
	if(result > DC_MAX)
		result = DC_MAX;
	if(result < DC_MIN)
		result = DC_MIN;
	 */

	return result;
}


/****************************** End Of Module *******************************/
