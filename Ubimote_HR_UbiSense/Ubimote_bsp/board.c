
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


void board_init(void)
{
	//
	    // Set the clocking to run directly from the external crystal/oscillator.
	    // (no ext 32k osc, no internal osc)
	    //
	    SysCtrlClockSet(false, false, SYS_CTRL_SYSDIV_16MHZ);

	    //
	    // Set IO clock to the same as system clock
	    //
	    SysCtrlIOClockSet(SYS_CTRL_SYSDIV_16MHZ);

	    // The Timer3 peripheral must be enabled for use.
	    SysCtrlPeripheralEnable(SYS_CTRL_PERIPH_GPT3);   

	    //
	    //  The I2C peripheral must be enabled before use.
	    //
	    SysCtrlPeripheralEnable(SYS_CTRL_PERIPH_I2C);

	    //
	    // Do reset of I2C module
	    //
	    SysCtrlPeripheralReset(SYS_CTRL_PERIPH_I2C);

	    // Congifure Timer 3 with one shot 32 bit mode
	    TimerConfigure(GPTIMER3_BASE, GPTIMER_CFG_ONE_SHOT );
	    
	    // Initialise the interrupt handler
	    TimerIntRegister(GPTIMER3_BASE, GPTIMER_A, Timer3AIntHandler);  

	    InitConsole();
}
