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
#include "Modules/GUI/gui.h"
#include "Tasking/tmodel.h"
#include "Tasking/messages.h"

#define PAN			0
#define TILT		1

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
#define OPTIONS_KANIN_PID		5

//Input events
#define KE_0		'0'
#define KE_1		'1'
#define KE_2		'2'
#define KE_3		'3'
#define KE_4		'4'
#define KE_5		'5'
#define KE_6		'6'
#define KE_7		'7'
#define KE_8		'8'
#define KE_9		'9'
#define KE_STAR		'*'
#define KE_HASTTAG	'#'
#define BE_LEFT		'L'
#define BE_RIGHT	'R'
#define BE_PUSH		'P'

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

#define IMAGE_START_FUNCTION	20
#define IMAGE_STOP_FUNCTION		21
#define IMAGE_JOG_PAN			22
#define IMAGE_JOG_TILT			23
#define IMAGE_SET_PAN			24
#define IMAGE_SET_TILT			25
#define IMAGE_ABORTED			26
#define SHOW_PAN_POS			27
#define SHOW_TILT_POS			28

extern xQueueHandle GUI_queue;
extern xQueueHandle MENU_queue;

extern xSemaphoreHandle menu_input_sem;

void run_start_function(void)
{
	send_image(IMAGE_START_FUNCTION);
	INT8U input;
	//do stuff

	if( xQueueReceive( MENU_queue, &( input ), 1000 ))
	{

	}
	send_image(IMAGE_RUN_START);
}

void run_stop_function(void)
{
	send_image(IMAGE_STOP_FUNCTION);
	INT8U input;
	//do stuff

	if( xQueueReceive( MENU_queue, &( input ), 1000 ))
	{

	}
	send_image(IMAGE_RUN_STOP);
}

void run_manual_jog_function(void)
{
	INT8U active = PAN;
	INT8U input;
	INT8U event;
	INT32U range = 0;
	INT32U pos = 0;
	send_image(IMAGE_JOG_PAN);
	while (1)
	{
		if( xQueueReceive( MENU_queue, &( input ), 1 ))
		{
			event  = input;
			switch (event)
			{
				case BE_LEFT:

					if(active == PAN)
					{
						pos = get_msg_state(SSM_SP_PAN);
						pos = pos + range;
						put_msg_state(SSM_SP_PAN,pos);
						//convert_and_secure();
					}
					else
					{
						pos = get_msg_state(SSM_SP_TILT);
						pos = pos + range;
						put_msg_state(SSM_SP_TILT,pos);
						//convert_and_secure();
					}

					break;

				case BE_RIGHT:

					if(active == PAN)
					{
						pos = get_msg_state(SSM_SP_DEG_PAN);
						pos = pos - range;
						put_msg_state(SSM_SP_DEG_PAN,pos);
					}
					else
					{
						pos = get_msg_state(SSM_SP_DEG_TILT);
						pos = pos - range;
						put_msg_state(SSM_SP_DEG_TILT,pos);

					}
					convert_and_secure();

					break;

				case KE_STAR:

					if (active == PAN)
						{
						send_image(IMAGE_JOG_TILT);
						active = TILT;
						}
					else
						{
						send_image(IMAGE_JOG_PAN);
						active = PAN;
						}

					break;

				case KE_1:
					range = 1;
				break;

				case KE_2:
					range = 2;
				break;

				case KE_3:
					range = 3;
				break;

				case KE_4:
					range = 4;
				break;

				case KE_5:
					range = 5;
				break;

				case KE_6:
					range = 6;
				break;

				case KE_7:
					range = 7;
				break;

				case KE_8:
					range = 8;
				break;

				case KE_9:
					range = 9;
				break;

				case KE_0:
					send_image(IMAGE_RUN_JOG);
					return;
				break;

				default:
					break;
			}

		}
	}

}

void run_manual_set_function(void)
{

	INT8U active = PAN;
	INT8U input;
	INT8U event;
	INT32U half = 0;
	INT32U pos[8] = {0,0,0,0,0,0,0,0};
	send_image(IMAGE_SET_PAN);
	for (INT8U i = 0; i <= 7; i++)
	{
		if ( i == 4 && half == 0)
		{
			send_image(IMAGE_SET_TILT);
			half = 1;
		}

		if( xQueueReceive( MENU_queue, &( input ), 1 ))
		{
			event  = input;

			switch (event)
				{
					case KE_STAR:

						send_image(IMAGE_ABORTED);
						if( xQueueReceive( MENU_queue, &( input ), 1000 ))
						{

						}
						send_image(IMAGE_RUN_SET);

						return;

						break;

					case KE_1:
						pos[i] = 1;
					break;

					case KE_2:
						pos[i] = 2;
					break;

					case KE_3:
						pos[i] = 3;
					break;

					case KE_4:
						pos[i] = 4;
					break;

					case KE_5:
						pos[i] = 5;
					break;

					case KE_6:
						pos[i] = 6;
					break;

					case KE_7:
						pos[i] = 7;
					break;

					case KE_8:
						pos[i] = 8;
					break;

					case KE_9:
						pos[i] = 9;
					break;

					case KE_0:
						pos[i] = 0;
					break;

					default:
						break;
				}
		}
		else
		{
			i--;
		}
	}
	put_msg_state(SSM_SP_DEG_PAN,pos[0]*1000+pos[1]*100+pos[2]*10+pos[3]);
	put_msg_state(SSM_SP_DEG_TILT,pos[4]*1000+pos[5]*100+pos[6]*10+pos[7]);
	convert_and_secure();
	send_image(IMAGE_RUN_SET);
}

void run_auto_pic_on_off_function(void)
{

}

void show_pan_function(void)
{
	INT8U input;
	while(1)
	{
		send_image(SHOW_PAN_POS);
		if( xQueueReceive( MENU_queue, &( input ), 10 ))
		{

			break;
		}
	}
	send_image(IMAGE_SHOW_PAN);
}

void show_tilt_function(void)
{
	INT8U input;
	while(1)
	{
		send_image(SHOW_TILT_POS);
		if( xQueueReceive( MENU_queue, &( input ), 10 ))
		{
			break;
		}
	}
	send_image(IMAGE_SHOW_TILT);
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
	if (xQueueSend(GUI_queue, &besked, 10000))
	{
		INT8U holder = besked;
		holder++;
		holder++;
	}
}

void MENU_task(void *pvParameters)
{
	INT8U input = 0;
	if( xQueueReceive( MENU_queue, &( input ), 1000 ))
	{
	}
	send_image(IMAGE_MAIN_RUN);


	while (1)
	{
		static INT8U super_state = 0;
		static INT8U sub_state = 1;
		INT8U event = 0;


		if( xSemaphoreTake( menu_input_sem, 100 ))
		{
			if( xQueueReceive( MENU_queue, &( input ), 0 ))
			{
				event = input;
				xSemaphoreGive(menu_input_sem);

				switch (super_state)
				{
				case MAIN_MENU:
					switch (sub_state)
					{
					case MENU_RUN:
						switch (event)
						{
							case BE_LEFT:
								sub_state = MENU_OPTIONS;
								send_image(IMAGE_MAIN_OPTIONS);
								break;

							case BE_RIGHT:
								sub_state = MENU_SHOW;
								send_image(IMAGE_MAIN_SHOW);
								break;

							case KE_STAR:
								super_state = RUN;
								sub_state = RUN_START;
								send_image(IMAGE_RUN_START);
								break;

							default:
								break;
						}
						break;

					case MENU_SHOW:
						switch (event)
						{
							case BE_LEFT:
								sub_state = MENU_RUN;
								send_image(IMAGE_MAIN_RUN);
								break;

							case BE_RIGHT:
								sub_state = MENU_OPTIONS;
								send_image(IMAGE_MAIN_OPTIONS);
								break;

							case KE_STAR:
								super_state = SHOW;
								sub_state = SHOW_PAN;
								send_image(IMAGE_SHOW_PAN);
								break;

							default:
								break;
						}
						break;

					case MENU_OPTIONS:
						switch (event)
						{
							case BE_LEFT:
								sub_state = MENU_SHOW;
								send_image(IMAGE_MAIN_SHOW);
								break;

							case BE_RIGHT:
								sub_state = MENU_RUN;
								send_image(IMAGE_MAIN_RUN);
								break;

							case KE_STAR:
								super_state = OPTIONS;
								sub_state = OPTIONS_SET_PAN_OFFSET;
								send_image(IMAGE_OPTIONS_PAN);
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
						switch (event)
						{
							case BE_LEFT:
								sub_state = RUN_RETURN;
								send_image(IMAGE_RUN_RETURN);
								break;

							case BE_RIGHT:
								sub_state = RUN_STOP;
								send_image(IMAGE_RUN_STOP);
								break;

							case KE_STAR:
								run_start_function();
								break;

							default:
								break;
						}
						break;

					case RUN_STOP:
						switch (event)
						{
							case BE_LEFT:
								sub_state = RUN_START;
								send_image(IMAGE_RUN_START);
								break;

							case BE_RIGHT:
								sub_state = RUN_MANUAL_JOG;
								send_image(IMAGE_RUN_JOG);
								break;

							case KE_STAR:
								run_stop_function();
								break;

							default:
								break;
						}
						break;

					case RUN_MANUAL_JOG:
						switch (event)
						{
							case BE_LEFT:
								sub_state = RUN_STOP;
								send_image(IMAGE_RUN_STOP);
								break;

							case BE_RIGHT:
								sub_state = RUN_MANUAL_SET;
								send_image(IMAGE_RUN_SET);
								break;

							case KE_STAR:
								run_manual_jog_function();
								break;

							default:
								break;
						}
						break;

					case RUN_MANUAL_SET:
						switch (event)
						{
							case BE_LEFT:
								sub_state = RUN_MANUAL_JOG;
								send_image(IMAGE_RUN_JOG);
								break;

							case BE_RIGHT:
								sub_state = RUN_AUTO_PIC_ON_OFF;
								send_image(IMAGE_RUN_AUTO);
								break;

							case KE_STAR:
								run_manual_set_function();
								break;

							default:
								break;
						}
						break;

					case RUN_AUTO_PIC_ON_OFF:
						switch (event)
						{
							case BE_LEFT:
								sub_state = RUN_MANUAL_SET;
								send_image(IMAGE_RUN_SET);
								break;

							case BE_RIGHT:
								sub_state = RUN_RETURN;
								send_image(IMAGE_RUN_RETURN);
								break;

							case KE_STAR:
								run_auto_pic_on_off_function();
								break;

							default:
								break;
						}
						break;

					case RUN_RETURN:
						switch (event)
						{
							case BE_LEFT:
								sub_state = RUN_AUTO_PIC_ON_OFF;
								send_image(IMAGE_RUN_AUTO);
								break;

							case BE_RIGHT:
								sub_state = RUN_START;
								send_image(IMAGE_RUN_START);
								break;

							case KE_STAR:
								super_state = MAIN_MENU;
								sub_state = MENU_RUN;
								send_image(IMAGE_MAIN_RUN);
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
						switch (event)
						{
							case BE_LEFT:
								sub_state = SHOW_RETURN;
								send_image(IMAGE_SHOW_RETURN);
								break;

							case BE_RIGHT:
								sub_state = SHOW_TILT;
								send_image(IMAGE_SHOW_TILT);
								break;

							case KE_STAR:
								show_pan_function();
								break;

							default:
								break;
						}
						break;

					case SHOW_TILT:
						switch (event)
						{
							case BE_LEFT:
								sub_state = SHOW_PAN;
								send_image(IMAGE_SHOW_PAN);
								break;

							case BE_RIGHT:
								sub_state = SHOW_ERROR;
								send_image(IMAGE_SHOW_ERROR);
								break;

							case KE_STAR:
								show_tilt_function();
								break;

							default:
								break;
						}
						break;

					case SHOW_ERROR:
						switch (event)
						{
							case BE_LEFT:
								sub_state = SHOW_TILT;
								send_image(IMAGE_SHOW_TILT);
								break;

							case BE_RIGHT:
								sub_state = SHOW_RETURN;
								send_image(IMAGE_SHOW_RETURN);
								break;

							case KE_STAR:
								show_error_function();
								break;

							default:
								break;
						}
						break;

					case SHOW_RETURN:
						switch (event)
						{
							case BE_LEFT:
								sub_state = SHOW_ERROR;
								send_image(IMAGE_SHOW_ERROR);
								break;

							case BE_RIGHT:
								sub_state = SHOW_PAN;
								send_image(IMAGE_SHOW_PAN);
								break;

							case KE_STAR:
								super_state = MAIN_MENU;
								sub_state = MENU_SHOW;
								send_image(IMAGE_MAIN_SHOW);
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
						switch (event)
						{
							case BE_LEFT:
								sub_state = OPTIONS_RETURN;
								send_image(IMAGE_OPTIONS_RETURN);
								break;

							case BE_RIGHT:
								sub_state = OPTIONS_SET_TILT_OFFSET;
								send_image(IMAGE_OPTIONS_TILT);
								break;

							case KE_STAR:
								options_set_pan_offset_function();
								break;

							default:
								break;
						}
						break;

					case OPTIONS_SET_TILT_OFFSET:
						switch (event)
						{
							case BE_LEFT:
								sub_state = OPTIONS_SET_PAN_OFFSET;
								send_image(IMAGE_OPTIONS_PAN);
								break;

							case BE_RIGHT:
								sub_state = OPTIONS_PAN_PIDK;
								send_image(IMAGE_OPTIONS_PAN_PID);
								break;

							case KE_STAR:
								options_set_tilt_offset_function();
								break;

							default:
								break;
						}
						break;

					case OPTIONS_PAN_PIDK:
						switch (event)
						{
							case BE_LEFT:
								sub_state = OPTIONS_SET_TILT_OFFSET;
								send_image(IMAGE_OPTIONS_TILT);
								break;

							case BE_RIGHT:
								sub_state = OPTIONS_TILT_PIDK;
								send_image(IMAGE_OPTIONS_TILT_PID);
								break;

							case KE_STAR:
								options_pan_pidk_function();
								break;

							default:
								break;
						}
						break;

					case OPTIONS_TILT_PIDK:
						switch (event)
						{
							case BE_LEFT:
								sub_state = OPTIONS_PAN_PIDK;
								send_image(IMAGE_OPTIONS_PAN_PID);
								break;

							case BE_RIGHT:
								sub_state = OPTIONS_KANIN_PID;
								send_image(IMAGE_OPTIONS_KANIN);
								break;

							case KE_STAR:
								options_tilt_pidk_function();
								break;

							default:
								break;
						}
						break;

					case OPTIONS_KANIN_PID:
						switch (event)
						{
							case BE_LEFT:
								sub_state = OPTIONS_TILT_PIDK;
								send_image(IMAGE_OPTIONS_TILT_PID);
								break;

							case BE_RIGHT:
								sub_state = OPTIONS_RETURN;
								send_image(IMAGE_OPTIONS_RETURN);
								break;

							case KE_STAR:
								options_kanin_pid_function();
								break;

							default:
								break;
						}
						break;

					case OPTIONS_RETURN:
						switch (event)
						{
							case BE_LEFT:
								sub_state = OPTIONS_KANIN_PID;
								send_image(IMAGE_OPTIONS_KANIN);
								break;

							case BE_RIGHT:
								sub_state = OPTIONS_SET_PAN_OFFSET;
								send_image(IMAGE_OPTIONS_PAN);
								break;

							case KE_STAR:
								super_state = MAIN_MENU;
								sub_state = MENU_OPTIONS;
								send_image(IMAGE_MAIN_OPTIONS);
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
				xSemaphoreGive(menu_input_sem);
			}
		}
	}
}




