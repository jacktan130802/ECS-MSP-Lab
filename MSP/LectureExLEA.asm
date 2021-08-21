
org 100h

; add your code here
VALUES DB 12H,34H,56H,67H,55H,33H,88H,33H,66H,22H

start:
        LEA SI, VALUES
        MOV CX,10
        MOV AL,55H ;will auto go in unless got jmp signals. With jump, will only enter when condition is being occured.
        
Again:
        
        CMP [SI],AL ;SI IS AN ADDRESS! (LINE 7.)
        JE  FOUND 
        INC SI
        DEC CX
        JNE Again      ;MULTIPLE CONDITION CAN JUST WRITE IN.
        JMP NOT_FOUND 
        
        
FOUND:  
        
        
        
        
NOT_FOUND:        
        
        
        
ret




