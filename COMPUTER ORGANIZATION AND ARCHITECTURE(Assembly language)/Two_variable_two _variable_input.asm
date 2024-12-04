.model small
.stack 100h
.data
a db 8
b db 5
c db ?
d db ?

.code

main proc
    
    mov ax,@data
    mov ds,ax
 
    
      
    mov ah,1
    int 21h    ;input c
    mov c,al 
    
    mov ah,1
    int 21h    ;input d
    mov d,al 
        
     
    ;.....................
    
        
    mov ah,2
    mov dl,a   ;output a
    add dl,48
    int 21h 
    
    
    mov ah,2
    mov dl,b   ;output b
    add dl,48
    int 21h
    
    
    mov ah,2
    mov dl,c   ;output c
    int 21h 
    
    mov ah,2
    mov dl,d   ;output d
    int 21h 
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main