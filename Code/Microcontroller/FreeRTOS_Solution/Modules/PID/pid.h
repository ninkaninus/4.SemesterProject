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
	FP32 Kp;				// Proportional Gain
	FP32 Ki;				// Integral Gain
	FP32 Kd;				// Derivative Gain
	
	FP32 integral;			// Integral Term
	FP32 prev_error;		// Previous error term
} PID;



/********************** External declaration of Variables ******************/

/*****************************   Constants   *******************************/

/*************************  Function interfaces ****************************/

void init_pid();

void PID_task(void *pvParameters);

FP32 pid_calc(FP32 desired, FP32 actual, PID* controller);

void pid_update();

INT16U pwm_conv(FP32 output);


#endif /* PID_H_ */
