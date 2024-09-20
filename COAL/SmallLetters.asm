.model small
.stack 100h
.data
.code
     main proc
        
        mov ah, 2
        mov dl, 'z'
        
        mov cx, 26
        
    print_loop:
        int 21h
        
        dec dl
        
    loop print_loop    

        mov ah, 4ch
        int 21h

    main endp
end main