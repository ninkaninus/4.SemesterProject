/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: rtc.c
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
#include "Modules/RTC/rtc.h"
#include "Modules/EMP/emp_type.h"
#include "Modules/LCD/lcd.h"
#include "Modules/Tasking/tmodel.h"
#include "Modules/Tasking/messages.h"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

INT8U direction = 1;
extern xSemaphoreHandle time_access_sem;
extern xSemaphoreHandle rtc_update_sem;

INT8U rtc_state = 0;

/*****************************   Functions   *******************************/


void RTC_task(void *pvParameters)
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Disable global interrupt
 ******************************************************************************/
{

	while(1)
	{
		if(xSemaphoreTake(time_access_sem,10000))
		{
			INT8U sec = get_msg_state(SSM_RTC_SEC);
			INT8U min = get_msg_state(SSM_RTC_MIN);
			INT8U hour = get_msg_state(SSM_RTC_HOUR);

			switch (rtc_state) {

			case 0:
				rtc_state = 1;
				vTaskDelay(500 / portTICK_RATE_MS);
				break;
			case 1:
				sec++;
				if (sec >= 60)
				{
					min++;
					if (min >= 60) {
						hour++;
						if (hour >= 24)
							hour = 0;
						min = 0;
					}
					sec = 0;
				}

				put_msg_state(SSM_RTC_SEC, sec);
				put_msg_state(SSM_RTC_MIN, min);
				put_msg_state(SSM_RTC_HOUR, hour);


				xSemaphoreGive(rtc_update_sem);
				break;
			}

			xSemaphoreGive(time_access_sem);
			vTaskDelay(1000 / portTICK_RATE_MS);
		}
	}
}

/****************************** End Of Module *******************************/
