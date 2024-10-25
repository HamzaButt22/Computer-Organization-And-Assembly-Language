;using function procedure
.model small
.stack 100h
.data
var1 db "abcd$"
var2 db "efghi$"
var3 db "jklmn$"
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov dx, offset var1
    call print  
    
    ;call function
    call nextline
    
    mov dx, offset var2
    call print
    
    ;call function
    call nextline
    
    mov dx,offset var3
    call print
    
    
    mov ah,4ch
    int 21h
    
    main endp

nextline proc 
    mov dx, 10
    mov ah,2
    int 21h

    mov dx,13
    mov ah,2
    int 21h
    ret
nextline endp

print proc
    mov ah,9
    int 21h
    ret
print endp    

end main