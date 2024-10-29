.model small
.stack 100h
.data

a db ' My Name is Shahriar Shakil.$'

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,a
    int 21h
    
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main