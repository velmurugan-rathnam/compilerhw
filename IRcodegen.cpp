#include "IRcodegen.h"
#include "y.tab.h"
#include "analyzer.h"


IRGen::IRGen(){
   head = NULL;
   tail = NULL;
   tId=0;
   labelId = 0;
}

IR_Node *IRGen::generateIR(Node *node){
 
 codegen(node);

 if(head)
   return head;
 else
   return NULL;
}

void IRGen::codegen(Node *node){
 int i=0;
 Node *tmp = node;
 Analyzer *analyzer = Analyzer::Instance();

 if(!tmp || !analyzer){
   return; 
 }

 if(tmp->type == If_Stmt || tmp->type == If_Else_Stmt){
    string label = getLabel("if");
    codegen(tmp->Children[2]);
    addBranchInstruction(label);
    codegen(tmp->Children[4]);
    addLabelInstruction(label,br_lbl);

    if(tmp->type == If_Else_Stmt){
         codegen(tmp->Children[6]);
    }
 }else
 if(tmp->type == Func_Defn){
   char *name = analyzer->getFuncName(tmp);
   if(name){
    addFnLabelInstruction(name);
   }
    for(i=0;i<7;i++){ //continue with code gen
       if(tmp->Children[i]){
           codegen(tmp->Children[i]);
       }
    }
    if(strcmp(name,"main") == 0){
     addExitInstruction();
    }

 }else
 if(tmp->type == Return_Stmt){
     if(tmp->Children[1] && tmp->Children[1]->type == Expr){
       codegen(tmp->Children[1]);
       addReturnInstruction(true);
     }else{
       addReturnInstruction(false);
     }
 }else
 if(tmp->type == Expr){
    genExprCode(tmp);
 }else{
    for(i=0;i<7;i++){
       if(tmp->Children[i]){
           codegen(tmp->Children[i]);
       }
    }
 }

}

void IRGen::addExitInstruction()
{
  addNode("exit",exitins,NULL);
}


void IRGen::addFnCallInstruction(string l)
{
  addNode(l,fncall,NULL);
}

void IRGen::addFnLabelInstruction(string l)
{
  addNode(l,fn_lbl,NULL);
}

void IRGen::addLabelInstruction(string l,IRType type)
{
  addNode(l,type,NULL);
}

void IRGen::addPassArgInstruction(Operand *o)
{
 if(!o){
   cout << "Error Operand\n";
   return;
 }
 Quadruple *q = new Quadruple(0,o,0,0);
  if(!q){
      printf("Error creating quadrulpe.new failed\n");
      return;
  }
  
  addNode("",passarg,q);
}


void IRGen::addReturnInstruction(bool retval)
{
  Operand *o;
  if(retval){
    o = new Operand(); 
     if(!o){
      cout << "Error creating Operand\n";
      return;
    }

    if(tail){
      if(tail->q && tail->q->res)
        *o = *(tail->q->res);
      Quadruple *q = new Quadruple(0,o,0,0);
      if(!q){
         printf("Error creating quadrulpe.new failed\n");
         return;
     }
     addNode("",fnreturn,q);
   }
  }else{
     addNode("",fnreturn,0);
  }
}


void IRGen::addBranchInstruction(string lbl)
{
 Operand *o = new Operand();
 Operand *res = new Operand();

 if(!o || !res){
   cout << "Error creating Operand\n";
   return;
 }

 if(tail){
    if(tail->q && tail->q->res)
      *o = *(tail->q->res);
 }

 res->type = target_label;
 res->name = lbl;
 Quadruple *q = new Quadruple(0,o,0,res);
  if(!q){
      printf("Error creating quadrulpe.new failed\n");
      return;
  }

  addNode("",branch,q);
}

void IRGen::addIRNode(OperatorInfo* op,Operand *res,Operand *o1,Operand *o2)
{
  Quadruple *q = new Quadruple(op,o1,o2,res);
  if(!q){
      printf("Error creating quadrulpe.new failed\n");
      return;
  }
  
  addNode("",regular,q);
}

void IRGen::addNode(string lbl,IRType type,Quadruple *q)
{
  if(head && tail){
    tail->next = new IR_Node(q);
    tail->next->prev = tail;
    tail = tail->next;

  }else{
      head = new IR_Node(q);
      tail =head;
  }

  tail->type = type;
  tail->label = lbl;
}


void IRGen::print(){
cout.setf(ios::left,ios::adjustfield);
IR_Node *tmp = head;
   cout << "-------------------IR Code----------------------" << endl;  
   while(tmp){
	tmp->print(10);
	cout << endl;
	tmp = tmp->next;
   }
   cout << "------------------------------------------------" << endl;  
}

void IRGen::linearizeExprList(Node *node,OperandList *&head)
{
  Node *tmp = node;
  if(tmp){
    if(tmp->type == Expr_List){
       if(tmp->Children[0] && tmp->Children[0]->type == Expr_List){//assume 3 children
	 if(tmp->Children[2])
	  addToOperandList(head,genExprCode(tmp->Children[2]));
         if(tmp->Children[0])
	  linearizeExprList(tmp->Children[0],head);
       }else if(tmp->Children[0] && tmp->Children[0]->type == Expr){
	  addToOperandList(head,genExprCode(tmp->Children[0]));
       }
    }
  }
}

void IRGen::addToOperandList(OperandList*& head,Operand* newEntry)
{
  if(head && newEntry){
      OperandList *o = new OperandList();
      o->next = head;
      o->operand = newEntry;
      head = o;
  }else if(newEntry){
      head = new OperandList();
      head->operand = newEntry;
      head->next = NULL;
  }else{
     cout << "NULL arguments\n";
     return;
  }
}

Operand* IRGen::genExprCode(Node *node)
{ 
  Node *tmp = node; 
  if(tmp){

    if(tmp->type == Op){
       Op_Node *op = (Op_Node *)tmp;
       if(op->numOperands == 1){
            Operand *o = genExprCode(op->Children[0]);
	    Operand *res = new Operand();
	    Operand *copyres = new Operand();
	    OperatorInfo *opInfo = new OperatorInfo;
	    opInfo->op = op->opType;
	    opInfo->numOpers = op->numOperands;
	    res->type = temp;
	    res->tInfo = *(op->tInfo);
	    res->tempId = getTempId();
	    addIRNode(opInfo,res,o,NULL);
	    *copyres = *res;
	    return copyres; 
       }else if(op->numOperands == 2){
            Operand *o1,*o2;
	    OperatorInfo *opInfo = new OperatorInfo;
	    opInfo->op = op->opType;
	    opInfo->numOpers = op->numOperands;
	    o1 = genExprCode(op->Children[0]);
	    o2 = genExprCode(op->Children[1]);
	    Operand *res;
	    Operand *copyres = new Operand();
	    if(op->opType == EQ){
                res = o1;
		o1 = o2;
		o2 = NULL;
	        addIRNode(opInfo,res,o1,o2);
	    }else{
	      res = new Operand();
	      res->type = temp;
	      res->tInfo = *(op->tInfo);
	      res->tempId = getTempId();
	      addIRNode(opInfo,res,o1,o2);
	    }
	    *copyres = *res;
	    return copyres; 
       }

    }else if(tmp->type == Identifier){
       Id_Node *id = (Id_Node *)tmp;
       if(id->entry && id->cInfo){
	
	Operand *op = new Operand;
	  if(!op){
             printf("new failed for op\n");
	     return NULL;
	  }
	  op->name = id->idName;
	  op->type = iden;
          op->tInfo = *(id->cInfo);
	  op->stEntry = id->entry;
          return op;
       }
       else{
             printf("No entry found\n");
	     return NULL;
       }
    }else if(tmp->type == Constant){
         if(tmp->Children[0] && tmp->Children[0]->type == IntConst){
            	IntConst_Node *i = (IntConst_Node *)tmp->Children[0];
	  	Operand *op = new Operand;
	  	if(!op){
             	printf("new failed for op\n");
	     	return NULL;
	  	}
	  	op->tempId = i->constValue;
	  	op->type = int_cons;
          	op->tInfo = *(i->cInfo);
		return op;
	 }else
         if(tmp->Children[0] && tmp->Children[0]->type == CharConst){
            	CharConst_Node *c = (CharConst_Node *)tmp->Children[0];
	  	Operand *op = new Operand;
	  	if(!op){
             	printf("new failed for op\n");
	     	return NULL;
	  	}
	  	op->tempId = (char)c->constValue;
	  	op->type = char_cons;
          	op->tInfo = *(c->cInfo);
		return op;
	 }else{
            	StrConst_Node *s = (StrConst_Node *)tmp->Children[0];
	  	Operand *op = new Operand;
	  	if(!op){
             	printf("new failed for op\n");
	     	return NULL;
	  	}
	  	op->name = s->constValue;
	  	op->type = str_cons;
          	op->tInfo = *(s->cInfo);
		return op;
	 }

    }else if(tmp->type == Paren_Expr){
	 return  genExprCode(tmp->Children[1]);
    }else if(tmp->type == Func_Call){
	 Operand *o = genExprCode(tmp->Children[0]);	//get func. name
	 Operand *retval = new Operand;
	  	if(!retval){
             	  printf("new failed for retval\n");
	     	  return NULL;
	  	}
	  	retval->name = "";
	  	retval->type = fn_retval;
          	retval->tInfo;	//ToDo:assign fn return type info 

	 if(tmp->Children[2] && tmp->Children[2]->type == Expr_List){	//handle arguments
             OperandList *list = NULL;
	     linearizeExprList(tmp->Children[2],list);

	     while(list){
                addPassArgInstruction(list->operand);
		list = list->next;
	     }
	 }

	 addFnCallInstruction(o->name);
	 return retval;
    }
    else if(tmp->type == Expr){
	 return  genExprCode(tmp->Children[0]);
    }

  }
}
