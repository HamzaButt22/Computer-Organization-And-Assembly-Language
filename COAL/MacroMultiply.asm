.model small
.stack 100h
.data
num1 db 2
num2 db 1
result db 0
msg1 db "result= $"
.code
multiply macro num1, num2, result
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
multiply endm 

main proc
    mov ax, @data
    mov ds, ax 
    
    multiply num1, num2, result
    
    mov ah, 4Ch
    int 21h

main endp

end main