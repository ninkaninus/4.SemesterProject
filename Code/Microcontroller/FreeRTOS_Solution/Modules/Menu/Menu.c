/*
 * Menu.c
 *
 *  Created on: 14 Apr 2016
 *      Author: Daniel
 */

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

//beskeder
#define IMAGE_MAIN_RUN			1
#define IMAGE_MAIN_SHOW			2
#define IMAGE_MAIN_OPTIONS		3
#define IMAGE_RUN_START			4
#define IMAGE_RUN_STOP			5
#define IMAGE_RUN_JOG			6
#define IMAGE_RUN_SET			7
#define IMAGE_RUN_AUTO			8
#define IMAGE_RUN_RETURN		9
#define IMAGE_SHOW_PAN			10
#define IMAGE_SHOW_TILT			11
#define IMAGE_SHOW_ERROR		12
#define IMAGE_SHOW_RETURN		13
#define IMAGE_OPTIONS_PAN		14
#define IMAGE_OPTIONS_TILT		15
#define IMAGE_OPTIONS_PAN_PID	16
#define IMAGE_OPTIONS_TILT_PID	17
#define IMAGE_OPTIONS_KANIN		18
#define IMAGE_OPTIONS_RETURN	19

//What menu we are in - super state
#define MAIN_MENU	0
#define RUN			1
#define	SHOW		2
#define	OPTIONS 	3

//Current option in menu - Main
#define MENU_RUN		1
#define MENU_SHOW		2
#define MENU_OPTIONS	3

//Current option in menu - RUN
#define RUN_RETURN  		0
#define RUN_START			1
#define RUN_STOP			2
#define RUN_MANUAL_JOG		3
#define RUN_MANUAL_SET		4
#define	RUN_AUTO_PIC_ON_OFF	5

//Current OPTIONS in menu - SHOW
#define SHOW_RETURN		0
#define SHOW_PAN		1
#define SHOW_TILT		2
#define SHOW_ERROR		3

//Current option in menu - OPTIONS
#define OPTIONS_RETURN			0
#define OPTIONS_SET_PAN_OFFSET	1
#define OPTIONS_SET_TILT_OFFSET	2
#define OPTIONS_PAN_PIDK		3
#define OPTIONS_TILT_PIDK		4
#define OPTIONS_kanin pid		5

//Input events
#define KE_0		0
#define KE_1		1
#define KE_2		2
#define KE_3		3
#define KE_4		4
#define KE_5		5
#define KE_6		6
#define KE_7		7
#define KE_8		8
#define KE_9		9
#define KE_STAR		10
#define KE_HASTTAG	11
#define BE_LEFT		12
#define BE_RIGHT	13
#define BE_PUSH		14

void run_start_function(void)
{

}

void run_stop_function(void)
{

}

void run_manual_jog_function(void)
{

}

void run_manual_set_function(void)
{

}

void run_auto_pic_on_off_function(void)
{

}

void show_pan_function(void)
{

}

void show_tilt_function(void)
{

}

void show_error_function(void)
{

}

void options_set_pan_offset_function(void)
{

}

void options_set_tilt_offset_function(void)
{

}

void options_pan_pidk_function(void)
{

}

void options_tilt_pidk_function(void)
{

}

void options_kanin_pid_function(void)
{

}

void send_image(INT8U besked)
{

}

void MENU_task(void *pvParameters)
{
	static INT8U super_state = 0;
	static INT8U sub_state = 0;
	static INT8U input_event = 0;

	while (1)
	{
		if( xSemaphoreTake( menu_input_semaphore, 100 ))
		{
			if( xQueueReceive( menu_input_queue, &( input ), 0 ))
			{
				input_event = input;
				xSemaphoreGive(menu_input_semaphore);

				switch (super_state)
				{
				case Main_state:
					switch (sub_state)
					{
					case MENU_RUN:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = MENU_OPTIONS;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = MENU_SHOW;
								send_image();
								break;

							case BE_PUSH:
								super_state = RUN;
								sub_state = RUN_START;
								send_image();
								break;

							default:
								break;
						}
						break;

					case MENU_SHOW:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = MENU_RUN;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = MENU_OPTIONS;
								send_image();
								break;

							case BE_PUSH:
								super_state = SHOW;
								sub_state = SHOW_PAN;
								send_image();
								break;

							default:
								break;
						}
						break;

					case MENU_OPTIONS:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = MENU_SHOW;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = MENU_RUN;
								send_image();
								break;

							case BE_PUSH:
								super_state = OPTIONS;
								sub_state = OPTIONS_SET_PAN_OFFSET;
								send_image();
								break;

							default:
								break;
						}
						break;

					default:
						break;
					}
					break;

				case RUN:
					switch (sub_state)
					{
					case RUN_START:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = RUN_RETURN;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = RUN_STOP;
								send_image();
								break;

							case BE_PUSH:
								run_start_function();
								break;

							default:
								break;
						}
						break;

					case RUN_STOP:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = RUN_START;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = RUN_MANUAL_JOG;
								send_image();
								break;

							case BE_PUSH:
								run_stop_function();
								break;

							default:
								break;
						}
						break;

					case RUN_MANUAL_JOG:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = RUN_STOP;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = RUN_MANUAL_SET;
								send_image();
								break;

							case BE_PUSH:
								run_manual_jog_function();
								break;

							default:
								break;
						}
						break;

					case RUN_MANUAL_SET:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = RUN_MANUAL_JOG;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = RUN_AUTO_PIC_ON_OFF;
								send_image();
								break;

							case BE_PUSH:
								run_manual_set_function();
								break;

							default:
								break;
						}
						break;

					case RUN_AUTO_PIC_ON_OFF:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = RUN_MANUAL_SET;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = RUN_RETURN;
								send_image();
								break;

							case BE_PUSH:
								run_auto_pic_on_off_function();
								break;

							default:
								break;
						}
						break;

					case RUN_RETURN:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = RUN_AUTO_PIC_ON_OFF;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = RUN_START;
								send_image();
								break;

							case BE_PUSH:
								super_state = MAIN_MENU;
								sub_state = MENU_RUN;
								send_image();
								break;

							default:
								break;
						}
						break;

					default:
						break;
					}
					break;

				case SHOW:
					switch (sub_state)
					{
					case SHOW_PAN:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = SHOW_RETURN;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = SHOW_TILT;
								send_image();
								break;

							case BE_PUSH:
								show_pan_function();
								break;

							default:
								break;
						}
						break;

					case SHOW_TILT:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = SHOW_PAN;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = SHOW_ERROR;
								send_image();
								break;

							case BE_PUSH:
								show_tilt_function();
								break;

							default:
								break;
						}
						break;

					case SHOW_ERROR:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = SHOW_TILT;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = SHOW_RETURN;
								send_image();
								break;

							case BE_PUSH:
								show_error_function();
								break;

							default:
								break;
						}
						break;

					case SHOW_RETURN:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = SHOW_ERROR;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = SHOW_PAN;
								send_image();
								break;

							case BE_PUSH:
								super_state = MAIN_MENU;
								sub_state = MENU_SHOW;
								send_image();
								break;

							default:
								break;
						}
						break;

					default:
						break;
					}

					break;

				case OPTIONS:
					switch (sub_state)
					{
					case OPTIONS_SET_PAN_OFFSET:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = OPTIONS_RETURN;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = OPTIONS_SET_TILT_OFFSET;
								send_image();
								break;

							case BE_PUSH:
								options_set_pan_offset_function();
								break;

							default:
								break;
						}
						break;

					case OPTIONS_SET_TILT_OFFSET:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = OPTIONS_SET_PAN_OFFSET;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = OPTIONS_PAN_PIDK;
								send_image();
								break;

							case BE_PUSH:
								options_set_tilt_offset_function();
								break;

							default:
								break;
						}
						break;

					case OPTIONS_PAN_PIDK:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = OPTIONS_SET_TILT_OFFSET;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = OPTIONS_TILT_PIDK;
								send_image();
								break;

							case BE_PUSH:
								options_pan_pidk_function();
								break;

							default:
								break;
						}
						break;

					case OPTIONS_TILT_PIDK:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = OPTIONS_PAN_PIDK;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = OPTIONS_KANIN_PID;
								send_image();
								break;

							case BE_PUSH:
								options_tilt_pidk_function();
								break;

							default:
								break;
						}
						break;

					case OPTIONS_KANIN_PID:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = OPTIONS_TILT_PIDK;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = OPTIONS_RETURN;
								send_image();
								break;

							case BE_PUSH:
								options_kanin_pid_function();
								break;

							default:
								break;
						}
						break;

					case OPTIONS_RETURN:
						switch (input_event)
						{
							case BE_LEFT:
								sub_state = OPTIONS_KANIN_PID;
								send_image();
								break;

							case BE_RIGHT:
								sub_state = OPTIONS_SET_PAN_OFFSET;
								send_image();
								break;

							case BE_PUSH:
								super_state = MAIN_MENU;
								sub_state = MENU_OPTIONS;
								send_image();
								break;

							default:
								break;
						}
						break;
					}

					break;

				default:
					break;
				}
			}
			else
			{
				xSemaphoreGive(menu_input_semaphore);
			}
		}
	}
}




