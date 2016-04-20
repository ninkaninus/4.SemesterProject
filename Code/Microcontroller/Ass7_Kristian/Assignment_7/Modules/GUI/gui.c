/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: gui.c
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
#include "EMP/emp_type.h"
#include "Modules/LCD/lcd.h"
#include "Modules/Tasking/tmodel.h"
#include "Modules/Tasking/messages.h"
#include "GUI/gui.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

INT8U images[8][36] = {
		{'W','e','l','c','o','m','e','!',' ','P','r','e','s','s',' ',' ',
		 '"','*','"',' ','f','o','r',' ','m','e','n','u',' ',' ',' ',' ',
		 0x00,0,0,0 },

		{'E','n','t','e','r',' ','C','o','m','m','a','n','d',':',' ',' ',
		 ' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
		 0x10,0,1,0 },

		{'I','n','v','a','l','i','d',' ','I','n','p','u','t',' ',' ',' ',
		 ' ',' ','T','r','y',' ','A','g','a','i','n','.','.','.',' ',' ',
		 0x00,0,0,0 },

		{'S','e','t',' ','t','h','e',' ','T','i','m','e',':',' ',' ',' ',
		 ' ',' ',' ',' ','h','h',':','m','m',':','s','s',' ',' ',' ',' ',
	     0x14,0,1,0 },

		{'C','u','r','r','e','n','t',' ','T','i','m','e',':',' ',' ',' ',
		 ' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
		 0x14,0,0,0 },

		{'S','e','t',' ','S','c','a','l','e',':',' ',' ',' ',' ',' ',' ',
		 ' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
		 0x10,0,1,0 },

		{'S','e','t',' ','O','f','f','s','e','t',':',' ',' ',' ',' ',' ',
		 ' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
		 0x10,0,1,0 },

		{'K','n','o','b',' ','V','a','l','u','e',':',' ',' ',' ',' ',' ',
		 ' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
		 0x18,0,0,0 }
};

INT8U current_image[36];

extern xQueueHandle GUI_queue;
extern xQueueHandle LCD_image_queue;

extern xSemaphoreHandle rtc_update_sem;
extern xSemaphoreHandle scale_sem;
extern xSemaphoreHandle scale_update_sem;

enum gui_states {
	INIT,
	ENTER_COMMAND,
	SET_TIME,
	SHOW_TIME,
	SET_SCALE,
	SET_OFFSET,
	SHOW_KNOB
};

/*****************************   Functions   *******************************/

void gui_task(void *pvParameters)
{
	INT8U received;
	INT8U gui_state = INIT;

	set_image(WELCOME_MSG);
	xQueueSend(LCD_image_queue,&current_image,10000);
	while (1) {
			switch (gui_state)
			{
			case INIT:
				if (xQueueReceive(GUI_queue, &received, 10000))
				{
					if (received == CMD_EVENT)
					{
						gui_state = ENTER_COMMAND;
						new_image(COMMAND_PROMPT);
					}
				}
				break;

			case ENTER_COMMAND:
				if (xQueueReceive(GUI_queue, &received, 10000))
				{
					switch(received)
					{
					case ERROR_EVENT:
						new_image(ERROR_MSG);
						vTaskDelay(1000 / portTICK_RATE_MS);
						new_image(COMMAND_PROMPT);
						break;

					case CMD_EVENT:
						new_image(COMMAND_PROMPT);
						break;

					case SET_TIME_EVENT:
						gui_state = SET_TIME;
						new_image(TIME_PROMPT);
						break;

					case SHOW_TIME_EVENT:
						gui_state = SHOW_TIME;
						new_image(CURRENT_TIME);
						break;

					case SET_SCALE_EVENT:
						gui_state = SET_SCALE;
						new_image(SCALE_PROMPT);
						break;

					case SET_OFFSET_EVENT:
						gui_state = SET_OFFSET;
						new_image(OFFSET_PROMPT);
						break;

					case SHOW_KNOB_EVENT:
						gui_state = SHOW_KNOB;
						new_image(KNOB_VALUE);
						break;

					default:
						if(current_image[NEXT_CURSOR_POS] < 32)
						{
							write_char(received);
						}
						break;
					}
				}
				break;

			case SET_TIME:
				if (xQueueReceive(GUI_queue, &received, 10000))
				{
					switch(received)
					{
					case ERROR_EVENT:
						new_image(ERROR_MSG);
						vTaskDelay(1000 / portTICK_RATE_MS);
						new_image(TIME_PROMPT);
						break;

					case CMD_EVENT:
						gui_state = ENTER_COMMAND;
						new_image(COMMAND_PROMPT);
						break;

					case SHOW_TIME_EVENT:
						gui_state = SHOW_TIME;
						new_image(CURRENT_TIME);
						break;

					default:
						if (current_image[NEXT_CURSOR_POS] == 0x16 || current_image[NEXT_CURSOR_POS] == 0x19) 	// positioner svarende til de to colonner
						{
							current_image[NEXT_CURSOR_POS]++;				// n�ste cursor skal v�re 1 position l�ngere fremme
							write_char(received);
							current_image[CHAR_POS]++;					// n�ste karakter der skal skrives skal ogs� v�re 1 position l�ngere fremme
						}
						else
							write_char(received);

						break;
					}
				}
				break;

			case SHOW_TIME:
				if (xQueueReceive(GUI_queue, &received, 500 / portTICK_RATE_MS))
				{
					if(received == CMD_EVENT)
					{
						gui_state = ENTER_COMMAND;
						new_image(COMMAND_PROMPT);
					}
				}
				else if(xSemaphoreTake(rtc_update_sem,10000 / portTICK_RATE_MS))
				{
					INT8U sec = get_msg_state(SSM_RTC_SEC);
					INT8U min = get_msg_state(SSM_RTC_MIN);
					INT8U hour = get_msg_state(SSM_RTC_HOUR);
					INT8U colon = ':';

					if( sec & 0x01)
						colon = ' ';

					write_char(hour / 10 + '0');
					write_char(hour % 10 + '0');
					write_char(colon);
					write_char(min / 10 + '0');
					write_char(min % 10 + '0');
					write_char(colon);
					write_char(sec / 10 + '0');

					current_image[NEXT_CURSOR_POS] = 0x14;
					write_char(sec % 10 + '0');
					current_image[CHAR_POS] = 0x13;

				}
				break;

			case SET_SCALE:
				if (xQueueReceive(GUI_queue, &received, 500 / portTICK_RATE_MS))
				{
					switch(received)
					{
					case CMD_EVENT:
						gui_state = ENTER_COMMAND;
						new_image(COMMAND_PROMPT);
						break;

					case SET_OFFSET_EVENT:
						gui_state = SET_OFFSET;
						new_image(OFFSET_PROMPT);
						break;

					default:
						write_char(received);
						break;
					}
				}

				break;

			case SET_OFFSET:
				if (xQueueReceive(GUI_queue, &received, 500 / portTICK_RATE_MS))
				{
					switch(received)
					{
					case CMD_EVENT:
						gui_state = ENTER_COMMAND;
						new_image(COMMAND_PROMPT);
						break;

					case SHOW_KNOB_EVENT:
						gui_state = SHOW_KNOB;
						new_image(KNOB_VALUE);
						break;

					default:
						write_char(received);
						break;
					}
				}

				break;

			case SHOW_KNOB:
				if (xQueueReceive(GUI_queue, &received, 500 / portTICK_RATE_MS))
				{
					if(received == CMD_EVENT)
					{
						gui_state = ENTER_COMMAND;
						new_image(COMMAND_PROMPT);
					}
				}
				else if(xSemaphoreTake(scale_update_sem,10000 / portTICK_RATE_MS))
				{
					show_knob();
				}
				break;

			default:
				break;
		}
	}
}


void set_image(INT8U image)
{
	for(int i = 0; i < 36; i++)
	{
		current_image[i] = images[image][i];
	}
}

void new_image(INT8U image)
{
	set_image(image);
	xQueueSend(LCD_image_queue,&current_image,10000);
	current_image[NEXT_CURSOR_POS] = current_image[CHAR_POS] + 1;
}

void write_char(INT8U character)
{
	current_image[current_image[CHAR_POS]] = character;
	xQueueSend(LCD_image_queue,&current_image,10000);
	current_image[CHAR_POS]++;
	current_image[NEXT_CURSOR_POS]++;
}

void show_knob()
{
	INT32U adc = get_msg_state(SSM_SCALED_ADC);

	INT8U dig8 = adc / 10000000;
	adc -= dig8 * 10000000;
	dig8 += '0';

	INT8U dig7 = adc / 1000000;
	adc -= dig7 * 1000000;
	dig7 += '0';

	INT8U dig6 = adc / 100000;
	adc -= dig6 * 100000;
	dig6 += '0';

	INT8U dig5 = adc / 10000;
	adc -= dig5 * 10000;
	dig5 += '0';

	INT8U dig4 = adc / 1000;
	adc -= dig4 * 1000;
	dig4 += '0';

	INT8U dig3 = adc / 100;
	adc -= dig3 * 100;
	dig3 += '0';

	INT8U dig2 = adc / 10;
	dig2 += '0';

	INT8U dig1 = adc % 10;
	dig1 += '0';

	adc = get_msg_state(SSM_SCALED_ADC);

	if(adc < 10000000)
		dig8 = ' ';

	if(adc < 1000000)
		dig7 = ' ';

	if(adc < 100000)
		dig6 = ' ';

	if(adc < 10000)
		dig5 = ' ';

	if(adc < 1000)
		dig4 = ' ';

	if(adc < 100)
		dig3 = ' ';

	if(adc < 10)
		dig2 = ' ';

	write_char(dig8);

	write_char(dig7);

	write_char(dig6);

	write_char(dig5);

	write_char(dig4);

	write_char(dig3);

	write_char(dig2);

	current_image[NEXT_CURSOR_POS] = 0x18;
	write_char(dig1);
	current_image[CHAR_POS] = 0x17;
}


/****************************** End Of Module *******************************/
