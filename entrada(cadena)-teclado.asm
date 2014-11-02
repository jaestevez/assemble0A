.model tiny
.data
    FirstS     db  13,10,'digite una cadena: $'
    SecndS     db  13,10,'       la cadena ingresada es: $'
    OurBuff    db  00h,00h 
    db  00h 
.code

; impresion en pantalla


           mov  dx,offset FirstS
           mov  ah,09h
           int  21h

;asignando buffer

           mov  bx,offset OurBuff

           mov  dx,bx

;le decimos cuantos caracteres maximo mas el caracter de terminacion

           mov  byte [bx],33

;llamamos la subrutina

           mov  ah,0Ah
           int  21h

;imprimir mensaje

           mov  dx,offset SecndS
           mov  ah,09h
           int  21h

;se asigna a un registro la cadena en el buffer

           mov  bx,offset OurBuff

; devuelve la longitud real de la cadena en la posicion 

           mov  al,[bx+1]

; agregamos dos a la longitud de la cadena

           add  al,02

;

           xor  ah,ah
           mov  si,ax

;se agrega caracter final

           mov  byte [bx+si],'$'

;se escribe la cadena antes ingresada

           mov  dx,offset OurBuff
           add  dx,02
           mov  ah,09h
           int  21h

;regreso del control al SO
           mov  ah,4Ch
           int  21h
.exit
END