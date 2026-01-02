#include <stdio.h>
#include "magic.h"

extern const char msg[];

int main()
{
    printf("%s",msg);
    printf("MAGIC_NUMBER %d\n",MAGIC_NUMBER);
    return 0;
}