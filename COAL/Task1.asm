.model small
.stack 100h
.data
.code
       main proc
                 mov al,3
                 mov bl,5
                 
                 add al,bl
                 add al,48
                 mov dl,al
                 
                 mov al,2
                 mov bl,1
                 
                 sub al,bl
                 mov cl,al
                 
                 sub dl,cl
                 
                 mov ah,2
                 
                 int 21h
                 mov ah,4ch
                 int 21h
        
       main endp
end main     