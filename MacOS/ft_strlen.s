    section .text
    global _ft_strlen

_ft_strlen: 
    xor rax, rax ; set rax (i) to 0
    jmp _compare

_increment:
    inc rax

_compare:
    cmp BYTE[rdi + rax], 0
    jne _increment
     
_return :
    ret 

