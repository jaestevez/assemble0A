.model small
.stack 64
.data
    VAR1 DW 00A2h
    VAR2 DW ?
.code
.start
    MOV AX,0h
    MOV BX,0h  
    MOV CX,0FFFFh

LAZO:       
    MOV DX,CX
    MOV CX,0FFFFh
    LAZ: 
    loop LAZ
    MOV CX,DX
loop LAZO
.exit
    
    END  