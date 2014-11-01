.model small
.stack 64
.data
    VAR1 DW 00A2h
    VAR2 DW ?
.code
.start
    MOV AX,0h
    MOV BX,0h

LAZO:
    ADD AX,1h
    JNZ LAZO
    ADD DX,1
    JNZ LAZO
    MOV VAR1,AX
    MOV VAR2,DX
    .exit
    
    END