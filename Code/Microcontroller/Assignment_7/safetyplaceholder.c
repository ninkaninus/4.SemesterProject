/*
 * safetyplaceholder.c
 *
 *  Created on: 28 Apr 2016
 *      Author: Daniel
 */


#define UPPER_X 5
#define LOWER_X 1
#define UPPER_Y 5
#define LOWER_X 1

void get_coordinates()  // HUSK AT CHECKE!!
{
	if(xSemaphoreTake(position_access_sem,0))
	{
		if (x_degrees < LOWER_X || x_degrees > UPPER_X || y_degrees < LOWER_Y || y_degrees > UPPER_Y)
		{
			x_tics_aim = 0;		//CHECK!!!
			y_tics_aim = 0;		//CHECK!!!
			xSemaphoreGive(position_access_sem);
			return;
		}
		x_tics_aim = ligning_der_skal_hittes_ud;
		y_tics_aim = ligning_der_skal_hittes_ud;
		XSemaphoreGive(position_access_sem);
	}
	return:
}

