/*lex code to find the length of the longest word*/
%{
#include <stdio.h>
#include <string.h>
	int counter = 0;
	char* longest;
%} 

//longest [a-zA-Z]{8,}
/* [a-zA-Z] + */
%%
longest [a-zA-Z]{8,}{
if (yyleng > counter){
	counter = yyleng;
}
}
{longest} {
            if (yyleng > strlen(longest)) {
                longest = (char*)realloc(longest, yyleng + 1);
                strcpy(longest, yytext);
          }
        }
<*>.|\n     /* skip all unrecognized text */
%%

int main() {
longest = (char*)malloc(1);
longest[0] = '\0';
yylex();
printf("Longest string is '%s'\n", longest);
printf("Longest length: %d", counter);
printf("\n");
free(longest);
}

