;# **************************************************************************** #
;#                                                                              #
;#                                                         :::      ::::::::    #
;#    ft_strcpy.s                                        :+:      :+:    :+:    #
;#                                                     +:+ +:+         +:+      #
;#    By: qlouisia <qlouisia@student.42.fr>          +#+  +:+       +#+         #
;#                                                 +#+#+#+#+#+   +#+            #
;#    Created: 2021/06/11 17:23:55 by qlouisia          #+#    #+#              #
;#    Updated: 2021/06/11 17:23:56 by qlouisia         ###   ########.fr        #
;#                                                                              #
;# **************************************************************************** #

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
