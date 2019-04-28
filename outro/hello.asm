;ola mundo

section .data
  mensagem: db 'Hello, World!', 0xa
  tamanho: equ $-mensagem

section .text

global _start

_start:
mov edx,tamanho
mov ecx,mensagem
mov ebx,1
mov eax,4
int 0x80

;saida
mov eax,1
mov ebx,0
int 0x80
