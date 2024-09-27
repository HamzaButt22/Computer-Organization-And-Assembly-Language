.model small
.stack 100h
.data
.code
main proc
mov dl,'1'
mov bl, 0
outer:
     mov bh, 4
             inner:
             mov ah,2
             int 21h
             
             inc dl
             dec bh
             cmp bh, 0
             jne inner
             mov cl, dl
    mov dl, 10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h
    mov dl,cl
    
inc bl
cmp bl,2
jne outer
         
    mov ah, 4Ch
    int 21h

main endp
end main