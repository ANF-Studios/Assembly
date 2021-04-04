global _main
extern _printf
extern _getch

section .data
    a:  dd    65
    fmt: db "%i", 10, 0

section .text
_main:
