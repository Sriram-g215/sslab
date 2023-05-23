%{
#include"y.tab.h"
int idc=0,keyc=0;
%}
%x DECL
%%
"int "|"float "|"char "|"double " {BEGIN DECL;keyc++;return KWORD;}
<DECL>[a-zA-Z_][a-zA-Z_0-9]* {idc++;return ID;}
<DECL>[,;] {return yytext[0];}
<DECL>\n {BEGIN 0;}
.|\n ;
%%
main()
{
	yyin=fopen("ip.c","r");
	yyparse();
	printf("Total keywords:%d\n",keyc);
	printf("Total identifiers:%d\n",idc);
}
yyerror()
{
	printf("Invalid declaration.\n");
	exit(0);
}
