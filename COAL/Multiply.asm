.model small
.stack 100h
.data
num1 db 2
num2 db 1
result db 0
msg1 db "result= $"
.code
main proc
    mov ax, @data
    mov ds, ax

    mov al, num1
    mov cl, num2

    mul cl

    mov result, al
    
    lea dx, msg1
    mov ah, 09h
    int 21h

    mov dl, result
    add dl,48
    mov ah,2
    int 21h 

    mov ah, 4Ch
    int 21h

main endp

end main