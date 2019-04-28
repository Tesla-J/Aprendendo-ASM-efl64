section .text
global _start

_start:
;return 0
mov ebx, 0 ;valor de retorno
mov eax, 1 ;codigo da syscall exit
int 0x80
