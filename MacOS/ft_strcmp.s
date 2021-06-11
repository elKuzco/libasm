;# **************************************************************************** #
;#                                                                              #
;#                                                         :::      ::::::::    #
;#    ft_strcmp.s                                        :+:      :+:    :+:    #
;#                                                     +:+ +:+         +:+      #
;#    By: qlouisia <qlouisia@student.42.fr>          +#+  +:+       +#+         #
;#                                                 +#+#+#+#+#+   +#+            #
;#    Created: 2021/06/11 17:23:40 by qlouisia          #+#    #+#              #
;#    Updated: 2021/06/11 17:23:41 by qlouisia         ###   ########.fr        #
;#                                                                              #
;# **************************************************************************** #

section .text
global _ft_strcmp

_ft_strcmp :
    xor rax,rax
    xor rdx, rdx
    xor rcx,rcx
    jmp _compare

_increment :
    inc rcx

_compare :
    mov al, BYTE[rdi + rcx]
    mov dl, BYTE[rsi + rcx]
    cmp al, dl
    jne _return
    cmp al, 0
    je _return
    cmp dl, 0
    je _return
    jmp _increment

_return :
    sub rax, rdx
    ret