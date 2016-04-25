/*
 * Menu.c
 *
 *  Created on: 14 Apr 2016
 *      Author: Daniel
 */

//What menu we are in
#define Main_menu	0;
#define Run			1;
#define	Numpad		2;
#define	Geber		3;
#define Adjust		4;
#define	Options 	5;

//Current option in menu - Main
#define Main_menu_run	1;
#define Main_menu_numpad 2;
#define Main_menu_geber	3:
#define Main_menu_adjust 4;
#define Main_menu_options 5;

//Current option in menu - Run
#define run_return  0;
#define start_stop	1;
#define pic_now		2;
#define	auto_pic_on_off	3;

//Current option in menu - Numpad
#define numpad_return 0;
#define longtitude	1;
#define lattitude	2;

//Current option in menu - Adjust
#define adjust_return 0;
#define	value1		1;

//Current option in menu - Options
#define options_return	0;
#define numpad_on_off	1;
#define UART_on_off		2;
#define set_time		3;
#define set_location	4;
#define reset_position	5;

#define BE_left		1;
#define BE_right	2;
#define BE_push		3;

/*
switch (geber_evet)
{
	case BE_left:

		break;
	case BE_right:

		break;
	case BE_push:

		break;
	default:
		break;
}*/

void menu_task(void *pvParameters)
{
	static INT8U menu_state = 0;
	static INT8U menu_selection = 0;
	static INT8U item_selected = 0;

	while(1)
	{
		switch (menu_state)
		{
			case menu:

				switch (menu_selected)
				{
					case menu_run:

						switch (geber_evet)
						{
							case BE_left:
								menu_selected = Options;
								break;
							case BE_right:
								menu_selected = Numpad;
								break;
							case BE_push:
								menu_state = Main_menu_run;
								break;
							default:
								break;
						}

						//do stuff
						break;

					case menu_numpad:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:
								menu_selected = Run;
								break;
							case BE_right:
								menu_selected = Geber;
								break;
							case BE_push:
								menu_state = Main_menu_numpad;
								break;
							default:
								break;
						}

						break;

					case menu_geber:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:
								menu_selected = Numpad;
								break;
							case BE_right:
								menu_selected = Adjust;
								break;
							case BE_push:
								menu_state = Main_menu_geber;
								break;
							default:
								break;
						}

						break;

					case menu_adjust:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:
								menu_selected = Geber;
								break;
							case BE_right:
								menu_selected = Options;
								break;
							case BE_push:
								menu_state = Main_menu_adjust;
								break;
							default:
								break;
						}

						break;

					case menu_options:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:
								menu_selected = Adjust;
								break;
							case BE_right:
								menu_selected = Run;
								break;
							case BE_push:
								menu_state = Main_menu_options;
								break;
							default:
								break;
						}

						break;

					default :
						break;
				}

				break;

			case Run:

				switch (menu_selected)
				{
					case start_stop:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;

					case pic_now:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;

					case auto_pic_on_off:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;

					case menu_return:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;

					default :
						break;

				}

				break;

			case numpad:

				//do stuff
				break;

			case geber:

				switch (menu_selected)
					case longtitude:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;

					case lattitude:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;

					case menu_return:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;

					default :
						break;

				break;

			case adjust:

				switch (menu_selected)

					case value1:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;

					case menu_return:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;


				break;

			case options:

				switch (menu_selected)

					case numpad_on_off:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;

					case UART_on_off:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;

					case set_time:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;

					case set_location:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;

					case reset_position:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;

					case menu_return:
						//do stuff

						switch (geber_evet)
						{
							case BE_left:

								break;
							case BE_right:

								break;
							case BE_push:

								break;
							default:
								break;
						}

						break;

					default:
						break;


			break;

			default :
				break;
		}
	}
}


