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

INT8U images[4][36] = {
		{' ','S','Y','S','T','E','M',' ','C','O','N','T','R','O','L',' ',
		 ' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
		 0x00,0,0,0 },

		{' ',' ',' ','R','E','G','U','L','A','T','I','O','N',' ',' ',' ',
		 ' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
		 0x00,0,0,0 },

		{' ',' ',' ',' ','P','O','S','I','T','I','O','N',' ',' ',' ',' ',
		' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
		0x00,0,0,0 },

		{' ',' ','P','I','D',' ','C','O','N','T','R','O','L',' ',' ',' ',
		' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',
		0x00,0,0,0 },
};

INT8U current_image[36];

extern xQueueHandle GUI_queue;
extern xQueueHandle LCD_image_queue;

extern xSemaphoreHandle rtc_update_sem;
extern xSemaphoreHandle scale_sem;
extern xSemaphoreHandle scale_update_sem;

enum gui_states {
	MAIN,
	CONTROL,
	POSITION,
	CONTROL_PID
};

/*****************************   Functions   *******************************/

void gui_task(void *pvParameters)
{
	INT8U received;
	INT8U gui_state = MAIN;

	new_image(MAIN);
	while (1)
	{
		switch (gui_state)
		{
		case MAIN:
			if (xQueueReceive(GUI_queue,&received,1000))
			{
				if (received == 'R')
				{
					gui_state = CONTROL;
					new_image(CONTROL);
				}
				if (received == 'L')
				{
					gui_state = POSITION;
					new_image(POSITION);
				}
			}
			break;
		case CONTROL:
			if (xQueueReceive(GUI_queue,&received,1000))
			{
				if (received == 'R')
				{
					gui_state = POSITION;
					new_image(POSITION);
				}
				if (received == 'L')
				{
					gui_state = MAIN;
					new_image(MAIN);
				}
				if (received == '#')
				{
					gui_state = CONTROL_PID;
					new_image(CONTROL_PID);
				}
			}
			break;
		case POSITION:
			if (xQueueReceive(GUI_queue,&received,1000))
			{
				if (received == 'R')
				{
					gui_state = MAIN;
					new_image(MAIN);
				}
				if (received == 'L')
				{
					gui_state = CONTROL;
					new_image(CONTROL);
				}
			}
			break;
		case CONTROL_PID:
			if (xQueueReceive(GUI_queue,&received,1000))
			{
				if (received == '*')
				{
					gui_state = CONTROL;
					new_image(CONTROL);
				}
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
