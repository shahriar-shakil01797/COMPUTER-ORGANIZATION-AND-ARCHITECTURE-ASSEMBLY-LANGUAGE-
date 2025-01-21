.model small 
.stack 100h
.data
MSG1 db 0AH, 0DH, 'TYPE A HEX NUMBER (0 TO FFFF): ','$'
MSG2 db 0AH, 0DH, 'IN BINARY IT IS: ','$'
MSG3 db 0AH, 0DH, 'ILLEGAL HEX DIGIT, TRY AGAIN: ','$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, MSG1
    mov ah,9
    int 21h
    
    Start:
        xor bx, bx
        mov cl,4
        mov ah,1
        int 21h
        
    While_:
        cmp al, 0DH
        je End_While
        cmp al,'0'
        jl Error_
        cmp al,'9'
        jg Letter
        and al, 0FH
        jmp Shift
        
    Letter:
        cmp al,'F'
        jg Error_
        cmp al, 'A'
        jl Error_
        sub al, 37h
        
    Shift:
        shl bx,cl
        or bl,al
        int 21h
        jmp While_
        
    End_While:
        lea dx, MSG2
        mov ah,9
        int 21h
        
        mov cx,16
        mov ah,2
        
    Show:
        shl bx,1
        jc One
        
        mov dl,'0'
        int 21h
        jmp Loop1
        
   One:
        mov dl, '1'
        int 21h
        
   Loop1:
        loop Show
        jmp End_
        
   Error_:
        lea dx, MSG3
        mov ah,9
        int 21h
        
        jmp Start
        
   End_:
        mov ah, 4ch
        int 21h 
    
    main endp
end main
    