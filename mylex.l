%{
    #include <stdio.h>
%}
int [0-9]
%%
"+"     {printf("PLUS\n");}
%%