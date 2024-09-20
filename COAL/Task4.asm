.model small
.stack 100h
.data
var db 5
number db 2
msg db "The Binary Of 5: $"
.code
       main proc
                 mov ax,@data
                 mov ds,ax

                 mov al, var
                 add bl, number

                 div bl

                 mov bh, ah
                 add ah,48

                 mov al, 2
                 div bl
                 mov cl,ah
                 add cl,48

                 mov al, 1
                 div bl
                 mov ch, ah
                 mov ch, 48
                 
                 mov dl,bh
                 mov ah,2
                 int 21h
                 
                 mov dl,cl
                 mov ah,2
                 int 21h
                 
                 mov dl,ch
                 mov ah,2
                 int 21h

                 mov ah, 4ch
                 int 21h
        
       main endp
end main