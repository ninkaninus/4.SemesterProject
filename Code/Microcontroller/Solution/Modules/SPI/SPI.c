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

/*****************************    Defines    *******************************/

/*****************************   Constants   *******************************/

/*****************************   Variables   *******************************/

/*****************************   Functions   *******************************/

void SSI_init()
{
	// Enable clock til SSI enhed
	SYSCTL_RCGC1_R |= SYSCTL_RCGC1_SSI0;
	// Enable GPIO port for external communication
	SYSCTL_RCGC2_R |= SYSCTL_RCGC2_GPIOA;
	// Let AFSEL stay 0  for SSI mode
	GPIO_PORTA_AFSEL_R |= 0b00111100;
	// Set Port cotrol for PORTA to SSI
	GPIO_PORTA_PCTL_R |= GPIO_PCTL_PA2_SSI0CLK | GPIO_PCTL_PA3_SSI0FSS | GPIO_PCTL_PA4_SSI0RX | GPIO_PCTL_PA5_SSI0TX;
	//Digital pins
	GPIO_PORTA_DEN_R |= 0x3C;
	GPIO_PORTA_DIR_R |= 0x10;     	 // set PA5 (SSI TX) to output
	GPIO_PORTA_DIR_R &= ~(0x08);     // set PA4 (SSI rx) to input

	//Disable SSI
	SSI0_CR1_R &= ~(1<<1);
	//Microcontroller as master
	SSI0_CR1_R = 0x00000000;
	//SSI Clock Source
	SSI0_CC_R = 0x00; // System Clock (Se side 981)
	//Prescale Divisor
	SSI0_CPSR_R = 8; //Stod til 10, skal det ikke være 8 for at få 2 Mbps? Jo jonas, du har ret.
	//SSI Data Size select (Bit 3:0),SSI Frame Format Select (bit 5:4), SSI Serial Clock Polarity (Bit 6), SSI Serial Clock Phase (Bit 7), SSI Serial Clock Rate (Bit 15:8) 31:16 reserved
	SSI0_CR0_R = (0xF<<0); // Se side 966 - 977
	//Enable SSI
	SSI0_CR1_R |= (1<<1) | (0<<0); //Enable ssi (bit 1) | Enable loopback (bit 0)
	//SSI0_IM_R |= SSI_IM_RXIM;
}

void SPI_write(INT16U data)
{
	SSI0_DR_R = data;
	while( (SSI0_SR_R & (1<<0)) == 0);
}

INT16U SPI_read()
{
	while( (SSI0_SR_R & (1<<2)) == 0);
	while((SSI0_SR_R & (1<<4)) == 1);
	return SSI0_DR_R;
}


// void test();
/*****************************************************************************
*   Function : See module specification (.h-file).
*****************************************************************************/

/****************************** End Of Module *******************************/
