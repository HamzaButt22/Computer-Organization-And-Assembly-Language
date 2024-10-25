.model small
.stack 100h
.data
    msg1 db "Before swap: BH = $"
    msg2 db " BL = $"
    msg3 db "After swap: BH = $"
    msg4 db " BL = $"
    newline db 13, 10, '$'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov bl, 4
    mov bh, 3

    lea dx, msg1
    call string

    mov dl, bh
    add dl, '0'
    call output

    lea dx, msg2
    call string

    mov dl, bl
    add dl, '0'
    call output

    lea dx, newline
    call string

    mov cl, bl
    mov bl, bh
    mov bh, cl

    lea dx, msg3
    call string

    mov dl, bh
    add dl, '0'
    call output

    lea dx, msg4
    call string

    mov dl, bl
    add dl, '0'
    call output

    lea dx, newline
    call string

    mov ah, 4Ch
    int 21h

main endp

output proc
    mov ah, 02h
    int 21h
    ret
output endp

string proc
    mov ah, 09h
    int 21h
    ret
string endp    

end main