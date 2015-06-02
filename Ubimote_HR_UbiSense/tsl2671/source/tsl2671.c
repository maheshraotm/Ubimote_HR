#include "tsl2671.h"
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include "Ubimote_i2c.h"

#define SLAVE_ADDRESS 0X39
bool tsl2671_init(void)
{
	uint8_t id=0;
	uint8_t data[]={0x80, 0x00};
	i2c_write( SLAVE_ADDRESS, data, 2);

	data[0] = 0x82;
	data[1] = 0xFF;
	i2c_write( SLAVE_ADDRESS, data, 2);

	data[0] = 0x83;
	data[1] = 0xFF;
	i2c_write( SLAVE_ADDRESS, data, 2);

	data[0] = 0x8E;
	data[1] = 0x10;
	i2c_write( SLAVE_ADDRESS, data, 2);

	data[0] = 0x8f;
	data[1] = 0x30;
	i2c_write( SLAVE_ADDRESS, data, 2);

	data[0] = 0x80;
	data[1] = 0x07;
	i2c_write( SLAVE_ADDRESS, data, 2);

	i2c_read(SLAVE_ADDRESS, 0x92, &id, 1);
	if(id == 0x00)
	{
		return 1;
	}
	else
	{
		return 0;
	}


}

void read_proximity(uint16_t *proximity)
{
	uint8_t read_data[2] = {0}, read_dataa[2]={0};
	i2c_read(SLAVE_ADDRESS, 0x98, &read_data[0], 1);
	i2c_read(SLAVE_ADDRESS, 0x99, &read_data[1], 1);

	read_dataa[0] = read_data[0];
	read_dataa[1] = read_data[0];
	*proximity = (read_dataa[0] << 8)| read_dataa[1];


}
