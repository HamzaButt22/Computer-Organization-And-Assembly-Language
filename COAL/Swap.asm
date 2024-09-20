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
    mov ah, 09h
    int 21h

    mov dl, bh
    add dl, '0'
    mov ah, 02h
    int 21h

    lea dx, msg2
    mov ah, 09h
    int 21h

    mov dl, bl
    add dl, '0'
    mov ah, 02h
    int 21h

    lea dx, newline
    mov ah, 09h
    int 21h

    mov cl, bl
    mov bl, bh
    mov bh, cl

    lea dx, msg3
    mov ah, 09h
    int 21h

    mov dl, bh
    add dl, '0'
    mov ah, 02h
    int 21h

    lea dx, msg4
    mov ah, 09h
    int 21h

    mov dl, bl
    add dl, '0'
    mov ah, 02h
    int 21h

    lea dx, newline
    mov ah, 09h
    int 21h

    mov ah, 4Ch
    int 21h

main endp
end main