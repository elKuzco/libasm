;# **************************************************************************** #
;#                                                                              #
;#                                                         :::      ::::::::    #
;#    ft_read.s                                          :+:      :+:    :+:    #
;#                                                     +:+ +:+         +:+      #
;#    By: kali <kali@student.42.fr>                  +#+  +:+       +#+         #
;#                                                 +#+#+#+#+#+   +#+            #
;#    Created: 2021/06/14 11:20:34 by kali              #+#    #+#              #
;#    Updated: 2021/06/14 11:22:53 by kali             ###   ########.fr        #
;#                                                                              #
;# **************************************************************************** #

section .text
global ft_read
extern __errno_location

ft_read :
    mov rax, 0
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