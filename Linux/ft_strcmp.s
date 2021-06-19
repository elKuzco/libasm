;# **************************************************************************** #
;#                                                                              #
;#                                                         :::      ::::::::    #
;#    ft_strcmp.s                                        :+:      :+:    :+:    #
;#                                                     +:+ +:+         +:+      #
;#    By: qlouisia <qlouisia@student.42.fr>          +#+  +:+       +#+         #
;#                                                 +#+#+#+#+#+   +#+            #
;#    Created: 2021/06/11 17:24:10 by qlouisia          #+#    #+#              #
;#    Updated: 2021/06/11 17:24:11 by qlouisia         ###   ########.fr        #
;#                                                                              #
;# **************************************************************************** #

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