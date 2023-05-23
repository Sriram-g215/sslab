%{
#include<stdio.h>
%}
%token KWORD ID
%%
start:KWORD X ';' {printf("Valid declaration\n");return 0;}
     ;
X:X','X
 |ID
 ;
%%
