.model small
.stack 100h
.data
A db ?
B db ?
MSG1 db 0AH, 0DH, 'TYPE A BINARY NUMBER, UP TO 8 DIGITS: ','$'
MSG2 db 0AH, 0DH, 'THE BINARY SUM IS ','$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, MSG1
    mov ah,9
    int 21h
    
    xor bl, bl
    mov cx, 8
    
    mov ah,1
    
    L1:
        int 21h
        cmp al, 0DH
        je Out_
        sub al, 30h
        shl bl,1
        or bl,al
        loop L1
        
    Out_:
        mov A,bl
        
        mov ah,9
        int 21h
        
        xor bl,bl
        mov cx,8
        mov ah,1
        
    L2:
        int 21h
        cmp al, 0DH
        je Out2_
        sub al, 30h
        shl bl,1
        or bl,al
        loop L2
        
    Out2_:
        mov B,bl
        
        lea dx, MSG2
        mov ah,9
        int 21h
        
        add bl, A
        mov ah,2
        mov cx,8
        
    L3: 
       shl bl,1
       jc One
       mov dl,'0'
       int 21h
       jmp Continue
       
    One:
        mov dl,'1'
        int 21h
        
    Continue:
        loop L3 
            
    mov ah, 4ch
    int 21h
    
    main endp
end main