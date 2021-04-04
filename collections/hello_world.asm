global    _main
extern    _printf

segment  .data
        message: db   'Hello world', 0xA, 0
section .text
_main:
        push    message
        call    _printf
        add     esp, 4
        ret
