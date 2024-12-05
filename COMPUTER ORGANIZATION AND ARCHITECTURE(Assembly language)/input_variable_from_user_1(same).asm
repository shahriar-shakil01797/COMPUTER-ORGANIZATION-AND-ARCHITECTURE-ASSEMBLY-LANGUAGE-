.model small
.stack 100h
.data
a db 9
b db ?
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h       ;input from user for b
    mov b,al
    
    
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,13
    int 21h
    
    
    mov ah,2
    mov dl,a
    add dl,48
    int 21h
    
    mov ah,2
    mov dl,b
    int 21h
    
    
    exit:
    mov ah,21h
    int 21h
    main endp
end main
    
    
    