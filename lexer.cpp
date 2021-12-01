#include "lexer.h"
#include "lexerdefs.h"
#include <ctype.h>
#include <iostream.h>
#include "y.tab.h"

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
 {"OPEN_BRACE",OPEN_BRACE},
 {"CLOSE_BRACE",CLOSE_BRACE},
 {"OPEN_BRACKET",OPEN_BRACKET},
 {"CLOSE_BRACKET",CLOSE_BRACKET},
 {"OPEN_CBRACE",OPEN_CBRACE},
 {"CLOSE_CBRACE",CLOSE_CBRACE},
 {"COMMA",COMMA},
 {"COLON",COLON},
 {"SEMICOLON",SEMICOLON},

 {"",0}

};               
               
char *getTokenStr(int id)
{
  for(int i=0;tokenstr[i].attributeType != 0;i++){
       if(tokenstr[i].attributeType == id){
           return tokenstr[i].attributeVal;
       }
  }
}
Lexer::Attribute seperatorList[] = { {OPEN_BRACE,"("},{CLOSE_BRACE,")"},{OPEN_BRACKET,"["}, {CLOSE_BRACKET,"]"},
				     {OPEN_CBRACE,"{"},{CLOSE_CBRACE,"}"},{COMMA,","},{COLON,":"},{SEMICOLON,";"},
				     {UNKNOWN_Seperator}
				   };

Lexer::Attribute escapeSeqList[] = { {NEWLINE,"n"},{ESC_SINGLE_QUOTE,"'"},{ESC_DOUBLE_QUOTE,"\""},{ESC_BSLASH,"\\"},{BELL,"a"},{BACKSPACE,"b"},{FF,"f"},{H_TAB,"t"},{CR,"r"},{V_TAB,"v"},{ESC_QUESTION,"?"},{UNKNOWN_EscapeSeq,""} };


Lexer::Attribute operatorList[] = { {LT,"<"},{GT,">"},{EQ,"="},{NOT,"!"},{MOD,"%"},{XOR,"^"},{AND,"&"},{MUL,"*"},{SUB,"-"},{ADD,"+"},{COM,"~"},{OR,"|"},{DIV,"/"},{QES,"?"},{UNKNOWN_Operator,""} };

Lexer::Attribute comOperatorList[] = { {ADD_EQ,"+="},{SUB_EQ,"-="},{MUL_EQ,"*="},{DIV_EQ,"/="},{MOD_EQ,"%="},{AND_EQ,"&="},{XOR_EQ,"^="},{OR_EQ,"|="},{INC,"++"},{DEC,"--"},{LS,"<<"},{RS,">>"},{LT_EQ,"<="},{GT_EQ,">="},{COMP,"=="},{NOT_EQ,"!="},{BOOL_AND,"&&"},{BOOL_OR,"||"},{UNKNOWN_Com_op,""} };


Lexer::Attribute keywordList[] = { {DO,"do"},{FOR,"for"},{RET,"return"} ,{BREAK,"break"},{SHORT,"short"},
				   {ELSE,"else"},{GOTO,"goto"},{SIGNED,"signed"},{UNSIGNED,"unsigned"},{VOID,"void"},
				   {CHAR,"char"},{IF,"if"},{INT,"int"},{CONTINUE,"continue"},{LONG,"long"},{WHILE,"while"},
				   {UNKNOWN_Keyword,""}
				  };


bool Lexer::isSeperator(char *s)
{
 for(int i=0;seperatorList[i].attributeType != UNKNOWN_Seperator;i++){
     if(!strncmp(seperatorList[i].attributeVal,s,1)){
	 attr.attributeType = seperatorList[i].attributeType;
	 return true;
     }
 } 
 return false;
}

bool Lexer::isId(char c)
{ 
  if(isalpha(c) || c == '_'){
      string lexeme;
      while((isalnum(c) || c == '_') && !isspace(c) && !feof(stdin)){
	lexeme += c;
	cin.get(c);
      }

      cin.putback(c);
      strncpy(attr.attributeVal ,lexeme.c_str(),MAX_ATTR_LEN); 
      return true;
     
  }else{
   return false;
  }

}

bool Lexer::isCompoundOperator(char c)
{
 char next;
 if(!feof(stdin))
  next = cin.get();
 else{
  return false;
 }
  if(isOperator(&next)){	//look for a compound operator
     char compoundOp[2];
     compoundOp[0] = c;
     compoundOp[1] = next;
     for(int i=0;comOperatorList[i].attributeType != UNKNOWN_Com_op;i++){

      if(!strncmp(comOperatorList[i].attributeVal,compoundOp,2)){
	 attr.attributeType = comOperatorList[i].attributeType;
       
	//handle operators <<= and >>=
	if(attr.attributeType == LS || attr.attributeType == RS){
	   next = cin.peek();
           if(next == '='){
	      next = cin.get();
	      string temp = compoundOp;
	      temp += next;
	      attr.attributeType = (attr.attributeType == LS)? LS_EQ:RS_EQ;
	      strcpy(attr.attributeVal,temp.c_str());
	   }else{
	      strcpy(attr.attributeVal,compoundOp);
	   }
	}else{
	      strcpy(attr.attributeVal,compoundOp);
	}

	 return true;
      }

     }
   }
     
     //either next was not an operator or the combination was not a legal compound op.
     cin.putback(next);
     return false;
}

bool Lexer::isOperator(char *s)
{
 for(int i=0;operatorList[i].attributeType != UNKNOWN_Operator;i++){
     if(!strncmp(operatorList[i].attributeVal,s,1)){
	 attr.attributeType = operatorList[i].attributeType;
	 return true;
     }
 }
 return false;
}

bool Lexer::isKeyword(char *s)
{
 for(int i=0;keywordList[i].attributeType != UNKNOWN_Keyword;i++){
     if(!strcmp(s,keywordList[i].attributeVal)){
	attr.attributeType = keywordList[i].attributeType;
	return true;
     }
 }
 
 return false;
}

bool Lexer::isLiteral(char c,Errors &errCode,string &tokenVal)
{
 char next;

  if(isdigit(c)){
      string lexeme;
      while(isdigit(c) && !isspace(c) && !feof(stdin)){
	lexeme += c;
	cin.get(c);
      }
      cin.putback(c);
      strncpy(attr.attributeVal ,lexeme.c_str(),MAX_ATTR_LEN); 
      attr.attributeType = Integer;
      tokenVal = lexeme;
      return true;
  }

  if(c == '"'){
     string lexeme;
     char prev='\0';
     while(!feof(stdin)){
         next = cin.get();

	 if(next == '"' && prev != '\\'){
	    strncpy(attr.attributeVal,lexeme.c_str(),MAX_ATTR_LEN);
	    attr.attributeType = String;
	    tokenVal = "\""+lexeme+"\"";
	    return true;
	 }else{
            lexeme += next;
	 }

	 prev=next;
     }
  }


  if(c == '\''){
     string lexeme;
     while(!feof(stdin)){
         next = cin.get();
	 if(next == '\\'){ //process escape sequence
           return handleEscape(next,errCode,tokenVal);
	 }else{
            char temp = next;
	    next = cin.peek();
            if(next == '\''){
		next = cin.get();
                lexeme += temp;
	        strncpy(attr.attributeVal,lexeme.c_str(),MAX_ATTR_LEN);
	        attr.attributeType = Character;
		tokenVal = "\'" + (string)attr.attributeVal + "\'"; //nasty hack
		return true;
	    }else{
              //stray single quote
              errCode = STRAY_SINGLE_QUOTE;
	      cin.putback(temp);
	      return false;
	    }
	 }
     }
        
  }

  return false;
}

bool Lexer::handleEscape(char c,Errors &errCode,string& tokenVal)
{
char next;
           char octaldigits[3];int i=0;
	   octaldigits[0] = '\0';
	   octaldigits[1] = '\0';
	   octaldigits[2] = '\0';
	   while(!feof(stdin) && (i < 3)) {
                   next = cin.get();

		   if(next == '\''){
		     if(cin.peek() == '\''){
			   next = cin.get();
		           strcpy(attr.attributeVal,"'");
			   tokenVal = "'\\''";
	                   attr.attributeType = Character;
			   return true;
		     }else{
			  break;
		     }

		   }

                   octaldigits[i] = next;
		   i++;

		   if(isdigit(next)){
                      if(next < 48 || next > 55){
                          errCode = UNRECOGNIZED_OCTAL;
		      }

		   }else{
		     if(!isEscapeSeq(&next)){
                         errCode = UNRECOGNIZED_ESC; 
		     }
		     break;
		   }


	   }
	   if(i==3 || (next != '\'') )
	     next = cin.peek();
	   if(next != '\''){
                for(i;i>= 0;i--){
                     cin.putback(octaldigits[i]);
		}
		cin.putback('\\');
                errCode = STRAY_SINGLE_QUOTE;
		return false;
	   }else{
		next = cin.get();
                if(errCode == NO_ERR){
		   strncpy(attr.attributeVal,octaldigits,3);
		   tokenVal = "'\\" + (string)attr.attributeVal + "\'"; //crude way to do this
	           attr.attributeType = Character;
		   return true;
		}
                else
		   return false;
	   }
}


bool Lexer::isEscapeSeq(char *c)
{
 for(int i=0;escapeSeqList[i].attributeType != UNKNOWN_EscapeSeq; i++){
      if(!strncmp(escapeSeqList[i].attributeVal,c,1)){
	       strncpy(attr.attributeVal,escapeSeqList[i].attributeVal,1);
               return true;
      }
 }

 return false;
}

bool Lexer::isComment(char c)
{
 char next;
 char curr;

  if(c == '/'){
    next = cin.peek();

    if(next == '*'){
      next = cin.get(); //capture the peeked char
      while(!feof(stdin)){   //start looking for end of comment
	 curr = cin.get();

	 if(curr == '*')
	   next = cin.peek();

	 if(next == '/'){
		next = cin.get(); //clear it off the stream
		return true;
	 }
      }
           cout << "EOF reached looking for comment termination" << endl;

    }
  }

  return false;
}


bool Lexer::token(int &tk,string& tkVal,string& literalVal)
{
 string lexeme;
 char input;
 Errors errCode = NO_ERR;

 while(!feof(stdin)){
        cin.get(input);

	if(isspace(input)){
	   tk = Space;
	   return false;
        }

	if(isComment(input)){
	  return false; 
	}else{
          if(feof(stdin)){
	    break;
	   }
	}

	if(isSeperator(&input)){
	 tkVal = input;
	 tk = Seperator;
	 return true;
	}

	if(isLiteral(input,errCode,literalVal)){
	     tkVal = attr.attributeVal;
	     tk = Const;
	     return true;
	}else{
          if(feof(stdin)){
            tk=END; 
	    break;
	  }else{
	     if(errCode)
                cout << "Invalid literal, Err Code:" << errCode << endl;
	  }
	}

	if(isOperator(&input)){
	  if(isCompoundOperator(input)){
	     tkVal = attr.attributeVal;
	     tk = Operator;
	     return true;

	  }else{
	     tkVal = input;
	     tk = Operator;
	     return true;
	  }
	}

	if(isId(input)){
	  if(isKeyword(attr.attributeVal)){
	     tk = Keyword;
	     tkVal = attr.attributeVal;
	     return true;
	  }else{
	   tk = Id;
	   tkVal = attr.attributeVal;
	   return true;
	  }
	}

	
 }

 tk = END;
 return false;
}
