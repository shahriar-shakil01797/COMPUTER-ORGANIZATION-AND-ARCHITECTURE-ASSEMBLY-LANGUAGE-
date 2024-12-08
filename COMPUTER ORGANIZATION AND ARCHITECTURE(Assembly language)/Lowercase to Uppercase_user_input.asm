.model small
.stack 100h
.data
x db 'Enter any lowercase alphabet = $ '
y db 'The Uppercase alphabet = $ '

.code

main proc 
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,x
    int 21h
     
    mov ah,1
    int 21h
    mov bl,al
    
    
    sub bl,32
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,13
    int 21h
    
    
    mov ah,9
    lea dx,y
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
   