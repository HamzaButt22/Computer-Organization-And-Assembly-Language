.model small
.stack 100h
.data
var1 db "The number is even$"
var2 db "The number is odd$"
var3 db "Enter number to find:$"
.code  
main proc
mov ax, @data
mov ds,ax

mov dx,offset var3
call print

mov ah,1
int 21h

mov bl, al

mov cl,2

div cl

cmp ah, 0

je label

mov dx,offset var2
call print
jmp exit

label:

mov dx, offset var1
call print

exit:
    mov ah, 4Ch
    int 21h

main endp

print proc
    mov ah,9
    int 21h
    ret
print endp

end main