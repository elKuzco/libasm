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

    while (test[i]) {
        printf("ft_strlen = %d\nstrlen = %d\n- - -\n",ft_strlen(test[i]),strlen(test[i]));
        i++;
    }    
}

int main (void)
{
    test_strlen();
}