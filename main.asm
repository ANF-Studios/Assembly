global _main
extern _printf

section .data
    x:  dd "EBX and ECX are not equal!"

section .text
_main:
    mov      ecx, x
    push     ecx
    call     _printf
    pop      ecx
    ret
