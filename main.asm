global  _main
extern  _printf

section .data
a:
    dd      1
b:
    dd      1
c:
    resd    1
;fmt:
;    db "c=%ld, eax=%ld", 10, 0
msg:
    db "%i", 10, 0 ; "%08X" for a full int.

section .text
_main:
    ;push    message
    ;call    _printf
    ;add     esp, 4
    mov      eax, [a]
    add      eax, [b]
    mov      [c], eax
    mov      ebx, [c]
    push     ebx
    push     msg
    call     _printf
    ;push     [c] ; main.asm:20: error: operation size not specified
    add      esp, 8
    ret
message:
    db  'Hello World!', 10, 0
