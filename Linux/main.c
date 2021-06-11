/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: qlouisia <qlouisia@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/06/11 17:26:18 by qlouisia          #+#    #+#             */
/*   Updated: 2021/06/11 17:26:19 by qlouisia         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <stdio.h>
#include <string.h>

void test_strlen (void)
{
    char *test[4];
    test[0] = "Hello World !";
    test[1] = "0";
    test[2] = "aaaaaaaaaaaaaaaaaaaaaaaaaaaadedefeffpeeeeeeeeeeeeeeeeeeeeeeeeeeffffffffffffffffff";
    test[3] = "\0";
    int i = 0;

    printf("\n#### STR_LEN ####\n");
    while (test[i]) {
        printf("ft_strlen = %zu\nstrlen = %lu\n- - -\n",ft_strlen(test[i]),strlen(test[i]));
        i++;
    }    
}

void test_strcpy(void)
{
    
    printf("\n#### STR_CPY ####\n");
    char dest[] = "aaaaaaaaaaaaaaaaaasasasassasassasas";
    char *src = "Hello World!";

    printf("result :\nft_strcpy : %s\nstrcpy : %s\n",ft_strcpy(dest, src),strcpy(dest, src));
}

void test_strcmp(void)
{
    printf("\n#### STR_CMP ####\n");
    char str1[] = "Hello World !";
    char str2[] = "Hello World !";
    char str3[] = "Hello World A";
    char str4[] = "A";
    char str5[] = "";
    printf("Result :\nft_strcmp :\n%d\nstrcmp :\n%d\n\n",ft_strcmp(str1,str2),strcmp(str1,str2));
    printf("Result :\nft_strcmp :\n%d\nstrcmp :\n%d\n\n",ft_strcmp(str1,str3),strcmp(str1,str3));
    printf("Result :\nft_strcmp :\n%d\nstrcmp :\n%d\n\n",ft_strcmp(str1,str4),strcmp(str1,str4));
    printf("Result :\nft_strcmp :\n%d\nstrcmp :\n%d\n\n",ft_strcmp(str1,str5),strcmp(str1,str5));
    printf("Result :\nft_strcmp :\n%d\nstrcmp :\n%d\n\n",ft_strcmp(str5,str5),strcmp(str5,str5));
}

void test_write(void)
{
    
    printf("ft_write :\n");
    ft_write(1,"Hello\n",6);
    
    printf("write :\n");
    write(1,"Hello\n",6);
}

int main (void)
{
    test_strlen();
    test_strcpy();
    test_strcmp();
    test_write();
}