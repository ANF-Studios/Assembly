global _main
extern _printf
extern _getch

section .data
    x:  dd 9
    y:  dd 3
    fmt:  db "%i", 10, 0 

section .text
_main:
    mov      eax, [x] ; numerator, and later result
    mov      ecx, [y] ; denominator
    mov      edx, 0   ; remainder
    idiv     ecx      ; divide
    push     eax
    push     fmt
    call     _printf
    add      esp, 8
    ret
