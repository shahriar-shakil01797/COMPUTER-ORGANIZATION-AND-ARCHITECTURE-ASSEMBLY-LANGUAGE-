.model small
.stack 100h
.code

main proc
    
    mov cx,256
    
    mov ah,2
    mov dl,0   ;can i add int 21h
    
    loop:
      
      int 21h
      inc dl
      dec cx 
      
   JNZ loop
   
   
   exit:
   mov ah,4ch
   main endp
end main
      
