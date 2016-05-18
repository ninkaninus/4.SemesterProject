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
void MENU_task(void *pvParameters);

void run_start_function(void);

void run_stop_function(void);

void run_manual_jog_function(void);

void run_manual_set_function(void);

void run_auto_pic_on_off_function(void);

void show_pan_function(void);

void show_tilt_function(void);

void show_error_function(void);

void options_set_pan_offset_function(void);

void options_set_tilt_offset_function(void);

void options_pan_pidk_function(void);

void options_tilt_pidk_function(void);

void options_kanin_pid_function(void);

void send_image(INT8U besked);
/*****************************************************************************
*   Input    : DrehImpulsgeber event
*   Output   : LCD
*   Function : Menu task for LCD
******************************************************************************/
/****************************** End Of Module *******************************/
#endif /* MENU_H_ */
