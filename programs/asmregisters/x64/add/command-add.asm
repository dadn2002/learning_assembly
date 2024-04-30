.data
tempByte db    1    ;  creating a variable named temp of type db(byte) with value 16
                    ;  its adress is somewhere in RAM.
tempByte2 db   2
tempFlot real4 2.5

.code
main proc     
    xor rax, rax       ;  zeros the value
    xor rbx, rbx       ;  zeros the value
    mov rax, 1          
    mov rbx, 2
    add rax, rbx       ;  add the source to the destination and stores in destination
                       ;  that is, "add rax, rbx" ~ "rax = rax + rbx"
    xor rcx, rcx
    xor rdx, rdx
    mov cl, tempByte  ;  similar case but with RAM adresses.
    mov dl, tempByte2
    add cl, dl        

    ;  The original Registers, RAX,RBX,RCX,RDX are more efficient with additions
    ;  new registers add a REX prefix in machine code
    ;  Use "ADD rax, 0" to update flags according to register "AND rax, rax" and
    ;  "OR rax, rax" works the same. "CMP rax, rax" set flags as "SUB rax, rax"
    ;  use "ADD rax, 1" if you need "INC rax", which affects the carry flag
    ;  addition is faster than multiplication.
    ;  Something interesting happens when you add operands with different sizes

    xor rax, rax
    add rax, 2147483648
    ;  rax FFFFFFFF00000000
    ;  ADD sign extends an immediate operand when the operands are not the same size.  
    ;  When destination is 64bits, the immediate will always read 32bits and itll be
    ;  sign extended. So if the 31bit is 1, the value turns negative!  

    xor rax, rax
    xor rbx, rbx
    mov rbx, 2147483648
    add rax, rbx
    ;  rax 0000000080000000


    ret 
main endp

end

;To create a .obj from .asm
;   ml64 /c /Fo"name.obj" name.asm