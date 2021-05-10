; Franklin 4 VR MMO (Unofficial, Fan Edition) v1.0.1
; Distributed on MIT License, by ANF-Studios.
;
; It's a fun silly idea, thanks to ibra (on GitHub)
; for giving me this idea!

global _main
extern _printf
extern _getch

section .data
    one:
        db  "Welcome to Franklin!", 10, 0
    two:
        db  "Franklin is playing a VR MMO game...", 10, 0
    three:
        db  "He then gets captured and gets sent to the void...", 10, 0
    four:
        db  "He finds a button there...", 10, 0
    five:
        db  "He clicks that button and returns home safely...", 10, 0
    six:
        db  "That's it.. you can go now, story ended, bye!", 0

section .text
    _main:
        mov     eax, one
        push    eax
        call    _printf
        call    _getch

        mov     ebx, two
        push    ebx
        call    _printf
        pop     ebx
        call    _getch

        mov     ecx, three
        push    ecx
        call    _printf
        pop     ecx
        call    _getch

        mov     edx, four
        push    edx
        call    _printf
        pop     edx
        call    _getch

        mov     edx, five
        push    edx
        call    _printf
        pop     edx
        call    _getch

        mov     eax, six
        push    eax
        call    _printf
        add     esp, 8
        call    _getch

        xor     eax, eax
        xor     ebx, ebx
        xor     ecx, ecx
        xor     edx, edx

        ret
