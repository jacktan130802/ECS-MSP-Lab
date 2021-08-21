
org 100h

; CAUSE HEXA IS 16 SO TO GET MSB AS LONG 8 CAN ALREADY.
 
      MOV SI,0800H ;the one with the content
      MOV DI, 0830H
      MOV CX,5  ;CX ALWAYS USE FOR COUNTER.
      MOV BX ,0820H
            
START:
     ;MUST USE 8 BIT IF NOT IT WILL GET THE NEIGHBOURING (NEXT HEX VALUE.) 
     MOV DX, 0
     MOV DL , [SI] ;use temp storage DX.
     SHL DL,1   ;MUST USE 8 BIT IF NOT IT WILL GET THE NEIGHBOURING (NEXT HEX VALUE.)
 ;    JC ONE
     JC LOCBX
     JNC LOCDI 
     
     
LOCBX:   
       
     MOV AX,0
     MOV AL, [SI]
     MOV [BX],AL ; CANNOT MOVE 2 MEM  (POINTERS OR REGISTERS CAN DO BOTH MEM OR ADDRESS STORAGE)
     INC SI
     INC BX
     INC CX  
     JMP START




     
LOCDI:     
    
     MOV AX, 0
     MOV AX, [SI]
     MOV [DI],AX ; CANNOT MOVE 2 MEM  (POINTERS OR REGISTERS CAN DO BOTH MEM OR ADDRESS STORAGE)
     INC SI
     INC DI
     DEC CX
     JZ EXIT  
     JMP START
     
EXIT:
     
     
     
     
;WILL CATCH THE PREVIOUS ONE.     
;UR UNSURE ABOUT HOW TO DEAL WITH ADDRESSES.    
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     ;MOV CL , 5
     ;CMP CL , 0
       
     ;JNE STORE 
     ;JMP EXIT
     
     
     
;STORE: 
 ;    INC SI
  ;   DEC CL 
   ;  MOV DB ,[SI]
    ; JMP START



;EXIT:




;ret




