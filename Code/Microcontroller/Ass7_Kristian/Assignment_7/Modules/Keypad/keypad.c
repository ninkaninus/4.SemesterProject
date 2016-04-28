/*****************************************************************************

* University of Southern Denmark
* Embedded C Programming (ECP)
*
* MODULENAME.: keypad.c
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
* 110316  BMH   Module created.
*
*****************************************************************************/

/***************************** Include files *******************************/
#include <stdint.h>
#include <tm4c123gh6pm.h>
#include "Modules/EMP/emp_type.h"
#include <Numpad/Numpad.h>
#include <UART/uart0.h>
#include <Queue/Queue.h>
#include <Tasking/tmodel.h>
#include "RTCS/rtcs.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"


/*****************************    Defines    *******************************/
#define X1_VAL 3
#define X2_VAL 8
#define X3_VAL 16
#define ITERATOR_START 0
#define ITERATOR_MAX 3

enum KEYPAD_states
{
  KEYPAD_INIT,
  KEYPAD_READY,
  KEYPAD_PUSHED
};

/*****************************   Constants   *******************************/
INT8U keypad_ch[25]={0,0,0,0,'#','9',0,'6',0,'0','8','3','5',0,0,0,'2','*','7',0,'4',0,0,0,'1'
};
/*****************************   Variables   *******************************/
INT8U my_state = 0;
INT8U port_e;
INT8U keypad_input;
INT8U iterator;
INT8U output;
enum KEYPAD_states Keypad_state = KEYPAD_INIT;
extern struct Queue numpad_input_queue;
extern xQueueHandle UI_queue;
/*****************************   Functions   *******************************/

void keypad_init(void)
/*****************************************************************************
*   Input    :
*   Output   :
*   Function :
******************************************************************************/
{
	 SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOE;
	 // Set the direction as output
	 GPIO_PORTA_DIR_R |= 0b00011100;
	 // Enable the GPIO pins for digital function (PF0, PF1, PF2, PF3, PF4).
	 //X
	 GPIO_PORTA_DEN_R |= 0b00011100;
	 //Y
	 GPIO_PORTE_DEN_R |= 0b00001111;
	  // Enable internal pull-up (PF0 and PF4).
	 GPIO_PORTE_PUR_R |= 0b00000000;
}

INT8U keypad_pressed()
{
	GPIO_PORTA_DATA_R |= 0b00011100;
	port_e =  GPIO_PORTE_DATA_R;
	GPIO_PORTA_DATA_R &= ~0b00011100;
	return port_e;
}

INT8U keypad_get(INT8U x_state)
{
		switch(x_state)
		{
			case 0:
			GPIO_PORTA_DATA_R |= 0b00000100;
			port_e = GPIO_PORTE_DATA_R;
			keypad_input = X1_VAL + port_e;

			GPIO_PORTA_DATA_R &= ~0b00000100;

			return keypad_ch[keypad_input];

			case 1:
			GPIO_PORTA_DATA_R |= 0b00001000;
			port_e = GPIO_PORTE_DATA_R;
			keypad_input = X2_VAL + port_e;

			GPIO_PORTA_DATA_R &=  ~0b00001000;

			return keypad_ch[keypad_input];

			case 2:
			GPIO_PORTA_DATA_R |= 0b00010000;
			port_e = GPIO_PORTE_DATA_R;
			keypad_input = X3_VAL + port_e;
			if (keypad_input == X3_VAL)
				keypad_input=0;

			GPIO_PORTA_DATA_R &= ~0b00010000;
			return keypad_ch[keypad_input];

			default:
				return 0;
		}
}

INT8U keypad_output()
{
	iterator=ITERATOR_START;
	while(iterator < ITERATOR_MAX)
	{
		if (keypad_get(iterator))
			{
			return keypad_get(iterator);
			}
		iterator++;
	}
	return 0;
}

extern void keypad_get_task(void *pvParameters)
{
	while(1)
	{
	switch(my_state)
	{
	case KEYPAD_INIT:
		keypad_init();
		my_state=KEYPAD_READY;
		break;

	case KEYPAD_READY:
	 if( keypad_pressed())
	 {
		my_state=KEYPAD_PUSHED;
		output = keypad_output();
		xQueueSend(UI_queue, &output ,10000);

	 }

	 else
		 vTaskDelay(30 / portTICK_RATE_MS);
	 break;

	case KEYPAD_PUSHED:
	 if (!keypad_pressed())
		 my_state=KEYPAD_READY;
	 else
		 vTaskDelay(30 / portTICK_RATE_MS);
	 break;
	}
	}
}
/****************************** End Of Module *******************************/
