#include "PID/pid.h"

#define DT 				0.005
#define O_MAX			400000
#define O_MIN			-400000
#define I_MAX			70000
#define I_MIN			-70000
#define DC_MAX			150
#define DC_MIN			60
#define K				0.0035
#define KP1				0.0175
#define KI1				0.0035
#define KD1				0.0035
#define KP2				0.0175
#define KI2				0.0035
#define KD2				0.0035

INT32S pid_calc(INT32U desired, INT32U actual, PID *controller)
{
	INT32S error;
	INT32S derivative;
	INT32S integral;
	INT32S output;

	error = desired - actual;
	integral = controller->integral;
	integral = integral + error*DT;

	if(integral > I_MAX)
		integral = I_MAX;
	if(integral < I_MIN)
		integral = I_MIN;

	if(error == 0)			// nulstiller integral-delen når målet er nået.
		integral = 0;

	derivative = (error - controller->prev_error)/DT;

	INT32S P_term = controller->Kp*error;			// scaled by 10E4
	INT32S I_term = controller->Ki*integral;		// scaled by 10E8
	INT32S D_term = controller->Kd*derivative;		// scaled by 1

	output = P_term + I_term + D_term;



	if(output > O_MAX)
		output = O_MAX;
	if(output < O_MIN)
		output = O_MIN;

	controller->integral = integral;
	controller->prev_error = error;

	return output;
}


