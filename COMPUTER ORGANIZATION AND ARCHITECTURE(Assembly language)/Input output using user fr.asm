.model small
.stack 100h
.data
a db 'Enter Any number as you wish : $'
b db 'The Result is : $'
.code

main proc
    mov ax,@data
    mov ds,ax 
    
    mov ah,9
    lea dx,a       ; Show Enter Any number as you wish
    int 21h
    
    mov ah,1 
    int 21h        ;input
    mov bl,al
       
    mov ah,2
    mov dl,0Ah
    int 21h        ;print new line for space 
    mov dl,13
    int 21h  
    
    
    mov ah,9
    lea dx,b       ; show The Result is
    int 21h 
    
   
    mov ah,2
    mov dl,bl      ;output   the result is
    int 21h
           
           
   exit:
   mov ah,4ch
   int 21h
   main endp
end main
    
    
    
    
    