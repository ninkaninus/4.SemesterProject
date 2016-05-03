/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: PID.h
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

#ifndef PID_H_
#define PID_H_

/***************************** Include files *******************************/
#include <EMP/emp_type.h>

/*****************************    Defines    *******************************/

typedef struct
{
	INT32U Kp;				// Proportional Gain
	INT32U Ki;				// Integral Gain
	INT32U Kd;				// Derivative Gain
	
	INT32S integral;			// Integral Term
	INT32S prev_error;		// Previous error term
} PID;



/********************** External declaration of Variables ******************/

/*****************************   Constants   *******************************/

/*************************  Function interfaces ****************************/

void init_pid();

void PID_task(void *pvParameters);

INT32S pid_calc(INT32U desired, INT32U actual, PID* controller);

void pid_update();

INT16U pwm_conv(INT32S output);


#endif /* PID_H_ */
