.data
tempByte db    1    ;  creating a variable named temp of type db(byte) with value 16
                    ;  its adress is somewhere in RAM.
tempByte2 db   2
tempFlot real4 2.5

.code
main proc      
    xor rax, rax
    mov rax, 0
    inc rax
    
    xor rbx, rbx
    mov rbx, 10
    dec rbx  

    ;  note that both are readed as increment-inc and decrement-dec
    ;  they do not change the carry flags.

    ret 
main endp

end

;To create a .obj from .asm
;   ml64 /c /Fo"name.obj" name.asm