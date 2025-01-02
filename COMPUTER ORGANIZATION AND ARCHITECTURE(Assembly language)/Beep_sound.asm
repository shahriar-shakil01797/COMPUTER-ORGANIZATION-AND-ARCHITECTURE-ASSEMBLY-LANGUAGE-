.model small
.stack 100h
.code

main proc
    
    mov ah,2
    mov dl,07             ;BEEP SOUND
    int 21h

    mov ah,2
    mov dl,07             ;BEEP SOUND
    int 21h       ;2 beep sound
    
  
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
