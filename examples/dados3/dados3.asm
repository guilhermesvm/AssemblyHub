; Reserva um vetor não inicializado com x valores
;  soma = 0
;   for(int i=0; i<10; i++){
;   vet[i] = readint();    
;}

%include    '../util.asm'

section     .text
global      _start

_start:
    xor     rbx, rbx
    xor     r12, r12
volta:
    call    readint
    mov     [vet+rbx*8], rax
    add     r12, rax
    inc     rbx
    cmp     rbx, 10
    jl      volta
    mov     rdi, r12
    call    printint
    call    endl
    call    exit0

section     .bss
vet:        resq 10

