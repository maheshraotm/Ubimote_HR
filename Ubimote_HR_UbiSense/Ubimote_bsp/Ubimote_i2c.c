
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
#include "Ubimote_i2c.h"
#include "Ubimote_HR_bsp.h"


void init_i2c(bool rate)
{
	 //
	    // Configure I2C pins
	    //
	    GPIOPinTypeI2C(Ubimote_GPIO_I2C_BASE, Ubimote_PIN_I2C_SCL);
	    GPIOPinTypeI2C(Ubimote_GPIO_I2C_BASE, Ubimote_PIN_I2C_SDA);

	    //
	    // Configure pins as peripheral input and output
	    //
	    IOCPinConfigPeriphInput(Ubimote_GPIO_I2C_BASE, Ubimote_PIN_I2C_SCL,
	                            IOC_I2CMSSCL);
	    IOCPinConfigPeriphInput(Ubimote_GPIO_I2C_BASE, Ubimote_PIN_I2C_SDA,
	                            IOC_I2CMSSDA);
	    IOCPinConfigPeriphOutput(Ubimote_GPIO_I2C_BASE, Ubimote_PIN_I2C_SCL,
	                             IOC_MUX_OUT_SEL_I2C_CMSSCL);
	    IOCPinConfigPeriphOutput(Ubimote_GPIO_I2C_BASE, Ubimote_PIN_I2C_SDA,
	                             IOC_MUX_OUT_SEL_I2C_CMSSDA);


     //
	    // Enable and initialize the I2C master module.  Use the system clock for
	    // the I2C module.  The last parameter sets the I2C data transfer rate.
	    // If false the data rate is set to 100kbps and if true the data rate will
	    // be set to 400kbps.  For this example we will use a data rate of 100kbps.
	    //
	    I2CMasterInitExpClk(SysCtrlClockGet(), rate);

	

}

void i2c_write(uint8_t slave_address, uint8_t data[], uint8_t count)
{
	uint8_t i = 0;

I2CMasterSlaveAddrSet(slave_address, false);


	if(count == 1)
	{
		I2CMasterDataPut(data[0]);  // address of the register

		I2CMasterControl(I2C_MASTER_CMD_SINGLE_SEND);

		//
		// Wait until the slave has received and acknowledged the data.
		//

		  while(I2CMasterBusy())
		  {
		  }
	}
	else
	{
			
		I2CMasterDataPut(data[0]);  // address of the register

		I2CMasterControl(I2C_MASTER_CMD_BURST_SEND_START);

		//
		// Wait until the slave has received and acknowledged the data.
		//

		 while(I2CMasterBusy())
		  {
		  }

	for(i=1; i < (count-1); i++)
	{
		I2CMasterDataPut(data[i]);  // address of the register

		I2CMasterControl(I2C_MASTER_CMD_BURST_SEND_CONT);

		//
		// Wait until the slave has received and acknowledged the data.
		//

		  while(I2CMasterBusy())
		  {
		  }
	}
		
		I2CMasterDataPut(data[count-1]);  // address of the register

		I2CMasterControl(I2C_MASTER_CMD_BURST_SEND_FINISH);

		//
		// Wait until the slave has received and acknowledged the data.
		//

		  while(I2CMasterBusy())
		  {
		  }
	}

}
void i2c_read(uint8_t slave_address, uint8_t register_address, uint8_t *read_data, uint8_t read_length)
{

	uint8_t i=0;


	// first write the address
	I2CMasterSlaveAddrSet(slave_address, false); //write

	I2CMasterDataPut(register_address);  // address of the register

    I2CMasterControl(I2C_MASTER_CMD_BURST_SEND_START);


    	// wait until the data is transmitted
    while(I2CMasterBusy())
   		  {
   		  }

 /* =============================== Verify this with the logic analyzer befor proceeding ==================*/
    /* having doubt in the recieving part */

    I2CMasterSlaveAddrSet(slave_address, true);

	 //
    // Do a dummy receive to make sure you don't get junk on the first receive.
    //
	
	if(read_length == 1)
	{

    		I2CMasterControl(I2C_MASTER_CMD_SINGLE_RECEIVE);
			
		 while(I2CMasterBusy())
		  {
		  }
	        //
	        // Read the data from the master.
	        //
	        *read_data = I2CMasterDataGet();

	}
	else
	{
			
		I2CMasterControl(I2C_MASTER_CMD_BURST_RECEIVE_START);
			
		 while(I2CMasterBusy())
		  {
		  }
	        //
	        // Read the data from the master.
	        //
	        read_data[0] = I2CMasterDataGet();
		
		for(i=1;i<(read_length - 1);i++)
		{
			I2CMasterControl(I2C_MASTER_CMD_BURST_RECEIVE_CONT);
				
			 while(I2CMasterBusy())
			  {
			  }
		        //
		        // Read the data from the master.
	        	//
	        	read_data[i] = I2CMasterDataGet();
		}

		I2CMasterControl(I2C_MASTER_CMD_BURST_RECEIVE_FINISH);
				
			 while(I2CMasterBusy())
			  {
			  }
		        //
		        // Read the data from the master.
	        	//
	        	read_data[read_length - 1] = I2CMasterDataGet();
	}
	
  
}




