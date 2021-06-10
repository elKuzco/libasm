section .text
global  ft_strcpy

ft_strcpy:
    xor rax, rax
    jmp copy
    
increment:
    inc rax

copy:
    mov dl, [rsi + rax]
    mov [rdi + rax], dl
    cmp BYTE[rdi + rax], 0
    jne increment

mov rax, rdi
ret  
