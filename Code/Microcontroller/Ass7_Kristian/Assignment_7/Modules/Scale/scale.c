/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: scale.c
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
#include "tm4c123gh6pm.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

#include "EMP/emp_type.h"
#include "ADC/adc.h"
#include "Tasking/messages.h"
#include "Tasking/tmodel.h"

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

extern xSemaphoreHandle adc_sem;
extern xSemaphoreHandle scale_sem;
extern xSemaphoreHandle scale_update_sem;


/*****************************   Functions   *******************************/

void scale_task(void *pvParameters)
{
	put_msg_state(SSM_SCALE, 1);
	put_msg_state(SSM_OFFSET, 0);

	INT32U temp = 0;

	while(1)
	{
		vTaskDelay(150 / portTICK_RATE_MS);

		if(xSemaphoreTake(adc_sem,10000))
		{
			temp = get_msg_state(SSM_ADC_VALUE);
			xSemaphoreGive(adc_sem);
		}

		if(xSemaphoreTake(scale_sem,10000))
		{
			INT32U scale = get_msg_state(SSM_SCALE);
			INT32U offset = get_msg_state(SSM_OFFSET);

			temp = temp*scale + offset;

			put_msg_state(SSM_SCALED_ADC, temp);
			xSemaphoreGive(scale_sem);
			xSemaphoreGive(scale_update_sem);
		}

	}
}
