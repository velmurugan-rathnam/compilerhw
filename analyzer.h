#ifndef ANALYZER_H
#define ANALYZER_H

#include "symbolTable.h"
#include "parser.h"
#include "IRcodegen.h"

class Analyzer{
 public:
 Analyzer();
 static Analyzer *Instance(){
      if(!instance)
	 instance = new Analyzer();
      return instance; 
 }
 void analyzeWholeTree(struct Node *root);
 void printAndGenerateMips();
 void analyze(struct Node *root,int level=0,int operatingBlock=0);
 void analyze_Stmt(struct Node *Stmt_node,SymTable *symTbl);
 void analyze_Init_Decl_list(struct Node *init_decl_node,SymTable *symTbl,Type_t type);
 void analyze_Decl_or_Stmt_List(Node *D_or_S_Lnode,SymTable *symTbl,int& numBlocks);
 void analyze_Decl_or_Stmt_List(Node *D_or_S_Lnode,SymTable *symTbl);
 void analyze_Func_Defn(Node *func_defn,SymTable *symTbl);
 void analyze_Func_Defn_Spec(Node *fd_spec,SymTable *symTbl,char *&name);
 void analyze_Decl_Spec(Node *ds,Type_t &type);
 void analyze_Param_List(Node *p_list,SymTable *symTbl,char *name);
 void analyze_Param_Type_List(Node *pt_list,SymTable *symTbl,char *name);
 void analyze_Pointer(Node *ptr,int &depth);
 void analyze_Decl(struct Node *Decl_node,SymTable *symTbl);

 void analyze_Array_Decl(Node *array_decl,SymTable *symTbl,Type_t type,char *&name,int &depth,int &numElems,bool add);
 void analyze_Pointer_Decl(Node *ptr_decl,SymTable *symTbl,Type_t type,char *&name,int &depth,int &numElems,bool add);
 void analyze_Declarator(Node *declarator,SymTable *symTbl,Type_t type,char *&name,int &depth,int &numElems,bool add=true);
 void analyze_Func_Declarator(Node *f_declarator,SymTable *symTbl,Type_t type,char *&name,int depth);
 void analyze_Simple_Decl(Node *simple_decl,SymTable *symTbl,Type_t type,int depth,char *&name,bool add);
 char *getFuncName(struct Node *node);
 void analyze_ForGOTO(struct Node *node);
 void analyze_Type(struct Node *node);
 TypeInfo * getType(struct Node *node);
 TypeInfo *checkUnaryCompatibility(struct Op_Node *op,TypeInfo* t1);
 TypeInfo *checkBinaryCompatibility(struct Op_Node *op,TypeInfo* t1,TypeInfo *t2);
 bool getUnaryConversion(TypeInfo *t);
 void print();


 SymTableMgr symTblMgr;
 IRGen irgen;
 private:
 static Analyzer *instance;

 int currentLevel;
 int currentBlock;
};


#endif
