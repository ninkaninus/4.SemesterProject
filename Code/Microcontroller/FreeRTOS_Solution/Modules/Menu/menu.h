/*****************************************************************************
* University of Southern Denmark
* Embedded C Programming (ECP)
*
* MODULENAME.: menu.h
*
* PROJECT....: Project
*
* DESCRIPTION: Menu services
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 050128  KA    Module created
*
*****************************************************************************/

#ifndef MENU_H_
#define MENU_H_

/***************************** Include files *******************************/
#include "Modules/EMP/emp_type.h"
#include <stdint.h>
#include <tm4c123gh6pm.h>
#include "EMP/emp_type.h"
#include "GUI/menu.h"
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"
//#include <String.h>
/*****************************    Defines    *******************************/

//beskeder
#define IMAGE_MAIN_RUN			1
#define IMAGE_MAIN_SHOW			2
#define IMAGE_MAIN_OPTIONS		3
#define IMAGE_RUN_START			4
#define IMAGE_RUN_STOP			5
#define IMAGE_RUN_JOG			6
#define IMAGE_RUN_SET			7
#define IMAGE_RUN_AUTO			8
#define IMAGE_RUN_RETURN		9
#define IMAGE_SHOW_PAN			10
#define IMAGE_SHOW_TILT			11
#define IMAGE_SHOW_ERROR		12
#define IMAGE_SHOW_RETURN		13
#define IMAGE_OPTIONS_PAN		14
#define IMAGE_OPTIONS_TILT		15
#define IMAGE_OPTIONS_PAN_PID	16
#define IMAGE_OPTIONS_TILT_PID	17
#define IMAGE_OPTIONS_KANIN		18
#define IMAGE_OPTIONS_RETURN	19

//What menu we are in - super state
#define MAIN_MENU	0
#define RUN			1
#define	SHOW		2
#define	OPTIONS 	3

//Current option in menu - Main
#define MENU_RUN		1
#define MENU_SHOW		2
#define MENU_OPTIONS	3

//Current option in menu - RUN
#define RUN_RETURN  		0
#define RUN_START			1
#define RUN_STOP			2
#define RUN_MANUAL_JOG		3
#define RUN_MANUAL_SET		4
#define	RUN_AUTO_PIC_ON_OFF	5

//Current OPTIONS in menu - SHOW
#define SHOW_RETURN		0
#define SHOW_PAN		1
#define SHOW_TILT		2
#define SHOW_ERROR		3

//Current option in menu - OPTIONS
#define OPTIONS_RETURN			0
#define OPTIONS_SET_PAN_OFFSET	1
#define OPTIONS_SET_TILT_OFFSET	2
#define OPTIONS_PAN_PIDK		3
#define OPTIONS_TILT_PIDK		4
#define OPTIONS_KANIN_PID		5

//Input events
#define KE_0		0
#define KE_1		1
#define KE_2		2
#define KE_3		3
#define KE_4		4
#define KE_5		5
#define KE_6		6
#define KE_7		7
#define KE_8		8
#define KE_9		9
#define KE_STAR		10
#define KE_HASTTAG	11
#define BE_LEFT		12
#define BE_RIGHT	13
#define BE_PUSH		14

/*****************************   Constants   *******************************/


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


/****************************** End Of Module *******************************/
#endif /* GUI_H_ */
