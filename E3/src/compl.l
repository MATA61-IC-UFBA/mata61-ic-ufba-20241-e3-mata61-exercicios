%option noyywrap yylineno
%{

// noyywrap    - no need to deal with multiple input files
// yylineno    - variable to track line numbers 
//               that copies otherwise unmatched input to yyout.

#include "token.h"

%}

%%

array { return TARR; }
boolean { return TBOOL; }
char { return TCHAR; }
else { return ELSE; }
false { return FALSE; }
for { return FOR; }
function { return FUNC; }
if { return IF; }
integer { return TINT; }
print { return PRINT; }
return { return RETURN; }
string { return TSTR; }
true { return TRUE; }
void { return TVOID; }
while { return WHILE; }


\+ { return PLUS; }
- { return MINUS; }
\* { return MULT; }
[/] { return DIV; }
[%] { return REST; }
!  { return NOT; }
\< { return LT; }
>  { return GT; }
=  { return EQ; }
:  { return COLL; }
;  { return SEMICOLL; }
,  { return COMM; }
\( { return LPAR; }
\) { return RPAR; }
\[ { return SBRAKL; }
\] { return SBRAKR; }
\{ { return LBRAK; }
\} { return RBRAK; }
\\ { return BACKSLASH; }

\<= { return LEQ; }
>= { return GEQ; }
== { return EQU; }
!= { return DIF; }
&& { return AND; }
\|\| { return OR; }

\"[^\n\"]*\" { return STR; }
[0-9]+ { return NUM; }
[ \n\t]+ { }
[//]{2}.* { }
[A-Za-z_][a-zA-Z0-9_]{0,256} { return ID; }
'([^'\n\\]|\\.)' { return CHAR; }
. { return ERROR; }

%%
