.model small
.stack

.data
   let db 69,76,73,65,83,"$"; cadena, dada por concatenacion ASCII

.code
        mov ax,@data; copiamos .data a ax
        mov ds,ax   ; y ax a ds
        mov ah,09h  ; peticion 09h, imprimir

        mov dx,offset let ; copiamos let a dx
        int 21h           ; imprimimos
        mov ah,4ch        ; peticion 4ch
        int 21h           ; devolucion a DOS
        end

