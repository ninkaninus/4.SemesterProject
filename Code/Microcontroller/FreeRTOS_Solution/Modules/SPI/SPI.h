/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: SPI.h
*
* PROJECT....: Solution
*
* DESCRIPTION: 
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 31/03/2016 JA    Module created.
*
*****************************************************************************/

#ifndef MODULES_SPI_SPI_H_
	#define MODULES_SPI_SPI_H_

/***************************** Include files *******************************/
#include <EMP/emp_type.h>

/*****************************    Defines    *******************************/

#define PAN_PWM		0x1000
#define PAN_POS		0x2000
#define TILT_PWM	0x3000
#define TILT_POS	0x4000

/********************** External declaration of Variables ******************/

/*****************************   Constants   *******************************/

/*************************  Function interfaces ****************************/

void SSI_init();

void SSI0_Interrupt();

void SPI_write(INT16U data);

INT16U SPI_read();

void SPI_task(void *pvParameters);

void set_pwm();

//Test Function
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Test function
******************************************************************************/


/****************************** End Of Module *******************************/

#endif
