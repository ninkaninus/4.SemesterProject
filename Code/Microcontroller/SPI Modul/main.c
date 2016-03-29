#include <stdint.h>
#include "tm4c123gh6pm.h"
#include "emp_type.h"
#include "uart0.h"

void  writeSPI(INT8U data)
{
	SSI0_DR_R = data;
	while( (SSI0_SR_R & (1<<0)) == 0);
}

INT8U readSPI()
{
	while( (SSI0_SR_R & (1<<2)) == 0);
	return SSI0_DR_R;
}

void Init_SSI()
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
	SSI0_CC_R = 0x00;
	//Prescale Divisor
	SSI0_CPSR_R = 10;
	//Protocol mode
	SSI0_CR0_R = (0x7<<0);
	//Enable SSI
	SSI0_CR1_R |= (1<<1) | (1<<0);
	SSI0_IM_R |= SSI_IM_RXIM;
}

void enable_global_int()
{
	__asm("cpsie i");
}
void disable_global_int()
{
	__asm("cpsid i");
}

int main(void)
{
	Init_SSI();
	uart0_init(9600,8,1,0);
    while(1)
    {
    	writeSPI('Q');
    	uart0_putc(readSPI());
    }
}



//Side 963
