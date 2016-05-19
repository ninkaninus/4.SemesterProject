/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: uart0.c
*
* PROJECT....: Assignment 4
*
* DESCRIPTION: Support UART comunicaiton
*
* Change Log:
*****************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
* 150228  MoH   Module created
* 040316  DFH   Module updated
*
*****************************************************************************/

/***************************** Include files *******************************/
#include <Converter/convert.h>
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include <EMP/emp_type.h>
#include <UART/uart0.h>
#include <Tasking/tmodel.h>
#include <Tasking/messages.h>
#include "Converter/convert.h"
#include "FreeRTOS.h"
#include "queue.h"
#include "task.h"
#include "semphr.h"
/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

extern xQueueHandle uart0_rx_queue;
extern xQueueHandle UI_queue;
extern xQueueHandle PID_queue;
extern xQueueHandle SPI_queue;

extern xSemaphoreHandle coordinate_access_sem;

enum uart_states {
	IDLE,
	COMMAND,
	SET,
	SET_DATA,
	GET,
	DATA,
	SEND_EVENTS,
	WAIT
};

/*****************************   Functions   *******************************/


INT32U lcrh_databits( INT8U antal_databits )
{
  if(( antal_databits < 5 ) || ( antal_databits > 8 ))
	antal_databits = 8;
  return(( (INT32U)antal_databits - 5 ) << 5 );  // Control bit 5-6, WLEN
}

INT32U lcrh_stopbits( INT8U antal_stopbits )
{
  if( antal_stopbits == 2 )
    return( 0x00000008 );  		// return bit 3 = 1
  else
	return( 0x00000000 );		// return all zeros
}

INT32U lcrh_parity( INT8U parity )
{
  INT32U result;

  switch( parity )
  {
    case 'e':
      result = 0x00000006;
      break;
    case 'o':
      result = 0x00000002;
      break;
    case '0':
      result = 0x00000086;
      break;
    case '1':
      result = 0x00000082;
      break;
    case 'n':
    default:
      result = 0x00000000;
  }
  return( result );
}

void uart0_interrupt_enable()
{
	UART0_IM_R |= UART_IM_RXIM;
	UART0_IM_R |= 0x40;

	NVIC_EN0_R |= 0x00000020;
}

void uart5_interrupt_enable()
{
	UART5_IM_R |= UART_IM_RXIM;
	UART5_IM_R |= 0x40;

	NVIC_EN1_R |= (1<<29);
}

void uart0_interrupt_disable()
{

}

void uart0_fifos_enable()
{
  UART0_LCRH_R  |= 0x00000020;
}

void uart5_fifos_enable()
{
  UART5_LCRH_R  |= 0x00000020;
}

void uart0_fifos_disable()
{
  UART0_LCRH_R  &= 0xFFFFFFEF;
}

extern BOOLEAN uart0_rx_rdy()
{
  return( UART0_FR_R & UART_FR_RXFF );
}

extern INT8U uart0_getc()
{
  return ( UART0_DR_R );
}

extern BOOLEAN uart0_tx_rdy()
{
  return( UART0_FR_R & UART_FR_TXFE );
}

extern void uart0_putc( INT8U ch )
{
  UART0_DR_R = ch;
}

void UART0_tx_isr()
{

}

void UART0_rx_isr()
{
	while (RX0_FIFO_NOT_EMPTY)
	{
		INT8U received = UART0_DR_R;
		if(!(xQueueIsQueueFullFromISR(uart0_rx_queue)))
			xQueueSendFromISR(uart0_rx_queue, &received, NULL);
		received = PID_UPDATE_EVENT;
		xQueueSendFromISR(PID_queue,&received,NULL);
	}
}

void UART5_rx_isr()
{
	while (RX5_FIFO_NOT_EMPTY)
	{
		INT8U received = UART5_DR_R;
		if(!(xQueueIsQueueFullFromISR(uart0_rx_queue)))
			xQueueSendFromISR(uart0_rx_queue, &received, NULL);
	}
}

void UART0_task(void *pvParameters)
{
	INT8U received;
	INT32U temp = 0;
	INT32U data = 0;
	INT8U uart_state = IDLE;
	INT8U address;
	INT8U n_max;

	while(1)
	{
		switch(uart_state)
		{
		case IDLE:
			if (xQueueReceive(uart0_rx_queue, &received, 500 / portTICK_RATE_MS))
			{
				if(received == '\\')
					uart_state = COMMAND;
			}
			break;

		case COMMAND:
			if (xQueueReceive(uart0_rx_queue, &received, 500 / portTICK_RATE_MS))
			{
				switch(received)
				{
				case 's':
					uart_state = SET;
					break;
				case 'g':
					uart_state = GET;
					break;

				default:
					uart_state = IDLE;
					break;
				}
			}
			break;

		case SET:
			if (xQueueReceive(uart0_rx_queue, &received, 500 / portTICK_RATE_MS))
			{
				switch(received)
				{
				case PAN_SP:
					address = SSM_SP_DEG_PAN;
					n_max = 3;
					uart_state = SET_DATA;
					break;

				case TILT_SP:
					address = SSM_SP_DEG_TILT;
					n_max = 3;
					uart_state = SET_DATA;
					break;

				case MAX_PWM:
					address = MAX_PWM_EVENT;
					xQueueSend(SPI_queue,&address,100);
					uart_state = IDLE;
					break;

				case STOP:
					address = STOP_EVENT;
					xQueueSend(SPI_queue,&address,100);
					uart_state = IDLE;
					break;

				default:
					uart_state = IDLE;
					break;
				}
			}
			break;

		case SET_DATA:

			data = 0;
			for(INT8U i = 0; i < n_max; i++)
			{
				if (xQueueReceive(uart0_rx_queue, &received, 50000 / portTICK_RATE_MS))
				{
					received -= '0';
					temp = received;
					for(INT8U j = i+1; j < n_max; j++)
					{
						temp *= 10;
					}

					data += temp;
				}
				else
				{
					uart_state = IDLE;
					break;
				}
			}
			if(data > 359 || data < 0)
				uart_state = IDLE;
			else
			{
				if(xSemaphoreTake(coordinate_access_sem,100000))
				{
					put_msg_state(address, data);
					uart_state = SEND_EVENTS;
				}
			}
			break;

		case SEND_EVENTS:

			switch(address)
			{
			case SSM_SP_DEG_PAN:
				if (xQueueReceive(uart0_rx_queue, &received, 50000 / portTICK_RATE_MS))
				{
					received -= '0';
					if(received < 0 || received > 2)
					{
						received = 0;
					}
					put_msg_state(SSM_OFFSET_PAN,received);
					convert_and_secure();
					xSemaphoreGive(coordinate_access_sem);
					//received = PID_UPDATE_EVENT;
					//xQueueSend(PID_queue,&received,50);
				}
				break;

			case SSM_SP_DEG_TILT:
				if (xQueueReceive(uart0_rx_queue, &received, 50000 / portTICK_RATE_MS))
				{
					received -= '0';
					if(received < 0 || received > 2)
					{
						received = 0;
					}
					put_msg_state(SSM_OFFSET_TILT,received);
					convert_and_secure();
					xSemaphoreGive(coordinate_access_sem);
					//received = PID_UPDATE_EVENT;
					//xQueueSend(PID_queue,&received,50);
				}

				break;

			default:
				break;
			}
			uart_state = IDLE;
			break;

		case GET:
			break;
		case WAIT:
			break;
		default:
			break;

		}

	}
}

extern void UART0_init( INT32U baud_rate, INT8U databits, INT8U stopbits, INT8U parity )
{
  INT32U BRD;

  #ifndef E_PORTA
  #define E_PORTA
  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOA;					// Enable clock for Port A
  #endif

  #ifndef E_UART0
  #define E_UART0
  SYSCTL_RCGC1_R |= SYSCTL_RCGC1_UART0;					// Enable clock for UART 0
  #endif

  NVIC_PRI1_R |= 0x0000DF00; 			//Setting the priority of the uart0 interrup to 6, which is the same as 223.

  GPIO_PORTA_AFSEL_R |= 0x00000003;		// set PA0 og PA1 to alternativ function (uart0)
  GPIO_PORTA_DIR_R   |= 0x00000002;     // set PA1 (uart0 tx) to output
  GPIO_PORTA_DIR_R   &= 0xFFFFFFFE;     // set PA0 (uart0 rx) to input
  GPIO_PORTA_DEN_R   |= 0x00000003;		// enable digital operation of PA0 and PA1
  //GPIO_PORTA_PUR_R   |= 0x00000002;

  BRD = 64000000 / baud_rate;   	// X-sys*64/(16*baudrate) = 16M*4/baudrate
  UART0_IBRD_R = BRD / 64;
  UART0_FBRD_R = BRD & 0x0000003F;

  UART0_LCRH_R  = lcrh_databits( databits );
  UART0_LCRH_R += lcrh_stopbits( stopbits );
  UART0_LCRH_R += lcrh_parity( parity );

  uart0_fifos_enable();
  uart0_interrupt_enable();

  UART0_CTL_R  |= (UART_CTL_UARTEN | UART_CTL_TXE | UART_CTL_RXE );  // Enable UART

}

extern void UART5_init( INT32U baud_rate, INT8U databits, INT8U stopbits, INT8U parity )
{
  INT32U BRD;

  SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOE;					// Enable clock for Port A

  SYSCTL_RCGCUART_R |= SYSCTL_RCGCUART_R5;				// Enable clock for UART 0

  NVIC_PRI15_R |= 0x0000DF00; 				//Setting the priority of the uart5 interrup to 6, which is the same as 223.

  GPIO_PORTE_PCTL_R &= 0xFF00FFFF;					//Make sure that the pin setup is cleared
  GPIO_PORTE_PCTL_R |= 0x00110000;					//Write one to PE4 and PE5 to make them uart0 tx and rx
  GPIO_PORTE_AFSEL_R |= (1 << 4) | (1 << 5);		// set PA0 og PA1 to alternativ function (uart0)

  GPIO_PORTE_DIR_R   |= (1 << 5);     // set PA5 (uart0 tx) to output
  GPIO_PORTE_DIR_R   &= ~(1 << 4);     // set PA4 (uart0 rx) to input

  GPIO_PORTE_DEN_R   |= (1 << 4) | (1 << 5); // enable digital operation of PA4 and PA5
  //GPIO_PORTA_PUR_R   |= 0x00000002;

  BRD = 64000000 / baud_rate;   	// X-sys*64/(16*baudrate) = 16M*4/baudrate
  UART5_IBRD_R = BRD / 64;
  UART5_FBRD_R = BRD & 0x0000003F;

  UART5_LCRH_R  = lcrh_databits( databits );
  UART5_LCRH_R += lcrh_stopbits( stopbits );
  UART5_LCRH_R += lcrh_parity( parity );

  uart5_fifos_enable();
  uart5_interrupt_enable();

  UART5_CTL_R  |= (UART_CTL_UARTEN | UART_CTL_TXE | UART_CTL_RXE );  // Enable UART

}

/****************************** End Of Module *******************************/












