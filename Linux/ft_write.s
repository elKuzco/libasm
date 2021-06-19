;# **************************************************************************** #
;#                                                                              #
;#                                                         :::      ::::::::    #
;#    ft_write.s                                         :+:      :+:    :+:    #
;#                                                     +:+ +:+         +:+      #
;#    By: qlouisia <qlouisia@student.42.fr>          +#+  +:+       +#+         #
;#                                                 +#+#+#+#+#+   +#+            #
;#    Created: 2021/06/11 17:24:20 by qlouisia          #+#    #+#              #
;#    Updated: 2021/06/11 17:24:21 by qlouisia         ###   ########.fr        #
;#                                                                              #
;# **************************************************************************** #

section .text
    global ft_write
    extern __errno_location

ft_write :
    mov rax, 1
    syscall
    cmp rax,0
    jl error
    ret

error :
    neg rax
    mov rdi,rax
    call __errno_location
    mov [rax], rdi
    mov rax, -1
    ret

