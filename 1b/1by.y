%{
	#include<stdio.h>
	#include<stdlib.h>
%}
%token NUM
%left '+' '-'
%left '*' '/'
%%
expr  : e		{printf("Result:%d\n",$1);return 0;};
e : e'+'e	{$$=$1+$3;}
|e'-'e	     {$$=$1-$3;}//e:e'-'e	     {$$=$1-$3;}
|e'*'e	{$$=$1*$3;}//e:e'*'e	{$$=$1*$3;}
|e'/'e 	{$$=$1/$3;}//e:e'/'e 	{$$=$1/$3;}
|NUM		{$$=$1;}//e:NUM		{$$=$1;}
|'('e')'	{$$=$2;}//e:'('e')'	{$$=$2;}
%%
void main()
{	
	yylex();
	printf("Type expression:\n");
	yyparse();
	printf("Valid expression.\n");
}
int yyerror()
{
	printf("Invalid expression\n");
	exit(0);
	// 	return 0;
}
