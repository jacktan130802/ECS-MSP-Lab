
org 100h

; add your code here

LEA SI, DECI
MOV AX, HEXA
MOV DL,0
MOV BL,10


AGAIN: 
MOV DL,0;TO CHECK WHY THIS IS NEEDED.
DIV BX ;QUOTIENT STORED IN AL , REMAINDER IN DL
CMP AX,0
JNE NEXT
JE EXIT 

NEXT:
MOV [SI],DL
INC SI 
JMP AGAIN        
  


EXIT:
MOV [SI],DL





;get result from remainder DL

ret
HEXA DW 900h
DECI DB 15 (?)


