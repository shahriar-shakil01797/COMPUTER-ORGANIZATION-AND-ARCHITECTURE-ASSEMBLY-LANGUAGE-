.model small
.stack 100h
.code

main proc
    
    mov ah,1
    int 21h      ;Input from user
    mov bl,al
    
    mov ah,2
    mov dl,bl    ;Output the answer which i input from user
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
