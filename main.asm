global _main
extern _printf
extern _getch

section .data
    x:  dd 15
    y:  dd 17
    fmt:  db "%i", 10, 0 

section .text
_main:
    mov     eax, [x]
    mov     ebx, [y]
    imul     eax, ebx
    mov     ecx, eax
    push    ecx
    push    fmt
    call    _printf
    add     esp, 8
    ret
