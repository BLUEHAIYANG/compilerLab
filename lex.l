%{
#include "parser.tab.h"
#include "string.h"
#include "def.h"
int yycolumn=1;
#define YY_USER_ACTION    	yylloc.first_line=yylloc.last_line=yylineno; \
	yylloc.first_column=yycolumn;	yylloc.last_column=yycolumn+yyleng-1; yycolumn+=yyleng;
typedef union {
	int    type_int;
	float  type_float;
	char   type_id[32];
    char   type_char;
	struct ASTNode *ptr;
} YYLVAL;
#define YYSTYPE YYLVAL

%}
%option yylineno

id   [A-Za-z][A-Za-z0-9]*  
int    [0-9]+
float  ([0-9]*\.[0-9]+)|([0-9]+\.)
char  '.'

%%
{int}        {printf("常量；int 具体值；%d\n",atoi(yytext));yylval.type_int=atoi(yytext); return INT;}
{float}      {printf("常量；float 具体值；%d\n",atof(yytext));yylval.type_float=atof(yytext); return FLOAT;}
{char}		 {printf("常量；char 具体值；%d\n",(yytext+1));yylval.type_char=*(yytext+1); return CHAR;}
"//".* 			{printf("注释\n");}	;//单行去除注释
[/][*][^*]*[*]+([^*/][^*]*[*]+)*[/]       { /* DO NOTHING */printf("注释\n"); }//多行去除注释
"int"        {printf("关键字；Type；唯一标识：%d\n",TYPE);strcpy(yylval.type_id,  yytext);return TYPE;}		//兰：在这里存放了type_id的值
"float"      {printf("关键字；Type；唯一标识：%d\n",TYPE);strcpy(yylval.type_id,  yytext);return TYPE;}
"char"		 {printf("关键字；Type；唯一标识：%d\n",TYPE);strcpy(yylval.type_id,  yytext);return TYPE;}

"for"		{printf("关键字；FOR；唯一标识：%d\n",FOR);return FOR;}		//兰：识别for字符

"return"     {printf("关键字；Return；唯一标识：%d\n",RETURN);return RETURN;}
"if"         {printf("关键字；if；唯一标识：%d\n",IF);return IF;}
"else"       {printf("关键字；else；唯一标识：%d\n",ELSE);return ELSE;}
"while"      {printf("关键字；while；唯一标识：%d\n",WHILE);return WHILE;}
"switch"     {printf("关键字；switch；唯一标识：%d\n",SWITCH);return SWITCH;}
"case"		 {printf("关键字；case；唯一标识：%d\n",CASE);return CASE;}
"break"      {printf("关键字；break；唯一标识：%d\n",BREAK);return BREAK;}

{id}       {printf("标识符；%s；唯一标识：%d\n",yytext,ID);strcpy(yylval.type_id,  yytext); return ID;/*由于关键字的形式也符合表示符的规则，所以把关键字的处理全部放在标识符的前面，优先识别*/}
";"			{printf("界符；;；唯一标识：%d\n",SEMI);return SEMI;}
":"			{printf("界符；:；唯一标识：%d\n",COLON);return COLON;}		//兰：识别冒号
","			{printf("界符；,；唯一标识：%d\n",COMMA);return COMMA;}
">"|"<"|">="|"<="|"=="|"!=" {printf("运算符；;；唯一标识：%d\n",RELOP);strcpy(yylval.type_id, yytext);;return RELOP;}
"="			{printf("运算符；=；唯一标识：%d\n",ASSIGNOP);return ASSIGNOP;}
"+"			{printf("运算符；+；唯一标识：%d\n",PLUS);return PLUS;}
"-"			{printf("运算符；-；唯一标识：%d\n",MINUS);return MINUS;}
"*"			{printf("运算符；*；唯一标识：%d\n",STAR);return STAR;}
"/"			{printf("运算符；/；唯一标识：%d\n",DIV);return DIV;}
"&&"         {printf("运算符；&&；唯一标识：%d\n",AND);return AND;}
"||"            {printf("运算符；||；唯一标识：%d\n",OR);return OR;}
"!"			{printf("运算符；!；唯一标识：%d\n",NOT);return NOT;}
"("			{printf("界符；(；唯一标识：%d\n",LP);return LP;}
")"			{printf("界符；)；唯一标识：%d\n",RP);return RP;}
"{"			{printf("界符；{；唯一标识：%d\n",LC);return LC;}
"}"			{printf("界符；}；唯一标识：%d\n",RC);return RC;}
"["			{printf("界符；[；唯一标识：%d\n",LSB);return LSB;}
"]"			{printf("界符；,；唯一标识：%d\n",RSB);return RSB;}
[\n]           {yycolumn=1;}   
[ \r\t]          {}   
.			{printf("Error type A :Mysterious character \"%s\"\n\t at Line %d\n",yytext,yylineno);}

%%

/* 和bison联用时，不需要这部分
void main()
{
yylex();
return 0;
}

*/
int yywrap()
{
return 1;
}
