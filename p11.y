%{
    #include<stdio.h>
    #include<stdlib.h>

    extern int yylex();
    void yyerror(char *error);
%}

%token A B NEW_LINE

%%
    S : E NEW_LINE {printf("Valid String");}
    ;
    E : A E B
    | A B
    ;
%%

void yyerror(char *error)
{
	fprintf(stderr,"INVALID STRING %s\n",error);
	exit(1);
}

int main()
{
	printf("\nEnter the string: ");
	yyparse();
	return 0;
}
