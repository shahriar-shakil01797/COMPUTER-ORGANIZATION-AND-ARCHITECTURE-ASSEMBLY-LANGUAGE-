.model small
.stack 100h
.data

x db 10,13,'Enter 1st Number : $'
y db 10,13,'Enter 2nd Number : $'
z db 10,13,'Addition of two Number : $'

.code

main proc 
    
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,x
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al  ;bl       :1st input
    
    
    
    
    mov ah,9
    lea dx,y
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al  ;bl        :2nd input
    
    
            
    ;......................................................................        
    add bl,bh         
     
    mov ah,9
    lea dx,z
    int 21h
    
   
           
    mov ah,2
    mov dl,bl
    sub dl,48
    int 21h       
          
            
            
    
  
    exit:
    mov ah,4ch
    int 21h
    main endp
end main