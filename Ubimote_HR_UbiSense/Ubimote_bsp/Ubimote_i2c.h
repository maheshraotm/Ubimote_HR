#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>






void init_i2c(bool rate);
void i2c_write(uint8_t slave_address, uint8_t data[], uint8_t count);
void i2c_read(uint8_t slave_address, uint8_t register_address, uint8_t *read_data, uint8_t read_length);

