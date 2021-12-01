%{
#include "parser.h"
#include "analyzer.h"
%}

%union   {
    class Node* nodeptr;
    class Id_Node *identifierNode;
    class Type_terminal_Node *typeNode;
}

%type <identifierNode>

%type <typeNode>
void_type_specifier,
signed_type_specifier,
unsigned_type_specifier  ,
char_type_specifier,


%type <nodeptr> 
identifier,
translation_unit,
top_level_decl,
decl,
declaration_specifiers,
type_specifier,
int_type_specifier,
initialized_declarator_list   ,
initialized_declarator      ,
declarator                 ,
pointer_declarator          ,
pointer                    ,
direct_declarator          ,
simple_declarator           ,
array_declarator             ,
constant_expr                 ,
conditional_expr              ,
logical_or_expr               ,
logical_and_expr               ,
bitwise_or_expr                ,
bitwise_xor_expr               ,
bitwise_and_expr              ,
equality_expr                  ,
relational_expr                ,
relational_op                  ,
shift_expr                     ,
shift_op                       ,
additive_expr                  ,
add_op                         ,
multiplicative_expr            ,
mul_op                         ,
cast_expr                      ,
unary_expr                     ,
unary_minus_expr               ,
unary_plus_expr                ,
predecrement_expr              ,
preincrement_expr              ,
indirection_expr               ,
address_expr                   ,
bitwise_negation_expr          ,
logical_negation_expr          ,
postfix_expr                   ,
primary_expr                   ,
paranthesized_expr             ,
post_increment_expr            ,
post_decrement_expr         ,
subscript_expr              ,
expr                        ,
comma_expr                   ,
assignment_expr               ,
function_call                  ,
function_declarator           ,
function_definition            ,
function_def_specifier        ,
goto_statement                ,
identifier_list                ,
if_else_statement  ,
if_statement       ,
initial_clause     ,
iterative_statement ,
label                ,
labeled_statement     ,
named_label            ,
null_statement          ,
parameter_decl           ,
parameter_list            ,
parameter_type_list        ,
statement                   ,
while_statement              ,
abstract_decl,
break_statement                ,
compound_statement             ,
conditional_statement          ,
constant       ,
integer_constant,
character_constant,
string_constant   ,
constant_expr     ,
continue_statement,
declaration_list  ,
declaration_or_statement    ,
declaration_or_statement_list ,
do_statement         ,
expression_statement  ,
expression_list        ,
array_size_expr   ,
type_name         ,
for_statement     ,
for_expr          ,
return_statement  ,
direct_abstract_decl,
assignment_op,





%left INC,DEC
%right COM,NOT,AND
%left MUL,DIV,MOD
%left ADD,SUB
%left LS,RS
%left LT,GT,LT_EQ,GT_EQ
%left COMP,NOT_EQ
%left XOR
%left OR
%left BOOL_AND
%left BOOL_OR


%token
/* Tokens */
Id,
Keyword,
Operator,
Seperator,
Const,
Space,
END,
/* Constants */
Integer,
Character,
String
/* Operators */
NOT,
MOD,
XOR,
AND,
MUL,
SUB,
ADD,
EQ,
COM,
OR,
LT,
GT,
DIV,
QES,
/* Com Operators */
ADD_EQ,
SUB_EQ,
MUL_EQ,
DIV_EQ,
MOD_EQ,
LS_EQ,
RS_EQ,
AND_EQ,
XOR_EQ,
OR_EQ,
INC,
DEC,
COMP,
NOT_EQ,
BOOL_AND,
BOOL_OR,
LT_EQ,
GT_EQ,
LS,
RS,
/* Keywords */
DO,
FOR,
RET,
BREAK,
ELSE,
SHORT,
GOTO,
SIGNED,
UNSIGNED,
VOID,
IF,
CHAR,
INT,
CONTINUE,
LONG,
WHILE,

/* Escape Seq */

NEWLINE,
H_TAB,
BACKSPACE,
CR,
FF,
V_TAB,
ESC_BSLASH,
ESC_SINGLE_QUOTE,
ESC_DOUBLE_QUOTE,
BELL,
ESC_QUESTION,
ESC_OCTAL

OPEN_BRACE,
CLOSE_BRACE,
OPEN_BRACKET,
CLOSE_BRACKET,
OPEN_CBRACE,
CLOSE_CBRACE,
COMMA,
COLON,
SEMICOLON

/*   -------------------------------------------------------------------------------*/

%%

translation_unit               : top_level_decl                     	 
									{$$ = createNode("TranslationUnit",NonTerminal,$1);
									 addToList($$);
									  }
									  
			       | translation_unit top_level_decl    
									{$$ = createNode("TranslationUnit",NonTerminal,0,$2);
									 
									 addToList($2);
									  }
			       ;

top_level_decl                 : decl                               	{$$ = createNode("Top_l_Decl",NonTerminal,$1);}
			       | function_definition                	{$$ = createNode("Top_l_Decl",NonTerminal,$1);}
			       ;

decl                           : declaration_specifiers  initialized_declarator_list   SEMICOLON
			       						{$$ = createNode("Decl",Decl,$1,$2);
									 $$->terminalVal[2] = SEMICOLON;
									 }
				
			       ;

declaration_specifiers         : type_specifier 			{$$ = createNode("Decl_Spec",Decl_Spec,$1);}
			       | type_specifier declaration_specifiers	{$$ = createNode("Decl_Spec",Decl_Spec,$1,$2);}
			       ;

type_specifier                 : int_type_specifier  			{$$ = createNode("Type_Spec",NonTerminal,$1);}
			       | void_type_specifier 			{$$ = createNode("Type_Spec",NonTerminal,$1);}
			       ;

int_type_specifier             : signed_type_specifier 			{$$ = createNode("Int_Type_Spec",NonTerminal,$1);}
			       | unsigned_type_specifier 		{$$ = createNode("Int_Type_Spec",NonTerminal,$1);}
			       | char_type_specifier 			{$$ = createNode("Int_Type_Spec",NonTerminal,$1);}
			       ;

void_type_specifier            : VOID					{$$ = (Type_terminal_Node *)createNode("Void_Type_Spec",Type_terminal);
									 $$->terminalVal[0] = VOID;
									 $$->Decl_type = void_;}
		               ;

 					
signed_type_specifier          : SHORT INT 				
									{$$ = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 $$->Decl_type = signed_short_int_; 
									 $$->terminalVal[0] = SHORT; 
									 $$->terminalVal[1] = INT;} 
			       | SIGNED SHORT 				
									{$$ = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 $$->Decl_type = signed_short_int_; 
									 $$->terminalVal[0] = SIGNED; 
									 $$->terminalVal[1] = SHORT;} 
			       | SIGNED SHORT INT 			
									{$$ = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 $$->Decl_type = signed_short_int_; 
									 $$->terminalVal[0] = SIGNED; 
									 $$->terminalVal[1] = SHORT; 
									 $$->terminalVal[2] = INT;} 
			       | INT 					
									{$$ = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 $$->Decl_type = signed_int_; 
									 $$->terminalVal[0] = INT;} 
		               | SIGNED INT 				
									{$$ = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 $$->Decl_type = signed_int_; 
									 $$->terminalVal[0] = SIGNED; 
									 $$->terminalVal[1] = INT;} 
			       | SIGNED 				
									{$$ = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 $$->Decl_type = signed_int_; 
									 $$->terminalVal[0] = SIGNED;} 
			       | LONG 					
									{$$ = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 $$->Decl_type = signed_long_int_; 
									 $$->terminalVal[0] = LONG;} 
			       | LONG INT 				
									{$$ = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 $$->Decl_type = signed_long_int_; 
									 $$->terminalVal[0] = LONG; 
									 $$->terminalVal[1] = INT;} 
			       | SIGNED LONG	 			
									{$$ = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 $$->Decl_type = signed_long_int_; 
									 $$->terminalVal[0] = SIGNED; 
									 $$->terminalVal[1] = LONG;} 
			       | SIGNED LONG INT 			
									{$$ = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 $$->Decl_type = signed_long_int_; 
									 $$->terminalVal[0] = SIGNED; 
									 $$->terminalVal[1] = LONG; 
									 $$->terminalVal[2] = INT;} 
                               | SHORT 					
									{$$ = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 $$->Decl_type = signed_short_int_; 
									 $$->terminalVal[0] = SHORT;} 
			       ;

unsigned_type_specifier        : UNSIGNED 
									{$$ = (Type_terminal_Node *)createNode("Unsigned_Type_Spec",Type_terminal);
									 $$->Decl_type = unsigned_short_int_; 
									 $$->terminalVal[0] = UNSIGNED;} 
                               | UNSIGNED SHORT INT 
									{$$ = (Type_terminal_Node *)createNode("Unsigned_Type_Spec",Type_terminal);
									 $$->Decl_type = unsigned_short_int_; 
									 $$->terminalVal[0] = UNSIGNED;
									 $$->terminalVal[1] = SHORT;
									 $$->terminalVal[2] = INT;}
			       | UNSIGNED SHORT 
									{$$ = (Type_terminal_Node *)createNode("Unsigned_Type_Spec",Type_terminal);
									 $$->Decl_type = unsigned_short_int_; 
									 $$->terminalVal[0] = UNSIGNED;
									 $$->terminalVal[1] = SHORT;}
			       | UNSIGNED INT 
									{$$ = (Type_terminal_Node *)createNode("Unsigned_Type_Spec",Type_terminal);
									 $$->Decl_type = unsigned_int_; 
									 $$->terminalVal[0] = UNSIGNED;
									 $$->terminalVal[1] = INT;}
			       | UNSIGNED LONG 
									{$$ = (Type_terminal_Node *)createNode("Unsigned_Type_Spec",Type_terminal);
									 $$->Decl_type = unsigned_long_int_; 
									 $$->terminalVal[0] = UNSIGNED;
									 $$->terminalVal[1] = LONG;}
			       | UNSIGNED LONG INT
									{$$ = (Type_terminal_Node *)createNode("Unsigned_Type_Spec",Type_terminal);
									 $$->Decl_type = unsigned_long_int_; 
									 $$->terminalVal[0] = UNSIGNED;
									 $$->terminalVal[1] = LONG;
									 $$->terminalVal[2] = INT;}
			       ;

char_type_specifier            : CHAR 
									{$$ = (Type_terminal_Node *)createNode("Char_Type_Specifier",Type_terminal);
									 $$->Decl_type = signed_char_; 
									 $$->terminalVal[0] = CHAR;}
                               | UNSIGNED CHAR 
									{$$ = (Type_terminal_Node *)createNode("Char_Type_Spec",Type_terminal);
									 $$->Decl_type = unsigned_char_; 
									 $$->terminalVal[0] = UNSIGNED;
									 $$->terminalVal[1] = CHAR;}
			       | SIGNED CHAR
									{$$ = (Type_terminal_Node *)createNode("Char_Type_Spec",Type_terminal);
									 $$->Decl_type = signed_char_; 
									 $$->terminalVal[0] = SIGNED;
									 $$->terminalVal[1] = CHAR;}
			       ; 

initialized_declarator_list    : initialized_declarator 		{$$ = createNode("Init_Decl_list",Init_Decl_list,$1);}
			       | initialized_declarator_list COMMA initialized_declarator
									{$$ = createNode("Init_Decl_list",Init_Decl_list,$1,0,$3);
									 $$->terminalVal[1] = COMMA;}
			       ;

initialized_declarator         : declarator				{$$ = createNode("Init_Decl",Init_Decl,$1);}
			       ;

declarator                     : pointer_declarator 			{$$ = createNode("Declarator",Declarator,$1);}
			       | direct_declarator			{$$ = createNode("Declarator",Declarator,$1);}
			       ; 

pointer_declarator             : pointer direct_declarator		{$$ = createNode("Pointer_Decl",Pointer_Decl,$1,$2,0,0,0);}
			       ;

pointer                        : MUL 
									{$$ = createNode("Pointer",Pointer);
									 $$->terminalVal[0] = MUL;}
			       | MUL pointer
									{$$ = createNode("Pointer",Pointer,0,$2);
									 $$->terminalVal[0] = MUL;}
			       ;

direct_declarator              : simple_declarator                     {$$ = createNode("Direct_Decl",NonTerminal,$1);}
			       | OPEN_BRACE declarator CLOSE_BRACE     {$$ = createNode("Direct_Decl",NonTerminal,0,$2);
									 $$->terminalVal[0] = OPEN_BRACE;
									 $$->terminalVal[2] = CLOSE_BRACE;}
			       | array_declarator		       {$$ = createNode("Direct_Decl",NonTerminal,$1);}
			       | function_declarator                   {$$ = createNode("Direct_Decl",NonTerminal,$1);}
                               ;

simple_declarator              : identifier 
									{$$ = createNode("Simple_Decl",Simple_Decl,$1);}
			       ;

array_declarator               : direct_declarator OPEN_BRACKET CLOSE_BRACKET 
									{$$ = createNode("Array_Decl",Array_Decl,$1);
									 $$->terminalVal[1] = OPEN_BRACKET;
									 $$->terminalVal[2] = CLOSE_BRACKET;}
			       | direct_declarator OPEN_BRACKET constant_expr CLOSE_BRACKET  
									{$$ = createNode("Array_Decl",Array_Decl,$1,0,$3);
									 $$->terminalVal[1] = OPEN_BRACKET;
									 $$->terminalVal[3] = CLOSE_BRACKET;}
			       | direct_declarator OPEN_BRACKET MUL 
									{$$ = createNode("Array_Decl",Array_Decl,$1);
									 $$->terminalVal[1] = OPEN_BRACKET;
									 $$->terminalVal[2] = MUL;}
		               | direct_declarator OPEN_BRACKET array_size_expr CLOSE_BRACKET
									{$$ = createNode("Array_Decl",Array_Decl,$1,0,$3);
									 $$->terminalVal[1] = OPEN_BRACKET;
									 $$->terminalVal[3] = CLOSE_BRACKET;}
			       ;

constant_expr                  : conditional_expr
									{$$ = createNode("Constant_Expr",Expr,$1);}
			       ;

conditional_expr               : logical_or_expr 
									{$$ = createNode("Conditional_Expr",Expr,$1);}
			       | logical_or_expr QES expr COLON conditional_expr
									{$$ = createNode("Conditional_Expr",Expr,$1,0,$3,0,$5);
									 $$->terminalVal[1] = QES;
									 $$->terminalVal[3] = COLON;}
			       ;


logical_or_expr                : logical_and_expr 
									{$$ = createNode("Logical_Or_Expr",Expr,$1);}
			       | logical_or_expr BOOL_OR logical_and_expr
									{Op_Node* p = (Op_Node *)createNode("(BOOL_OR)",Op);
									 p->opType = (int)BOOL_OR;
									 assignOpChildren(p,$1,$3);
									$$ = createNode("Logical_Or_Expr",Expr,p);}
			       ;

logical_and_expr               : bitwise_or_expr 
									{$$ = createNode("Logical_And_Expr",Expr,$1);}
	                       | logical_and_expr BOOL_AND bitwise_or_expr
									{Op_Node* p = (Op_Node *)createNode("(BOOL_AND)",Op);
									 p->opType = BOOL_AND;
									 assignOpChildren(p,$1,$3);
									$$ = createNode("Logical_And_Expr",Expr,p);}
			       ;

bitwise_or_expr                : bitwise_xor_expr 
									{$$ = createNode("Bitwise_or_Expr",Expr,$1);}
			       | bitwise_or_expr OR bitwise_xor_expr
									{Op_Node* p = (Op_Node *)createNode("(OR)",Op);
									 p->opType = OR;
									 assignOpChildren(p,$1,$3);
									$$ = createNode("Bitwise_or_Expr",Expr,p);}
			       ;

bitwise_xor_expr               : bitwise_and_expr 
									{$$ = createNode("Bitwise_Xor_Expr",Expr,$1);}
			       | bitwise_and_expr XOR bitwise_and_expr
									{Op_Node* p = (Op_Node *)createNode("(XOR)",Op);
									 p->opType = XOR;
									 assignOpChildren(p,$1,$3);
									 $$ = createNode("Bitwise_Xor_Expr",Expr,p);}
			       ;

bitwise_and_expr               : equality_expr 
									{$$ = createNode("Bitwise_ANd_Expr",Expr,$1);}
			       | bitwise_and_expr AND equality_expr
									{Op_Node* p = (Op_Node *)createNode("(AND)",Op);
									 p->opType = AND;
									 assignOpChildren(p,$1,$3);
									 $$ = createNode("Bitwise_ANd_Expr",Expr,p);
									 }
			       ;

equality_expr                  : relational_expr 
									{$$ = createNode("Equality_Expr",Expr,$1);}
			       | equality_expr COMP relational_expr
									{Op_Node* p = (Op_Node *)createNode("(COMP)",Op);
									 p->opType = COMP;
									 assignOpChildren(p,$1,$3);
									$$ = createNode("Equality_Expr",Expr,p);}
			       ;

relational_expr                : shift_expr 
									{$$ = createNode("Relational_Expr",Expr,$1);}
			       | relational_expr relational_op shift_expr
									{assignOpChildren((Op_Node *)$2,$1,$3);
									 $$ = createNode("Relational_Expr",Expr,$2);}
			       ;

relational_op                  : LT 
									{$$ = createNode("Rel_Op:(LT)",Op);
									 ((Op_Node *)$$)->opType = LT;}
			       | LT_EQ 
									{$$ = createNode("Rel_Op:(LT_EQ)",Op);
									 ((Op_Node *)$$)->opType = LT_EQ;}
			       | GT 
									{$$ = createNode("Rel_Op:(GT)",Op);
									 ((Op_Node *)$$)->opType = GT;}
			       | GT_EQ
									{$$ = createNode("Rel_Op:(GT_EQ)",Op);
									 ((Op_Node *)$$)->opType = GT_EQ;}
			       ;

shift_expr                     : additive_expr 
									{$$ = createNode("Shift_Expr",Expr,$1);}
			       | shift_expr shift_op additive_expr
									{assignOpChildren((Op_Node *)$2,$1,$3);
									 $$ = createNode("Shift_Expr",Expr,$2);}
			       ;

shift_op                       : LS
									{$$ = createNode("Shift_Op:(LS)",Op);
									 ((Op_Node *)$$)->opType = LS;}
			       | RS
									{$$ = createNode("Shift_Op;(RS)",Op);
									 ((Op_Node *)$$)->opType = RS;}
			       ;

additive_expr                  : multiplicative_expr 
									{$$ = createNode("Additive_Expr",Expr,$1);}
			       | additive_expr add_op  multiplicative_expr
									{assignOpChildren((Op_Node *)$2,$1,$3);
									 $$ = createNode("Additive_Expr",Expr,$2);}
			       ;

add_op                         : ADD 
									{$$ = createNode("Add_Op:(ADD)",Op);
									 ((Op_Node *)$$)->opType = ADD;}
			       | SUB
									{$$ = createNode("Add_Op:(SUB)",Op);
									 ((Op_Node *)$$)->opType = SUB;}
			       ;

multiplicative_expr            : cast_expr  
									{$$ = createNode("Multiplicative_Expr",Expr,$1);}
			       | multiplicative_expr mul_op cast_expr
									{assignOpChildren((Op_Node *)$2,$1,$3);
									 $$ = createNode("Multiplicative_Expr",Expr,$2);}
			       ;

mul_op                         : MUL 
									{$$ = createNode("Mul_Op:(MUL)",Op);
									 ((Op_Node *)$$)->opType = MUL;}
			       | DIV
									{$$ = createNode("Mul_Op:(DIV)",Op);
									 ((Op_Node *)$$)->opType = DIV;}
			       | MOD
									{$$ = createNode("Mul_Op:(MOD)",Op);
									 ((Op_Node *)$$)->opType = MOD;}
			       ;

cast_expr                      : unary_expr 
									{$$ = createNode("Cast_Expr",Expr,$1);}
			       | OPEN_BRACE type_name CLOSE_BRACE cast_expr
									{$$ = createNode("Cast_Expr",Expr,0,$2,0,$4);
									 $$->terminalVal[0] = OPEN_BRACE;
									 $$->terminalVal[2] = CLOSE_BRACE;}
			       ;

unary_expr                     : postfix_expr  
									{$$ = createNode("Unary_Expr",Expr,$1);}
			       | unary_minus_expr 
									{$$ = createNode("Unary_Expr",Expr,$1);}
			       | unary_plus_expr 
									{$$ = createNode("Unary_Expr",Expr,$1);}
			       | logical_negation_expr
									{$$ = createNode("Unary_Expr",Expr,$1);}
			       | bitwise_negation_expr 
									{$$ = createNode("Unary_Expr",Expr,$1);}
			       | address_expr 
									{$$ = createNode("Unary_Expr",Expr,$1);}
			       | indirection_expr 
									{$$ = createNode("Unary_Expr",Expr,$1);}
			       | preincrement_expr 
									{$$ = createNode("Unary_Expr",Expr,$1);}
			       | predecrement_expr
									{$$ = createNode("Unary_Expr",Expr,$1);}
			       ;

unary_minus_expr               : SUB cast_expr
									{Op_Node* p = (Op_Node *)createNode("Unary(SUB)",Op);
									 p->opType = SUB;
									 assignOpChildren(p,$2,0,0,1);
									 $$ = createNode("Unary_Minus_Expr",Expr,p);
									 }
			       ;
unary_plus_expr                : ADD cast_expr
									{Op_Node* p = (Op_Node *)createNode("Unary(ADD)",Op);
									 p->opType = ADD;
									 assignOpChildren(p,$2,0,0,1);
									 $$ = createNode("Unary_Plus_Expr",Expr,p);
									 }
			       ;
predecrement_expr              : DEC unary_expr
									{Op_Node* p = (Op_Node *)createNode("pre(DEC)",Op);
									 p->opType = DEC;
									 assignOpChildren(p,$2,0,0,1);
									$$ = createNode("Predecrement_Expr",Expr,p);
									 }
			       ;
preincrement_expr              : INC unary_expr
									{Op_Node* p = (Op_Node *)createNode("pre(INC)",Op);
									 p->opType = INC;
									 assignOpChildren(p,$2,0,0,1);
									 $$ = createNode("Preincrement_Expr",Expr,p);
									 }
			       ;
indirection_expr               : mul_op cast_expr
									{assignOpChildren((Op_Node *)$1,$2,0,0,1);
									$$ = createNode("Indirection_Exp",Expr,$1);}
			       ;
address_expr                   : AND cast_expr
									{Op_Node* p = (Op_Node *)createNode("address(AND)",Op);
									 p->opType = AND;
									 assignOpChildren(p,$2,0,0,1);
									$$ = createNode("Address_Expr",Expr,p);
									 }
			       ;
bitwise_negation_expr          : COM cast_expr
									{Op_Node* p = (Op_Node *)createNode("(COM)",Op);
									 p->opType = COM;
									 assignOpChildren(p,$2,0,0,1);
									$$ = createNode("Bitwise_Negation_Exp",Expr,p);
									 }
			       ;
logical_negation_expr          : NOT cast_expr
									{Op_Node* p = (Op_Node *)createNode("(NOT)",Op);
									 p->opType = NOT;
									 assignOpChildren(p,$2,0,0,1);
									$$ = createNode("Logical_Negation_expr",Expr,p);
									 }
			       ;

postfix_expr                   : primary_expr 
									{$$ = createNode("Postfix_Expr",Expr,$1);}
			       | subscript_expr 
									{$$ = createNode("Postfix_Expr",Expr,$1);}
			       | function_call 
									{$$ = createNode("Postfix_Expr",Expr,$1);}
			       | post_increment_expr
									{$$ = createNode("Postfix_Expr",Expr,$1);}
			       | post_decrement_expr
									{$$ = createNode("Postfix_Expr",Expr,$1);}
			       ;

primary_expr                   : identifier 
									{$$ = createNode("Primary_Expr",Expr,$1);}
			       | constant 
									{$$ = createNode("Primary_Expr",Expr,$1);}
			       | paranthesized_expr
									{$$ = createNode("Primary_Expr",Expr,$1);}
			       ;


paranthesized_expr             : OPEN_BRACE expr CLOSE_BRACE
									{$$ = createNode("Paranthesized_Expr",Paren_Expr,0,$2);
									 $$->terminalVal[0] = OPEN_BRACE;
									 $$->terminalVal[2] = CLOSE_BRACE;}
			       ;
post_increment_expr            : postfix_expr INC
									{Op_Node* p = (Op_Node *)createNode("Post:(INC)",Op);
									 p->opType = INC;
									 assignOpChildren(p,$1,0,0,1);
									$$ = createNode("Post_Inc_Expr",Expr,p);
									 }
			       ;
post_decrement_expr            : postfix_expr DEC
									{Op_Node* p = (Op_Node *)createNode("Post:(DEC)",Op);
									 p->opType = DEC;
									 assignOpChildren(p,$1,0,0,1);
									 $$ = createNode("Post_Dec_Expr",Expr,p);
									 }
			       ;
				 
subscript_expr                 : postfix_expr OPEN_BRACKET expr CLOSE_BRACKET
									{$$ = createNode("Subscript_Expr",Expr,$1,0,$3);
									 $$->terminalVal[1] = OPEN_BRACKET;
									 $$->terminalVal[3]= CLOSE_BRACKET;}
			       ;

expr                           : comma_expr
									{$$ = createNode("Expr",Expr,$1);}
			       ;

comma_expr                     : assignment_expr 
									{$$ = createNode("Comma_Expr",Expr,$1);}
			       | comma_expr COMMA assignment_expr
									{$$ = createNode("Comma_Expr",Expr,$1,0,$3);
									 $$->terminalVal[1] = COMMA;}
			       ;

assignment_expr                : conditional_expr 
									{$$ = createNode("Assign_Expr",Expr,$1);}
			       | unary_expr assignment_op assignment_expr
									{assignOpChildren((Op_Node *)$2,$1,$3);
									 $$ = createNode("Assign_Expr",Expr,$2);}
			       ;

assignment_op                  : EQ
									{$$ = createNode("Assign_op:(EQ)",Op);
									 ((Op_Node *)$$)->opType = EQ;}
			       | ADD_EQ
									{$$ = createNode("Assign_op:(ADD_EQ)",Op);
									 ((Op_Node *)$$)->opType = ADD_EQ;}
			       | SUB_EQ
									{$$ = createNode("Assign_op:(SUB_EQ)",Op);
									 ((Op_Node *)$$)->opType = SUB_EQ;}
			       | MUL_EQ
									{$$ = createNode("Assign_op:(MUL_EQ)",Op);
									 ((Op_Node *)$$)->opType = MUL_EQ;}
			       | DIV_EQ
									{$$ = createNode("Assign_op:(DIV_EQ)",Op);
									 ((Op_Node *)$$)->opType = DIV_EQ;}
			       | MOD_EQ
									{$$ = createNode("Assign_op:(MOD_EQ)",Op);
									 ((Op_Node *)$$)->opType = MOD_EQ;}
			       | LS_EQ
									{$$ = createNode("Assign_op:(LS_EQ)",Op);
									 ((Op_Node *)$$)->opType = LS_EQ;}
			       | RS_EQ
									{$$ = createNode("Assign_op:(RS_EQ)",Op);
									 ((Op_Node *)$$)->opType = RS_EQ;}
			       | AND_EQ
									{$$ = createNode("Assign_op:(AND_EQ)",Op);
									 ((Op_Node *)$$)->opType = AND_EQ;}
			       | XOR_EQ
									{$$ = createNode("Assign_op:(XOR_EQ)",Op);
									 ((Op_Node *)$$)->opType = XOR_EQ;}
			       | OR_EQ
									{$$ = createNode("Assign_op:(OR_EQ)",Op);
									 ((Op_Node *)$$)->opType = OR_EQ;}
			       | NOT_EQ
									{$$ = createNode("Assign_op:(NOT_EQ)",Op);
									 ((Op_Node *)$$)->opType = NOT_EQ;}
			       ;

function_call                  : postfix_expr OPEN_BRACE CLOSE_BRACE 
									{$$ = createNode("Func_Call",Func_Call,$1);
									 $$->terminalVal[1] = OPEN_BRACE;
									 $$->terminalVal[2] = CLOSE_BRACE;}
			       | postfix_expr OPEN_BRACE expression_list CLOSE_BRACE
									{$$ = createNode("Func_Call",Func_Call,$1,0,$3);
									 $$->terminalVal[1] = OPEN_BRACE;
									 $$->terminalVal[3] = CLOSE_BRACE;}
			       ;

function_declarator            : direct_declarator OPEN_BRACE parameter_type_list CLOSE_BRACE
									{$$ = createNode("Func_Declarator",Func_Declarator,$1,0,$3);
									 $$->terminalVal[1] = OPEN_BRACE;
									 $$->terminalVal[3] = CLOSE_BRACE;}

function_definition            : function_def_specifier compound_statement      
									{$$ = createNode("Function_definition",Func_Defn,$1,$2);}
			       ;

function_def_specifier         : declarator 
									{$$ = createNode("Function_Def_Spec",Func_Defn_Spec,$1);}
			       | declaration_specifiers declarator 		
									{$$ = createNode("Function_Def_Spec",Func_Defn_Spec,$1,$2);}
			       | declarator declaration_list 			
									{$$ = createNode("Function_Def_Spec",Func_Defn_Spec,$1,$2);}
			       | declaration_specifiers declarator declaration_list
									{$$ = createNode("Function_Def_Spec",Func_Defn_Spec,$1,$2,$3);}
			       ;

goto_statement                 : GOTO named_label SEMICOLON
									{$$ = createNode("GOTO_Stmt",GOTO_Stmt,0,$2);
									 $$->terminalVal[0] = GOTO;
									 $$->terminalVal[2] = SEMICOLON;}
			       ;

identifier_list                : identifier 
									{$$ = createNode("Identifier_List",NonTerminal,$1);}
			       | parameter_list COMMA identifier 
									{$$ = createNode("Identifier_List",NonTerminal,$1,0,$3);
									 $$->terminalVal[1] = COMMA;}
			       ;

identifier                     : Id
									{$$ = createNode("Identifier",Identifier);
									 $$->terminalVal[0] = Id;}
			       ;

if_else_statement              : IF OPEN_BRACE expr CLOSE_BRACE statement ELSE statement
									{$$ = createNode("If_Stmt",If_Else_Stmt,0,0,$3,0,$5,0,$7);
									 $$->terminalVal[0] = IF;
									 $$->terminalVal[1] = OPEN_BRACE;
									 $$->terminalVal[3] = CLOSE_BRACE;
									 $$->terminalVal[5] = ELSE;}
			       ;
if_statement                   : IF OPEN_BRACE expr CLOSE_BRACE statement
									{$$ = createNode("If_Stmt",If_Stmt,0,0,$3,0,$5);
									 $$->terminalVal[0] = IF;
									 $$->terminalVal[1] = OPEN_BRACE;
									 $$->terminalVal[3] = CLOSE_BRACE;}
			       ;

initial_clause                 : expr 
									{$$ = createNode("Initial_Clause",NonTerminal,$1);}
			       | decl
									{$$ = createNode("Initial_Clause",NonTerminal,$1);}
			       ;


iterative_statement            : while_statement 
									{$$ = createNode("Iterative_Stmt",NonTerminal,$1);}
			       | do_statement 
									{$$ = createNode("Iterative_Stmt",NonTerminal,$1);}
			       | for_statement
									{$$ = createNode("Iterative_Stmt",NonTerminal,$1);}
			       ;

label                          : named_label
									{$$ = createNode("label",NonTerminal,$1);}
			       ;

labeled_statement              : label COLON statement
									{$$ = createNode("Labeled_Stmt",Labeled_Stmt,$1,0,$3);
									 $$->terminalVal[1] = COLON;}
			       ;

named_label                    : identifier 
									{$$ = createNode("NAMED_Label",NAMED_Label,$1);}
			       ;

null_statement                 : SEMICOLON
									{$$ = createNode("NULL_Stmt",Terminal);
									 $$->terminalVal[0] = SEMICOLON;}
			       ;

parameter_decl                 : declaration_specifiers declarator 
									{$$ = createNode("Paramter_Decl",Parameter_Decl,$1,$2);}
			       | declaration_specifiers
									{$$ = createNode("Paramter_Decl",Parameter_Decl,$1);}
			       | declaration_specifiers abstract_decl
									{$$ = createNode("Paramter_Decl",Parameter_Decl,$1,$2);}
			       | abstract_decl
									{$$ = createNode("Paramter_Decl",Parameter_Decl,$1);}
                               ; 

parameter_list                 : parameter_decl 
									{$$ = createNode("Paramter_List",Parameter_List,$1);}
			       | parameter_list COMMA parameter_decl
									{$$ = createNode("Paramter_List",Parameter_List,$1,0,$3);
									 $$->terminalVal[1] = COMMA;}
			       ;

parameter_type_list            : parameter_list
									{$$ = createNode("Parameter_Type_List",Parameter_Type_List,$1);}
			       ;

statement                      : expression_statement 			{$$ = createNode("Stmt",NonTerminal,$1);}
		               | labeled_statement 			{$$ = createNode("Stmt",NonTerminal,$1);}
			       | compound_statement 			{$$ = createNode("Stmt",NonTerminal,$1);}
			       | conditional_statement 			{$$ = createNode("Stmt",NonTerminal,$1);}
			       | iterative_statement 			{$$ = createNode("Stmt",NonTerminal,$1);}
			       | break_statement 			{$$ = createNode("Stmt",NonTerminal,$1);}
			       | continue_statement 			{$$ = createNode("Stmt",NonTerminal,$1);}
			       | return_statement 			{$$ = createNode("Stmt",NonTerminal,$1);}
			       | goto_statement 			{$$ = createNode("Stmt",NonTerminal,$1);}
			       | null_statement				{$$ = createNode("Stmt",NonTerminal,$1);}
			       ;

while_statement                : WHILE OPEN_BRACE expr CLOSE_BRACE statement
									{$$ = createNode("While_Stmt",NonTerminal,0,0,$3,0,$5);
									 $$->terminalVal[0] = WHILE;
									 $$->terminalVal[1] = OPEN_BRACE;
									 $$->terminalVal[3] = CLOSE_BRACE;}
			       ;

abstract_decl                  : pointer 
									{$$ = createNode("Abstact_Decl",NonTerminal,$1);}
			       | direct_abstract_decl 
									{$$ = createNode("Abstract_Decl",NonTerminal,$1);}
			       | pointer direct_abstract_decl
									{$$ = createNode("Abstract_Decl",NonTerminal,$1,$2);}
			       ;


break_statement                : BREAK SEMICOLON
									{$$ = createNode("Break_Stmt",NonTerminal);
									 $$->terminalVal[0] = BREAK;
									 $$->terminalVal[1] = SEMICOLON;}
			       ;

compound_statement             : OPEN_CBRACE declaration_or_statement_list CLOSE_CBRACE
									{$$ = createNode("Compound_Stmt",CompoundStmt,0,$2);
									 $$->terminalVal[0] = OPEN_CBRACE;
									 $$->terminalVal[2] = CLOSE_CBRACE;}
			       | OPEN_CBRACE CLOSE_CBRACE
									{$$ = createNode("Compound_Stmt",CompoundStmt);
									 $$->terminalVal[0] = OPEN_CBRACE;
									 $$->terminalVal[1] = CLOSE_CBRACE;}
			       ;

conditional_statement          : if_statement 
									{$$ = createNode("Conditional_Stmt",NonTerminal,$1);}
			       | if_else_statement
									{$$ = createNode("Conditional_Stmt",NonTerminal,$1);}
			       ;

constant                       : integer_constant 
									{$$ = createNode("Const",Constant,$1);}
			       | character_constant 
									{$$ = createNode("Const",Constant,$1);}
			       | string_constant
									{$$ = createNode("Const",Constant,$1);}
			       ;

integer_constant               : Integer
									{$$ = createNode("Integer_Const",IntConst);
									 $$->terminalVal[0] = Integer;}
			       ;
character_constant             : Character
									{$$ = createNode("Character_Const",CharConst);
									 $$->terminalVal[0] = Character;}
			       ;
string_constant                : String
									{$$ = createNode("String_Const",StrConst);
									 $$->terminalVal[0] = String;}
			       ;

constant_expr                  : conditional_expr
									{$$ = createNode("Constant_Expr",Expr,$1);}
			       ;

continue_statement             : CONTINUE SEMICOLON
									{$$ = createNode("Continue_Stmt",NonTerminal);
									 $$->terminalVal[0] = CONTINUE;
									 $$->terminalVal[1] = SEMICOLON;}

declaration_list               : decl 
									{$$ = createNode("Decl_List",NonTerminal,$1);}
			       | declaration_list decl
									{$$ = createNode("Decl_List",NonTerminal,$1,$2);}
                               ;

declaration_or_statement       : decl 
									{$$ = createNode("Decl_or_Stmt",Decl_or_Stmt,$1);}
			       | statement
									{$$ = createNode("Decl_or_Stmt",Decl_or_Stmt,$1);}
			       ;

declaration_or_statement_list  : declaration_or_statement 
									{$$ = createNode("Decl_or_Stmt_List",Decl_or_Stmt_List,$1);}
			       | declaration_or_statement_list declaration_or_statement
									{$$ = createNode("Decl_or_Stmt_List",Decl_or_Stmt_List,$1,$2);}
			       ;

do_statement                   : DO statement WHILE OPEN_BRACE expr CLOSE_BRACE SEMICOLON
									{$$ = createNode("Do_Stmt",NonTerminal,0,$2,0,0,$5);
									 $$->terminalVal[0] = DO;
									 $$->terminalVal[2] = WHILE;
									 $$->terminalVal[3] = OPEN_BRACE;
									 $$->terminalVal[5] = CLOSE_BRACE;
									 $$->terminalVal[6] = SEMICOLON;}
			       ;

expression_statement           : expr SEMICOLON
									{$$ = createNode("Expression_Stmt",NonTerminal,$1);
									 $$->terminalVal[1] = SEMICOLON;}
			       ;

expression_list                : assignment_expr 
									{$$ = createNode("Expression_List",Expr_List,$1);}
			       | expression_list COMMA assignment_expr
									{$$ = createNode("Expression_List",Expr_List,$1,0,$3);
									 $$->terminalVal[1] = COMMA;}
			       ;

array_size_expr                : assignment_expr
									{$$ = createNode("Array_Size_Expr",Expr,$1);}
			       ;
return_statement               : RET SEMICOLON      
									{$$ = createNode("Return",Return_Stmt);
									 $$->terminalVal[0] = RET;
									 $$->terminalVal[1] = SEMICOLON;}
			       | RET expr SEMICOLON
									{$$ = createNode("Return",Return_Stmt,0,$2);
									 $$->terminalVal[0] = RET;
									 $$->terminalVal[2] = SEMICOLON;}
			       ;

direct_abstract_decl           : OPEN_BRACE abstract_decl CLOSE_BRACE
									{$$ = createNode("Direct_Abs_Decl",NonTerminal,0,$2);
									 $$->terminalVal[0] = OPEN_BRACE;
									 $$->terminalVal[2] = CLOSE_BRACE;}
			       | OPEN_BRACKET constant_expr CLOSE_BRACKET
									{$$ = createNode("Direct_Abs_Decl",NonTerminal,0,$2);
									 $$->terminalVal[0] = OPEN_BRACKET;
									 $$->terminalVal[2] = CLOSE_BRACKET;}
			       | direct_abstract_decl OPEN_BRACKET constant_expr CLOSE_BRACKET
									{$$ = createNode("Direct_Abs_Decl",NonTerminal,$1,0,$3);
									 $$->terminalVal[1] = OPEN_BRACKET;
									 $$->terminalVal[3] = CLOSE_BRACKET;}
                               ;


type_name                      : declaration_specifiers 
									{$$ = createNode("Type_Name",NonTerminal,$1);}
			       | declaration_specifiers abstract_decl
									{$$ = createNode("Type_Name",NonTerminal,$1,$2);}
			       ;

for_statement                  : FOR for_expr statement
									{$$ = createNode("For",NonTerminal,0,$2,$3);
									 $$->terminalVal[0] = FOR;}
									 
			       ;

for_expr                       : OPEN_BRACE SEMICOLON SEMICOLON CLOSE_BRACE 
									{$$ = createNode("For_Expr",Expr);
									 $$->terminalVal[0] = OPEN_BRACE;
									 $$->terminalVal[1] = SEMICOLON;
									 $$->terminalVal[2] = SEMICOLON;
									 $$->terminalVal[3] = CLOSE_BRACE;}

			       | OPEN_BRACE initial_clause SEMICOLON SEMICOLON CLOSE_BRACE
									{$$ = createNode("For_Expr",Expr,0,$2);
									 $$->terminalVal[0] = OPEN_BRACE;
									 $$->terminalVal[2] = SEMICOLON;
									 $$->terminalVal[3] = SEMICOLON;
									 $$->terminalVal[4] = CLOSE_BRACE;}
			       | OPEN_BRACE initial_clause SEMICOLON expr SEMICOLON expr CLOSE_BRACE
									{$$ = createNode("For_Expr",Expr,0,$2,0,$4,0,$6);
									 $$->terminalVal[0] = OPEN_BRACE;
									 $$->terminalVal[2] = SEMICOLON;
									 $$->terminalVal[4] = SEMICOLON;
									 $$->terminalVal[6] = CLOSE_BRACE;}
			       | OPEN_BRACE initial_clause SEMICOLON expr SEMICOLON CLOSE_BRACE
									{$$ = createNode("For_Expr",Expr,0,$2,0,$4);
									 $$->terminalVal[0] = OPEN_BRACE;
									 $$->terminalVal[2] = SEMICOLON;
									 $$->terminalVal[4] = SEMICOLON;
									 $$->terminalVal[6] = CLOSE_BRACE;}
			       | OPEN_BRACE initial_clause SEMICOLON SEMICOLON expr CLOSE_BRACE
									{$$ = createNode("For_Expr",Expr,0,$2,0,0,$5);
									 $$->terminalVal[0] = OPEN_BRACE;
									 $$->terminalVal[2] = SEMICOLON;
									 $$->terminalVal[3] = SEMICOLON;
									 $$->terminalVal[5] = CLOSE_BRACE;}
			       | OPEN_BRACE SEMICOLON expr SEMICOLON expr CLOSE_BRACE
									{$$ = createNode("For_Expr",Expr,0,0,$3,0,$5);
									 $$->terminalVal[0] = OPEN_BRACE;
									 $$->terminalVal[1] = SEMICOLON;
									 $$->terminalVal[3] = SEMICOLON;
									 $$->terminalVal[5] = CLOSE_BRACE;}
			       | OPEN_BRACE SEMICOLON SEMICOLON expr CLOSE_BRACE
									{$$ = createNode("For_Expr",Expr,0,0,0,$4);
									 $$->terminalVal[0] = OPEN_BRACE;
									 $$->terminalVal[1] = SEMICOLON;
									 $$->terminalVal[2] = SEMICOLON;
									 $$->terminalVal[4] = CLOSE_BRACE;}
			       | OPEN_BRACE SEMICOLON expr SEMICOLON CLOSE_BRACE
									{$$ = createNode("For_Expr",Expr,0,0,$3);
									 $$->terminalVal[0] = OPEN_BRACE;
									 $$->terminalVal[1] = SEMICOLON;
									 $$->terminalVal[3]= SEMICOLON;
									 $$->terminalVal[4] = CLOSE_BRACE;}
			       ;


/*   -------------------------------------------------------------------------------*/
%%

