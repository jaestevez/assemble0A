.model small
.stack 64
.data
    VAR1 DW ?
.code
.start
    MOV AX,0FFh 
    MOV CX,AX

LAZO:       
    MOV DX,CX
    MOV CX,AX
    LAZ: 
    loop LAZ
    MOV CX,DX
loop LAZO 
dec CX 
MOV VAR1,CX
.exit    
END
