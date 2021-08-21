
org 100h

; add your code here  
        org 100h
        mov ah,0
uploop: nop ; no operation.
        inc ah
        cmp ah,05
        jne uploop
here:   jmp here;infiteloop   
             
        ret
              
ret




