.model small
.stack 100h
.code

main proc
    
    mov ah,2
    mov dl,07    ;BEEP SOUND
    int 21h
    
  
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
