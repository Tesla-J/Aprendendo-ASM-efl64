#-*- coding: latin -*-

"""
Autor: Rafael Marcos
Data: dom 28-Abril-2019 22:17
Descrição: Este software tem como objectivo reduzir o (meu) trabalho em
	   assemblar e linkar (os meus) códigos (se você ainda não percebeu
           são em asm). Deve-se usar nomes sem extensões de arquivo, ou seja,
	   se quer assemblar o arq.asm, tem colocar como entrada apenas arq,
	   e o programa vai "deduzir" as extensões e fazer todo o trabalho 
	   descrito acima.

	   Lembrar que o executavel é para elf64
"""

from sys import argv as arg
from sys import platform
from os import system
print(arg[0])
#Apenas para linux
if platform != 'linux':
	print('\033[31m Desenhado para linux! \naltere o codigo para {}'.format(platform))
	exit()

#lendo os arquivos
arch = []
if len(arg) == 1:
	print('sintaxe: {} [arq1] [arq2] ... \n\n\tarq nao pode ter a extensao.',format(arg[0]))
for p in arg:
	if '.' in p and p != arg[0]:
		print('coloque apenas o nome do arquivo com o codigo sem a extensao')
		exit()
	if arg[0] != p: arch.append(p)

def assemble(list):
	for f in list: #criando (possiveis) nomes e fazendo magia (videntismo)
		asm = f+'.asm'
		obj = f+'.o'
		system('nasm -f elf64 '+asm)
		system('ld -s -o '+f+' '+obj)

assemble(arch)
