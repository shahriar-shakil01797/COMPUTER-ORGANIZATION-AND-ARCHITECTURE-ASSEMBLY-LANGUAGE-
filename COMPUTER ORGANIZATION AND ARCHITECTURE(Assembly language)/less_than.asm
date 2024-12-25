.model small
.stack 100h
.code

main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
    
    mov ah,1
    int 21h
    mov bh,al
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    cmp bl,bh
    jle L1
    jmp L2
    
    
    L1:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit:
    
    L2:
    mov ah,2
    mov dl,bh
    int 21h
    jmp exit:
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    