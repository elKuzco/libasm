;# **************************************************************************** #
;#                                                                              #
;#                                                         :::      ::::::::    #
;#    ft_strcpy.s                                        :+:      :+:    :+:    #
;#                                                     +:+ +:+         +:+      #
;#    By: qlouisia <qlouisia@student.42.fr>          +#+  +:+       +#+         #
;#                                                 +#+#+#+#+#+   +#+            #
;#    Created: 2021/06/11 17:24:59 by qlouisia          #+#    #+#              #
;#    Updated: 2021/06/11 17:25:17 by qlouisia         ###   ########.fr        #
;#                                                                              #
;# **************************************************************************** #

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
