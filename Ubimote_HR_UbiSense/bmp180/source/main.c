/*
 ============================================================================
 Name        : main.c
 Author      : Rangineni Balasubramanyam <balasubramanyam@cdac.in>
 Version     :
 Copyright   : CDAC KP Bangalore
 Description : UbiSense - bmp180 example project for Ubimote HR
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
#include "delay.h"
#include "Ubimote_HR_bsp.h"
#include "bmp180.h"
#include "Ubimote_HR_bmp180_i2c.h"

#define SLAVE_ADDRESS 0x77

struct bmp180_t bmp180_l;
#define NUM_I2C_DATA 0

//#error "error not completed totally wait until the device cc2538 dk comes"


int
main(void)
{
		char comres = 0;
		short temperature = 0;
	    long pressure = 0;
	    bmp180_l.bus_write = bus_write;
	    bmp180_l.bus_read = bus_read;
	    bmp180_l.delay_msec = delay_msec;

	    board_init();
	    init_i2c(false); // false for 100kbps; true for 400kbps
	    InitConsole();

	    UARTprintf("Ubimote HR bmp180 example ->");

        comres = bmp180_init(&bmp180_l);
        if( bmp180_l.chip_id == 0x55)
        {
            //
            // Display the example setup on the console.
            //
                UARTprintf("	 UbiSense bmp180 Example ->");
                UARTprintf("\n   Module = I2C");
                UARTprintf("\n   Rate = 100kbps\n\n");

                while(1)
                {
                	bmp180_temperature(&temperature);
                	bmp180_pressure(&pressure);

                	UARTprintf("\n temperature :: %d", temperature);
                	UARTprintf("\n pressure :: %d", pressure);
                	delay_msec(100);
                }


            }
            else
            	   UARTprintf("	 Error in reading ID");


  return 0;
}
