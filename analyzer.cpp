#include <iostream.h>
#include "analyzer.h"
#include "y.tab.h"
#include "IRcodegen.h"
#include "MIPSgen.h"

Analyzer* Analyzer::instance = NULL;

Analyzer::Analyzer()
{
  currentLevel=0;
  currentBlock =0;
}


//symbol analysis, type analysis, generate IR
void Analyzer::analyzeWholeTree(Node *node)
{
   analyze(node);
   analyze_ForGOTO(node);
   analyze_Type(node);

   irgen.generateIR(node);
}


//dump out Symbol Table, IR, MIPS
void Analyzer::printAndGenerateMips()
{
   symTblMgr.assignStorage();
   MipsGen *mips = new MipsGen();
   IR_Node *begin = irgen.getHead();

   if(!mips){
    printf("Error creating generator\n");
    return;
   }

   print();		//print symbol table

   cout << "\n\n\n";
   irgen.print();	//print IR code
   cout << "\n\n\n";
   mips->generateMIPS(begin,&symTblMgr);
   mips->print();	//print MIPS
}

void Analyzer::print()
{
   cout << "-------------------Symbols----------------------" << endl;
   symTblMgr.printWholeTable();
   cout << "------------------------------------------------" << endl;
}

void Analyzer::analyze(Node *node,int level,int operatingBlock)
{
  SymTable *currentTable = symTblMgr.getTable(level,operatingBlock);
  if(currentTable == NULL){
   printf("Unable to get symTable\n");
   return;
  }

   int i=0;
   for(i=0;i<7;i++){

      if(node->Children[i] && (node->Children[i]->type != Terminal)){

	if(node->Children[i]->type == Func_Defn){
	  analyze_Func_Defn(node->Children[i],currentTable);
	}
	else if(node->Children[i]->type == Decl_or_Stmt_List){
	  analyze_Decl_or_Stmt_List(node->Children[i],currentTable);
	}
	else if(node->Children[i]->type == Decl){
          analyze_Decl(node->Children[i],currentTable);
	}else{
          analyze(node->Children[i],level,operatingBlock);
	}

      }

   }

}

void Analyzer::analyze_Func_Defn(Node *func_defn,SymTable *symTbl)
{
  char *name;
  SymTable *tbl;//dummy for lkup
  TypeEntry *e;


  if(func_defn->Children[0] && func_defn->Children[0]->type == Func_Defn_Spec){
       analyze_Func_Defn_Spec(func_defn->Children[0],symTbl,name);
  }

  if(!symTblMgr.lkupWholeTable(name,e,tbl)){
    printf("Lkup for func %s failed\n",name);
    return;
  }

  tbl = NULL;//reuse
  FuncTypeInfo *f = (FuncTypeInfo *)e->typeInfo;
  tbl = symTblMgr.getTable(1,f->block);  //1 since funcs are always stored at level 1->file scope+1
  if(!tbl){
    printf("Lkup for func %s failed\n",name);
    return;
  }

  if(func_defn->Children[1] && func_defn->Children[1]->type == CompoundStmt){
       analyze(func_defn->Children[1],tbl->levelId,tbl->blockId);
  }
}

void Analyzer::analyze_Func_Defn_Spec(Node *fd_spec,SymTable *symTbl,char *&name)
{
 int depth=0;
 int numArrayElems=0;
 Type_t returnType = signed_int_;
  if(fd_spec->Children[0] && fd_spec->Children[0]->type == Declarator){//no type specified.default.

     analyze_Declarator(fd_spec->Children[0],symTbl,returnType,name,depth,numArrayElems);

  }else if(fd_spec->Children[0] && fd_spec->Children[0]->type == Decl_Spec){

     analyze_Decl_Spec(fd_spec->Children[0],returnType);  //return type specified

     if(fd_spec->Children[1] && fd_spec->Children[1]->type == Declarator){
      analyze_Declarator(fd_spec->Children[1],symTbl,returnType,name,depth,numArrayElems);
     }
  }
}


void Analyzer::analyze_Declarator(Node *declarator,SymTable *symTbl,Type_t type,char *&name,int &depth,int& numElems,bool add )
{
 Node *tmp = declarator;
 int i=0;

  if(!declarator){
    printf("Invalid declarator\n");
    return;
  }

  for(i=0;i<7;i++){
	if(tmp->Children[i]){
  	   if(tmp->Children[i]->type == Func_Declarator){
    		analyze_Func_Declarator(tmp->Children[i],symTbl,type,name,depth);
	   }else if(tmp->Children[i]->type == Simple_Decl){
		analyze_Simple_Decl(tmp->Children[i],symTbl,type,depth,name,add);
	   }else if(tmp->Children[i]->type == Array_Decl){
    		analyze_Array_Decl(tmp->Children[i],symTbl,type,name,depth,numElems,add);
	   }else if(tmp->Children[i]->type == Pointer_Decl){
    		analyze_Pointer_Decl(tmp->Children[i],symTbl,type,name,depth,numElems,add);
	   } 
	   else{
                analyze_Declarator(tmp->Children[i],symTbl,type,name,depth,numElems,add);
	   }
	}
  }
}

void Analyzer::analyze_Simple_Decl(Node *simple_decl,SymTable *symTbl,Type_t type,int depth,char *&name,bool add)
{
 int i=0;
 Node *tmp = simple_decl;

 if(!simple_decl){
    printf("invalid simple decl\n");
    return;
 }

 if(simple_decl->Children[0] && simple_decl->Children[0]->type == Identifier){
		tmp = tmp->Children[0];
		  name = ((Id_Node *)tmp)->idName;
     		if(add)
		   symTbl->addEntry(((Id_Node *)tmp)->idName,type,depth);
 }

}


void Analyzer::analyze_Pointer_Decl(Node *ptr_decl,SymTable *symTbl,Type_t type,char *&name,int &depth,int& numElems,bool add)
{

 if(!ptr_decl){
   printf("Invalid ptr_decl\n");
   return;
 }

 analyze_Pointer(ptr_decl->Children[0],depth);
 analyze_Declarator(ptr_decl->Children[1],symTbl,type,name,depth,numElems,add);

}

void Analyzer::analyze_Pointer(Node *ptr,int &depth)
{
int i=0;
 if(!ptr && ptr->type != Pointer){
   printf("Invalid ptr\n");
   return;
 }

 for(i=0;i<2;i++){
   if(ptr->Children[i] && ptr->Children[i]->type == Pointer){
        analyze_Pointer(ptr->Children[i],depth);
   }else if(ptr->terminalVal[i] == MUL){
        depth++;
   }
 }
}

void Analyzer::analyze_Array_Decl(Node *array_decl,SymTable *symTbl,Type_t type,char *&name,int &depth,int &numElems,bool add)
{
  Node *tmp = array_decl;


  if(!array_decl || array_decl->type != Array_Decl){
    printf("Invalid array declarator\n");
    return;
  }

  if(array_decl->Children[0]){
     analyze_Declarator(array_decl->Children[0],symTbl,type,name,depth,numElems,false); 
  }
   
  numElems++;
  if(add)
    symTbl->addArrayEntry(name,type,numElems,depth);
}


void Analyzer::analyze_Func_Declarator(Node *f_declarator,SymTable *symTbl,Type_t type,char *&name,int depth)
{
  Node *tmp = f_declarator;
  int numArrayElems=0;
  TypeEntry *e;
  SymTable *tbl; //dummy table for return from lkup

  if(!f_declarator || f_declarator->type != Func_Declarator){
    printf("Invalid func declarator\n");
    return;
  }
  
  analyze_Declarator(f_declarator->Children[0],symTbl,type,name,depth,numArrayElems,false);

  if(symTblMgr.lkupWholeTable(name,e,tbl)){
    return;  //already entered due to an earlier declaration
  }

  SymTable *newTable = symTbl->createNewFuncTable();
  if(!newTable)
    printf("Error creating new table for func\n");

  symTbl->addFuncEntry(name,type,newTable->blockId,depth);

  if(f_declarator->Children[2]){
    if(f_declarator->Children[2]->type == Parameter_Type_List){
     analyze_Param_Type_List(f_declarator->Children[2],newTable,name);
    }
  }
}

void Analyzer::analyze_Param_List(Node *p_list,SymTable *symTbl,char *func_name)
{
 Node *tmp  = p_list;
 char *name;
 int depth=0;
 int numArrayElems=0;
 SymTable *fSymTable;

 int i=0;
 if(!p_list || p_list->type != Parameter_List){
   printf("invalid p_list\n");
   return;
 }
 for(i=0;i<3;i++){
   if(p_list->Children[i]){
      if(p_list->Children[i]->type == Parameter_Decl){
        Type_t type;
        tmp = tmp->Children[i]; 
        analyze_Decl_Spec(tmp->Children[0],type); //get type

	if(tmp->Children[1] && tmp->Children[1]->type == Declarator){
          analyze_Declarator(tmp->Children[1],symTbl,type,name,depth,numArrayElems);
          if(name)
	     symTblMgr.incrementFuncArgCnt(func_name,fSymTable);
	}
     }else{
       analyze_Param_List(p_list->Children[i],symTbl,func_name); 
     }
   }
 }

}

void Analyzer::analyze_Param_Type_List(Node *pt_list,SymTable *symTbl,char *func_name)
{
 Node *tmp  = pt_list;
 if(!pt_list || pt_list->type != Parameter_Type_List){
   printf("invalid pt_list\n");
   return;
 } 

 if(pt_list->Children[0] && pt_list->Children[0]->type == Parameter_List){
   analyze_Param_List(pt_list->Children[0],symTbl,func_name);
 }

}


void Analyzer::analyze_Decl_Spec(Node *ds,Type_t &type)
{
  while(ds && ds->type != Type_terminal){
    ds = ds->Children[0];      //follow the leftmost child all the way to leaf.
  }

  if(ds && ds->type == Type_terminal){
    type = ((Type_terminal_Node *)ds)->Decl_type;
  }

}

void Analyzer::analyze_Decl_or_Stmt_List(Node *D_or_S_Lnode,SymTable *symTbl,int& numBlocksEncountered)
{
  int i=0;
  Node *tmp = D_or_S_Lnode;
  if(!tmp)
    return;

    for(i=0;i<7;i++){

	if(tmp->Children[i] ){
	  if(tmp->Children[i]->type == CompoundStmt){

	    numBlocksEncountered++;
	    SymTable *newTable = symTbl->createTable(symTbl->levelId+1,numBlocksEncountered);
            analyze_Decl_or_Stmt_List(tmp->Children[i],newTable);

	  }else if(tmp->Children[i]->type == Decl){
            analyze_Decl(tmp->Children[i],symTbl);
	  }else if(tmp->Children[i]->type == Identifier){
	      Id_Node *id = (Id_Node *)tmp->Children[i];
	      if(!symTbl->lkupEntry(id->idName,id->entry,id->symTbl)){
                 cout << id->idName << ":Undeclared identifier\n";
	      }
	  }else if(tmp->Children[i]->type == GOTO_Stmt){

	  }else if(tmp->Children[i]->type == Labeled_Stmt){
                   Node *ln = tmp->Children[i];
	           while(ln && ln->type != Identifier){
                       ln = ln->Children[0];
		   }

		   if(ln->type == Identifier){
		      symTbl->addEntry(((Id_Node *)ln)->idName,label);
		   }
            analyze_Decl_or_Stmt_List(tmp->Children[i]->Children[2],symTbl,numBlocksEncountered);
	  }
	  else{
            analyze_Decl_or_Stmt_List(tmp->Children[i],symTbl,numBlocksEncountered);
	  }

       }
   }
}
void Analyzer::analyze_ForGOTO(Node *node)
{
  int i=0;
  Node *tmp = node;

    for(i=0;i<7;i++){

	if(tmp->Children[i] ){
	  if(tmp->Children[i]->type == GOTO_Stmt){
	      tmp = tmp->Children[i]->Children[1];
	      while(tmp && tmp->type != Identifier){
                      tmp = tmp->Children[0];
	      }

	      if(tmp->type == Identifier){
	         Id_Node *id = (Id_Node *)tmp;
	         if(!symTblMgr.lkupWholeTable(id->idName,id->entry,id->symTbl)){
                    cout << id->idName << ":Undeclared identifier\n";
	         }
	      }
	  }
	  else{
            analyze_ForGOTO(tmp->Children[i]);
	  }

       }
   }
 
}
void Analyzer::analyze_Decl_or_Stmt_List(Node *D_or_S_Lnode,SymTable *symTbl)
{
  int i=0;
  Node *tmp = D_or_S_Lnode;
  int numBlocksEncountered = 0;
  if(!tmp)
    return;

    for(i=0;i<7;i++){

	if(tmp->Children[i] ){

	  if(tmp->Children[i]->type == Decl){
            analyze_Decl(tmp->Children[i],symTbl);
	  }
	  else{
            analyze_Decl_or_Stmt_List(tmp->Children[i],symTbl,numBlocksEncountered);
	  }

       }
   }
}


void Analyzer::analyze_Decl(Node *Decl_node,SymTable *symTbl)
{
 Type_t type;

  if(Decl_node->type != Decl){
    printf("Invalid node\n");
    return ;
  }

  //get the type first
  Node *temp = Decl_node;
  while(temp && temp->type != Decl_Spec){
    temp = temp->Children[0];      
  }

  if(temp && temp->type == Decl_Spec){
     analyze_Decl_Spec(temp,type); 
  }

  analyze_Init_Decl_list(Decl_node->Children[1],symTbl,type);
}

void Analyzer::analyze_Init_Decl_list(Node *init_decl_node,SymTable *symTbl,Type_t type)
{
  Node *temp = init_decl_node;
  char *name;
  int depth=0;
  int numArrayElems=0;

  for(int i=0;i<7;i++){

   if(temp->Children[i]) { 

    if(temp->Children[i]->type == Init_Decl){ 
      temp = temp->Children[i];

      while(temp->type != Declarator && temp->Children[0]){ //follow leftmost - always 0 index
        temp = temp->Children[0];
      }

      if(temp->type == Declarator){ 
	 analyze_Declarator(temp,symTbl,type,name,depth,numArrayElems);
      }

    }else if(temp->Children[i]->type == Init_Decl_list){
      analyze_Init_Decl_list(temp->Children[i],symTbl,type);
    }
   }

  }

}


char *Analyzer::getFuncName(struct Node *node)
{
   char *name;
   TypeEntry *e;

   SymTable *tbl = symTblMgr.getTable(0,0); //since func defn's always at 0,0

   if(!tbl || !node){
    printf("getTable failed\n");
    return NULL;
   }

   if(node->Children[0] && node->Children[0]->type == Func_Defn_Spec){
	     analyze_Func_Defn_Spec(node->Children[0],tbl,name);
   }

   if(!symTblMgr.lkupWholeTable(name,e,tbl)){
    printf("Lkup for func %s failed\n",name);
    return NULL;
   }

   return name;
}



//-------------------------Type checking stuff-------------------
void Analyzer::analyze_Type(Node *node)
{
 int i=0;
 Node *tmp = node;

 if(!tmp){
   return;
 }

 if(tmp->type == Expr){
    getType(tmp);
 }else{
    for(i=0;i<7;i++){
       if(tmp->Children[i]){
           analyze_Type(tmp->Children[i]);
       }
    }
 }
}

TypeInfo* Analyzer::getType(Node *node)
{ 
  Node *tmp = node; 
  if(tmp){

    if(tmp->type == Op){
       Op_Node *op = (Op_Node *)tmp;
       if(op->numOperands == 1){
            TypeInfo *t = getType(op->Children[0]);
	    return checkUnaryCompatibility(op,t);
       }else if(op->numOperands == 2){
            TypeInfo* t1,*t2;
	    t1 = getType(op->Children[0]);
	    t2 = getType(op->Children[1]);
	    return checkBinaryCompatibility(op,t1,t2);
       }

    }else if(tmp->type == Identifier){
       Id_Node *id = (Id_Node *)tmp;
       if(id->entry && id->cInfo){
	   *(id->cInfo) = *(id->entry->typeInfo);
	   return id->cInfo;
       }
       else{
             printf("No entry found\n");
	     return NULL;
       }
    }else if(tmp->type == Constant){
         if(tmp->Children[0] && tmp->Children[0]->type == IntConst){
            IntConst_Node *i = (IntConst_Node *)tmp->Children[0];
	    *(i->cInfo) = *(i->tInfo);
	    return i->cInfo;
	 }else
         if(tmp->Children[0] && tmp->Children[0]->type == CharConst){
            CharConst_Node *c = (CharConst_Node *)tmp->Children[0];
	    *(c->cInfo) = *(c->tInfo);
	    return c->cInfo;
	 }else{
            StrConst_Node *s = (StrConst_Node *)tmp->Children[0];
	    *(s->cInfo) = *(s->tInfo);
	    return s->cInfo;
	 }

    }else if(tmp->type == Paren_Expr){
	 Expr_Node *e = (Expr_Node *)tmp;
	 TypeInfo *retInfo = getType(e->Children[1]);
	 if(retInfo){
	 *(e->tInfo) = *retInfo; 
	 *(e->cInfo) = *(e->tInfo);
	 return retInfo;
	 }else{
           return e->tInfo;
	 }
    }else if(tmp->type == Expr || tmp->type == Func_Call){
	 Expr_Node *e = (Expr_Node *)tmp;
	 TypeInfo *retInfo = getType(e->Children[0]);
	 if(retInfo){
	 *(e->tInfo) = *retInfo; 
	 *(e->cInfo) = *(e->tInfo);
	 return retInfo;
	 }else{
           return e->tInfo;
	 }
    }

  }
}

TypeInfo* Analyzer::checkUnaryCompatibility(Op_Node *op,TypeInfo *t1)
{
  TypeInfo *resInfo = new TypeInfo;
  if(resInfo)
     resInfo->type = UNKNOWN;

  if(t1 == NULL || resInfo == NULL){
     printf("Invalid type\n");
     return NULL;
  }

 switch(op->opType){
   case ADD:
   case SUB:
   case COM:
      if(t1->ptrDepth){
	 t1->type == UNKNOWN;
      }
      if(getUnaryConversion(t1) == false){
	 t1->type == UNKNOWN;
         *resInfo = *t1;
      }

   case NOT:
      if(getUnaryConversion(t1) == false){
	 t1->type == UNKNOWN;
      }
      resInfo->assignType(signed_int_);
      break;
   case AND:
      if(!t1->lvalue){
	 printf("Invalid operand for addressof \n");
	 break;
      }
         *resInfo = *t1;
	 resInfo->ptrDepth = t1->ptrDepth+1;
	 break;
   case MUL:
      if(!t1->ptrDepth){
	 printf("Invalid operand for indirection \n");
	 break;
      }
         *resInfo = *t1;
	 resInfo->ptrDepth = t1->ptrDepth-1;
	 resInfo->lvalue = true;
	 break;


   case INC:
   case DEC:

   if(t1->type == func || t1->type == UNKNOWN || t1->type == label || t1->type == void_){
         printf("Incompatible types\n");
	 t1->type == UNKNOWN;
   }
   break;

   default:
         printf("Incompatible types\n");
	 t1->type == UNKNOWN;
 }
  
  *(op->tInfo) = *(resInfo);
  return resInfo;
}


bool Analyzer::getUnaryConversion(TypeInfo *t)
{
 switch(t->type){
   case signed_short_int_:
   case signed_int_:
   case signed_long_int_:
   case unsigned_short_int_:
   case unsigned_int_:
   case unsigned_long_int_:
   case unsigned_char_:
   case signed_char_:

      if(t->conRank < 40){
        t->assignType(signed_int_);
      }
      return true;

   default:
      return false;
 }
}

TypeInfo* Analyzer::checkBinaryCompatibility(Op_Node *op,TypeInfo *t1,TypeInfo *t2)
{
  TypeInfo *resInfo = new TypeInfo;

  if(t1 == NULL || t2 == NULL || resInfo == NULL){
     printf("Invalid type\n");
     return NULL;
  }

 switch(op->opType){
   case ADD:
   case SUB:
   case MUL:
   case AND:
   case NOT:
   case COM:
   case INC:
   case DEC:
   case EQ:
   case LT:
   case GT:
   case LS:
   case RS:

   if(t1->type == func || t1->type == UNKNOWN || t1->type == label || t1->type == void_){
         printf("Incompatible types\n");
	 return false;
   }

   if(op->numOperands == 2 && t2){
     if(t2->type == func || t2->type == UNKNOWN || t2->type == label || t2->type == void_){
         printf("Incompatible types\n");
	 return false;
     }
   }
    break;
   default:
         printf("Incompatible types\n");
    return NULL; 

 }

  *(op->tInfo) = *(resInfo);
  return resInfo;
}
