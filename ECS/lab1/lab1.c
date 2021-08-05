/*****************************/
/*          LED lab          */
/*****************************/
#include<stdio.h>
#include<unistd.h>
#include "library.h"

#include "lab1.h"



/***** MAIN PROGRAM *****/ 
                        
int main(int argc, char *argv[])
{

	int LEDval;
   	CM3DeviceInit();   

    for(int i=0;i<16;i++)   // only 1 to 15
	{
                              	
        LEDval = Bin2LED(i);	
                      
		CM3_outport(LEDPort,LEDval);    // output to LED

		printf(" %d \n",i);
                
		sleep(1);	  // non blocking sleep

	}
	
   	CM3DeviceDeInit();
}  
