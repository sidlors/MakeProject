# MakeProject
Uso de make Para projectos C

###Comando gcc -Wall option flag

gcc -Wall enables all compiler's warning messages. This option should always be used, in order to generate better code.

Syntax

$ gcc -Wall [options] [source files] [object files] [-o output file]

Example
Write source file myfile.c:
```C
// myfile.c
#include <stdio.h>

int main()
{
    printf("Program run!\n");
    int i=10;
}
```
 
Regular build of myfile.c gives no messages:

$ gcc myfile.c -o myfile

 
Build of myfile.c with -Wall:

$ gcc -Wall myfile.c -o myfile

> myfile.c In function 'main':

> myfile.c:6:6: warning: unused variable 'i'

> myfile.c:7:1: warning: control reaches end of non-void function
