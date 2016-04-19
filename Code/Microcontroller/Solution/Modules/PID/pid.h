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

/********************** External declaration of Variables ******************/

/*****************************   Constants   *******************************/

/*************************  Function interfaces ****************************/

void pid_task(void *pvParameters);

FP32 pid_calc(FP32 desired, FP32 actual);



#endif /* PID_H_ */
