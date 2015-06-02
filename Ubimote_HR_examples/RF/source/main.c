/*

   RF project for Ubimote_HR
   © CDAC Knowledge part Bangalore

   Author: rangineni balasubramanyam <balasubramanyam@cdac.in>

 */


#include <stdint.h>
#include <gpio.h>
#include <ioc.h>

#include "basic_rf.h"
#include "hal_rf.h"
#include "hal_timer_32k.h"
#include "hal_int.h"
#include "hw_cctest.h"
#define PAN_ID                  0x2007
#define TX_ADDR                 0x2538
#define RX_ADDR                 0xBEEF
#define MAX_PAYLOAD_LENGTH      103
#define PACKET_SIZE             sizeof(perTestPacket_t)

#define RSSI_AVG_WINDOW_SIZE    32  // Window size for RSSI moving average

#define PER_MODE_TX             0
#define PER_MODE_RX             1

#define PER_GAIN_MODE_LO        0       // Same value as in hal_rf
#define PER_GAIN_MODE_HI        1       // Same value as in hal_rf
#define PER_GAIN_MODE_NONE      42

#define PER_IDLE 0
#define PER_TRANSMIT            1
#define PER_NO_PACKET_RECEIVED  2
#define PER_PACKET_RECEIVED     3

typedef struct
{
    unsigned char mode;             //!< PER test mode. [RX|TX]
    unsigned char state;            //!< PER test state (idle, transmit)
    unsigned char channel;          //!< PER test IEEE channel [11,26]
    unsigned char txPower;          //!< PER test TX power
    unsigned long burstSize;        //!< Number of packets to send in TX
    unsigned long pktRate;          //!< Number of packets per second
    unsigned char gainMode;         //!< Gain mode (CC2591 PA/LNA)
} perCfg_t;

typedef struct {
    unsigned long seqNumber;
    unsigned char padding[88];
} perTestPacket_t;

// PER test receiver statistics
typedef struct {
    unsigned long expectedSeqNum;
    unsigned long rcvdPkts;
    unsigned long lostPkts;
    signed short rssiSum;
} perRxStats_t;

perCfg_t perConfig = {0};
static basicRfCfg_t basicRfConfig;
static perTestPacket_t tTxPacket;
static perTestPacket_t tRxPacket;
//#define GPIO_C_DIR                0x400DB400
//#define GPIO_C_DATA               0x400DB000
//#define HWREG(x) (*((volatile uint32_t *)(x)))
static void appTimerIsr(void);

int main(void)
{

	//halIntOn();
	unsigned long pktsSent = 0;
	perConfig.mode = PER_MODE_TX;
	    perConfig.state = PER_IDLE;
	    perConfig.channel = 26;
	    perConfig.txPower = 0;          // Index 0. Max output
	    perConfig.burstSize = 1000000;  // Max value
	    perConfig.pktRate   = 20;       // 20 pkts per second
	    perConfig.gainMode = PER_GAIN_MODE_NONE; // No PA/LNA

	    //
	        // Config basicRF
	        //
	        basicRfConfig.panId = PAN_ID;
	        basicRfConfig.ackRequest = false;



	    if(basicRfInit(&basicRfConfig) == FAILED)
	    {
	    while(1);
	    }

	    basicRfReceiveOff();
	    halRfSetTxPower(0);
	   // appTimerConfig(20);
	    halTimer32kInit(32768/20);
	    halTimer32kIntConnect(&appTimerIsr);    // Connect ISR
	    halTimer32kIntEnable();                 // Enable interrupts

	    while(1)
	       {
	    	if(perConfig.state == PER_TRANSMIT)
	    	        {
	    	            if(pktsSent < perConfig.burstSize) {
	    	                //
	    	                // Make sure sequence number has network byte order
	    	                //
	    	                UINT32_HTON(tTxPacket.seqNumber);

	    	                basicRfSendPacket(RX_ADDR, (unsigned char*)&tTxPacket, PACKET_SIZE);

	    	                //
	    	                // Change byte order back to host order before increment
	    	                //
	    	                UINT32_NTOH(tTxPacket.seqNumber);

	    	                //
	    	                // Update variables
	    	                //
	    	                tTxPacket.seqNumber++;
	    	                pktsSent++;
	    	                perConfig.state = PER_PACKET_RECEIVED;

	    	                //
	    	                // Update LED
	    	                //
	    	           //     bspLedToggle(BSP_LED_1);

	    	   }
	    	            else {
	    	                //
	    	                // Done sending packets, exit TX loop
	    	                //
	    	                break;
	    	            }
	    	        }
	       }
}
static void appTimerIsr(void)
{
	 perConfig.state = PER_TRANSMIT;
}

