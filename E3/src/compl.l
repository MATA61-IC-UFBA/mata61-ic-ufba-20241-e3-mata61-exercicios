%option noyywrap yylineno
%{

// noyywrap    - no need to deal with multiple input files
// yylineno    - variable to track line numbers 
//               that copies otherwise unmatched input to yyout.

#include "token.h"

%}

%%

 /* single character ops */
"+" |
"-" |
"*" |
"/" |
"=" |
">" |    
"<" |   
"|" |
"," |
";" |
"(" |
")" |
"{" |
"}" |
":" |
"%" |
"!" |
"[" |
"]" { return yytext[0]; }


 /* comparison ops */     
"==" { return EQU; }  
">=" { return GTE; }
"<=" { return LTE; }
"&&" { return AND; }
"!=" { return NEQ; }
"||" { return OR ;}


 /* keywords */
"true"      { return TRUE; }
"false"     { return FALSE; }
"if"        { return IF; }
"else"      { return ELSE; }
"for"       { return FOR; }
"char"      { return CHAR; }
"function"  { return FUNC; }
"print"     { return PRINT; }
"integer"   { return INT; }
"while"     { return WHILE; }
"boolean"   { return BOOL; }
"string"    { return STR; }
"void"      { return VOID; }
"return"    { return RETURN; }

      
 /* ignore whitespace, comments and newline */
[ \t]   |
"//".*  | 
\n      {}


 /* numbers */
[0-9]+  { return NUM; }


 /* names */
[a-zA-Z][a-zA-Z0-9]*  { return ID; }


 /* strings */
["]([^"\\\n]|\\(.|\n))*["]  { return STR; }


 /* characters */
[']([^'\\\n]|\\(.|\n))[']  { return CHAR; }


 /* exceptions */
.  { return ERROR; }

%%
