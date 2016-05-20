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
#define SSM_SP_PAN				52
#define SSM_PWM_DIR_EN_TILT		53
#define SSM_POS_TILT			54
#define SSM_SP_TILT				55
#define SSM_SP_DEG_TILT			56
#define SSM_SP_DEG_PAN			57
#define SSM_POS_DEG_TILT		58
#define SSM_POS_DEG_PAN			59
#define SSM_OFFSET_PAN			60
#define SSM_OFFSET_TILT			61


// Events
#define ERROR_EVENT				0
#define CMD_EVENT				1
#define SET_TIME_EVENT			2
#define SHOW_TIME_EVENT			3
#define SET_SCALE_EVENT			4
#define SET_OFFSET_EVENT		5
#define SHOW_KNOB_EVENT			6
#define PID_UPDATE_EVENT		7
#define GET_POS_EVENT			8
#define SET_PWM_EVENT			9
#define MAX_PWM_EVENT			10
#define STOP_EVENT				11

#endif /* _TMODEL_H_ */
