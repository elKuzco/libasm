section .text
global ft_strcmp

ft_strcmp :
    xor rax,rax
    xor rdx, rdx
    xor rcx,rcx
    jmp compare

increment :
    inc rcx

compare :
    mov al, BYTE[rdi + rcx]
    mov dl, BYTE[rsi + rcx]
    cmp al, dl
    jne return
    cmp al, 0
    je return
    cmp dl, 0
    je return
    jmp increment

return :
    sub rax, rdx
    ret