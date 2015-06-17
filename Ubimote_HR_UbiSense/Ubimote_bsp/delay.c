#include "delay.h"
#include "gptimer.h"
#include "hw_memmap.h"
#include "interrupt.h"
#include "hw_ints.h"
#include <stdbool.h>

static bool TimerInterrupt = false;
void Timer3AIntHandler(void)
{

	TimerIntClear(GPTIMER3_BASE, GPTIMER_TIMA_TIMEOUT);

	TimerInterrupt = true;

	IntDisable(INT_TIMER3A);

	//
	// Turn off Timer3A interrupt.
	//
	TimerIntDisable(GPTIMER3_BASE, GPTIMER_TIMA_TIMEOUT);
}

void delay_msec(unsigned int delay_time)
{
	TimerInterrupt = false;

	//Load the timer with delay
	TimerLoadSet(GPTIMER3_BASE, GPTIMER_A, ((1600) * delay_time));

	//TimerIntRegister(GPTIMER3_BASE, GPTIMER_A, Timer3AIntHandler);
	IntMasterEnable();
	TimerIntEnable(GPTIMER3_BASE, GPTIMER_TIMA_TIMEOUT);
	IntEnable(INT_TIMER3A);
	TimerEnable(GPTIMER3_BASE, GPTIMER_A);
	while (TimerInterrupt != TIME_REACHED);

	TimerInterrupt = false;

}
