.model small
.stack 100h
.data
a db 'Enter 1st number = $'
b db 'Enter 2nd number = $'
c db 'Subtraction Answer = $'
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h      ;first input
    mov bl,al
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,13
    int 21h
   
    ;'''''''''''''''''''''''''''''''''''''''''''''''
    mov ah,9
    lea dx,b
    int 21h
     
    mov ah,1
    int 21h       ;second input
    mov bh,al 
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,13
    int 21h
    
    ;'''''''''''''''''''''''''''''''''''''''''
    
    sub bl,bh ;bl=bl-bh
    add bl,48 
    
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,2
    mov dl,bl
    add bl,48
    int 21h
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main
    
    
    
    