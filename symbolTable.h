#ifndef SYMBOL_TABLE_H
#define SYMBOL_TABLE_H

#include "lexer.h"
#include "lexerdefs.h"

enum Type_t {
  signed_short_int_,
  signed_int_,
  signed_long_int_,
  unsigned_short_int_,
  unsigned_int_,
  unsigned_long_int_,
  signed_char_,
  unsigned_char_,
  void_,
  func,
  array,
  label,
  UNKNOWN,
};

enum StorageType {
  global,
  stack,
  special_purpose,
  Unknown_StrgType
};

struct TypeInfo {
  void operator=(TypeInfo& rhs){
      type = rhs.type;
      storage = rhs.storage;
      ptrDepth = rhs.ptrDepth;
      conRank = rhs.conRank;
      lvalue = rhs.lvalue;
  }
   
 bool isarray(){ return (type == array)? true:false;  } 
 bool isvoid(){return  (type == void_)? true:false;  } 
 bool isfunc(){ return (type == func)? true:false;  } 
 bool islabel(){ return (type == label)? true:false;  } 
 bool isunknown(){ return (type == UNKNOWN)? true:false;  } 
   

  void assignType(Type_t t);
  
  Type_t type;
  int storage;
  int ptrDepth;
  int conRank;
  bool lvalue;

  //virtual void print(int pos);
};

struct FuncTypeInfo:public TypeInfo {
  TypeInfo *returnType;
  int block;  //where locals are stored
  int numArgs;
  //virtual void print(int pos);
};

struct ArrayTypeInfo:public TypeInfo {
  int getSize(){
    return numElements;
  }

  Type_t arrayType;
  int numElements;
  //virtual void print(int pos);
};

struct StorageInfo {

  StorageInfo(){
    type = Unknown_StrgType;
    inreg = false;
    address = "";
  }

  StorageType type;
  bool inreg;
  string address;
};

struct TypeEntry {
  char name[100];
  TypeInfo *typeInfo;
  StorageInfo sInfo;
  TypeEntry *next;
  int entryId;
  int maxVisBlk; //visible upto this peer block - g++ style

 TypeEntry(char *idName,Type_t type,int id,int depth=0,bool lv=true);
 TypeEntry(char *idName,TypeInfo *info,int id);
 TypeEntry* addToEnd(char *name,Type_t type,TypeEntry *end,int id,int depth=0,bool lv=true);
 TypeEntry* addToEnd(TypeEntry *entry,TypeEntry *end,int id);
 void print(int pos);
 int setStorage(StorageType type,int offset);
};


class SymTable{
public:
  struct EntryKey {
      int blockId;
      int levelId;
      int entryId;
 };

  TypeEntry *list;
  TypeEntry *endOfList;
  int numListEntries;
  int aggregateStorage;		//data storage for this and all sub,next level tables

  SymTable *subBlock;
  SymTable *nextPeerBlock;
  SymTable *parentBlock;

  int blockId;
  int levelId;

  SymTable(){
      subBlock = nextPeerBlock  = parentBlock =  NULL;
      blockId = levelId = numListEntries=0;
  }

  SymTable(int lvlId,int blkId){
      subBlock = nextPeerBlock = parentBlock =  NULL;
      blockId = blkId;
      levelId = lvlId;
      numListEntries = 0;
  }

  SymTable(int lvlId,int blkId,SymTable *parent){
      subBlock = nextPeerBlock = NULL;
      blockId = blkId;
      levelId = lvlId;
      parentBlock = parent;
      numListEntries = 0;
  }

  bool addEntry(char *name,Type_t type,EntryKey key);
  bool addEntry(char *name,Type_t type,int depth=0);
  bool addEntry(char *name,TypeInfo *typeInfo);
  bool addFuncEntry(char *name,Type_t returnType,int blk,int depth=0);
  bool addArrayEntry(char *name,Type_t type,int numElems,int depth=0);
  SymTable *getSubBlock(int lvlId);
  SymTable *getPeerBlock(int  blkId);
  SymTable *createSubBlock();
  SymTable *createPeerBlock(SymTable *parent);
  SymTable *getTable(int  lvlId,int blkId);
  SymTable *createTable(int lvlId,int blkId);
  SymTable *createNewFuncTable();
  SymTable *getLastPeerBlock();
  void markBlocks(int blkId);
  void printList(int pos);
  void printTable(int pos);
  bool lkupEntry(char *name,TypeEntry*& entry,SymTable*& holdingTbl);
  bool lkupList(char *name,TypeEntry *&entry);
  bool lkupWholeTable(char *name,TypeEntry*& entry,SymTable *&tbl);
  int assignStorage(int startOffset);
  int getStorage(){return aggregateStorage;}
  int getFuncStorage(char *name);
};


class SymTableMgr {

 public:

 SymTableMgr();
 bool addEntry(char *name,Type_t type,SymTable::EntryKey key);
 TypeEntry *getEntry(SymTable::EntryKey key);
 SymTable *getTable(int lvlId,int blkId);
 void printWholeTable();
 bool lkupWholeTable(char *name,TypeEntry*& entry,SymTable *&tbl);
 bool incrementFuncArgCnt(char *f_name,SymTable *&tbl);
 int assignStorage();
 int getFuncStorage(char *name);

 private:
 SymTable *symTable;

};

#endif
