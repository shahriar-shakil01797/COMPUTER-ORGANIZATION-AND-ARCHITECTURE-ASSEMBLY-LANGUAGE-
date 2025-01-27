.model small
.stack 100h
.code

main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    while:
    cmp bl,'0' ;compare with 0
    je exit:
    
    
    mov ah,2
    mov dl,bl
    int 21h
    
    dec bl
    
    jmp while:
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
