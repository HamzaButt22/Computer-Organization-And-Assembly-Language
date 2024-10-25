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
             call output
             
             inc dl
             dec bh
             cmp bh, 0
             jne inner
             mov cl, dl
    mov dl, 10
    call output
    
    mov dl,13
    call output
    mov dl,cl
    
inc bl
cmp bl,2
jne outer
         
    mov ah, 4Ch
    int 21h

main endp 

output proc
    mov ah,2
    int 21h
    ret
output endp

end main