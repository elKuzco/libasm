SECTION .data
msg db "Bon bah assembleur pour mon week end",10

SECTION	.text
global _start

_start:
	mov edx, 37
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 80h
	mov ebx, 0
	mov eax, 1
	int 80h 

