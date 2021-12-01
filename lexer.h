#if !defined LEXER_H
#define LEXER_H


#include <string>
#include "lexerdefs.h"


struct Attr {
    char attributeVal[MAX_ATTR_LEN];
    int attributeType;
};

class Lexer {
public :

  struct Attribute{
     int attributeType;
     char attributeVal[MAX_ATTR_LEN];
  };
 
  Lexer(){
  }

  ~Lexer(){
   }

  bool token(int &tk,string& tkVal,string& literalVal); 
  bool isSeperator(char *s);
  bool isId(char c);
  bool isOperator(char *c);
  bool isCompoundOperator(char c);
  bool isKeyword(char *c);
  bool isLiteral(char c,Errors &errCode,string& tokenVal);
  bool handleEscape(char c,Errors &errCode,string& tokenVal);
  bool isComment(char c);
  bool isEscapeSeq(char *c);

  Attribute attr;
};


#endif
