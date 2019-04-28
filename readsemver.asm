section .bss
	num1 resw 1
	num2 resw 1
	;rslt resw 1

section .data
	p1 db "Introduza o primeiro numero: "
	p2 db "Intruduza o segundo numero: "
	sum db "Soma igual a "
	p1len equ $-p1
	p2len equ $-p2
	sumlen equ $-sum

section .text
global _start

_start:
	;pedir primeiro numero
	mov eax, 4
	mov ebx, 1
	mov ecx, p1
	mov edx, p1len
	int 0x80

	mov eax, 3
	mov ebx, 0
	mov ecx, num1
	mov edx, 3
	int 0x80

	;pedir o segundo numero
	mov eax, 4
	mov ebx, 1
	mov ecx, p2
	mov edx, p2len
	int 0x80

	mov eax, 3
	mov ebx, 0
	mov ecx, num2
	mov edx, 3
	int 0x80

	;somar e mostar
	;add num2, num1?

	mov eax, 4
	mov ebx, 1
	mov ecx, sum
	mov edx, sumlen
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, num2+num1
	mov edx, 2
	int 0x80
