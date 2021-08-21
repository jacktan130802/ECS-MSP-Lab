
        org 100h

; add your code here 


; cause you cannot compare 2 mem . 

        mov BL, [0000h] ;Let si take the offset value 0.
        cmp BL, [0001h] ; compare 0000 vs 0001 offset values
        jb smaller


smaller: 
        mov AL, [0001h] ;all must indent to the funciton way,
        mov [0020h], AL ; must go thru register
        jmp here
        
here   :
        jmp here            
        

ret




