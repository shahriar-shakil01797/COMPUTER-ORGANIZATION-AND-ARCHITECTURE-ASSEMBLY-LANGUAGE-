.model small
.stack 100h
.data
x db 100 dup('$') 
.code

main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,0Ah
    mov x,al
    int 21h
    
    
    mov ah,9 
    lea dx,x
   
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
