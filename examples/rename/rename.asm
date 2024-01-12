%include     '../util.asm'

section     .text
global      _start

_start: 
    pop     rbx
    cmp     rbx, 3
    jne     argc_erro
    pop     rbx         ; descarta da pilha o nome
    pop     rdi         ; old name
    pop     rsi         ; new name
    mov     rax, 82     ; sys_rename
    syscall
    xor     rdi, rdi    ; 0
    syscall             ; sys_exit

argc_erro:
    lea     rdi, [msg]
    call    printstr
    call    endl
    mov     rdi, 1
    mov     rax, 60   ; sys_exit
    call    exit

section     .data
msg:    db 'Verifique a linha de comando', 0