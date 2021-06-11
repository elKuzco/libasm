;# **************************************************************************** #
;#                                                                              #
;#                                                         :::      ::::::::    #
;#    ft_strlen.s                                        :+:      :+:    :+:    #
;#                                                     +:+ +:+         +:+      #
;#    By: qlouisia <qlouisia@student.42.fr>          +#+  +:+       +#+         #
;#                                                 +#+#+#+#+#+   +#+            #
;#    Created: 2021/06/11 17:24:17 by qlouisia          #+#    #+#              #
;#    Updated: 2021/06/11 17:24:18 by qlouisia         ###   ########.fr        #
;#                                                                              #
;# **************************************************************************** #

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

