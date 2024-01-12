%include	'../util.asm'

section		.text
global		_start

maior:
    mov     rax, rsi
    cmp     rdi, rsi
    cmovg   rax, rdi
    ret

_start:
	lea		rdi, [msg]
    call    printstr
    call    endl
    call    readint
    mov     rbx, rax
    call    readint
    mov     r12,rax
    lea     rdi, [mai]
    call    printstr

    mov     rdi, rbx    ; 1st argument
    mov     rsi, r12    ; 2nd argument
    call    maior

    mov     rdi, rax    ; return value
    call    printint
    call    endl
    call    exit0

section		.data
msg:		db	'Informe dois valores: ', 0
mai:        db  'Maior: ',0
