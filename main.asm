global _main
extern _printf
extern _getch

section .data
    msg:  db  "Hello World!", 0
    fmt: db "%i", 10, 0

section .text
_main:
    call     print_hw
    ret
print_hw:
    mov     eax, msg
    push    eax
    call    _printf
    pop     eax
    ret
