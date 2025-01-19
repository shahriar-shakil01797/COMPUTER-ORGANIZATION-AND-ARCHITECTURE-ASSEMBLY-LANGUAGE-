.model small 
.stack 100h
.data
MSG1 db 'TYPE A CHARACTER: $'
MSG2 db 0AH, 0DH, 'THE ASCII CODE OF'
C1 db ?,' IN BINARY IS ','$'
MSG3 db 0AH, 0DH,'THE NUMBER OF 1 BITS IS '
C2 db ?,'$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, MSG1
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    mov C1, al
    
    lea dx, MSG2
    mov ah, 9
    int 21h
    
    mov bh,0 ;counter for 1s
    mov cx,8
    mov ah,2
    
    L1:
        shl bl,1
        jc L2
        mov dl,'0'
        int 21h
        jmp L3
    L2:
        mov dl, '1'
        int 21h
        inc bh
        
    L3:
        loop L1
        
    add bh,30h
    mov c2,bh
    
    lea dx, MSG3
    mov ah,9
    int 21h
    
    mov ah, 4ch
    int 21h
    
    main endp
end main