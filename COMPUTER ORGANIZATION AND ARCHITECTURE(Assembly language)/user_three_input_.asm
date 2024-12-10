.model small
.stack 100h
.code

main proc
    
    mov ah,1
    int 21h      ;first input
    mov bl,al
    
    mov ah,1
    int 21h       ;second input
    mov bh,al
    
    mov ah,1
    int 21h        ;third input
    mov cl,al
    
    
   ;*********************************************
   
   
   mov ah,2
   mov dl,bl  ;first output
   int 21h
   
   
   mov ah,2
   mov dl,bh   ;second output
   int 21h
   
   
   mov ah,2
   mov dl,cl   ;third output
   int 21h
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main
    
    
    