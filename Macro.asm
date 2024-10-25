.model small        ; Specifies the memory model as small
.stack 100h         ; Sets up a stack of 256 bytes
.data
var1 db 1           ; Defines variable var1 with value 1
var2 db 2           ; Defines variable var2 with value 2
var3 db 3           ; Defines variable var3 with value 3
res db ?            ; Reserve space for a result variable res (uninitialized)
.code

; Macro to perform addition and display result
display macro var1,var2,var3, res
    mov al,var1     ; Load var1 into AL
    add al,var2     ; Add var2 to AL
    add al,var3     ; Add var3 to AL
    add al,48       ; Convert the result to ASCII (adds 48 to make it a displayable character)
    
    mov dl,res      ; Move result into DL (though this line is redundant as DL is overwritten)
    
    mov dl,al       ; Move final result (sum) into DL for printing
    mov ah,2        ; DOS function to print character in DL
    int 21h         ; Call DOS interrupt to display character
endm

main proc
    mov ax,@data       ; Load the data segment address into AX
    mov ds,ax          ; Move the address in AX to DS to initialize data segment
    
    display var1, var2, var3, res      ; Call the display macro with var1, var2, var3, and res
    
    mov ah,4ch         ; DOS function to terminate program
    int 21h            ; Call DOS interrupt to end program
    
    main endp
end main