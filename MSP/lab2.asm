
org 100h

; add your code here 
; Lab2.asm

org 100h        ;1
mov ax,1234h    ;2            
mov bx,040ch    ;3
mov dx,ax       ;4
mov cx,5678h    ;5
inc ch          ;6
dec cl          ;7
xchg   ax,cx    ;8
mov [0410h],ah  ;9
mov [0411h],cl  ;10
mov cx,[0410h]  ;11
mov si,0410h    ;12
inc [si]        ;13
mov ax,[si]     ;14
mov [bx+6],dx   ;15
dec [bx+4]      ;16
xchg [si]3,cl   ;17
mov [si+4],dx   ;18
mov bx,3        ;19
mov dx,[bx+si]  ;20
dec [bx+si+2]   ;21
ret             ;22



ret




