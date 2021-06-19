;# **************************************************************************** #
;#                                                                              #
;#                                                         :::      ::::::::    #
;#    ft_strdup.s                                        :+:      :+:    :+:    #
;#                                                     +:+ +:+         +:+      #
;#    By: kali <kali@student.42.fr>                  +#+  +:+       +#+         #
;#                                                 +#+#+#+#+#+   +#+            #
;#    Created: 2021/06/18 16:35:51 by kali              #+#    #+#              #
;#    Updated: 2021/06/18 16:35:52 by kali             ###   ########.fr        #
;#                                                                              #
;# **************************************************************************** #

section .text
    global ft_strdup
    extern malloc 
    extern ft_strlen
    extern ft_strcpy

ft_strdup :
    xor rax, rax
    push rdi
    call ft_strlen
    inc rax ; add the /0 
    mov rdi, rax
    call malloc
    cmp rax,0
    je error
    pop rsi
    mov rdi, rax
    call ft_strcpy
    ret 

error :
    mov rax, 0
    ret