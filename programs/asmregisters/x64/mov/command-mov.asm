.data
tempByte db    18      ;  creating a variable named temp of type db(byte) with value 16
                       ;  its adress is somewhere in RAM.
tempByte2 db 0
tempFlot real4 12.1

.code
main proc     
    xor al, al    ;  zeros the value
    mov al, byte ptr [tempByte]  ;  in this line i pass to ax register the value type byte of the pointer
                                 ;  that refers to tempByte with the command "mov"
                                 ;  "ptr [tempByte]" return the value related to the adress of tempByte
    ; note: "mov ax, byte ptr [tempByte]" returns error because you cant set a 1byte value to a 2bytes 
    ;       sized adress.
    ; note: "mov al, tempByte" works the same.

    xor ebx, ebx    ;  zeros the value
    mov ebx, real4 ptr [tempFlot]  ;  ebx is not designed for floating point variable but you can do it
                                   ;  stil, the value saved on ebx is messed.

    xor cl, cl    ;  zeros the value
    db 0B1h, 0Fh  ;  you can also write machine code embed to assembly code be careful when executing.
                  ;  its the same as: 
                  ;  mov cl, 15

    ; mov ah, eax  ;  this line will return error due size eax > size ah.

    xor ah, ah    ;  zeros the value
    xor bl, bl    ;  zeros the value
    mov ah, 30         ;  you can save values to variables initiated before
    mov tempByte2, ah  ;  and is possible to checking the adress of the variable for the value
    mov bl, tempByte2  ;  or this pass it to a register of this program.
    ; mov tempByte1, tempByte2  ;  does not work, you must use registers.

    ret 
main endp

end

;To create a .obj from .asm
;   ml64 /c /Fo"name.obj" name.asm