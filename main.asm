global _main
extern _printf
extern _getch

section .data
    x:  dd 5
    y:  dd 7
    fmt:  db "%i", 10, 0 

section .text
_main:
    mov      eax, [x]
    mov      ebx, [y]
    imul     eax, ebx
    mov      ecx, eax
    push     ecx
    push     fmt
    call     _printf
    pop      ecx
    add      esp, 4
    ret
