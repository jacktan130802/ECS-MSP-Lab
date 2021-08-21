
org 100h

; add your code here

mov cx,20 
LEA SI,MARKS
AGAIN:
    CMP [SI],49
    JB NEXT
    CMP [SI],50 
    JA NEXT
    
    MOV [SI],50
    
NEXT: 
    INC SI
    DEC CX
    JNZ AGAIN
        



ret
marks db 30,87,48,55,47



