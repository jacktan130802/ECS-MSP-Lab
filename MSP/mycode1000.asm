ORG 100h
MOV AL, VAR1         ; check value of VAR1 by moving it to the AL.
LEA BX, VAR1         ;//get address of VAR1 in BX.
MOV BYTE PTR [BX], 44h; // modify the contents of VAR1.
MOV AL, VAR1         ;//check value of VAR1 by moving it to the AL.
RET
VAR1 DB 22h
END



