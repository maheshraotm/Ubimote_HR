#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include "hw_ints.h"
#include "hw_memmap.h"
#include "gpio.h"
#include "interrupt.h"
#include "ioc.h"
#include "hw_ioc.h"
#include "sys_ctrl.h"
#include "hw_i2cm.h"
#include "hw_i2cs.h"
#include "i2c.h"
#include "uartstdio.h"
#include "Ubimote_HR_bsp.h"
#include "board.h"
#include "Ubimote_uart.h"
//*****************************************************************************
//
// This function sets up UART0 to be used for a console to display information
// as the example is running.
//
//*****************************************************************************
void
InitConsole(void)
{
    //
    // Map UART signals to the correct GPIO pins and configure them as
    // hardware controlled.
    //
    IOCPinConfigPeriphOutput(Ubimote_GPIO_UART_BASE, Ubimote_PIN_UART_TXD,
                             IOC_MUX_OUT_SEL_UART0_TXD);
    GPIOPinTypeUARTOutput(Ubimote_GPIO_UART_BASE, Ubimote_PIN_UART_TXD);

    IOCPinConfigPeriphInput(Ubimote_GPIO_UART_BASE, Ubimote_PIN_UART_RXD,
                            IOC_UARTRXD_UART0);
    GPIOPinTypeUARTInput(Ubimote_GPIO_UART_BASE, Ubimote_PIN_UART_RXD);

    //
    // Initialize the UART (UART0) for console I/O.
    //
    UARTStdioInit(0);
}
