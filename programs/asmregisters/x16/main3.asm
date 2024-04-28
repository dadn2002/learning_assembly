.code

main proc
    mov ax, 1   ;  set value of ax register
    mov bx, 2   ;  set value of bx register
    mov al, 3   ;  set value of a-low register (last 2 bytes)
    mov ah, 4   ;  set value of a-high register (first 2 bytes)
    ret 
main endp

end

;To create a .obj from .asm
;   ml64 /c /Fo"name.obj" name.asm