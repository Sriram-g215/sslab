%{
#include<stdio.h>
#include<string.h>
%}
%%
\/\/.* ;
"/*"[a-zA-Z0-9' '\t\n]+"*/" ;
%%
int main()
{
	yyin=fopen("f1.c","r");
	yyout=fopen("sol.c","w");
	yylex();
	return 0;
}
