/*****************************************************************************
* University of Southern Denmark
* Embedded C Programming (ECP)
*
* MODULENAME.: tmodel.h
*
* PROJECT....: ECP
*
* DESCRIPTION: Defines the elemtn of the task model..
*
* Change Log:
******************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 101004  MoH   Module created.
*
*****************************************************************************/

#ifndef _TMODEL_H_
#define _TMODEL_H_


// Shared State Memory.
// --------------------
#define SSM_RTC_SEC				31
#define SSM_RTC_MIN				32
#define SSM_RTC_HOUR			33

#define SSM_ADC_VALUE			40
#define SSM_SCALE				41
#define SSM_OFFSET				42
#define SSM_SCALED_ADC			43

#define SSM_PWM_DIR_EN_PAN		50
#define SSM_POS_PAN				51
#define SSM_PWM_DIR_EN_TILT		52
#define SSM_POS_TILT			54

// Events
#define ERROR_EVENT				0
#define CMD_EVENT				1
#define SET_TIME_EVENT			2
#define SHOW_TIME_EVENT			3
#define SET_SCALE_EVENT			4
#define SET_OFFSET_EVENT		5
#define SHOW_KNOB_EVENT			6

#endif /* _TMODEL_H_ */
