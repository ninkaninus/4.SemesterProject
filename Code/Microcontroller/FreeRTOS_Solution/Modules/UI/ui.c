/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: ui.c
*
* PROJECT....: Assignment 4
*
* DESCRIPTION: Support UART comunicaiton
*
* Change Log:
*****************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 150228  MoH   Module created
* 040316  DFH   Module updated
*
*****************************************************************************/

/***************************** Include files *******************************/
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include <EMP/emp_type.h>
#include <UART/uart0.h>
#include <Tasking/tmodel.h>
#include <Tasking/messages.h>
#include <Tasking/events.h>
#include "ui.h"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

enum ui_states
{
	WAIT,
	DECODING,
	SET_TIME,
	SET_SCALE,
	SET_OFFSET,
	SHOW_KNOB
};

INT8U cmd_array[5][16] = {
		{'1','2'},
		{'2','2'},
		{'1','1'},
		{'3','1'},
		{'3','2'}
};

INT8U input_iterator = 0;

INT8U current_input[16];
INT8U received;
INT8U ui_state;

extern xQueueHandle GUI_queue;
extern xQueueHandle UI_queue;

extern xSemaphoreHandle time_access_sem;
extern xSemaphoreHandle rtc_update_sem;
extern xSemaphoreHandle scale_sem;

/*****************************   Functions   *******************************/

void ui_task(void *pvParameters)
{
	while(1)
	{
	if(xQueueReceive(UI_queue, &received, 1000 / portTICK_RATE_MS))
		{
			switch(ui_state)
			{

				case WAIT:
					if(received == '*')
					{
						ui_state = DECODING;
						received = CMD_EVENT;
						xQueueSend(GUI_queue,&received,10000);
					}
					break;

				case DECODING:
					if(input_iterator > 15)
					{
						reset_input();
						received = ERROR_EVENT;
						xQueueSend(GUI_queue,&received,10000);
					}

					current_input[input_iterator++] = received;
					switch(received)
					{
						case '#':
							current_input[input_iterator - 1] = 0; // sletter '#'
							INT8U cmd = find_command();
							switch(cmd)
							{
								case 0:
									reset_input();
									received = SET_TIME_EVENT;
									xQueueSend(GUI_queue,&received,10000);
									ui_state = SET_TIME;
									break;

								case 1:
									reset_input();
									received = SHOW_TIME_EVENT;
									xQueueSend(GUI_queue,&received,10000);
									ui_state = WAIT;
									break;

								case 3:
									reset_input();
									received = SET_SCALE_EVENT;
									xQueueSend(GUI_queue,&received,10000);
									ui_state = SET_SCALE;
									break;

								case 4:
									reset_input();
									received = SHOW_KNOB_EVENT;
									xQueueSend(GUI_queue,&received,10000);
									ui_state = SHOW_KNOB;
									break;

								default:
									reset_input();
									received = ERROR_EVENT;
									xQueueSend(GUI_queue,&received,10000);
							}
							break;

						case '*':
							reset_input();
							received = CMD_EVENT;
							xQueueSend(GUI_queue,&received,10000);
							break;

						default:
							xQueueSend(GUI_queue,&received,10000);
							break;
					}
					break;

				case SET_TIME:
					set_time();
					break;

				case SET_SCALE:
					set_scale();
					break;

				case SET_OFFSET:
					set_offset();
					break;

				case SHOW_KNOB:
					if(received == '*')
					{
						ui_state = DECODING;
						received = CMD_EVENT;
						xQueueSend(GUI_queue,&received,10000);
					}
					break;

				default:
					break;
			}
		}
	}
}


/*
void ui_task(INT8U my_id, INT8U my_state, INT8U my_event, INT8U my_data)
{
	INT8U received;
	if(get_queue(Q_INPUT,&received,0) || my_event)
	{
		//put_msg_event(SEB_PRINT, received);
		switch(my_state)
		{
//			case INITIAL_STATE:
//				set_state( WAIT );
//				wait( 100 );
//				break;

			case WAIT:
				if(received == '*')
				{
					set_state( DECODING );
					put_msg_event(SEB_PRINT, received);
				}
				break;

			case DECODING:
				if(input_iterator > 15)
				{
					reset_input();
					put_msg_event(SEB_PRINT, '?');
				}

				current_input[input_iterator++] = received;
				switch(received)
				{
					case '#':
						current_input[input_iterator - 1] = 0;
						INT8U cmd = find_command();
						switch(cmd)
						{
							case 0:
								reset_input();
								put_msg_event(SEB_PRINT, '#');
								set_state( SET_TIME );
								break;

							case 1:
								reset_input();
								put_msg_event(SEB_PRINT, '¤');
								set_state( WAIT );
								break;

							default:
								reset_input();
								put_msg_event(SEB_PRINT, '?');
						}
						break;

					case '*':
						reset_input();
						put_msg_event(SEB_PRINT, '*');
						break;

					default:
						put_msg_event(SEB_PRINT, received);
						break;
				}
				break;

			case SET_TIME:
				set_time(&received);
				break;

			case UPDATE_TIME:
				update_time();
				set_state( WAIT );
				reset_input();
				put_msg_event(SEB_PRINT, '#');
				set_event( EVENT_NONE );
				break;

			default:
				break;
		}
	}
}
*/

void reset_input()
{
	input_iterator = 0;

	for(int i = 0; i < 16; i++)
	{
		current_input[i] = 0;
	}
}

INT8U find_command()
{
	INT8S result = -1;

	for(int i = 0; i < TOTAL_CMDS; i++)
	{
		for(int j = 0; j < 16; j++)
		{
			if(cmd_array[i][j] != current_input[j])
				break;

			if(j == 15)
				result = i;
		}

		if( result >= 0)
			break;
	}
	return( result );
}

void set_time()

{
	if(received == '*')
	{
		reset_input();
		received = CMD_EVENT;
		xQueueSend(GUI_queue,&received,10000);
		ui_state = DECODING;
	}
	else
	{
		switch(input_iterator)
		{
			case 0:
				if(received - '0' < 3 && received - '0' >= 0)
				{
					xQueueSend(GUI_queue,&received,10000);
					current_input[input_iterator++] = received;
				}
				else
				{
					reset_input();
					received = ERROR_EVENT;
					xQueueSend(GUI_queue,&received,10000);
				}
				break;

			case 1:
				if ( received - '0' < 4 && received - '0' >= 0 )
				{
					xQueueSend(GUI_queue,&received,10000);
					current_input[input_iterator++] = received;
				}
				else if ( received - '0' < 10 && received - '0' >= 0 && current_input[0] - '0' < 2 )
				{
					xQueueSend(GUI_queue,&received,10000);
					current_input[input_iterator++] = received;
				}
				else
				{
					reset_input();
					received = ERROR_EVENT;
					xQueueSend(GUI_queue,&received,10000);
				}
				break;

			case 2:
				if ( received - '0' < 6 && received - '0' >= 0 )
				{
					xQueueSend(GUI_queue,&received,10000);
					current_input[input_iterator++] = received;
				}
				else
				{
					reset_input();
					received = ERROR_EVENT;
					xQueueSend(GUI_queue,&received,10000);
				}
				break;

			case 3:
				if ( received - '0' < 10 && received - '0' >= 0 )
				{
					xQueueSend(GUI_queue,&received,10000);
					current_input[input_iterator++] = received;
				}
				else
				{
					reset_input();
					received = ERROR_EVENT;
					xQueueSend(GUI_queue,&received,10000);
				}
				break;

			case 4:
				if ( received - '0' < 6 && received - '0' >= 0 )
				{
					xQueueSend(GUI_queue,&received,10000);
					current_input[input_iterator++] = received;
				}
				else
				{
					reset_input();
					received = ERROR_EVENT;
					xQueueSend(GUI_queue,&received,10000);
				}
				break;

			case 5:
				if ( received - '0' < 10 && received - '0' >= 0 )
				{
					xQueueSend(GUI_queue,&received,10000);
					current_input[input_iterator++] = received;
				}
				else
				{
					reset_input();
					received = ERROR_EVENT;
					xQueueSend(GUI_queue,&received,10000);
				}
				break;

			default:

				if(received == '#')
				{
					if(xSemaphoreTake(time_access_sem,5000 / portTICK_RATE_MS))
					{
						received = SHOW_TIME_EVENT;
						xQueueSend(GUI_queue,&received,10000);
						current_input[input_iterator++] = received;

						update_time();
						ui_state = WAIT;
						xSemaphoreGive(time_access_sem);
					}
				}
				break;
		}
	}
}

void update_time()
{
	INT8U hour = (current_input[0] - '0') * 10  + (current_input[1] - '0');
	INT8U min = (current_input[2] - '0') * 10 + (current_input[3] - '0');
	INT8U sec = (current_input[4] - '0') * 10 + (current_input[5] - '0');

	put_msg_state(SSM_RTC_HOUR, hour);
	put_msg_state(SSM_RTC_MIN, min);
	put_msg_state(SSM_RTC_SEC, sec);

	xSemaphoreGive(rtc_update_sem);
	//signal( SEM_RTC_UPDATED);

	reset_input();
}

void set_scale()
{
	switch(received)
	{
	case '*':
		ui_state = DECODING;
		received = CMD_EVENT;
		xQueueSend(GUI_queue,&received,10000);
		break;

	case '#':
		if(xSemaphoreTake(scale_sem,5000 / portTICK_RATE_MS))
		{
			put_msg_state(SSM_SCALE, convert_input());

			xSemaphoreGive(scale_sem);

			ui_state = SET_OFFSET;
			received = SET_OFFSET_EVENT;
			xQueueSend(GUI_queue,&received,10000);
			reset_input();
		}
		break;

	default:
		if(input_iterator < 5 && received >= '0' && received <= '9')
		{
			current_input[input_iterator++] = received;
			xQueueSend(GUI_queue,&received,10000);
		}
		break;
	}
}

void set_offset()
{
	switch(received)
	{
	case '*':
		ui_state = DECODING;
		received = CMD_EVENT;
		xQueueSend(GUI_queue,&received,10000);
		break;

	case '#':
		if(xSemaphoreTake(scale_sem,5000 / portTICK_RATE_MS))
		{
			put_msg_state(SSM_OFFSET, convert_input());

			xSemaphoreGive(scale_sem);

			ui_state = SHOW_KNOB;
			received = SHOW_KNOB_EVENT;
			xQueueSend(GUI_queue,&received,10000);
			reset_input();
		}
		break;

	default:
		if(input_iterator < 5 && received >= '0' && received <= '9')
		{
			current_input[input_iterator++] = received;
			xQueueSend(GUI_queue,&received,10000);
		}
		break;
	}
}

INT32U convert_input()
{
	INT32U result = 0;
	for(INT8S i = input_iterator - 1; i >= 0; i--)
	{
		INT32U temp = current_input[i] - '0';
		for(int j = i; j < input_iterator - 1; j++)
			temp *= 10;
		result += temp;
	}

	return result;
}
/****************************** End Of Module *******************************/


