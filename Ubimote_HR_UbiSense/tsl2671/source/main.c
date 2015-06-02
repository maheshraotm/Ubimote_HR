/*
 ============================================================================
 Name        : main.c
 Author      : Rangineni Balasubramanyam
 Version     :
 Copyright   : CDAC KP Bangalore
 Description : Ubimote HR tsl2671 example for UbiSense
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
#include "tsl2671.h"
#include "delay.h"


int
main(void)
{
		uint16_t proximity = 0;
		    board_init();
		    init_i2c(false); // false for 100kbps; true for 400kbps
		    InitConsole();

		    UARTprintf("Ubimote HR tsl2671 example ->");

		    if(tsl2671_init())
		    {
		    	 UARTprintf("Initialisation of tsl2671 is successfull ->");

		    	 while(1)
		    	 {
		    		 read_proximity(&proximity);

		    	 	 UARTprintf("\n proximity :: %d", proximity);
		    	 	delay_msec(100);
		    	 }
		    }
		    else
		    {
		    	 UARTprintf("Initialisation of tsl2671 is failed");

		    }

		    while(1);
  return 0;
}
