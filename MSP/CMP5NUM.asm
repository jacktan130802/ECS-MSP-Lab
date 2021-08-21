 
 
 

org 100h

; add your code here 
VALUES DB 12H,64H,32H,43H,61H


        LEA SI,VALUES
        MOV CX,5 
        MOV AL,0H


LOP:        CMP [SI], AL ;WHEN SI IS LARGER
            JC NOCHANGE  
            MOV AL,[SI]


NOCHANGE: 
            INC SI 
            DEC CX
            JNE LOP 



MOV [0020H],AL
ret




