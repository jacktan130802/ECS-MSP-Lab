
org 100h

; add your code here
AGAIN: 
   MOV AL,0H
   IN AL ,80H
   AND AL, 10H
   JZ LEDON
   JNZ LEDOFF
   
LEDON:  
    MOV AL , 0FFH  ; need 0
    OUT 82H, AL
    JMP AGAIN
    
LEDOFF:
    MOV AL , 00H
    OUT 82H, AL
    JMP AGAIN

ret




