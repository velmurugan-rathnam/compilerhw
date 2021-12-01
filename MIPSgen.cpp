#include "MIPSgen.h"
#include "y.tab.h"
#include "symbolTable.h"

RegDesc rdesc[] = {
		    {"zero",0,false,zro,UNKNOWN,temp,0,NULL},
		    {"at",1,false,assembler,UNKNOWN,temp,0,NULL},
		    {"$v0",0,false,evaluation,UNKNOWN,temp,0,NULL},
		    {"$v1",1,false,evaluation,UNKNOWN,temp,0,NULL},
		    {"$a0",0,false,arg,UNKNOWN,temp,0,NULL},
		    {"$a1",1,false,arg,UNKNOWN,temp,0,NULL},
		    {"$a2",2,false,arg,UNKNOWN,temp,0,NULL},
		    {"$a3",3,false,arg,UNKNOWN,temp,0,NULL},
		    {"$t0",0,false,tmp,UNKNOWN,temp,0,NULL},
		    {"$t1",1,false,tmp,UNKNOWN,temp,0,NULL},
		    {"$t2",2,false,tmp,UNKNOWN,temp,0,NULL},
		    {"$t3",3,false,tmp,UNKNOWN,temp,0,NULL},
		    {"$t4",4,false,tmp,UNKNOWN,temp,0,NULL},
		    {"$t5",5,false,tmp,UNKNOWN,temp,0,NULL},
		    {"$t6",6,false,tmp,UNKNOWN,temp,0,NULL},
		    {"$t7",7,false,tmp,UNKNOWN,temp,0,NULL},
		    {"$t8",8,false,tmp,UNKNOWN,temp,0,NULL},
		    {"$t9",9,false,tmp,UNKNOWN,temp,0,NULL},
		    {"$s0",0,false,stmp,UNKNOWN,temp,0,NULL},
		    {"$s1",1,false,stmp,UNKNOWN,temp,0,NULL},
		    {"$s2",2,false,stmp,UNKNOWN,temp,0,NULL},
		    {"$s3",3,false,stmp,UNKNOWN,temp,0,NULL},
		    {"$s4",4,false,stmp,UNKNOWN,temp,0,NULL},
		    {"$s5",5,false,stmp,UNKNOWN,temp,0,NULL},
		    {"$s6",6,false,stmp,UNKNOWN,temp,0,NULL},
		    {"$s7",7,false,stmp,UNKNOWN,temp,0,NULL},
		    {"$k0",0,false,kernel,UNKNOWN,temp,0,NULL},
		    {"$k1",1,false,kernel,UNKNOWN,temp,0,NULL},
		    {"$gp",1,false,gp,UNKNOWN,temp,0,NULL},
		    {"$sp",1,false,sp,UNKNOWN,temp,0,NULL},
		    {"$fp",1,false,fp,UNKNOWN,temp,0,NULL},
		    {"$ra",1,false,ra,UNKNOWN,temp,0,NULL},
		    {"",0,false,invalid,UNKNOWN,temp,0,NULL},
		  }; 



OperMap opMap []  = { 
                      {ADD,"add",true},
                      {AND,"and",true},
                      {OR,"or",true},
                      {MOD,"rem",false},
                      {LS,"rol",false},
                      {RS,"ror",false},
                      {SUB,"sub",false},
                      {XOR,"xor",true},
                      {COMP,"seq",false},
                      {GT,"sgt",false},
                      {LT,"slt",true},
		      {0,""}
		    };

MipsGen::MipsGen()
{
  head = NULL;
  tail = NULL;
}


void MipsGen::generateMIPS(IR_Node *ir,SymTableMgr *tblMgr)
{
 symTblMgr = tblMgr;
 int i=0;
 gcStaticStorage();
 addIns("\t.text","","","");
 addIns("\t.globl","main","","");

 if(ir == NULL){
   return;
 }

 IR_Node *tmp = ir;
 while(tmp){

 switch(tmp->type){
   case regular:
     gcRegularIns(tmp);
     break;
   case br_lbl:
     gcBrLabelIns(tmp);
     break;
   case fn_lbl:
     gcFnLabelIns(tmp);
     break;
   case branch:
     gcBranchIns(tmp);
     break;
   case exitins:
     gcExitIns(tmp);
     break;
   case fnreturn:
     gcReturnIns(tmp);
     break;
   case passarg:
     i=0;
     IR_Node *current;
     while(tmp && tmp->type == passarg){
       gcPassArgIns(tmp,i);
       i++;
       current = tmp;
       tmp = tmp->next;
     }
     tmp = current;
     break;
   case fncall: //nasty trick this one and above. 
     gcFnCallIns(tmp);
     break;
   default:
     ;
 }
   tmp = tmp->next;//handle next IR 
 }

}

void MipsGen::gcBrLabelIns(IR_Node *ir)
{
 if(!ir){
   cout << "IR Empty\n";
   return;
 }

 addIns(ir->label+":","","","");
}
void MipsGen::gcExitIns(IR_Node *ir)
{
 if(!ir){
   cout << "IR Empty\n";
   return;
 }

 addIns("li","$v0","10","");
 addIns("syscall","","","");
}

void MipsGen::gcFnCallIns(IR_Node *ir)
{
 if(!ir){
   cout << "IR Empty\n";
   return;
 }

 addIns("jal",ir->label,"","");
}


void MipsGen::gcPassArgIns(IR_Node *ir,int argnum)
{
 string opcode;
 string arg1,arg2,res;
 Quadruple *q;
 RegDesc *r;

 if(!ir){
   cout << "IR Empty\n";
   return;
 }
 q = ir->q;  //get the quaruple.
 if(!q || !q->operand1){
   cout << "Quadruple Empty\n";
   return;
 }

 gcOperand(q->operand1,arg1); 
 if(q->operand1->type == int_cons){
   r = getReg(tmp);
   if(r){
     //r->setBusy();
     addIns("li",r->name,arg1,"");
     arg1 = r->name;
   }
 }

 opcode = "sw";
 char address[10];
 sprintf(address,"%d",(argnum+1)*4);
 arg2 = address;
 arg2 += "($sp)";

 addIns(opcode,arg1,arg2,"");
 if(r){
  r->setFree();
 }
}


void MipsGen::gcBranchIns(IR_Node *ir)
{
 string opcode;
 string arg1,arg2,res;
 Quadruple *q;
 if(!ir){
   cout << "IR Empty\n";
   return;
 }
 q = ir->q;  //get the quaruple.
 if(!q || !q->res){
   cout << "Quadruple Empty\n";
   return;
 }

 if(q->operand1){	//conditional branch based on operand1.
    opcode = "beqz";
    gcOperand(q->operand1,res);
 }else{			//unconditional branch.
    opcode = "b";
 }			
 arg1 = q->res->name;	//get the target label.
 addIns(opcode,res,arg1,arg2);
}

void MipsGen::gcReturnIns(IR_Node *ir)
{
 Quadruple *q;
 string res;

 if(!ir){
   cout << "IR Empty\n";
   return;
 }

 q = ir->q;  //get the quaruple.
 if(q){
  Operand *o = q->operand1;
  if(o)
    gcOperand(o,res);
  else{
     cout << "Invalid operand\n";
     return;
  }

  addIns("move","$v0",res,"");
 }

  addIns("lw","$ra","0($sp)","");
  addIns("move","$sp","$fp","");
  addIns("jr","$ra","","");
}

void MipsGen::gcFnLabelIns(IR_Node *ir)
{
 char strg[10];
 char name[128];
 strcpy(name,ir->label.c_str());
 if(!ir){
   cout << "IR Empty\n";
   return;
 }
 addIns(ir->label+":","","","");
 addIns("move","$fp","$sp","");


 if(ir->label != "main"){
    int storage = symTblMgr->getFuncStorage(name);
    sprintf(strg,"%d",storage+4);

    addIns("addi","$sp","$sp",strg);
    addIns("sw","$ra","0($sp)","");
 }

}


void MipsGen::gcRegularIns(IR_Node *ir)
{
 Quadruple *q;
 int op=0;
 int numOps=0;

 if(!ir){
   cout << "IR Empty\n";
   return;
 }

 q = ir->q;  //get the quaruple.
 if(!q){
   cout << "Quadruple Empty\n";
   return;
 }
  
  if(q->opInfo){
     op = q->opInfo->op;
     numOps = q->opInfo->numOpers;
  }else{

  }

  if(numOps == 2){
     switch(op){
      case ADD:
      case AND:
      case SUB:
      case LT:
      case GT:
      case MOD:
      case OR:
      case XOR:
      case COMP:
      case LS:
      case RS:
       gcBinaryOp(q);
       break;
      case EQ:
       gcAssignmentOperator(q);
       break;
      default:
       ;
     }
  }else{
    switch(op){
     case SUB:
     case COM:
      gcUnaryOp(q);
      break;
    }

  }

}

bool MipsGen::gcUnaryOp(Quadruple *q)
{
 string opcode;
 string arg1,arg2,res;

 if(!q || !q->operand1 || !q->res || !q->opInfo){
   cout << "Quadruple Invalid\n";
   return false;
 }

 switch(q->opInfo->op){
   case SUB:
     opcode = "neg";
     break;
   case COM:
     opcode = "not";
     break;
 }

 gcOperand(q->operand1,arg1);
 gcResult(q->res,res);

 if(q->operand1->type == int_cons){
    addIns("li",res,arg1,"");
    arg1=res;
 }

 addIns(opcode,res,arg1,arg2);
 return true;
}

bool MipsGen::gcAssignmentOperator(Quadruple *q)
{
 string opcode;
 string arg1,arg2,res;
 RegDesc *r;

 if(!q || !q->operand1 || !q->res || !q->opInfo){
   cout << "Quadruple Invalid\n";
   return false;
 }
 gcOperand(q->operand1,arg1);

 if(q->operand1->type == int_cons){
    r = getReg(tmp);
    if(r){
       r->setBusy();
      addIns("li",r->name,arg1,"");
      arg1 = r->name;
    }
 }

 gcResult(q->res,res);
 cout << res << endl;
 addIns("move",res,arg1,"");
 addIns("sw",arg1,q->res->stEntry->sInfo.address,"");
 if(r)
   r->setFree();
}

bool MipsGen::gcBinaryOp(Quadruple *q)
{
 string opcode;
 string arg1,arg2,res;
 RegDesc *r;

 if(!q || !q->operand1 || !q->operand2 || !q->res || !q->opInfo){
   cout << "Quadruple Invalid\n";
   return false;
 }
 opcode = getOpCode(q->opInfo->op);
 if(q->operand1->type == int_cons || q->operand2->type == int_cons){
	opcode += "i";
 }

 gcOperand(q->operand1,arg1);
 gcOperand(q->operand2,arg2);
 gcResult(q->res,res);

 if(q->operand1->type == int_cons && q->operand2->type == int_cons){
    addIns("li",res,arg1,"");
    arg1=res;
 }

 addIns(opcode,res,arg1,arg2);
 return true;
}


string MipsGen::getOpCode(int op)
{
  int i=0;
  for(i=0;opMap[i].op != 0;i++){
     if(opMap[i].op == op){
       return opMap[i].mipsOpCode;
     }
  }

  if(opMap[i].op == 0){
  	cout << "Error finding opcode\n";
  	return opMap[i].mipsOpCode;
  }
}

bool MipsGen::gcResult(Operand *result,string& res)   		//code gen for q-ple result.
{
 RegDesc *r;
 string oper;
 string arg1;
 string arg2;
 string arg3;

 if(!result){
    cout << "Invalid operand\n";
    res = "";
    return false; 
 }

 switch(result->type){

      case iden:
	  r = findReg(tmp,result->stEntry);
	  if(r){
             res = r->name;
	  }else{
	  	r = getReg(tmp);
	  	if(r){
           	 r->setBusy();
	   	 r->assign(result->type,result->tempId,result->stEntry);
	   	 arg1 = r->name;
           	 oper = "lw";
		 if(result->stEntry)
	  	   arg2 = result->stEntry->sInfo.address;
		 else{
		   cout << "Symbol table entry not found\n";
		   res = "";
		   return false;
		 }
          	 addIns(oper,arg1,arg2,arg3);
	   	 res = arg1;
          	}
	  }
	break;

   case temp:
	    r = getReg(tmp);
	    if(r){
	      res = r->name;
              r->setBusy();
	      r->assign(result->type,result->tempId);
            }
        break;
 }

 return true;
}

bool MipsGen::gcOperand(Operand *op,string& res)		//code gen for q-ple operands
{
 RegDesc *r;
 string oper;
 string arg1;
 string arg2;
 string arg3;
 char constVal[128];
 
 if(!op){
    cout << "Invalid operand\n";
    res = "";
    return false; 
 }


 switch(op->type){
   case fn_retval:
	 res = "$v0";
	 return true;
   case iden:
	  r = findReg(tmp,op->stEntry);
	  if(r){
             res = r->name;
	  }else{
	  	r = getReg(tmp);
	  	if(r){
           	 r->setBusy();
	   	 r->assign(op->type,op->tempId,op->stEntry);
	   	 arg1 = r->name;
           	 oper = "lw";
		 if(op->stEntry)
	  	   arg2 = op->stEntry->sInfo.address;
		 else{
		   cout << "Symbol table entry not found\n";
		   res = "";
		   return false;
		 }
          	 addIns(oper,arg1,arg2,arg3);
	   	 res = arg1;
          	}
	  }
	break;
   case temp:
            r = findReg(tmp,op->tempId);
	    if(r){
               res = r->name;
	    }
        break;
   case int_cons:
         sprintf(constVal,"%d",op->tempId);
	 res = constVal;
	 break;
 }

 return true;
}


RegDesc *MipsGen::findReg(RegType type,TypeEntry *e)
{
  int i=0;
  for(i=0;rdesc[i].rType != invalid;i++){
      if(rdesc[i].rType == type){
         if(rdesc[i].matchContent(e)){
	   return &rdesc[i];
	   }
      }
  }

  return NULL;
}


RegDesc *MipsGen::findReg(RegType type,int contentId)
{
  int i=0;
  for(i=0;rdesc[i].rType != invalid;i++){
      if(rdesc[i].rType == type){
         if(rdesc[i].matchContent(contentId)){
	   return &rdesc[i];
	   }
      }
  }

  cout << "Find Reg not available\n";
  return NULL;
}


RegDesc *MipsGen::getReg(RegType type)
{
  int i=0;
  for(i=0;rdesc[i].rType != invalid;i++){
      if(rdesc[i].rType == type){
         if(rdesc[i].inuse == false){
	   return &rdesc[i];
         }
      }
  }

  cout << "Reg not available\n";
  return NULL;
}

bool MipsGen::addIns(string oper,string arg1,string arg2,string arg3)
{
 string ins = oper + "\t";
 if(arg1 != "")
    ins += arg1;
 if(arg2 != "")
    ins += "," + arg2;
 if(arg3 != "")
    ins += "," + arg3;

 if(head && tail){
    tail->next = new Mips_asmbly();
    tail->next->prev = tail;
    tail = tail->next;
 }else{
    head = new Mips_asmbly();
    tail = head;
 }

 tail->ins = ins;
 return true;
}

void MipsGen::print()
{
  Mips_asmbly *tmp = head;

  cout << "-------------------MIPS Code----------------------" << endl;
  while(tmp){
    cout << tmp->ins << endl;
    tmp = tmp->next;
  }
  cout << "--------------------------------------------------" << endl;

}

void MipsGen::gcStaticStorage()
{
  string storage;
  string entrylabel;
  int storageAmount;
  TypeEntry *entry;

  if(!symTblMgr){
     cout << "No symbol table mgr\n";
     return;
  }

  SymTable *globalBlk = symTblMgr->getTable(0,0);
  entry = globalBlk->list;
  addIns("\t.data","","","");

  while(entry){
     entrylabel = entry->name; 
     entrylabel += ":";
     if(entry->typeInfo){
        if(entry->typeInfo->isarray()){
	  char size[10];
	  ArrayTypeInfo *aInfo = (ArrayTypeInfo *)entry->typeInfo;
	  storage = ".space";
	  storageAmount = 4 * (aInfo->getSize());
	  sprintf(size,"%d",storageAmount);
	  string s = size;
	  s =  "\t" + s;
          addIns(entrylabel,storage+s,"","");
	}else if(!entry->typeInfo->isvoid() &&
		 !entry->typeInfo->isfunc() &&
                 !entry->typeInfo->islabel() &&
                 !entry->typeInfo->isunknown()){
	  storage = ".word";
	  storage += "\t";
	  storage += "0";
          addIns(entrylabel,storage,"","");
        }
     }

     entry = entry->next;
  }
}

