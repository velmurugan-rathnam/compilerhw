#ifndef PARSER_H
#define PARSER_H

#include "symbolTable.h"    

enum NodeType {
  Op,
  NonTerminal,
  Terminal,
  Identifier,
  Type_terminal,
  CompoundStmt,
  Decl,
  Stmt,
  Init_Decl_list,
  Init_Decl,
  Decl_or_Stmt_List,
  Decl_or_Stmt,
  Func_Defn,
  Func_Call,
  Func_Defn_Spec,
  Decl_Spec,
  Declarator,
  Func_Declarator,
  Parameter_Type_List,
  Parameter_List,
  Parameter_Decl,
  Array_Decl,
  Pointer,
  Pointer_Decl,
  Simple_Decl,
  NAMED_Label,
  Labeled_Stmt,
  GOTO_Stmt,
  Expr,
  Constant,
  IntConst,
  CharConst,
  StrConst,
  Paren_Expr,
  If_Stmt,
  If_Else_Stmt,
  Expr_List,
  Return_Stmt

};

class Node{
public:
  char *name;
  NodeType type;
  Node *Children[7];
  int terminalVal[7];
};

class Id_Node :public Node{
public:
  char idName[MAX_ATTR_LEN];
  SymTable *symTbl;
  TypeEntry *entry;
  TypeInfo *cInfo;
};


class Expr_Node :public Node{
public:
  TypeInfo *tInfo;
  TypeInfo *cInfo;
};

class IntConst_Node :public Node{
public:
  int constValue;
  TypeInfo *tInfo;
  TypeInfo *cInfo;
};

class CharConst_Node :public Node{
public:
  char constValue;
  TypeInfo *tInfo;
  TypeInfo *cInfo;
};


class StrConst_Node :public Node{
public:
  char constValue[MAX_ATTR_LEN];
  ArrayTypeInfo *tInfo;
  ArrayTypeInfo *cInfo;
};

class Type_terminal_Node :public Node{
public:
  Type_t Decl_type;
};

class Op_Node :public Node{
public:
  int opType;
  int numOperands;
  TypeInfo *tInfo;
};


struct TU_List {
  Node *node;
  TU_List *next;
};



int yyparse();
void printTerminal(Node *node,int pos,int index);
void initBasicNode(Node *node,char* name,NodeType type,Node *c1=0,Node *c2=0, Node* c3=0, Node* c4=0,Node *c5=0,Node *c6=0,Node *c7=0);
Node *createNode(char* name,NodeType type,Node *c1=0,Node *c2=0, Node* c3=0, Node* c4=0,Node *c5=0,Node *c6=0,Node *c7=0);
Op_Node *assignOpChildren(Op_Node *op,Node *c1=0,Node *c2=0,Node *c3=0,int numOperands=2);
void printTree(Node *node,int pos);
int yylex();
void yyerror(char *s);
void addToList(Node *node);
int main();

#endif
