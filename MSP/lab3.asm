
 ;Lab3a
;org 100h

; add your code here

 ;       mov ah,0
;uploop: nop
;        inc ah
  ;      cmp ah,05
 ;       jne uploop
;here:   jmp here

;        ret
                
;ret
      
      
      
      
      
;Lab3b
; org 100h
 ;       
     ;  mov ah,5
;dwnloop:nop
 ;       dec ah
  ;      jne dwnloop
;here:   jmp here

 ;       ret

 
 
;lab3c

      ;  org 100h     
        
     ;   jmp start
        
    ;    marks   db 49,80,65,50,22,100,57,79,81,15
   ;     failcnt db 0
  ;      distcnt db 0
 ;       passcnt db 0     

;start:  mov cx,10
 ;       lea si,marks
;again:  cmp [si],50
   ;     jb  fail
  ;      cmp [si],80
 ;       jae dist
;        jmp pass
;next:   inc si
       ; loop again
;        jmp end
;fail:   inc failcnt
        ;jmp next
;dist:   inc distcnt
 ;       jmp next
;pass:   inc passcnt
       ; jmp next
 ;       
;end:    ret

  
  
  
  
    
;org 100h

;mov si , 0000 
;nop 
 
;smaller: inc SI
    
      
;larger:  inc SI


 
;nop
;CMP SI , [SI+1]
;JA larger
;JB smaller
;mov [0200h],SI

   
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
 ;TEST ONLY  
;org 100h
 ;mov si , 1000h 
 
 ;mov ax,[si+1]