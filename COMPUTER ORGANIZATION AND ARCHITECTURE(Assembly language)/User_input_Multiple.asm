.model small
.stack 100h
.code

main proc
    
    mov ah,1
    int 21h      ;first input
    mov bl,al
    
    mov ah,1
    int 21h      ;Second input
    mov bh,al  
    
    mov ah,1
    int 21h      ;Third input
    mov cl,al
    
    mov ah,1
    int 21h      ;Fourth input
    mov ch,al 
     
     
    ;.................................................. 
     
     
    mov ah,2
    mov dl,bl    ;first output Display
    int 21h
    
    
    mov ah,2
    mov dl,bh    ;Second output Display
    int 21h
    
    
    mov ah,2
    mov dl,cl    ;Third output Display
    int 21h
    
    
    mov ah,2
    mov dl,ch    ;Fourth output Display 
    int 21h
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
    