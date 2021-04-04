global    _main   ; Define the main function.
extern    _printf ; Import an external function.

segment  .data
        message: db   'Hello world', 0xA, 0 ; Create a variable called "message"
section .text
_main:
        push    message ; Decrement the stack pointer and then stores the source operand on the top of the stack.
        call    _printf ; Call the printf function with "message" as the argument.
        add     esp, 4  ; Clear the esp register by 4 bytes.
        ret
