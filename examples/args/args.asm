%include     '../util.asm'

section     .text
global      _start

_start:
    pop     rdi
    mov     r12, rdi
    call    printint
    call    endl
laco:
    pop     rdi
    call    printstr
    call    endl
    dec     r12         ; r12--
    test    r12, r12    ; compara com 0
    jg      laco     
    call    exit0