.model small
.stack 64
.data
    VAR1 DW ?
.code
.start
    MOV AH,1h 
    int 21h
    ;el caracter queda guardado en AL
.exit
    
END