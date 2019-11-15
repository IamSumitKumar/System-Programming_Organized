/*lex code to determine whether input is an identifier or not*/
%{ 
#include <stdio.h>
%} 
rule section
%% 
^[a - z A - Z _][a - z A - Z 0 - 9 _] printf("Valid Identifier"); 

^[^a - z A - Z _] printf("Invalid Identifier"); 
.; 
%% 
void main(){
yylex();
}
