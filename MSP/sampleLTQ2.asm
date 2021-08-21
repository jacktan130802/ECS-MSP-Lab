        org 100h
start:
        jmp begin

ascii   db  "Singapore Poly"
result  db  14  dup(?)

begin:  lea si,ascii
        lea di,result
        mov cx,14
        
again:  mov al,[si]      
        cmp byte ptr[si],'a'     ;Make sure ur comparing with the correct 
        jb  itsnot
        cmp byte ptr[si],'z'     ;FROM A-C, convert to capital letter
        ja  itsnot  

convert:        
        sub al,20h

itsnot: mov [di],al
        inc di
        inc si
        loop again              
                       
	ret