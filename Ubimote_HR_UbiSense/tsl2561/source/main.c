/*
 ============================================================================
 Name        : main.c
 Author      : Rangineni Balasubramanyam
 Version     :
 Copyright   : CDAC KP Bangalore
 Description : UbiSense - tsl2561 example project for Ubimote HR
 ============================================================================
 */

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
#include "board.h"
#include "Ubimote_i2c.h"
#include "Ubimote_uart.h"
#include "tsl2561.h"
#include "delay.h"
int
main(void)
{

	unsigned long  lux=0;

		board_init();

	    init_i2c(false); // false for 100kbps; true for 400kbps

	    //
	    // Set up the serial console to use for displaying messages.  This is
	    // just for this example program and is not needed for I2C operation.
	    //
	    InitConsole();

	    init_tsl2561();
	    //
	    // Display the example setup on the console.
	    //
	    UARTprintf("Ubimote HR tsl2561 example ->");
	    UARTprintf("\n   Module = I2C");
	    UARTprintf("\n   Rate = 100kbps\n\n");

	    while(1)
	    {

	    lux = cal_lux();

	    UARTprintf("\n lux :: %u", lux);

	    delay_msec(100);

	    }


  return 0;
}
