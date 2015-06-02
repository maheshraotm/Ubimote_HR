#ifndef __UBIMOTE_HR_BMP180_I2C_H__
#define __UBIMOTE_HR_BMP180_I2C_H__

char bus_read(unsigned char device_addr, unsigned char register_addr, unsigned char* register_data, unsigned char read_length);
char bus_write(unsigned char device_addr, unsigned char register_addr, unsigned char* register_data, unsigned char write_length);
void bmp180_temperature(short *temperature);
void bmp180_pressure(long *pressure);

#endif
