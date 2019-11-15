%{
	#include "anbn.tab.h"	
%}

%%
    [aA] {return A;}
    [bB] {return B;}
    [\n] {return NEW_LINE;}
    . {return yytext[0];}
%%
