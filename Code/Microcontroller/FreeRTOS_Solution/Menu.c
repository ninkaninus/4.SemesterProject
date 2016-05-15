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

//What menu we are in - super state
#define Main_menu	0
#define Run			1
#define	Show		2
#define	Options 	3

//Current option in menu - Main
#define menu_run		1
#define menu_show		2
#define menu_options	3

//Current option in menu - Run
#define run_return  	0
#define start			1
#define stop			2
#define manual_jog		3
#define manual_set		4
#define	auto_pic_on_off	5

//Current options in menu - Show
#define show_return		0
#define show_pan		1
#define show_tilt		2
#define show_error		3

//Current option in menu - Options
#define options_return	0
#define set_tilt_offset	1
#define set_pan_offset	2
#define pan_pidk		3
#define tilt_pidk		4
#define kanin pid		5

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
#define KE_*		10
#define KE_hashtag	11
#define BE_left		12
#define BE_right	13
#define BE_push		14

void menu_task(void *pvParameters)
{
	static INT8U super_state = 0;
	static INT8U sub_state = 0;
	static INT8U item_selected = 0;
	INT8U input_event = 0;
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
					case run_menu:
						switch (input_event)
						{
							case BE_left:
								sub_state = options_menu;
								break;

							case BE_right:
								sub_state = show_menu;
								break;

							case BE_push:
								super_state = Run;
								break;

							default:
								break;
						}
						break;

					case show_menu:
						switch (input_event)
						{
							case BE_left:
								sub_state = run_menu;
								break;

							case BE_right:
								sub_state = options_menu;
								break;

							case BE_push:
								super_state = Show;
								break;

							default:
								break;
						}
						break;

					case options_menu:
						switch (input_event)
						{
							case BE_left:
								sub_state = show_menu;
								break;

							case BE_right:
								sub_state = run_menu;
								break;

							case BE_push:
								super_state = Options;
								break;

							default:
								break;
						}
						break;

					default:
						break;
					}
					break;

				case Run:
					switch (sub_state)
					{
					case Start:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					case Stop:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					case Manual_jog:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					case Manual_set:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					case auto_pic_on_off:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					case run_return:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					default:
						break;
					}
					break;

				case Show:
					switch (sub_state)
					{
					case show_pan:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					case show_tilt:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					case show_error:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					case show_return:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					default:
						break;
					}

					break;

				case Options:
					switch (sub_state)
					{
					case set_pan_offset:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					case set_tilt_offset:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					case pan_pidk:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					case tilt_pidk:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					case kanin_pid:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
								break;

							default:
								break;
						}
						break;

					case options_return:
						switch (input_event)
						{
							case BE_left:
								sub_state = Options;
								break;

							case BE_right:
								sub_state = Show;
								break;

							case BE_push:
								super_state = menu_run;
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

		}

	}

}


	/*

	while(1)
	{
		//wait for input semaphore

		if( xSemaphoreTake( menu_input_semaphore, 100 )
		{

			if( xQueueReceive( menu_input_queue, &( input ), 0 )
			{

				input_event = input;

				xSemaphoreGive(menu_input_semaphore);


				switch (super_state)
				{
					case Main_menu:

					switch (sub_state)
					{
						case menu_run:
switch (input_event)
{
	case BE_left:
		sub_state = Options;
		break;

	case BE_right:
		sub_state = Show;
		break;

	case BE_push:
		super_state = menu_run;
		break;

	default:
		break;
}

							break;

						case menu_show:

							switch (input_event)
							{
								case BE_left:
									sub_state = Options;
									break;

								case BE_right:
									sub_state = Show;
									break;

								case BE_push:
									super_state = menu_run;
									break;

								default:
									break;
							}

							break;

						case menu_options:

							switch (input_event)
							{
								case BE_left:
									sub_state = Options;
									break;

								case BE_right:
									sub_state = Show;
									break;

								case BE_push:
									super_state = menu_run;
									break;

								default:
									break;
							}

							break;
						}
						break;

					case Run:
						switch (sub_state)
						{
							case Start:

							case Stop:

							case Manual_jog:

							case Manual_set:

							case auto_pic_on_off:

							case Run_return:

							default:
								break;
						}
					break;

					case Show:
						switch (sub_state)
						{
							case Pan:

								break;

							case Tilt:

								break;

							case error:

								break;

							case Show_return:

								break;

							default:
								break;
						}
					break;

					case Options:
						switch (sub_state)
						{
							case set_pan_offset:

								break;

							case set_tilt_offset:

								break;

							case pan_pidk:

								break;

							case tilt_pidk:

								break;

							case kanin_pid:

								break;

							case options_return:

								break;

							default:
								break;

						}
						break;

					default:
						break;
				}
			}
		}
	}



