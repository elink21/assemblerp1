.model small
.stack
.data
.code
        mov ah,01h     ;opcion 01h, lectura con eco
        int 21h        ;leer con eco
        mov dl,al
        int 21h
        mov ah,02h
        int 21h
        mov ah,4ch     ;opcion 4ch, devolucion al sistema
        int 21h        ;devolucion al sistema
        end 
