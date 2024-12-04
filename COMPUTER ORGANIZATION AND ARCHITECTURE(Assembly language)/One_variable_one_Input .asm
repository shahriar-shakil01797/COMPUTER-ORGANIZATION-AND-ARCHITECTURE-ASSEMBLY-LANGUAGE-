.model small
.stack 100h
.data
a db 8
b db ?

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    
    mov ah,1
    int 21h   ;input b
    mov b,al
   
    
    ;.......................
    
    mov ah,2
    mov dl,a
    add dl,48   ;output a
    int 21h
   
    
    mov ah,2
    mov dl,b   ;output b
    int 21h
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    