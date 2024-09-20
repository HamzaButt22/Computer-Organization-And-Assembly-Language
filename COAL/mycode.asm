.model small
.stack 100h
.data

;var1 db ?
;var2 db 5
var3 db "JamshaidRPG$"

.code
        main proc
            
        mov ax,@data    ; get the ref of data section
        mov ds,ax       ; and pass it to DS register
        
        ; LEA->load effective address , OFFSET
        
        ;LEA dx,var3
        mov dl,offset var3     ; get first character of variable var3
        
        mov ah,9        ; display string on screen
        int 21h
        
        mov ah,4ch
        int 21h
        main endp
end main        