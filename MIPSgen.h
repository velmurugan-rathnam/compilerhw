#ifndef MIPS_GEN
#define MIPS_GEN

#include "symbolTable.h"
#include "IRcodegen.h"

enum RegType {  
  zro,
  assembler,
  evaluation,
  arg,
  tmp,
  stmp,
  kernel,
  gp,
  sp,
  fp,
  ra,
  invalid 
};

struct OperMap {
  int op;
  string mipsOpCode;
  bool immPostfix;
};

struct RegDesc {

  void assign(OperandType t,int id,TypeEntry *e)
  {
    stEntry = e; 
    assign(t,id);
  }

  void assign(OperandType t,int id){
    cType = t;
    cId = id;
  }

  void setBusy(){
     inuse = true;
  }
  void setFree(){
     inuse = false;
  }

  bool matchContent(TypeEntry *e)
  {
     if(stEntry == e)
       return true;
     else
       return false;
  }
  bool matchContent(int id)
  {
     if(id == cId)
       return true;
     else
       return false;
  }
    
  string name;
  int id;
  bool inuse;
  RegType rType;

  Type_t  cTypeInfo;	//content basic type
  OperandType  cType;
  int cId;		// content id - for tempIds and int constnants
  TypeEntry *stEntry;	//symbolTable entry for comparison 
};

struct Mips_asmbly {
   string ins;
   Mips_asmbly *next;
   Mips_asmbly *prev;
};


class MipsGen {
public:
   MipsGen();
   void generateMIPS(IR_Node *ir,SymTableMgr *tblMgr);
   RegDesc *getReg(RegType type);
   RegDesc* findReg(RegType type,int contentId);
   RegDesc* findReg(RegType type,TypeEntry *e);
   void print();
   bool addIns(string,string,string,string);
   bool gcUnaryOp(Quadruple *q);
   void gcRegularIns(IR_Node *ir);
   void gcBranchIns(IR_Node *ir);
   void gcFnLabelIns(IR_Node *ir);
   void gcBrLabelIns(IR_Node *ir);
   void gcFnCallIns(IR_Node *ir);
   void gcPassArgIns(IR_Node *ir,int argnum);
   void gcReturnIns(IR_Node *ir);
   void gcExitIns(IR_Node *ir);
   string getOpCode(int op);
   bool gcOperand(Operand *op,string& res);
   bool gcResult(Operand *result,string& res);
   bool gcBinaryOp(Quadruple *q);
   bool gcAssignmentOperator(Quadruple *q);
   void gcStaticStorage();

   Mips_asmbly *head;
   Mips_asmbly *tail;

private:
  SymTableMgr *symTblMgr;

};
#endif  //MIPS_GEN
