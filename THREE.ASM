.model small
.stack
.data
v1 db "MSG AFTER CLEANING","$" ; mensaje
.code

        mov ah,00h ; seleccion del modo de video
        mov al,03h ; modo 03h , 80x25 a 16 colores cga,ega,vga 
        int 10h      ;interrupcion de video 
        mov ax,@data ;copiar .data en ax
        mov ds,ax    ;copiar ax en ds
        mov ah,09h   ;peticion de imprimir 
        mov dx,offset v1 ; copiar v1 en dx
        int 21h      ; imprimir
        mov ah,4ch   ; peticion 4ch
        int 21h      ; devolver control a DOS
        end
        
