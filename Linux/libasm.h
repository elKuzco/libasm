/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kali <kali@student.42.fr>                  +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/06/11 17:26:13 by qlouisia          #+#    #+#             */
/*   Updated: 2021/06/14 11:23:13 by kali             ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */


#ifndef     LIBASM_H
# define    LIBASM_H

# include <string.h>
# include <sys/types.h>
# include <unistd.h>

size_t ft_strlen(const char *str);
char * ft_strcpy(char *dest, const char *str);
int	ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t count);
ssize_t ft_read(int fd, const void *buf, size_t count);

#endif 