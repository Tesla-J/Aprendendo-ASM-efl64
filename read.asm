; programa que faz a leitura de dados
;pelo teclado

SYS_EXIT equ 1
RET_EXIT equ 5
SYS_READ equ 3
SYS_WRITE equ 4
STD_IN equ 0
STD_OUT equ 1
MAX_IN equ 10

segment .data
	msg db "Digite o seu nome: ", 0xa, 0xd
	tam_msg equ $-msg

segment .bss ;block started by symbol
	nome resb 2

segment .text
global _start

_start:
	mov eax, SYS_WRITE
	mov ebx, STD_OUT
	mov ecx, msg
	mov edx, tam_msg
	int 0x80

	;entrada de dados
	mov eax, SYS_READ
	mov ebx, STD_IN
	mov ecx, nome
	mov edx, MAX_IN
	int 0x80

exit:
	mov eax, SYS_EXIT
	mov ebx, RET_EXIT ; eqivalente a xor ebx, ebx
	int 0x80
