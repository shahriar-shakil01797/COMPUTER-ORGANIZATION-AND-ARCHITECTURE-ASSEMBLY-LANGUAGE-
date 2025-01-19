.model small  
.stack 100h
.data
MSG1 db 0AH, 0DH, 'TYPE A CHARACTER: ','$'
MSG2 db  0AH, 0DH,'THE ASCII CODE OF '
C1 db ?,' IN HEX IS ','$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    Begin:
        lea dx, MSG1
        mov ah,9
        int 21h
        
        mov ah,1
        int 21h
        
        cmp al, 0DH
        JE End_
        
        mov bl, al
        mov C1, al
        
        lea dx, MSG2
        mov ah,9
        int 21h
        
        mov cl, 4
        shr C1, cl
        
        add C1,30h
        mov dl, C1
        jmp output1
        
    Continue:
        and bl, 0FH
        cmp bl,9
        JG Alpha
        
        add bl, 30h
        mov dl,bl
        jmp output2
        
    output1:
        mov ah,2
        int 21h
        jmp continue
        
    output2:
        mov ah,2
        int 21h
        jmp Begin
        
        
    Alpha:
        add bl,37h
        
        mov dl, bl
        mov ah,2
        int 21h 
        
        jmp Begin
        
    End_:
        mov ah, 4ch
        int 21h
        
    main endp
end main
        