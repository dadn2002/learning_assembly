.data
tempByte db    5       ;  creating a variable named temp of type db(byte) with value 16
                       ;  its adress is somewhere in RAM.
tempByte2 db 12
tempFlot real4 5.3

.code
main proc     
    
    xor rax, rax    ;  zeros the value
    lea rax, tempByte  ;  in this line i pass to rax register the adress of tempByte variable
                       ;  note that all pointers are 64bits wide.
    
    mov byte ptr [rax], 7  ;  "ptr [rax]" refers to the value saved on the adress of rax
                           ;  "byte" is the type of the data of "ptr [rax]"
                           ;  im moving "7" to the value saved on the adress of rax
                           ;  that's, im passing "7" to the adress of tempByte.
    
    mov al, tempByte  ;  just to be able to check the value
    mov tempByte, 0   ;  zeros the value      a
    
    mov tempByte, 8   ;  doing the same directly
    mov ah, tempByte  ;  just to be able to check the value

    ret 
main endp

end

;To create a .obj from .asm
;   ml64 /c /Fo"name.obj" name.asm