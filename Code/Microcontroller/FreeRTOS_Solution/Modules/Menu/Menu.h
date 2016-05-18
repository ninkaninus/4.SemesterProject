/*****************************************************************************
* University of Southern Denmark
* Embedded C Programming (ECP)
*
* MODULENAME.: Menu.h
*
* PROJECT....: Pan/Tilt Project
*
* DESCRIPTION: Gives a propper menu function to the system
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 050516  CBM   Module created
*
*****************************************************************************/

#ifndef MENU_H_
#define MENU_H_

/***************************** Include files *******************************/
#include "Modules/EMP/emp_type.h"
/*****************************    Defines    *******************************/
/*****************************   Constants   *******************************/
extern xQueueHandle menu_queue;
extern xQueueHandle GUI_queue;
/*****************************   Functions   *******************************/
void Menu_task(void *pvParameters);
/*****************************************************************************
*   Input    : DrehImpulsgeber event
*   Output   : LCD
*   Function : Menu task for LCD
******************************************************************************/
/****************************** End Of Module *******************************/
#endif /* MENU_H_ */
