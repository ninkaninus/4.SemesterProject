/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: Menu.c
*
* PROJECT....: Pan/Tilt Project
*
* DESCRIPTION: See module specification file (.h-file).
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 050516  CBM   Module created.
*****************************************************************************/

/***************************** Include files *******************************/
/*Free Rtos plus necessary build files*/
#include <stdint.h>
#include <tm4c123gh6pm.h>
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"


/*Own include files*/
#include "Modules/EMP/emp_type.h"
#include "Modules/LCD/lcd.h"
#include "Modules/Tasking/tmodel.h"
#include "Modules/Tasking/messages.h"
#include "GUI/gui.h"
#include "Menu.h"

/*****************************   Variables   *******************************/
enum menu_states
{
	MAIN,
	CONTROL,
	POSITION,
	CONTROL_PID
};
/*****************************   Functions   *******************************/
void Menu_task(void *pvParameters)
{
	INT8U received;
	INT8U menu_state = MAIN;
	while(1)
	{
		switch (menu_state)
		{
		case MAIN:
			if (xQueueReceive(menu_queue, &received, 10000))
			{
				switch (received)
				{
				case 'R':
					xQueueSend(GUI_queue, &received, 100);
					menu_state = CONTROL;
					break;
				case 'L':
					xQueueSend(GUI_queue, &received, 100);
					menu_state = POSITION;
					break;
				case '#':

					break;
				case '*':

					break;
				default:
					break;
				}
			}
			break;
		case CONTROL:
			if (xQueueReceive(menu_queue, &received, 10000))
			{
				switch (received)
				{
				case 'R':
					xQueueSend(GUI_queue, &received, 100);
					menu_state = POSITION;
					break;
				case 'L':
					xQueueSend(GUI_queue, &received, 100);
					menu_state = MAIN;
					break;
				case '#':
					xQueueSend(GUI_queue, &received, 100);
					menu_state = CONTROL_PID;
					break;
				default:
					break;
				}
			}
			break;
		case POSITION:
			if (xQueueReceive(menu_queue, &received, 10000))
			{
				switch (received)
				{
				case 'R':
					xQueueSend(GUI_queue, &received, 100);
					menu_state = MAIN;
					break;
				case 'L':
					xQueueSend(GUI_queue, &received, 100);
					menu_state = CONTROL;
					break;
				case '#':
					break;
				case '*':
					break;
				default:
					break;
				}
			}
			break;
		case CONTROL_PID:
			if (xQueueReceive(menu_queue, &received, 10000))
			{
				switch (received)
				{
				case 'R':
					break;
				case 'L':
					break;
				case '#':
					break;
				case '*':
					xQueueSend(GUI_queue, &received, 100);
					menu_state = CONTROL;
					break;
				default:
					break;
				}
			}
			break;
		default:
			break;
		}
		vTaskDelay(5 / portTICK_RATE_MS);
	}
}
/****************************** End Of Module ******************************/
