/*****************************************************************************
 * University of Southern Denmark
 * Embedded Programming (EMP)
 *
 * MODULENAME.: Numpad.h
 *
 * PROJECT....: Assignment_5
 *
 * DESCRIPTION: See module specification file (.h-file).
 *
 * Change Log:
 *****************************************************************************
 * Date    Id    Change
 * YYMMDD
 * --------------------
 *  160311  JA    Module created.
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

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

extern struct Queue numpad_input_queue;

/*****************************   Functions   *******************************/

 void numpad_init()
/*****************************************************************************
 *   Function : See module specification (.h-file).
 *****************************************************************************/
{
	// Enable the GPIO port that is used for Numpad
	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOA | SYSCTL_RCGC2_GPIOE;

	// Do a dummy read to insert a few cycles after enabling the peripheral.
	__asm("nop");

	GPIO_PORTA_DIR_R |= (1 << NUMPAD_COLUMN_1) | (1 << NUMPAD_COLUMN_2)
			| (1 << NUMPAD_COLUMN_3);
	GPIO_PORTA_DEN_R |= (1 << NUMPAD_COLUMN_1) | (1 << NUMPAD_COLUMN_2)
			| (1 << NUMPAD_COLUMN_3);

	GPIO_PORTE_DIR_R &= !((1 << NUMPAD_ROW_1) | (1 << NUMPAD_ROW_2)
			| (1 << NUMPAD_ROW_3) | (1 << NUMPAD_ROW_4));
	GPIO_PORTE_DEN_R |= (1 << NUMPAD_ROW_1) | (1 << NUMPAD_ROW_2)
			| (1 << NUMPAD_ROW_3) | (1 << NUMPAD_ROW_4);

}

// void test();
/*****************************************************************************
 *   Function : See module specification (.h-file).
 *****************************************************************************/

void numpad_task(INT8U my_id, INT8U my_state, INT8U event, INT8U data)
/*****************************************************************************
 *   Input    : -
 *   Output   : -
 *   Function : Disable global interrupt
 ******************************************************************************/
{
	static INT16U button_prev = 0;
	volatile INT16U button_state = 0;
	volatile INT8U temp = 0;

	//Clear column pins and set column 1 high

	GPIO_PORTA_DATA_R &= !((1 << NUMPAD_COLUMN_1) | (1 << NUMPAD_COLUMN_2)
			| (1 << NUMPAD_COLUMN_3));

	GPIO_PORTA_DATA_R |= (1 << NUMPAD_COLUMN_1);

	//Read in the entire row port
	temp = GPIO_PORTE_DATA_R;

	//Clear column pins and set column 2 high
	GPIO_PORTA_DATA_R &= !((1 << NUMPAD_COLUMN_1) | (1 << NUMPAD_COLUMN_2)
			| (1 << NUMPAD_COLUMN_3));

	GPIO_PORTA_DATA_R |= (1 << NUMPAD_COLUMN_2);

	//Mask out all bits that aren't row data
	temp &= (1 << NUMPAD_ROW_1) | (1 << NUMPAD_ROW_2) | (1 << NUMPAD_ROW_3)
			| (1 << NUMPAD_ROW_4);

	button_state = temp;

	//Read in the entire row port
	temp = GPIO_PORTE_DATA_R;

	//Clear column pins and set column 3 high
	GPIO_PORTA_DATA_R &= !((1 << NUMPAD_COLUMN_1) | (1 << NUMPAD_COLUMN_2)
			| (1 << NUMPAD_COLUMN_3));

	GPIO_PORTA_DATA_R |= (1 << NUMPAD_COLUMN_3);

	//Mask out all bits that aren't row data
	temp &= (1 << NUMPAD_ROW_1) | (1 << NUMPAD_ROW_2) | (1 << NUMPAD_ROW_3)
			| (1 << NUMPAD_ROW_4);

	button_state |= (temp << 4);

	//Read in the entire row port
	temp = GPIO_PORTE_DATA_R;

	//Mask out all bits that aren't row data
	temp &= (1 << NUMPAD_ROW_1) | (1 << NUMPAD_ROW_2) | (1 << NUMPAD_ROW_3)
			| (1 << NUMPAD_ROW_4);

	button_state |= (temp << 8);

	if (button_prev != button_state) {
		for (int i = 0; i < 12; i++) {
			if ((button_state & (1 << i)) != (button_prev & (1 << i))) {
				if (button_state & (1 << i)) {
					switch (i) {
					case NUMPAD_ZERO:
						put_queue(Q_INPUT,'0',0);
						//queue_put(&numpad_input_queue,'0');
						break;
					case NUMPAD_ONE:
						put_queue(Q_INPUT,'1',0);
						//queue_put(&numpad_input_queue,'1');
						break;
					case NUMPAD_TWO:
						put_queue(Q_INPUT,'2',0);
						//queue_put(&numpad_input_queue,'2');
						break;
					case NUMPAD_THREE:
						put_queue(Q_INPUT,'3',0);
						//queue_put(&numpad_input_queue,'3');
						break;
					case NUMPAD_FOUR:
						put_queue(Q_INPUT,'4',0);
						//queue_put(&numpad_input_queue,'4');
						break;
					case NUMPAD_FIVE:
						put_queue(Q_INPUT,'5',0);
						//queue_put(&numpad_input_queue,'5');
						break;
					case NUMPAD_SIX:
						put_queue(Q_INPUT,'6',0);
						//queue_put(&numpad_input_queue,'6');
						break;
					case NUMPAD_SEVEN:
						put_queue(Q_INPUT,'7',0);
						//queue_put(&numpad_input_queue,'7');
						break;
					case NUMPAD_EIGHT:
						put_queue(Q_INPUT,'8',0);
						//queue_put(&numpad_input_queue,'8');
						break;
					case NUMPAD_NINE:
						put_queue(Q_INPUT,'9',0);
						//queue_put(&numpad_input_queue,'9');
						break;
					case NUMPAD_HASH:
						put_queue(Q_INPUT,'#',0);
						//queue_put(&numpad_input_queue,'#');
						break;
					case NUMPAD_STAR:
						put_queue(Q_INPUT,'*',0);
						//queue_put(&numpad_input_queue,'*');
						break;
					default:
						break;
					}
				}
			}
		}
		button_prev = button_state;
	}

	wait( NUMPAD_DEBOUNCE_TIME); //
}

/****************************** End Of Module *******************************/
