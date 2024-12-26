.model small
.stack 100h
.code

main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
    
    
    
    for:
    cmp bl,'0'
    je exit:
    
    mov ah,2
    mov dl,bl
    int 21h
    
    dec bl
    jmp for:
      
      
      exit:
      mov ah,4ch
      int 21h
      main endp
end main