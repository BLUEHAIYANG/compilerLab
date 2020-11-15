
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     INT = 258,
     ID = 259,
     RELOP = 260,
     TYPE = 261,
     FLOAT = 262,
     CHAR = 263,
     DPLUS = 264,
     LP = 265,
     RP = 266,
     LC = 267,
     RC = 268,
     SEMI = 269,
     COMMA = 270,
     PLUS = 271,
     MINUS = 272,
     STAR = 273,
     DIV = 274,
     ASSIGNOP = 275,
     AND = 276,
     OR = 277,
     NOT = 278,
     IF = 279,
     ELSE = 280,
     WHILE = 281,
     RETURN = 282,
     FOR = 283,
     SWITCH = 284,
     CASE = 285,
     COLON = 286,
     DEFAULT = 287,
     BREAK = 288,
     LSB = 289,
     RSB = 290,
     EXT_DEF_LIST = 291,
     EXT_VAR_DEF = 292,
     FUNC_DEF = 293,
     FUNC_DEC = 294,
     EXT_DEC_LIST = 295,
     PARAM_LIST = 296,
     PARAM_DEC = 297,
     VAR_DEF = 298,
     DEC_LIST = 299,
     DEF_LIST = 300,
     COMP_STM = 301,
     STM_LIST = 302,
     EXP_STMT = 303,
     IF_THEN = 304,
     IF_THEN_ELSE = 305,
     FUNC_CALL = 306,
     ARGS = 307,
     FUNCTION = 308,
     PARAM = 309,
     ARG = 310,
     CALL = 311,
     LABEL = 312,
     GOTO = 313,
     JLT = 314,
     JLE = 315,
     JGT = 316,
     JGE = 317,
     EQ = 318,
     NEQ = 319,
     FOR_LOP = 320,
     SWITCH_SHOW = 321,
     SWITCH_CASE = 322,
     SWITCH_CASE_LIST = 323,
     ARRAY_USE = 324,
     ARRAY_DEFINE = 325,
     UMINUS = 326,
     LOWER_THEN_ELSE = 327
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{

/* Line 1676 of yacc.c  */
#line 16 "parser.y"

	int    type_int;
	float  type_float;
	char   type_id[32];
        char   type_char;
	struct ASTNode *ptr;



/* Line 1676 of yacc.c  */
#line 134 "parser.tab.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;

#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE
{
  int first_line;
  int first_column;
  int last_line;
  int last_column;
} YYLTYPE;
# define yyltype YYLTYPE /* obsolescent; will be withdrawn */
# define YYLTYPE_IS_DECLARED 1
# define YYLTYPE_IS_TRIVIAL 1
#endif

extern YYLTYPE yylloc;

