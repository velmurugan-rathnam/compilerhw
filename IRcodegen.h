#ifndef IRCODEGEN
#define IRCODEGEN


#include "symbolTable.h"
#include "parser.h"
#include <iomanip.h>
#include <stdlib.h>

extern char *getTokenStr(int id);

enum OperandType {
 iden,
 temp,
 target_label,
 fn_retval,
 str_cons,
 int_cons,
 char_cons,
};

enum IRType{
 regular,
 branch,
 fn_lbl,
 br_lbl,
 passarg,
 fncall,
 fnreturn,
 exitins,
};

struct Operand {

  Operand(){
      tempId = 0;
      stEntry = NULL;
  }

  void print(int pos){
     if(type == iden || type == str_cons || type == target_label) 
        cout  << " " << setw(pos) << name.c_str();
     if(type == temp)
	cout << "T" << setw(pos) <<  tempId;
     if(type == char_cons)
	cout << " " << setw(pos) << (char)tempId;
     if(type == int_cons)
	cout << " " << setw(pos) << tempId;
     if(type == fn_retval)
	cout << " " << setw(pos) << "Func Retval";
  } 

  void operator=(Operand& rhs){
      name = rhs.name;
      tempId = rhs.tempId;
      type = rhs.type;
      stEntry = rhs.stEntry;
      tInfo = rhs.tInfo;
  }

 string name;			//also used as value for string const
 int tempId;                    //also used as value for int const,char const
 OperandType type;
 TypeEntry *stEntry;		//symbol table entry 
 TypeInfo tInfo;
};



struct OperatorInfo{
  int op;
  int numOpers;
};


struct Quadruple {

  void print(int pos){
     if(res) res->print(pos);
     if(operand1) operand1->print(pos);

     if(opInfo)
        cout << " " << setw(pos) <<  getTokenStr(opInfo->op);

     if(operand2) operand2->print(pos);
  }

  Quadruple(OperatorInfo* oper,Operand *o1,Operand *o2,Operand *r){
       opInfo = oper;
       numEntries=4;
       operand1 = o1;
       operand2 = o2;
       res = r;

       if(!opInfo)numEntries--;
       if(!operand1)numEntries--;
       if(!operand2)numEntries--;
       if(!res)numEntries--;

  }

  OperatorInfo *opInfo;  
  Operand *operand1;
  Operand *operand2;
  Operand *res;

  int numEntries;
};

struct IR_Node {

 void print(int pos){
     if(type == branch){
       cout <<  "Branch:" << label << "  ";
     }

     if(type == fn_lbl || type == br_lbl){
       cout << setw(pos) << label << ":\n";
     }

     if(type == fncall){
       cout << setw(pos) << "jump"  << label << "\n";
     }
     if(type == passarg){
       cout << setw(pos) << "passarg";
     }
     if(type == exitins){
       cout << setw(pos) << label;
     }
     if(type == fnreturn){
       cout << setw(pos) << "return";
     }

     if(q)
       q->print(pos);
 }
 
 IR_Node(Quadruple *quad){
    q = quad;
    next = NULL;
    prev = NULL;
    type = regular;
 }

 string label;
 IRType type;
 Quadruple *q;
 IR_Node *next;
 IR_Node *prev;
};


struct OperandList {			//Linked list of Operands for linearizing expr_list
   OperandList(){
      operand = NULL;
      next=NULL;
   }

   Operand *operand;
   OperandList *next;
};

class IRGen {
public:
 IRGen();
 IR_Node *getHead(){return head;}
 IR_Node *generateIR(Node *node);
 void codegen(struct Node *root);
 Operand *genExprCode(Node *node);
 void addIRNode(OperatorInfo* op,Operand *res,Operand *o1,Operand *o2);
 void addBranchInstruction(string lbl);
 void addFnLabelInstruction(string lbl);
 void addLabelInstruction(string lbl,IRType type);
 void addReturnInstruction(bool retval);
 void addPassArgInstruction(Operand *o);
 void addExitInstruction();
 void addFnCallInstruction(string fn_name);
 void linearizeExprList(Node *node,OperandList *&list);
 void addToOperandList(OperandList*& head,Operand* newEntry);
 void addNode(string lbl,IRType type,Quadruple *q);
 void print();
 int getTempId(){
   return ++tId;
 }

 string getLabel(char *l){
     char tmp[10];
     labelId++;
     sprintf(tmp,"%d",labelId);
     string label = l;
     label = label+tmp;
     return label;
 }

 private:
 IR_Node *head;
 IR_Node *tail;
 int tId;
 int labelId;
};


#endif//IRCODEGEN
