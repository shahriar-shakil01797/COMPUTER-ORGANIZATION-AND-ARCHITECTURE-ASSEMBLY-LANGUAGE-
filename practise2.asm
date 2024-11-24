 .model small
 .stack 100h
 .data
 
 a db 'Please!Enter any number as you wish := $'
 b db 'The Number is : = $'
 
 .code
 
 main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a ;string input
    int 21h
           
    mov ah,1
    int 21h
    mov a,al 
    
       
    mov ah,9
    lea dx,b  ;string input
    int 21h
    
    mov ah,2
    mov dl,a
    int 21h
    
    
    
    
       
    exit:
    mov ah,4ch
    int 21h
    main endp
 end main
