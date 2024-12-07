.model small
.stack 100h
.data
a db 'Enter three string : $'
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,a     ;show -> Enter three string 
    int 21h
    
    mov ah,1
    int 21h     ;1st input
    mov bl,al
    
    mov ah,1
    int 21h     ;2nd input
    mov bh,al
    
    mov ah,1
    int 21h     ;3rd input
    mov cl,al
    
    mov ah,2
    mov dl,0Ah
    int 21h     ;new line print for space
    mov dl,13
    int 21h 
    
    
    mov ah,2
    mov dl,bl   ;1st output
    int 21h
     
    mov ah,2
    mov dl,0Ah
    int 21h     ;new line print for space
    mov dl,13
    int 21h  
     
     
    
    mov ah,2    
    mov dl,bh   ;2nd output
    int 21h 
            
    mov ah,2
    mov dl,0Ah
    int 21h     ;new line print for space
    mov dl,13
    int 21h         
            
            
    mov ah,2
    mov dl,cl   ;3rd output
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    