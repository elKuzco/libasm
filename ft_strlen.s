    section .text
    global ft_strlen

ft_strlen: 
    xor rax, rax ; set rax (i) to 0
    jmp compare

increment:
    inc rax

compare:
    cmp BYTE[rdi + rax], 0
    jne increment
     
return :
    ret 

