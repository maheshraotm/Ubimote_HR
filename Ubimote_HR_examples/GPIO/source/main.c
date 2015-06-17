/*

   GPIO project for Ubimote_HR
   CDAC Knowledge park Bangalore

   Author: rangineni balasubramanyam <balasubramanyam@cdac.in>

 */


#include <stdint.h>
#include "Ubimote_HR_bsp.h"
#include <gpio.h>
#include <ioc.h>

#include "delay.h"


int main(void)
{
   	board_init();
	GPIOPinTypeGPIOOutput(BSP_LED_BASE, BSP_LED_ALL);
	GPIOPinWrite(BSP_LED_BASE, BSP_LED_ALL, 0xE0); /* initially in OFF state */
	while(1)
	    {
		// Delay for a bit
		GPIOPinWrite(BSP_LED_BASE, BSP_LED_ALL, ~0xE0);
	        delay_msec(1000);
	        GPIOPinWrite(BSP_LED_BASE, BSP_LED_ALL, 0xE0);
	        delay_msec(1000);
	    }

}
