.model small
.stack 100h
.data
var1 db 1
var2 db 2
var3 db 3
.code
       main proc
                 mov ax,@data
                 mov ds,ax
                 
                 mov bl,var1
                 mov cl,var2
                 mov dl,var3
                 
                 add cl,bl
                 add cl,48
                 
                 add dl,cl
                 
                 mov ah,2
                 
                 int 21h
                 mov ah,4ch
                 int 21h
        
       main endp
end main     