

void delay_msec(unsigned int delay)
{
	volatile unsigned long ulLoop = 0;

	//#error "currently nothing implement later implement the proper delay"

	for(ulLoop=0; ulLoop<50000; ulLoop++);
}
