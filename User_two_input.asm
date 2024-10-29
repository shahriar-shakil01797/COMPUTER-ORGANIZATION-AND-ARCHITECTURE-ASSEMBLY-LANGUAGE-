.model small
.stack 100h
.code

main proc
    
    mov ah,1
    int 21h      ;first input
    mov bl,al
    
    mov ah,1
    int 21h      ;Second input
    mov bh,al  
    
    
    mov ah,2
    mov dl,bl    ;first input Display
    int 21h
    
    mov ah,2
    mov dl,bh    ;first input Display
    int 21h
    
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
    