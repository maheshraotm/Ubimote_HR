#ifndef __Ubimote_HR_bsp__
#define __Ubimote_HR_bsp__



/******************************************************************************
* If building with a C++ compiler, make all of the definitions in this header
* have a C binding.
******************************************************************************/
#ifdef __cplusplus
extern "C"
{
#endif


/******************************************************************************
* INCLUDES
*/
#include "hw_types.h"
#include "hw_memmap.h"



/******************************************************************************
* DEFINES
*/
// Clock speed defines
//! Default system clock speed
#define BSP_SYS_CLK_SPD         32000000UL
//! Default SPI clock speed. 8 MHz 
#define BSP_SPI_CLK_SPD         8000000UL
//! Default UART clock speed (baud rate).
#define BSP_UART_CLK_SPD        115200


// Board LED defines
#define BSP_LED_BASE            GPIO_C_BASE
#define BSP_LED_1               GPIO_PIN_5      //!< PC5
#define BSP_LED_2               GPIO_PIN_6      //!< PC6
#define BSP_LED_3               GPIO_PIN_7      //!< PC7
#define BSP_LED_ALL             (BSP_LED_1 | \
                                 BSP_LED_2 | \
                                 BSP_LED_3 )     //!< Bitmask of all LEDs


// Board Key defines


// Board UART defines
#define Ubimote_PIN_UART_RXD            GPIO_PIN_0
#define Ubimote_PIN_UART_TXD            GPIO_PIN_1
#define Ubimote_GPIO_UART_BASE          GPIO_A_BASE



/******************************************************************************
* Mark the end of the C bindings section for C++ compilers.
******************************************************************************/
#ifdef __cplusplus
}
#endif
#endif 
