
org 100h

; add your code here

;marks db 10,80,71,24,77,78,98,65,56,34,76,45,45,78,4,2,4465,465,64,76

MOV CX,20
MOV BL, 0 
MOV SI ,0200H
START:  
        
     ; LEA SI,MARKS
     CMP [SI] , 70
     JB OUTOFRANGE
     CMP [SI], 79
     JA  OUTOFRANGE
     INC BL
     JMP OUTOFRANGE
     
     OUTOFRANGE:
     INC SI 
     DEC CX
     JNZ START
     JMP EXIT
     
     
     EXIT:
     
     
ret




