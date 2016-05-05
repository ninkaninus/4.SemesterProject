
/*****************************************************************************
* University of Southern Denmark
* Embedded C Programming (ECP)
*
* MODULENAME.: leds.c
*
* PROJECT....: ECP
*
* DESCRIPTION: See module specification file (.h-file).
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 050128  KA    Module created.
*
*****************************************************************************/

/***************************** Include files *******************************/

#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "EMP/emp_type.h"
#include "EMP/glob_def.h"
#include "FreeRTOS.h"
#include "Task.h"
#include "queue.h"
#include "semphr.h"
#include "systick.h"
#include "status_led.h"


// ------------------------
#include "Modules/LCD/lcd.h"
#include "Modules/GPIO/GPIO.h"
//#include "Numpad/Numpad.h"
#include "UART/uart0.h"
#include "Keypad/keypad.h"
#include "LCD/lcd.h"
#include "GPIO/GPIO.h"
#include "GUI/gui.h"
#include "ADC/adc.h"
#include "Scale/scale.h"
#include "UI/ui.h"
#include "RTC/rtc.h"

/*****************************    Defines    *******************************/
#define USERTASK_STACK_SIZE configMINIMAL_STACK_SIZE
#define IDLE_PRIO 0
#define LOW_PRIO  1
#define MED_PRIO  2
#define HIGH_PRIO 3

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/
xQueueHandle uart0_rx_queue;
xQueueHandle LCD_image_queue;
xQueueHandle GUI_queue;
xQueueHandle UI_queue;

xSemaphoreHandle adc_sem;
xSemaphoreHandle scale_sem;
xSemaphoreHandle scale_update_sem;
xSemaphoreHandle time_access_sem;
xSemaphoreHandle rtc_update_sem;

/*****************************   Functions   *******************************/


static void setupHardware(void)
{
  // TODO: Put hardware configuration and initialisation in here

  // Warning: If you do not initialize the hardware clock, the timings will be inaccurate

  GPIO_init();
  UART0_init( 19200, 8, 1, 0 );
}

int main(void)
{
  portBASE_TYPE return_value = pdTRUE;

  setupHardware();

  uart0_rx_queue 		= xQueueCreate(128,sizeof(INT8U));
  LCD_image_queue 	 	= xQueueCreate(10, sizeof(INT8U[36]));
  GUI_queue  			= xQueueCreate(16, sizeof(INT8U));
  UI_queue  			= xQueueCreate(16, sizeof(INT8U));

  adc_sem 				= xSemaphoreCreateMutex();
  scale_sem 			= xSemaphoreCreateMutex();
  scale_update_sem 		= xSemaphoreCreateMutex();
  time_access_sem 		= xSemaphoreCreateMutex();
  rtc_update_sem  		= xSemaphoreCreateMutex();

  // Start the tasks defined within this file/specific to this demo.
  return_value &= xTaskCreate( status_led_task, ( signed portCHAR * ) 	"Status LED", 	USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL );
  return_value &= xTaskCreate( LCD_task, ( signed portCHAR * ) 			"LCD", 			USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL );
  //return_value &= xTaskCreate( numpad_task, ( signed portCHAR * ) 		"Numpad", 		USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL );
  return_value &= xTaskCreate( keypad_get_task, ( signed portCHAR * ) 		"Keypad", 		USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL );
  return_value &= xTaskCreate( gui_task, ( signed portCHAR * ) 			"GUI", 			USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL );
  return_value &= xTaskCreate( ui_task, ( signed portCHAR * ) 			"UI", 			USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL );
  return_value &= xTaskCreate( adc_task, ( signed portCHAR * ) 			"ADC", 			USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL );
  return_value &= xTaskCreate( scale_task, ( signed portCHAR * ) 		"SCALE", 		USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL );
  return_value &= xTaskCreate( RTC_task, ( signed portCHAR * ) 			"RTC", 			USERTASK_STACK_SIZE, NULL, LOW_PRIO, NULL );

  // test if all tasks started sucessfully
  if (return_value != pdTRUE)
  {
    GPIO_PORTD_DATA_R &= 0xBF;  // Turn on status LED.
    while(1);  // cold not create one or more tasks.
  }


 // Start the scheduler.
  vTaskStartScheduler();


 // Will only get here if there was insufficient memory to create the idle task.

  return 1;
}
