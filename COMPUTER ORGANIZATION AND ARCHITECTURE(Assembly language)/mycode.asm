.model small
.stack 100h
.data
MSG1 db 'Type a character :$'
MSG2 db 10,13,'Ascii code of'
a db ?,'In binaray is ','$'
MSG3 db 10,13 ,'the number of 1 bits is '
b db ?,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,a
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al
    mov a,al
    
    lea dx,MSG2
    mov ah,9
    int 21h
    
    mov bh,0
    mov cx,8
    mov ah,2
    
    Zero:
    shl bl,1
    jc one
    mov dl,'0'
    int 21h
    jmp Next
    
    one:
    mov dl,'1'
    int 21h
    inc bh
    
    Next:
    loop Zero
    
    add bh,30h
    mov b,bh
    
    lea dx,MSG3
    mov ah,9
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
     




