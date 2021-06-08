section .text
global  _ft_strcpy

_ft_strcpy:
    xor rax, rax
    jmp _copy
    
_increment:
    inc rax

_copy:
    mov dl, [rsi + rax]
    mov [rdi + rax], dl
    cmp BYTE[rdi + rax], 0
    jne _increment

mov rax, rdi
ret  
