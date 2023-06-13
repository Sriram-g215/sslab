#include<stdio.h>
#include<stdlib.h>
#include<ctype.h>
#include<string.h>
char op[2],arg1[5],arg2[5],res[5];
int main()
{
FILE *f1,*f2;
f1=fopen("ip.txt","r");
f2=fopen("op1.txt","w");
	while(!feof(f1))
	{
		fscanf(f1,"%s%s%s%s",res,arg1,op,arg2);
		if(strcmp(op,"+")==0)
		{
			fprintf(f2,"\nMOV R0, %s",arg1);
			fprintf(f2,"\nADD R0, %s",arg2);
			fprintf(f2,"\nMOV %s,R0",res);
		}
		if(strcmp(op,"-")==0)
		{
			fprintf(f2,"\nMOV R0, %s",arg1);
			fprintf(f2,"\nSUB R0, %s",arg2);
			fprintf(f2,"\nMOV %s,R0",res);
		}
		if(strcmp(op,"*")==0)
		{
			fprintf(f2,"\nMOV R0, %s",arg1);
			fprintf(f2,"\nMUL R0, %s",arg2);
			fprintf(f2,"\nMOV %s,R0",res);
		}
		if(strcmp(op,"/")==0)
		{
			fprintf(f2,"\nMOV R0, %s",arg1);
			fprintf(f2,"\nDIV R0, %s",arg2);
			fprintf(f2,"\nMOV %s,R0",res);
		}
		if(strcmp(op,"=")==0)
		{
			fprintf(f2,"\nMOV R0, %s",arg1);
			fprintf(f2,"\nMOV %s,R0",res);
		}
	
	}
		fclose(f1);
		fclose(f2);
}
