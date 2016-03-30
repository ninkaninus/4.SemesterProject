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

/********************** External declaration of Variables ******************/

/*****************************   Constants   *******************************/

/*************************  Function interfaces ****************************/

void SSI_init();

void SPI_write(INT8U data);

INT8U SPI_read();

//Test Function
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Test function
******************************************************************************/


/****************************** End Of Module *******************************/

#endif
