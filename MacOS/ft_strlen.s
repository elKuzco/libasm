;# **************************************************************************** #
;#                                                                              #
;#                                                         :::      ::::::::    #
;#    ft_strlen.s                                        :+:      :+:    :+:    #
;#                                                     +:+ +:+         +:+      #
;#    By: qlouisia <qlouisia@student.42.fr>          +#+  +:+       +#+         #
;#                                                 +#+#+#+#+#+   +#+            #
;#    Created: 2021/06/11 17:23:52 by qlouisia          #+#    #+#              #
;#    Updated: 2021/06/11 17:23:53 by qlouisia         ###   ########.fr        #
;#                                                                              #
;# **************************************************************************** #

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

