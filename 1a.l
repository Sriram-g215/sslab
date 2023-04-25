%{
#include<stdio.h>
#include<string.h>
int op=0,id=0;
%}
%%
[0-9]* id++;
[\*\+] op++;
%%
int main()
{
	yylex();
	if((op+1) == id){
		printf("Number of operators is %d.\n",op);
		printf("Number of identifiers is %d.\n",id);
	}
	else
		printf("Invalid input.");
}
