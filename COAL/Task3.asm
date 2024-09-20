.model small
.stack 100h
.data
var1 db 3
var2 db 4
var3 db 5
average db ?
number db 5
msg db "The Average Of Numbers: $"
.code
       main proc
                 mov ax,@data
                 mov ds,ax

                 mov al, var1
                 add al, var2
                 add al, var3
                 add al, var1
                 add al, var3


                 mov ah, 0

                 mov bl, number
                 div bl

                 mov average, al

                 mov ah, 9
                 mov dx, offset msg
                 int 21h

                 mov al, average
                 add al, 48
                 mov dl, al
                 mov ah, 2
                 int 21h

                 mov ah, 4ch
                 int 21h
        
       main endp
end main