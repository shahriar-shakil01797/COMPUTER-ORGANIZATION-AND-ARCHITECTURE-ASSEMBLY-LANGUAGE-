.model small
.stack 100h
.data

a db ' Enter same input  : = $'
b db ' Enter same output : = $'

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,a    ;string show  a 
    int 21h 
    
    
    mov ah,1
    int 21h      ;;input value
    mov a,al
    
    
    mov ah,2
    mov dl,10
    int 21h    ;.......................................new print line 
    mov dl,13 
    int 21h
    
    
    
    
    
    mov ah,9
    lea dx,b    ;string show  b
    int 21h 
    
    mov ah,2
    mov dl,a           ;output value show
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main