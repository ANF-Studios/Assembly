global _main
extern _printf

section .data
    m_eq:  dd "EAX and EBX are equal!"

section .text
_main:
    mov      eax, 10
    mov      ebx, 10
    cmp      eax, ebx
    je       eq
    ret
eq:
    mov      ecx, m_eq
    push     ecx
    call     _printf
    pop      ecx
    ret
