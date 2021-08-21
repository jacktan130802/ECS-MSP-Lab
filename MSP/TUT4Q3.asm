
org 100h

; add your code here

MOV CL , 30

CMP CL , 79
JB COND 
MOV BL,0  
 
 
COND:   
       CMP CL, 70
       JA CORRECT
       MOV BL, 0
       
       
       
CORRECT:  
         MOV BL,1 
 
 

ret




