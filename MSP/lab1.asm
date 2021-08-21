org 100h  

mov SI, [0400h];
mov [0420h],SI
;mov [0422h],[SI+2] ;Why cannot work?  
mov AX, [0402h]
mov [0422h],AX
ret