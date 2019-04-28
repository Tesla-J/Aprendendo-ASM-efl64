section .text
msg: db "Hello, World!", 0xa ;0xa = \n
tam: equ $-msg ; tamanho atual menos tamanho msg

section .text

global _start

_start:

mov edx, tam ;14 count ou tamanho da string
mov ecx, msg; *buf ou ponteiro da mensagem
mov ebx, 1 ; file descriptor ou fd
mov eax,4 ;
int 0x80

;exit(0)
mov ebx,0 ;retorno de syscall exit
mov eax,1 ;syscall exit
int 0x80
