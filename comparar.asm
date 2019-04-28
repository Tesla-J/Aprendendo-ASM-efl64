section .data
	n1 dd 10
	n2 dd 20
	g db "n1 maior",0xa
	l db "n2 maior",0xa
	e db "n1 e n2 sao iguais",0xa
	elen equ $-e
	glen equ $-g
	llen equ $-l

section .text
global _start

_start:
	mov eax, DWORD [n1]
	mov ebx, DWORD [n2]
	cmp eax, ebx ;compara os dois valores

	jg maior
	jl menor
	; se forem iguais...
	mov ecx, e
	mov edx, elen
	jmp end

maior:
	mov ecx, g
	mov edx, glen
	jmp end

menor:
	mov ecx, l
	mov edx, llen

end:
	mov eax, 4
	mov ebx, 1
	int 0x80

	mov eax, 1
	mov ebx, 0
	int 0x80
