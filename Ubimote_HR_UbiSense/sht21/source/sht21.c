
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include "sht21.h"
#include "Ubimote_i2c.h"


#define SLAVE_ADDRESS 0X40

void init_sht21(void)
{
	uint8_t data[5] = {0};

	data[0] = 0xFE;
	i2c_write(SLAVE_ADDRESS, data, 1);
}


void get_humidity(uint16_t *humidity)
{

	uint8_t read_data[2] = {0}, read_dataa[2] = {0};
	i2c_read(SLAVE_ADDRESS, 0xE5, read_data, 2);
	read_dataa[0] = read_data[0];
	read_dataa[1] = read_data[1];
	*humidity = ((read_dataa[0] << 8) | read_dataa[1]) ;
}
