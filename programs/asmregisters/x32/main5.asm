.code

main proc
    mov rax, -1  ;  in this case FFFFFFFFFFFFFFFF will show properly
    mov eax, -1  ;  example of 32b messing with x64 registers
                 ;  will show 000000000000FFFF
    ret 
main endp

end

;To create a .obj from .asm
;   ml64 /c /Fo"name.obj" name.asm