section .data
	msg db "Ola mundo sem ver! Pelos vistos consegui :)",0xa,0xa ;mensagem
	len equ $-msg ;tamanho da msg

section .text
	global _start

	_start:
		;escrever mensagem
		mov eax, 4 ;funcao write
		mov ebx, 1 ; stdout
		mov ecx, msg ;mensagem
		mov edx, len ;tamanho
		int 0x80

		;retornar 0
		mov eax, 1 ;funcao return
		mov ebx, 0 ;valor de retorno
		int 0x80
