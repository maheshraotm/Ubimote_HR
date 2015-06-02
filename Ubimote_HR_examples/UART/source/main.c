/*

   UART project for Ubimote_HR
   CDAC Knowledge park Bangalore

   Author: rangineni balasubramanyam <balasubramanyam@cdac.in>

 */

#include <stdbool.h>
#include <stdint.h>
#include "Ubimote_HR_bsp.h"
#include "gpio.h"
#include "ioc.h"
#include "uart.h"
#include "hw_memmap.h"
#include "hw_types.h"
#include "hw_ioc.h"
#include "sys_ctrl.h"



void Uart_Put_String(unsigned char data[])
{
	unsigned char length = 0;
	for(length = 0; data[length] != '\0'; length++ )
		UARTCharPut(UART0_BASE, data[length]);
}

int main(void)
{
	char cThisChar;

	    //
	    // Set the clocking to run directly from the external crystal/oscillator.
	    // (no ext 32k osc, no internal osc)
	    //
	    SysCtrlClockSet(false, false, SYS_CTRL_SYSDIV_32MHZ);

	    //
	    // Set IO clock to the same as system clock
	    //
	    SysCtrlIOClockSet(SYS_CTRL_SYSDIV_32MHZ);

	    //
	    // Enable UART peripheral module
	    //
	    SysCtrlPeripheralEnable(SYS_CTRL_PERIPH_UART0);

	    //
	    // Disable UART function
	    //
	    UARTDisable(UART0_BASE);

	    //
	    // Disable all UART module interrupts
	    //
	    UARTIntDisable(UART0_BASE, 0x1FFF);

	    //
	    // Set IO clock as UART clock source
	    //
	    UARTClockSourceSet(UART0_BASE, UART_CLOCK_PIOSC);

	    //
	    // Map UART signals to the correct GPIO pins and configure them as
	    // hardware controlled.
	    //
	    IOCPinConfigPeriphOutput(Ubimote_GPIO_UART_BASE, Ubimote_PIN_UART_TXD, IOC_MUX_OUT_SEL_UART0_TXD);
	    GPIOPinTypeUARTOutput(Ubimote_GPIO_UART_BASE, Ubimote_PIN_UART_TXD);
	    IOCPinConfigPeriphInput(Ubimote_GPIO_UART_BASE, Ubimote_PIN_UART_RXD, IOC_UARTRXD_UART0);
	    GPIOPinTypeUARTInput(Ubimote_GPIO_UART_BASE, Ubimote_PIN_UART_RXD);

	    //
	    // Configure the UART for 115,200, 8-N-1 operation.
	    // This function uses SysCtrlClockGet() to get the system clock
	    // frequency.  This could be also be a variable or hard coded value
	    // instead of a function call.
	    //
	    UARTConfigSetExpClk(UART0_BASE, SysCtrlClockGet(), 115200,
	                        (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE |
	                         UART_CONFIG_PAR_NONE));
	    UARTEnable(UART0_BASE);


	    // Put a character to show start of example.  This will display on the
	    // terminal.
	    //
	   // UARTCharPut(UART0_BASE, '!');
	    Uart_Put_String("CDAC Ubimote HR \n");
	    Uart_Put_String("UART example \n");
	    Uart_Put_String("START: (Enter to terminate) \n");


	    //
	    // Enter a loop to read characters from the UART, and write them back
	    // (echo).  When a line end is received, the loop terminates.
	    //
	    do
	    {
	        //
	        // Read a character using the blocking read function.  This function
	        // will not return until a character is available.
	        //
	        cThisChar = UARTCharGet(UART0_BASE);

	        //
	        // Write the same character using the blocking write function.  This
	        // function will not return until there was space in the FIFO and
	        // the character is written.
	        //
	        UARTCharPut(UART0_BASE, cThisChar);

	    //
	    // Stay in the loop until either a CR or LF is received.
	    //
	    } while((cThisChar != '\n') && (cThisChar != '\r'));

	    //
	    // Put a character to show the end of the example.  This will display on
	    // the terminal.
	    //
	    //UARTCharPut(UART0_BASE, '@');
	    Uart_Put_String("End of UART example");
	    //
	    // Enter an infinite loop.
	    //
	    while(1)
	    {
	    }

}
