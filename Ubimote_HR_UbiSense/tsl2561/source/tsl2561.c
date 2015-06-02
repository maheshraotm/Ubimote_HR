
#include "tsl2561.h"
#include "Ubimote_i2c.h"

#define SLAVE_ADDRESS 0X29

void init_tsl2561(void)
{
	uint8_t data[]={0x80, 0x03};
	i2c_write( SLAVE_ADDRESS, data, 2);
}


unsigned long cal_lux(void)
{
	unsigned char ch0l,ch0h,ch1l,ch1h;
	unsigned int ch0,ch1;
	unsigned long channel0, channel1;

	unsigned long lux, temp, ratio1, ratio;
	unsigned int b,m;

	i2c_read(SLAVE_ADDRESS, 0X8C, &ch0l, 1);
	i2c_read(SLAVE_ADDRESS, 0X8D, &ch0h, 1);
	i2c_read(SLAVE_ADDRESS, 0X8E, &ch1l, 1);
	i2c_read(SLAVE_ADDRESS, 0X8F, &ch1h, 1);

	ch0 = ch0h << 8 | ch0l;
	ch1 = ch1h << 8 | ch1l;

	channel0 = ((ch0 * (1<<10)) >> 10);
	channel1 = ((ch1 * (1<<10)) >> 10);

	if(channel0 != 0)
		ratio1 = (channel1 << (9+1))/channel0;

	ratio = (ratio1 + 1) >> 1;

	if((ratio >= 0) && (ratio <= 0x0040))
	{
		b = 0x01f2;
		m = 0x01be;
	}
	else if((ratio <= 0x0080))
	{
		b = 0x0214;
		m = 0x02d1;
	}
	else if((ratio <= 0x00C0))
	{
		b = 0x023f;
		m = 0x037b;
	}
	else if((ratio <= 0x0100))
	{
		b = 0x0270;
		m = 0x03fe;
	}
	else if((ratio <= 0x0138))
	{
		b = 0x016f;
		m = 0x01fc;
	}
	else if((ratio <= 0x019a))
	{
		b = 0x00d2;
		m = 0x00fb;
	}
	else if((ratio <= 0x029a))
	{
		b = 0x0018;
		m = 0x0012;
	}
	else if((ratio > 0x029a))
	{
		b = 0x0000;
		m = 0x0000;
	}

	temp = ((channel0 * b) - (channel1 * m));

	if(temp < 0)
		temp = 0;

	temp += (1 << ( 14 - 1));

	lux = temp >> 14;

	return lux;
	//for(i=0;i<2000;i++);
}
