.model small
.stack 100h
.data

a db 'Enter The number : $'
b db 'The Result is : $ '

.code

main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov a,al
    
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,2
    mov dl,a
    int 21h
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main