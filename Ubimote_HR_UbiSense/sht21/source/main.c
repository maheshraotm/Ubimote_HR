/*
 ============================================================================
 Name        : main.c
 Author      : Rangineni Balasubramanyam
 Version     :
 Copyright   : CDAC KP Bangalore
 Description : Example program for sht21 for Ubimote_HR
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
#include "sht21.h"
#include "delay.h"


int
main(void)
{
	uint16_t humidity = 0;
	board_init();
	init_i2c(false); // false for 100kbps; true for 400kbps
	InitConsole();

	UARTprintf("Ubimote HR sht21 example ->");

	init_sht21();

	while(1)
	{
	get_humidity(&humidity);

	UARTprintf("\n humidity :: %u", humidity);

	delay_msec(100);
	}


  return 0;
}
