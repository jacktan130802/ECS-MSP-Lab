	org  100h
	jmp   Start
PRICES         db    99,22,90,47,68,50,48,58,90,76,49,66,77,88,46,48,39,59	 	           ; 18 prices defined in memory
INCREASED	db   1 dup(?)     
MOV ax,0




Start:	   lea    si, PRICES	 ; initialise pointer to 1st byte
           mov    cx, 18	 ; initialise counter
           
           
AGAIN:     cmp [si],38
           jb NEXT 
           cmp [si],49 
           ja NEXT
           mov [si], 50
           inc AX
           jmp NEXT
           
NEXT:       inc si
            dec cx
            jnz AGAIN 
            
           


	ret