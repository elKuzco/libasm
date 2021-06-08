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

int main (void)
{
    test_strlen();
    test_strcpy();
}