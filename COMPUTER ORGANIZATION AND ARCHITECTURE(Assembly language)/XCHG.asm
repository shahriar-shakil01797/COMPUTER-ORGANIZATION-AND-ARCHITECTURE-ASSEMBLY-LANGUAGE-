.model small
.stack 100h
.data
a db 'Enter Two nunmber : $'
b db 'XCHG The number : $'

.code

main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9
    lea dx,a  ;show -> Enter Two nunmber
    int 21h
            
            
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,1
    int 21h
    mov bh,al
    
 
    xchg bl,bh 
    
    mov ah,2
    mov dl,0Ah
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,b  ;show -> XCHG The number
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    mov ah,2
    mov dl,bh
    int 21h 
    
    
    exit:
    mov ah,4ch
    int 21h
    
    
    
    