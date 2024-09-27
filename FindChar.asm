.model small
.stack 100h
.data
arr db 'abcdefgh$'
msg db "Enter character to find:$"
    var db ?
    found db 'Character found$'
    notFound db 'Character not found$'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov dl,offset msg
    mov ah,9
    int 21h 

    mov ah, 1
    int 21h
    mov var, al
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    mov ah,2
    int 21h

    mov si,offset arr
    mov cx, 8

search_loop:
    mov al, var
    cmp al, [si]
    je found1
    inc si
    loop search_loop

not_found:
    mov ah, 9h
    mov dx,offset notFound
    int 21h
    jmp end_prog

found1:
    mov ah, 9h
    mov dx,offset found
    int 21h

end_prog:
    mov ah, 4ch
    int 21h

main endp
end main