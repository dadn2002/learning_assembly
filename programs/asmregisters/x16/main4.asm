.code

main proc
    push rax    ;  save previous value of rax adress
    mov ax, 1   ;  set value of ax register
    mov al, 2   ;  set value of a-low register (last 2 bytes)
    mov ah, 3   ;  set value of a-high register (first 2 bytes)
    pop rax     ;  return rax to previous value
    ret 
main endp

end

;To create a .obj from .asm
;   ml64 /c /Fo"name.obj" name.asm