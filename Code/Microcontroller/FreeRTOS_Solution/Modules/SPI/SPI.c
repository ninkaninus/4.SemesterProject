/*****************************************************************************
* University of Southern Denmark
* Embedded Programming (EMP)
*
* MODULENAME.: 
*
* PROJECT....: 
*
* DESCRIPTION: See module specification file (.h-file).
*
* Change Log:
*****************************************************************************
* Date    Id    Change
* YYMMDD
* --------------------
*  160226  JA    Module created.
*
*****************************************************************************/

/***************************** Include files *******************************/
#include <stdint.h>
#include "tm4c123gh6pm.h"
#include <EMP/emp_type.h>
#include <UART/uart0.h>
#include "Tasking/tmodel.h"
#include "Tasking/messages.h"
#include "SPI/SPI.h"

#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "semphr.h"

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

enum spi_states
{
	PID,
	UI
};

extern xQueueHandle SPI_queue;
extern xQueueHandle PID_queue;
extern xSemaphoreHandle spi_access_sem;

/*****************************   Functions   *******************************/

void SSI_init()
{
	// Enable clock til SSI enhed
	//SYSCTL_RCGC1_R |= SYSCTL_RCGC1_SSI0;

	SYSCTL_RCGCSSI_R |= 0x04; // Clock enable to SSI2

	// Enable GPIO port for external communication
	//SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOA;

	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOB;

	// Let AFSEL stay 0  for SSI mode
	//GPIO_PORTA_AFSEL_R |= 0b00111100;
	// Set Port cotrol for PORTA to SSI
	//GPIO_PORTA_PCTL_R |= GPIO_PCTL_PA2_SSI0CLK | GPIO_PCTL_PA3_SSI0FSS | GPIO_PCTL_PA4_SSI0RX | GPIO_PCTL_PA5_SSI0TX;

	GPIO_PORTB_PCTL_R |= GPIO_PCTL_PB4_SSI2CLK | GPIO_PCTL_PB5_SSI2FSS | GPIO_PCTL_PB6_SSI2RX | GPIO_PCTL_PB7_SSI2TX;

	//Digital pins
	//GPIO_PORTA_DEN_R |= 0x3C;
	//GPIO_PORTA_DIR_R |= 0x10;     	 // set PA5 (SSI TX) to output
	//GPIO_PORTA_DIR_R &= ~(0x08);     // set PA4 (SSI rx) to input

	GPIO_PORTB_DEN_R |= 0xF0;
	GPIO_PORTB_DIR_R |= 0x80;
	GPIO_PORTB_DIR_R &= ~(0x40);

	//Disable SSI

	//SSI0_CR1_R &= ~(1<<1);
	SSI2_CR1_R &= ~(1<<1);

	//Microcontroller as master

	//SSI0_CR1_R |= (1<<4);
	SSI2_CR1_R |= (1<<4);

	//SSI Clock Source

	//SSI0_CC_R = 0x00; // System Clock (Se side 981)
	SSI2_CC_R = 0x00;

	//Prescale Divisor

	//SSI0_CPSR_R = 160; //Stod til 10, skal det ikke være 8 for at få 2 Mbps? Jo jonas, du har ret.
	SSI2_CPSR_R = 160;
	//SSI Data Size select (Bit 3:0),SSI Frame Format Select (bit 5:4), SSI Serial Clock Polarity (Bit 6), SSI Serial Clock Phase (Bit 7), SSI Serial Clock Rate (Bit 15:8) 31:16 reserved

	//SSI0_CR0_R = (0xF<<0); // Se side 966 - 977
	//SSI0_CR0_R |= (1<<7);
	//SSI0_CR0_R |= (3<<8);
	SSI2_CR0_R = (0xF<<0); // Se side 966 - 977
	SSI2_CR0_R |= (1<<7);
	SSI2_CR0_R |= (3<<8);

	//SSI Interrupt
	//SSI0_IM_R |= (1<<3); //Receive FIFO receive timeout interrupt
	//Enable SSI
	//NVIC_EN0_R |= (1<<7); //Enable SSI0 in the nvic table

	//SSI0_CR1_R |= (1<<1) | (0<<0); //Enable ssi (bit 1) | Enable loopback (bit 0)
	SSI2_CR1_R |= (1<<1) | (0<<0);
	//SSI0_IM_R |= SSI_IM_RXIM;
}

void SSI0_Interrupt() {
	INT16U dataIn;
	INT8U temp = 0;
	dataIn = SSI0_DR_R;
	temp = (INT8U)dataIn;
	uart0_putc((INT8U)(dataIn>>8));
	uart0_putc(temp);
	//SSI0_ICR_R |= (1<<1); //Clear the timeout;
}

void SPI_write(INT16U data)
{
	//SSI0_DR_R = data;
	//while( (SSI0_SR_R & (1<<0)) == 0);
	SSI2_DR_R = data;
	while( (SSI2_SR_R & (1<<0)) == 0);
}

INT16U SPI_read()
{
	//while( (SSI0_SR_R & (1<<2)) == 0);
	//while((SSI0_SR_R & (1<<4)) == 1);
	//return SSI0_DR_R;
	while( (SSI2_SR_R & (1<<2)) == 0);
	while((SSI2_SR_R & (1<<4)) == 1);
	return SSI2_DR_R;
}

void set_pwm()
{
	INT16U data = 0;
	data = get_msg_state(SSM_PWM_DIR_EN_PAN);
	data |= ADDR_PAN_PWM;

	SPI_write(data);
	data = SPI_read();

	data = get_msg_state(SSM_PWM_DIR_EN_TILT);
	data |= ADDR_TILT_PWM;

	SPI_write(data);
	data = SPI_read();
}

void get_position()
{
	INT16U data = 0;

	SPI_write(ADDR_PAN_POS);
	data = SPI_read();
	put_msg_state(SSM_POS_PAN,data);

	SPI_write(ADDR_TILT_POS);
	data = SPI_read();
	put_msg_state(SSM_POS_TILT,data);
}

void SPI_task(void *pvParameters)
{
	SSI_init();
	INT8U state = PID;
	INT8U received;

	while(1)
	{
		switch(state)
		{
		case PID:
			if (xQueueReceive(SPI_queue, &received, 1500 / portTICK_RATE_MS))
			{
				switch(received)
				{
				case GET_POS_EVENT:
					if(xSemaphoreTake(spi_access_sem, 1500 / portTICK_RATE_MS))
					{
						get_position();
						received = PID_UPDATE_EVENT;
						xQueueSend(PID_queue, &received, 1500 / portTICK_RATE_MS);
						xSemaphoreGive(spi_access_sem);
					}
					break;

				case SET_PWM_EVENT:
					set_pwm();
					break;

				default:
					break;
				}

			}

			break;

		case UI:
			vTaskDelay(1000 / portTICK_RATE_MS);
			break;

		default:
			break;
		}
	}
}



// void test();
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/

/****************************** End Of Module *******************************/
