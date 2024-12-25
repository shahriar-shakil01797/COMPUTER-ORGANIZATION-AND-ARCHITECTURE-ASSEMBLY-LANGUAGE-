.model small
.stack 100h
.data
a db 'Non-Negative/Positive $'
b db 'Negative $ '
.code


main proc
    
    mov ax,@data
    mov ds,ax
    
    mov bx,10
    
    cmp bx,0
    jge L1
    jmp L2
    
    L1:
    mov ah,9
    lea dx,a
    int 21h
    jmp exit:
    
    L2:
    mov ah,9
    lea dx,b
    int 21h
    jmp exit:
    
       
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    