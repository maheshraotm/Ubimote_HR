#ifndef __tsl2671_h__
#define __tsl2671_h__

#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>

bool tsl2671_init(void);
void read_proximity(uint16_t *proximity);
#endif
