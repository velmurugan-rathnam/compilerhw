#ifndef TOKENS_H
#define TOKENS_H 

#include "lexer.h"
#include "y.tab.h"

struct Attr {
  char *attributeVal;
  int attributeType;
};

Attr tokenstr[]= {

 {"Id", Id},
 {"Keyword",Keyword},
 {"Operator",Operator},
 {"Seperator",Seperator},
 {"Const",Const},
 {"Space",Space},   
 {"END",END}, 


 {"Integer",Integer},
 {"Character",Character},
 {"String",String},

 {"NOT",NOT},
 {"MOD",MOD},
 {"XOR",XOR},
 {"AND",AND},
 {"MUL",MUL},
 {"SUB",SUB},
 {"ADD",ADD},
 {"EQ",EQ},
 {"COM",COM},
 {"OR",OR},
 {"LT",LT},
 {"GT",GT},
 {"DIV",DIV},
 {"QES",QES},

 {"ADD_EQ",ADD_EQ},
 {"SUB_EQ",SUB_EQ},
 {"MUL_EQ",MUL_EQ},
 {"DIV_EQ",DIV_EQ},
 {"MOD_EQ",MOD_EQ},
 {"LS_EQ",LS_EQ},
 {"RS_EQ",RS_EQ},
 {"AND_EQ",AND_EQ},
 {"XOR_EQ",XOR_EQ},
 {"OR_EQ",OR_EQ},
 {"INC",INC},
 {"DEC",DEC},
 {"COMP",COMP},
 {"NOT_EQ",NOT_EQ},
 {"BOOL_AND",BOOL_AND},
 {"BOOL_OR",BOOL_OR},
 {"LT_EQ",LT_EQ},
 {"GT_EQ",GT_EQ},
 {"LS",LS},
 {"RS",RS},


 {"DO",DO},
 {"FOR",FOR},
 {"RET",RET},
 {"BREAK",BREAK},
 {"ELSE",ELSE},
 {"SHORT",SHORT},
 {"GOTO",GOTO},
 {"SIGNED",SIGNED},
 {"UNSIGNED",UNSIGNED},
 {"VOID",VOID},
 {"IF",IF},
 {"CHAR",CHAR},
 {"INT",INT},
 {"CONTINUE",CONTINUE},
 {"LONG",LONG},
 {"WHILE",WHILE},

 {"",0}

};

#endif
