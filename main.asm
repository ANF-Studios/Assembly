global _main
extern _printf

section .data
    m_eq:  dd "EAX and EBX are equal!"
    a:     db "Microsoft"
    b:     db "Microsoft"

section .text
_main:
    mov      eax, a
    mov      ebx, b
    cmp      eax, ebx
    je       eq
    ret
eq:
    mov      ecx, m_eq
    push     ecx
    call     _printf
    pop      ecx
    ret
