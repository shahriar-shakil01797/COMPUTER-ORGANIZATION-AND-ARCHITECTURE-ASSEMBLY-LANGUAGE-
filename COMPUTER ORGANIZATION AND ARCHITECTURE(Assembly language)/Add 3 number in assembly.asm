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
    
    mov ah,1
    int 21h
    mov cl,al
    
    add bl,bh ;bl=bl+bh
    sub bl,48 
    add bl,cl ;bl=bl+cl
    sub bl,48

    
    mov ah,2
    mov dl,bl
    sub bl,48
    int 21h 
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main