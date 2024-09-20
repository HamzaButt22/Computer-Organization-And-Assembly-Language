.model small
.stack 100h
.data
    numbers dw 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
    sum dw 0
.code
    main proc
        mov ax, @data
        mov ds, ax

        mov ax, 0
        mov cx, 10
        mov si, offset numbers

    calculate_sum:
        add ax, [si]
        add si, 2
        loop calculate_sum

        mov sum, ax

        mov bx, 10
        mov dx, 0
        div bx

        mov bx, ax

        mov ah, 4ch
        int 21h

    main endp
end main
