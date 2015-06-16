

static unsigned int TimerInterrupt = 0;
void Timer0BIntHandler(void)
{

 TimerIntClear(GPTIMER3_BASE, GPTIMER_TIMA_TIMEOUT);

 TimerInterrupt = 1;
  
 IntDisable(INT_TIMER3A);

        //
        // Turn off Timer0B interrupt.
        //
    TimerIntDisable(GPTIMER3_BASE, GPTIMER_TIMA_TIMEOUT);

        //
        // Clear any pending interrupt flag.
        //
   TimerIntClear(GPTIMER3_BASE, GPTIMER_TIMA_TIMEOUT);
}

void delay_msec(unsigned int delay_time)
{
 TimerInterrupt = 0;

 TimerLoadSet(GPTIMER3_BASE, GPTIMER_A, ((32000/20) * delay_time));
 
 IntMasterEnable();
 TimerIntEnable(GPTIMER3_BASE, GPTIMER_TIMA_TIMEOUT);
 IntEnable(INT_TIMER3A);
 TimerEnable(GPTIMER3_BASE, GPTIMER_A);
 while(TimerInterrupt != TIME_REACHED);

 TimerInterrupt = 0;
       
       
}

