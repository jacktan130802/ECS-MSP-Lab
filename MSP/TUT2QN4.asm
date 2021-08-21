
org 100h

; add your code here

MOV CL , 80

CMP CL , 79
JB COND 
JMP INCORRECT 
 
 
COND:   
       CMP CL, 70
       JA CORRECT
       JMP INCORRECT
       
       
       
CORRECT:  
         MOV BL,1
         JMP END  ;THIS IS REQUIRED.
 
INCORRECT:
         MOV BL,0
         JMP END

END: 
ret




