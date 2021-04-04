global  _main
extern  _printf

section .data
a:
    dd      2
b:
    dd      1
c:
    resd    1
msg:
    db "%i", 10, 0 ; "%08X" for a full int.

section .text
_main:
    mov      eax, [a]
    sub      eax, [b]
    mov      [c], eax
    mov      ebx, [c]
    push     ebx
    push     msg
    call     _printf
    add      esp, 8
    ret
