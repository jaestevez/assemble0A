.model tiny
.data
    mensaje1     db  'digite una cadena: $'
    mensaje2     db  13,10,'la cadena ingresada es: $'
    cadenaBuffer    db ''
    
.code

; impresion en pantalla mensaje1


           lea dx,mensaje1
           mov  ah,09h
           int  21h

;asignando buffer

           lea bx,cadenaBuffer

           mov  dx,bx  ;direccion del area de almacenamiento

;le decimos cuantos caracteres maximo mas el caracter de terminacion

           mov  byte [bx],21h

;llamamos la subrutina

           mov  ah,0Ah
           int  21h

; impresion en pantalla mensaje2

           lea dx,mensaje2
           mov  ah,09h
           int  21h

;se asigna a un registro la cadena en el buffer

           lea bx,cadenaBuffer

; devuelve la longitud real de la cadena en la posicion 

           mov  al,[bx+1]

; agregamos dos a la longitud a la cadena 

           add  al,02

;

           MOV AH,0h
           mov  si,ax  ; size string ->source index

;se agrega caracter final

           mov  byte [bx+si],'$'

;se escribe la cadena antes ingresada

           lea dx,cadenaBuffer
           add  dx,02
           mov  ah,09h
           int  21h  
;regreso del control al S.O.
           mov  ah,4Ch
           int  21h
.exit
END