#include "parser.h"
#include "lexer.h"
#include "lexerdefs.h"
#include "symbolTable.h"
#include <iomanip.h>
#include "y.tab.h"
#include "analyzer.h"

extern Attr tokenstr[];
char currAttrVal[100];
ostream& operator<<(ostream& os,Type_t type);
TU_List *head;
TU_List *tail;

Node *createNode(char* name,NodeType type,Node *c1=0,Node *c2=0, Node* c3=0, Node* c4=0,Node *c5=0,Node *c6=0,Node *c7=0){

Node *newNode = NULL;

 switch(type){
    case Identifier:
     newNode = new Id_Node;
     strcpy(((Id_Node *)newNode)->idName ,currAttrVal);
     ((Id_Node *)newNode)->cInfo = new TypeInfo;
     break;
    case Type_terminal:
     newNode  = new Type_terminal_Node;
     break;
    case Op:
     newNode = new Op_Node;
     ((Op_Node *)newNode)->tInfo = new TypeInfo;
     break;
    case IntConst:
     newNode = new IntConst_Node;
     ((IntConst_Node *)newNode)->constValue = strtol(currAttrVal,NULL,10);
     ((IntConst_Node *)newNode)->tInfo = new TypeInfo;
     ((IntConst_Node *)newNode)->cInfo = new TypeInfo;

     if(((IntConst_Node *)newNode)->tInfo ){
         ((IntConst_Node *)newNode)->tInfo->assignType(signed_int_);
     }
     break;
    case CharConst:
     newNode = new CharConst_Node;
     ((CharConst_Node *)newNode)->constValue = (char)currAttrVal[0];
     ((CharConst_Node *)newNode)->tInfo = new TypeInfo;
     ((CharConst_Node *)newNode)->cInfo = new TypeInfo;

     if(((CharConst_Node *)newNode)->tInfo ){
         ((CharConst_Node *)newNode)->tInfo->assignType(signed_char_);
     }
     break;
    case StrConst:
     newNode = new StrConst_Node;
     strcpy(((StrConst_Node *)newNode)->constValue,currAttrVal);
     ((StrConst_Node *)newNode)->tInfo = new ArrayTypeInfo;
     ((StrConst_Node *)newNode)->cInfo = new ArrayTypeInfo;
     if(((StrConst_Node *)newNode)->tInfo ){
	  StrConst_Node *s = (StrConst_Node *)newNode;
	  s->tInfo->type = array;
	  s->tInfo->arrayType = signed_char_;
	  
     }
     break;
    case Expr:
    case Paren_Expr:
    case Func_Call:
     newNode = new Expr_Node;
     ((Expr_Node *)newNode)->tInfo = new TypeInfo;
     ((Expr_Node *)newNode)->cInfo = new TypeInfo;
     break;
    default:
     newNode = new Node;
     break;
 }

  initBasicNode(newNode,name,type,c1,c2,c3,c4,c5,c6,c7);
  return newNode;
}


void initBasicNode(Node *node,char* name,NodeType type,Node *c1=0,Node *c2=0, Node* c3=0, Node* c4=0,Node *c5=0,Node *c6=0,Node *c7=0){

   node->type = type;
   node->name = name;

  	node->Children[0] = c1;
   	node->Children[1] = c2;
   	node->Children[2] = c3;
   	node->Children[3] = c4;
   	node->Children[4] = c5;
   	node->Children[5] = c6;
   	node->Children[6] = c7;

   for(int i=0;i<7;i++){
      node->terminalVal[i] = 0;
   }

}

Op_Node *assignOpChildren(Op_Node *op,Node *c1=0,Node *c2=0,Node *c3=0,int numOperands)
{
  if(!op || op->type != Op){
      printf("Invalid op node\n");
      return NULL;
  }
  op->numOperands = numOperands;
  op->Children[0] = c1;
  op->Children[1] = c2;
  op->Children[2] = c3;

  return op;
}

void printTree(Node *node,int pos){
int i=0;
cout.setf(ios::left,ios::adjustfield);

  if(node == NULL)
      return;
      
   cout << setw(pos)  <<"" << "|" << node->name << endl; 

   if(node->type == Expr){
      Expr_Node *e = (Expr_Node *)node;
     // cout << setw(pos)  <<"" << "|" <<  "(" ;
     // cout << (Type_t)e->cInfo->type << ",Ptr:" << e->cInfo->ptrDepth <<",lvalue:" << e->cInfo->lvalue <<")"   << endl; 
   }

   pos+=2;
   for(i=0;i<7;i++){
      if(node->Children[i])
	   printTree(node->Children[i],pos);
      else if(node->terminalVal[i] != 0)
	   printTerminal(node,pos,i);
   }

 return;
}

void printTerminal(Node *node,int pos,int index)
{
  char term[20]= {0};

   if(node == NULL)
      return;

   for(int i=0;tokenstr[i].attributeType != 0;i++){
       if(tokenstr[i].attributeType == node->terminalVal[index]){
	   strcpy(term,tokenstr[i].attributeVal);
           break;
       }
   }

   if(node->type == Identifier)
     strcpy(term,((Id_Node *)node)->idName); 

   cout << setw(pos) << ""  <<  node->terminalVal[index] <<  "(" << term << ")" << endl;

   if(node->type == Identifier){
       Id_Node *id=(Id_Node *)node;
       if(id->symTbl && id->entry){
           cout << setw(pos) << ""  <<  "SymTbl:lvl-" << id->symTbl->levelId << " blk-" << id->symTbl->blockId << endl;
           cout << setw(pos) << ""  <<  "Entry Type:" << id->entry->typeInfo->type << endl;
           cout << setw(pos) << ""  <<  "Type Conversion:" << id->cInfo->type << endl;
       }
   }

   if(node->type == IntConst){
       IntConst_Node *n=(IntConst_Node *)node;
       cout << setw(pos) << ""  <<  "Const Value:" << n->constValue << endl;
   }

   if(node->type == StrConst){
       StrConst_Node *n=(StrConst_Node *)node;
       cout << setw(pos) << ""  <<  "Const Value:" << n->constValue << endl;
   }

   if(node->type == CharConst){
       CharConst_Node *n=(CharConst_Node *)node;
       cout << setw(pos) << ""  <<  "Const Value:" << n->constValue << endl;
   }

   return;
}

#if 1
ostream& operator<<(ostream& os,Type_t type)
{
switch(type)
{
  case func:
    os << "Function";
    break;
  case array:
    os << "Array";
    break;
  case signed_short_int_:
    os << "Signed_Short_INT";
    break;
  case signed_int_:
    os << "Signed_INT";
    break;
  case signed_long_int_:
    os << "Signed_Long_INT";
    break;
  case unsigned_short_int_:
    os << "Unsigned_Short_INT";
    break;
  case unsigned_int_:
    os << "Unsigned_INT";
    break;
  case unsigned_long_int_:
    os << "Unsigned_Long_INT";
    break;
  case signed_char_:
    os << "Signed_CHAR";
    break;
  case unsigned_char_:
    os << "Unsigned_CHAR";
    break;
  case void_:
    os << "Array";
    break;
  case label:
    os << "Array";
    break;
  default:
    os << (int)type;//else recursive
}

return os;
       
}
#endif

int yylex(){
int tk;
string tkVal,dummy2;
Lexer lexer;
    while(!feof(stdin)){
      if(lexer.token(tk,tkVal,dummy2)){
	 switch(tk){
           case Id:
	       strcpy(currAttrVal,tkVal.c_str());
	       return tk;
           case Seperator:
	       return lexer.attr.attributeType;
           case Keyword:
	       return lexer.attr.attributeType;
           case Operator:
	       return lexer.attr.attributeType;
           case Const:
	       strcpy(currAttrVal,tkVal.c_str());
	       return lexer.attr.attributeType;
           default:
		 ;//do nothing
	 }
      }
    }
    return 0;
}

void yyerror(char *s){
 if(s) 
  printf("%s\n",s);
}

void addToList(Node *node){

  printTree(node,0);

  if(head && tail){
       tail->next = new TU_List();
       tail->next->node = node;
       tail  = tail->next;
       tail->next = NULL;
  }else{
        head = new TU_List();
	head->node = node;
	head->next = NULL;
	tail = head;
  }

}

int main(){
 TU_List *list;

  do{
     if(!yyparse())
       cout << "Successfully parsed" << endl;
   }while(!feof(stdin));

  if(head){
   list = head;
   while(list){
      Analyzer::Instance()->analyzeWholeTree(list->node);
      list = list->next;
   }

   Analyzer::Instance()->printAndGenerateMips();
  }
}
