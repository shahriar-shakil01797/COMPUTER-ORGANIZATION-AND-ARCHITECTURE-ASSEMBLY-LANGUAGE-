.model small
.stack 100h
.data

a db '1st number = $'
b db '2nd number = $'
c db '3rd number = $'
d db 'Summation Answer = $'
.code


main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h       ; first
   
    mov ah,1
    int 21h
    mov bl,al
    
    
    
    mov ah,2
    mov dl,0Ah
    int 21h      ;new line print for space 
    mov dl,13
    int 21h 
    
    ;.....................................
   
    mov ah,9
    lea dx,b
    int 21h       ; 2nd 
   
    mov ah,1
    int 21h
    mov bh,al 
    
    
    mov ah,2
    mov dl,0Ah
    int 21h      ;new line print for space 
    mov dl,13
    int 21h
    
    ;.....................................
   
    
    mov ah,9
    lea dx,c
    int 21h       ; 3rd 
   
    mov ah,1
    int 21h
    mov cl,al 
    
    
    mov ah,2
    mov dl,0Ah
    int 21h      ;new line print for space 
    mov dl,13
    int 21h
    
    ;.....................................
    
    
     add bl,bh ;bl=bl+bh
     sub bl,48
     
     add bl,cl ;bl=bl+cl 
     sub bl,48
    
    
     mov ah,2
     mov dl,0Ah
     int 21h      ;new line print for space 
     mov dl,13
     int 21h 
     
     
     mov ah,9
     lea dx,d
     int 21h       ; 4th
     
     
     mov ah,2
     mov dl,bl
     sub bl,48
     int 21h
     
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
          
          
          
          
 
 
    