.model small; se define el tamanio del modelo
.stack      ; se guardan 1024 bytes para la pila
.data       ; seccion de datos, variables

v1 db 9," This is the first message",10,13,"$"
v2 db 9,9,"This is the second message",10,13,"$"
v3 db 9,9,9,"This is the third message",10,13,"$"
.code 
        mov ax,@data; el contenido de .data se guarda en ax
        mov ds,ax   ; y luego en dx

        mov ah,09h  ; se establece la opcion 09h para int21h

        mov dx,offset v1; dx toma la primer cadena

        int 21h; se llama a la interrupcion 21h opcion 09h, imprimir cadena

        mov dx,offset v2; dx toma la segunda cadena

        int 21h; imprimir cadena

        mov dx,offset v3;...

        int 21h;...

        mov ah,4ch;se solicita la opcion 4ch de int21h

        int 21h; se devuelve el contro al sistema

        end
