.code
; Syntax for instructions
; AND mem/reg, mem/reg/imm
; OR  mem/reg, mem/reg/imm
; NOT mem/reg
; XOR mem/reg, mem/reg/imm

main proc
    mov eax, 1001100010011b
    mov ecx, 1001000010010b

    and eax, ecx
    ; output:
    ;
    ; and eax, ecx
    ; eax,   1001100010011b
    ; ecx,   1001000010010b
    ;     0001001000010010
    ;
    ; or  eax, ecx
    ; eax,   1001100010011b
    ; ecx,   1001000010010b
    ;     0001001100010011
    ;
    ; not eax
    ; eax,   1001100010011b
    ;     1110110011101100
    ;
    ; xor eax, ecx
    ; eax,   1001100010011b
    ; ecx,   1001000010010b
    ;     0000000100000001
    ;
    ; "nor" eax, ecx
    ; not (or eax, ecx)
    ; eax,   1001100010011b
    ; ecx,   1001000010010b
    ;     1110110011101100
    ;
    ; "nand" eax, ecx
    ; not (and eax, ecx)
    ; eax,   1001100010011b
    ; ecx,   1001000010010b
    ;     1110110111101101
    ;
    ; composition
    ; or  = not(and(not(a),(not(b)))
    ; a+b = ||a||b|| where |a| denotes not
main endp

end

;To create a .obj from .asm
;   ml64 /c /Fo"name.obj" name.asm
