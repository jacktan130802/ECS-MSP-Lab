/*****************************/
/*          LED lab          */
/*****************************/
#include<stdio.h>
#include<unistd.h>
#include "library.h"
#include "lab2.h"


// const unsigned char Bin2LED[] = 
                           
//     /*  0     1     2    3 */
//     {0x40, 0x79, 0x24, 0x30,
//     /*  4     5     6    7*/
//     0x19, 0x12, 0x02, 0x78,
//     /*  8     9     A    B*/
//     0x00, 0x18, 0x08, 0x03,
//     /*  C     D     E    F*/
//     0x46, 0x21, 0x03, 0x0E};

// /***** MAIN PROGRAM *****/   
                      
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
