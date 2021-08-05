/**************************/
/*      Keypad lab        */
/**************************/

#include<stdio.h>
#include<unistd.h>
#include "library.h"

#define LEDPort 0x32			// LED Port
#define KbdPort 0x34			// Keypad port

#define Col7Lo 0xFE            	// column 7 scan
#define Col6Lo 0xFD           	// column 6 scan
#define Col5Lo 0xFB            	// column 5 scan
#define Col4Lo 0xF7           	// column 4 scan

const unsigned char Bin2LED[] =                         
    /*  0     1     2    3 */
    {0x40, 0x79, 0x24, 0x30,
    /*  4     5     6    7*/
    0x19, 0x12, 0x02, 0x78,
    /*  8     9     A    B*/
    0x00, 0x18, 0x08, 0x03,
    /*  C     D     E    F*/
    };

unsigned char ProcKey();
unsigned char ScanKey();

const unsigned char ScanTable [12] =
{
/* 0     1     2     3	*/
 0xB7, 0x7E, 0xBE, 0xDE,
/* 4     5     6     7 */	
 0x7D, 0xBD, 0xDD, 0x7B,
/* 8     9     *     # */
 0xBB, 0xDB, 0x77, 0xD7
};

unsigned char ScanCode;									// hold scan code returned

/******** MAIN PROGRAM **********/
                             
int main(int argc, char *argv[])
{

	CM3DeviceInit();

	printf(" keypad_testing_on\n");

	while (1) {											// loop forever
		unsigned char i;
		unsigned char k;
        k = CM3_inport(KbdPort);
		i = ScanKey();                             

		if(i != 0xFF){									// if key is pressed
			printf("Key: %u pressed\n", i);
			CM3_outport(LEDPort, Bin2LED[i]);			// output to LED
		}
		usleep(150000);	 								// non blocking sleep
	}

   	CM3DeviceDeInit();	
}  

unsigned char ProcKey()
{
	unsigned char j;									//index of scan code returned
	for (j = 0 ; j <= 12 ; j++)	
	if (ScanCode == ScanTable [j])						//search in table
	{
	   return j; 										//exit loop if found
	}
	if (j == 12)
	{
		return 0xFF; 									// if not found, retun to 0xFF
	}
	return (0);
}

unsigned char ScanKey()
{
	CM3_outport(KbdPort, Col7Lo);						// bit 7 low
	ScanCode = CM3_inport(KbdPort);						// read
	ScanCode |= 0x0F;									// high nybble to 1
	ScanCode &= Col7Lo;                                 // AND back scan value
	if (ScanCode != Col7Lo)                             // in <> out get key

	{
	    return ProcKey();
	}

	CM3_outport(KbdPort, Col6Lo);						// bit 6 low
	ScanCode = CM3_inport(KbdPort);						// read
	ScanCode |= 0x0F;									// high nybble to 1
	ScanCode &= Col6Lo;									// AND back scan value
	if (ScanCode != Col6Lo)								// in <> out get key
	{

	    return ProcKey();
	}

	CM3_outport(KbdPort, Col5Lo);						// bit 5 low
	ScanCode = CM3_inport(KbdPort);						// read
	ScanCode |= 0x0F;									// high nybble to 1
	ScanCode &= Col5Lo;									// AND back scan value
	if (ScanCode != Col5Lo)								// in <> out get key
	{
	    return ProcKey();
	}

	CM3_outport(KbdPort, Col4Lo);						// bit 4 low
	ScanCode = CM3_inport(KbdPort);						// read
	ScanCode |= 0x0F;									// high nybble to 1
	ScanCode &= Col4Lo;									// AND back scan value
	if (ScanCode != Col4Lo)								// in <> out get key
	{
	    return ProcKey();
	}

	return 0xFF;
}


