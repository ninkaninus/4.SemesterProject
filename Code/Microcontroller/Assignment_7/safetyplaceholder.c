/*
 * safetyplaceholder.c
 *
 *  Created on: 28 Apr 2016
 *      Author: Daniel
 */


#define UPPER_PAN 500
#define LOWER_PAN 1
#define UPPER_TILT 500
#define LOWER_TILT 1
#define PAN_DIRECTION_OFFSET 270
#define TILT_DIRECTION_OFFSET 270

#define direction 0 //Placeholder, skal skiftes ud med en variable der afhænger af hvilken vej vi peger.

void get_coordinates()  // HUSK AT CHECKE!!
{
	if(xSemaphoreTake(position_access_sem,0))
	{
		if (PAN_degrees < LOWER_PAN || PAN_degrees > UPPER_PAN || TILT_degrees < LOWER_TILT || TILT_degrees > UPPER_TILT)
		{
			PAN_tics_aim = 0;		//CHECK!!!
			TILT_tics_aim = 0;		//CHECK!!!
			xSemaphoreGive(position_access_sem);
			return;
		}
		PAN_tics_aim = 3*PAN_degrees+PAN_DIRECTION_OFFSET+direction;
		TILT_tics_aim = 3*TILT_degrees+TILT_DIRECTION_OFFSET;
		XSemaphoreGive(position_access_sem);
	}
	return:
}

