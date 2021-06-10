
#ifndef     LIBASM_H
# define    LIBASM_H

# include <string.h>
# include <sys/types.h>

size_t ft_strlen(const char *str);
char * ft_strcpy(char *dest, const char *str);
int	ft_strcmp(const char *s1, const char *s2);
ssize_t write(int fd, const void *buf, size_t count);

#endif 