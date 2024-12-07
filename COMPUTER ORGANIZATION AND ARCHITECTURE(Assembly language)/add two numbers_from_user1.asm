.model small
.stack 100h
.data
x db 'Enter first number = $'
y db 'Enter Second number = $'
z db 'The Summation = $'
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,x  ;show  Enter first number  for x
    int 21h
    
    
    mov ah,1
    int 21h    ;input for x
    mov bl,al
    
    
    mov ah,2
    mov dl,0Ah
    int 21h     ;new line print
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,y   ;show  Enter second number  for y
    int 21h
    
    mov ah,1
    int 21h      ;input for y
    mov bh,al
    
    ;,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
    
    add bl,bh ;bl=bl+bh
    
    mov ah,2
    mov dl,0Ah
    int 21h     ;new line print
    mov dl,13
    int 21h
    
    
    
    mov ah,9
    lea dx,z
    int 21h
    
    
    mov ah,2
    mov dl,bl
    sub dl,48
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
