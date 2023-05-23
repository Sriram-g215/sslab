%{
#include<stdio.h>
#include<stdlib.h>
int yyerror();
//int yylex();
%}
%token A B
%%
r:S
; 
S:X B
;
X:X A
|A
;
%%
int main()
{	
	//yylex();
	printf("Enter the string:");
	if(!yyparse()){
		printf("valid.\n");
	}
	else
		yyerror();
	return 0;
}
int yyerror(){
printf("Invalid.\n");
exit(0);
}
