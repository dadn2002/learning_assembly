.code

;C++ always understand rax as the return value
;when treating SomeFunction as a function with
;extern "C" int SomeFunction();

SomeFunction proc
    mov rax, 123
    ret
SomeFunction endp

end

;To create a .obj from .asm
;   ml64 /c /Fo"name.obj" name.asm