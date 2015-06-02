/*

   GPIO project for Ubimote_HR
   © CDAC Knowledge part Bangalore

   Author: rangineni balasubramanyam <balasubramanyam@cdac.in>

 */


#include <stdint.h>
#include "Ubimote_HR_bsp.h"
#include <gpio.h>
#include <ioc.h>


int main(void)
{
   volatile uint32_t ui32LoopCount;
    volatile uint32_t ui32LoopXV=0;
  
	GPIOPinTypeGPIOOutput(BSP_LED_BASE, BSP_LED_ALL);
	GPIOPinWrite(BSP_LED_BASE, BSP_LED_ALL, 0xE0); /* initially in OFF state */

	while(1)
	    {

	        // Delay for a bit
			GPIOPinWrite(BSP_LED_BASE, BSP_LED_ALL, ~0xE0);
	        for(ui32LoopCount = 200000; ui32LoopCount > 0; ui32LoopCount--)
	        {
	            ui32LoopXV++;
	        }

	        GPIOPinWrite(BSP_LED_BASE, BSP_LED_ALL, 0xE0);
	        for(ui32LoopCount = 200000; ui32LoopCount > 0; ui32LoopCount--)
	        {
	        	ui32LoopXV++;
	        }
	    }

}
