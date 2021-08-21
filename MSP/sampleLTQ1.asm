
org 100h

; add your code here

	org 100h	
		
   jmp  start	
		
	hexdata  db   94h, 56h, 88h, 0A1h, 22h	
	RESULT	dw	0
	start:  LEA  si, hexdata    ; initialise si as pointer to hexdata 
	        mov  ax, 0       
	        mov  cx, 5          ; initialise counter
	again:  add al, [si]	
	        adc ah, 0
	        inc  si	
	        loop  again	
	        mov  RESULT,ax	   ; store sum (total) into memory
	end:    ret	











ret




