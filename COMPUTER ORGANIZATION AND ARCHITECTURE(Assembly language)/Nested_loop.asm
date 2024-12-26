.model small
.stack 100h
.data
a db 'Grater than 5 $'
b db 'Less than 5 $'
c db 'Equal to 5 $'
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    cmp bl,53
    je L1
    jg L2
    jmp L3
    
    L1:
    mov ah,9
    lea dx,c
    int 21h
    jmp exit:
    
    L2:
    mov ah,9
    lea dx,a
    int 21h
    jmp exit:
    
    L3:
    mov ah,9
    lea dx,b
    int 21h
    jmp exit:
       
    exit:
    mov ah,4ch
    int 21h
    main endp
end main