.model small
.stack 100h
.data
.code
     main proc
        
      mov ah, 2
      mov dl, 'A'

      mov cx, 26      ; Loop counter for 26 letters (A to Z)

      print_loop:
       int 21h

       inc dl

       loop print_loop

       mov ah, 4ch
       int 21h

     main endp
end main
