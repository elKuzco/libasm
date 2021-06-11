;# **************************************************************************** #
;#                                                                              #
;#                                                         :::      ::::::::    #
;#    ft_write.s                                         :+:      :+:    :+:    #
;#                                                     +:+ +:+         +:+      #
;#    By: qlouisia <qlouisia@student.42.fr>          +#+  +:+       +#+         #
;#                                                 +#+#+#+#+#+   +#+            #
;#    Created: 2021/06/11 17:23:45 by qlouisia          #+#    #+#              #
;#    Updated: 2021/06/11 17:23:46 by qlouisia         ###   ########.fr        #
;#                                                                              #
;# **************************************************************************** #

section .text
global _ft_write
extern ___error

_ft_write :
    mov rax, 0x02000004
    syscall
    cmp rax,0
    jl _error
    ret

_error :
    neg rax
    mov rdi,rax
    call ___error
    mov [rax], rdi
    mov rax, -1
    ret

