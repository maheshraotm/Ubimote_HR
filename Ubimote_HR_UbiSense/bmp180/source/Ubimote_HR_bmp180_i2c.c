#include "Ubimote_HR_bmp180_i2c.h"
#include <stdint.h>
#include "Ubimote_i2c.h"
#include "bmp180.h"

#define SLAVE_ADDRESS 0X77


char bus_read(unsigned char device_addr, unsigned char register_addr, unsigned char* register_data, unsigned char read_length)
{

       i2c_read(SLAVE_ADDRESS, register_addr, register_data, read_length);
    
  return  read_length;
}

char bus_write(unsigned char device_addr, unsigned char register_addr, unsigned char* register_data, unsigned char write_length)
{
  
  uint8_t data[10] = {0}, i =0;

  data[0] = register_addr;
  
  for(i=0;i<write_length;i++) 
	data[i+1] = register_data[i];

  i2c_write(SLAVE_ADDRESS, data, write_length);
  
  return write_length;
}

void bmp180_temperature(short *temperature)
{
	unsigned short  ut = 0;
	uint8_t read_data[2] = {0};
	i2c_read(SLAVE_ADDRESS, 0XF6, &read_data[0], 1 );
	i2c_read(SLAVE_ADDRESS, 0XF7, &read_data[1], 1 );
	ut = (read_data[0] << 8) | read_data[1] ;

	*temperature= bmp180_get_temperature((unsigned long) ut);

}
void bmp180_pressure(long *pressure)
{
	unsigned long up=0;
	up = bmp180_get_up();

	*pressure = bmp180_get_pressure(up);
}
