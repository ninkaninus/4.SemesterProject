/*****************************************************************************
* University of Southern Denmark
* Embedded C Programming (ECP)
*
* MODULENAME.: keypad.h
*
* PROJECT....:
*
* DESCRIPTION:
*
* Change Log:
******************************************************************************
* Date    	Id    Change
* --------------------
* 11032016  BMH   Module created.
*
*****************************************************************************/

#ifndef KEYPAD_H_
#define KEYPAD_H_

/***************************** Include files *******************************/

/*****************************    Defines    *******************************/

#define NUMPAD_DEBOUNCE_TIME 6 //About 30ms since the tick is 5ms

/*****************************   Constants   *******************************/

/*****************************   Functions   *******************************/

void keypad_init();
/*****************************************************************************
*   Input    : -
*   Output   : -
*   Function : Initialize keyboard
******************************************************************************/
// Set the direction as output
/****************************** End Of Module *******************************/

void keypad_get_task(void *pvParameters);

#endif /*KEYPAD_H_*/
