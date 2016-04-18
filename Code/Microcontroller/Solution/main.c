/*****************************************************************************
* University of Southern Denmark
* Robot Technology 4th Semester
*
* MODULENAME.: main.c
*
* PROJECT....: 4th Semester Project
*
* DESCRIPTION: The main file running the entire program
*
***************************** Include files *******************************/
#include <tm4c123gh6pm.h>
#include <stdint.h>
#include "Modules/EMP/emp_type.h"
#include "Modules/SysTick/systick.h"
#include "Modules/GPIO/GPIO.h"
#include <UART/uart0.h>
#include <EMP/emp_type.h>
#include <SPI/SPI.h>

/*****************************    Defines    *******************************/


/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

/*****************************   Functions   *******************************/

int main(void)

{
	//Initialization
	disable_global_int();
	//SysTick_init();
	GPIO_init();
	UART0_init(19200, 8, 1, 0);
	SSI_init();
	enable_global_int();

	while(1) {
		static INT16U dataIn;
		INT8U temp = 0;
		dataIn = SPI_read();
		temp = (INT8U)dataIn;
		uart0_putc((INT8U)(dataIn>>8));
		uart0_putc(temp);
	}

	return (0);
}

/****************************** End Of Module *******************************/

