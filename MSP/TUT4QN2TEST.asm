org 100h

; add your code here

LEA SI,DECI
MOV DW, AX
MOV CX,5 

;WRITE THE COMPUTATION HERE.

;16BIT/8BIT -->8BIT (AL)
START: 
   DIV 10
   CMP DL, 0  ;REMAINDER
   JNE    
    


ret
HEXA DW 1235H
DECI DB 16 DUP('?')




