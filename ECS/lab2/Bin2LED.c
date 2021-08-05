unsigned char Bin2LED(int i )
{
const unsigned char Bin2LED[] = 
                           
    /*  0     1     2    3 */
    {0x40, 0x79, 0x24, 0x30,
    /*  4     5     6    7*/
    0x19, 0x12, 0x02, 0x78,
    /*  8     9     A    B*/
    0x00, 0x18, 0x08, 0x03,
    /*  C     D     E    F*/
    0x46, 0x21, 0x03, 0x0E};

/***** MAIN PROGRAM *****/ 
return(Bin2LED[i]);
}