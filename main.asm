global _main
extern _printf

section .data
a:  dd    65
fmt: db "%i", 10, 0

section .text
_main:
    ;mov     eax, [a]
    ;push    eax
    ;push    fmt
    ;push    1337
    ;push    fmt
    ;push    eax
    ;call    _printf
    ;pop     eax
    ;add     esp, 8
    ;ret
    ;call    foo
    call     bar
    ret

bar:
    

foo:
    mov     eax, [a]
    push    eax
    push    fmt
    call    _printf
    ;add     esp, 8
    add     esp, 4
    mov     ebx, fmt
    pop     eax
    pop     ebx
    ret
