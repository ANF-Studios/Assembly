global _main
extern _printf

section .data
    m_neq:  dd "EAX and EBX are not equal!"

section .text
_main:
    mov      eax, 5
    mov      ebx, 10
    cmp      eax, ebx
    jne       neq
    ret
neq:
    mov      ecx, m_neq
    push     ecx
    call     _printf
    pop      ecx
    ret
