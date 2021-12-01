#include "symbolTable.h"
#include "parser.h"
#include <iomanip.h>

TypeInfo types[] = { {signed_short_int_,2,0,30,false},{signed_int_,4,0,40,false},{signed_long_int_,4,0,50,false},{unsigned_short_int_,2,0,30,false},{unsigned_int_,2,0,40,false},{unsigned_long_int_,4,0,50,false},{signed_char_,1,0,20,false},{unsigned_char_,1,0,20,false},{void_,0,0,0,false},{UNKNOWN,0,0,0,false} };



#if 0
void TypeInfo::print(int pos)
{
 cout << setw(pos) << "" << "Type:" << type << endl; 
}


void FuncTypeInfo::print(int pos)
{
 cout << setw(pos) << "" << "RetType:" << returnType->type << endl; 
}
#endif

void TypeInfo::assignType(Type_t t)
{ 
int i=0;
      for(i=0;types[i].type != UNKNOWN;i++){
           if(t == types[i].type){
                *this = types[i];
                break;
           }
      }
      if(types[i].type == UNKNOWN)
         *this = types[i];
  
}

#if 0
ostream& operator<<(ostream& os,Type_t &type)
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
TypeEntry::TypeEntry(char *idName,Type_t type,int id,int depth,bool lv){
      int i=0;
      strcpy(name,idName);

      typeInfo = new TypeInfo();
      if(typeInfo)
	typeInfo->assignType(type);

      if(typeInfo && typeInfo->type != UNKNOWN){
	 typeInfo->ptrDepth = depth;
	 typeInfo->lvalue = lv;
      }
      next = NULL;
      entryId = id;
}

TypeEntry::TypeEntry(char *idName,TypeInfo *info,int id){
      int i=0;
      strcpy(name,idName);
     
      if(!info){
            typeInfo = new TypeInfo;
	    typeInfo->type = UNKNOWN;
      }   
      else
	    typeInfo = info;

      next = NULL;
      entryId = id;
}

void TypeEntry::print(int pos){
  cout << setw(pos) << "" << name << "-->"; 
  if(typeInfo){
       cout  << " Type:" << typeInfo->type ;
       if(typeInfo->ptrDepth)
          cout << "," << " PtrDepth:" << typeInfo->ptrDepth;
       cout << endl;
       cout << setw(pos) << "" << "Stored at:" << sInfo.address << endl; 
     switch(typeInfo->type){
      case func:
       cout  << setw(pos) << ""<< "RetType:" << ((FuncTypeInfo *)typeInfo)->returnType->type;
       cout  <<  ","<< "StorageBlock:" << ((FuncTypeInfo *)typeInfo)->block;
       cout  <<  ","<< "numArgs:" << ((FuncTypeInfo *)typeInfo)->numArgs;
       if(((FuncTypeInfo *)typeInfo)->returnType->ptrDepth)
          cout << "," << " PtrDepth:" << ((FuncTypeInfo *)typeInfo)->returnType->ptrDepth << endl;
       else
	  cout << endl;
       break;
      case array:
       cout  << setw(pos) << ""<< "ArrayType:" << ((ArrayTypeInfo *)typeInfo)->arrayType << endl;
       break;
      default:
       ;//do nothing
     }

  }
}

int TypeEntry::setStorage(StorageType type,int offset)
{
 int storageUsed=0;
  if(typeInfo && typeInfo->type != func ||
     typeInfo && typeInfo->type != void_ || 
     typeInfo && typeInfo->type != label ||
     typeInfo && typeInfo->type != UNKNOWN ){

    if(type == global){
           sInfo.type = global;
	   sInfo.address = name;
    }else if(type == stack){
           char address[10];
	   sprintf(address,"%d",offset+4);
	   storageUsed = 4;
	   sInfo.type = stack;
	   sInfo.address = address;
	   sInfo.address += "($fp)";
    }
  }

  if(next)
    storageUsed += next->setStorage(type,offset+storageUsed);

    return storageUsed;
}

TypeEntry* TypeEntry::addToEnd(char *name,Type_t type,TypeEntry *end,int id,int depth,bool lv){
       end->next = new TypeEntry(name,type,id,depth,lv);
       return end->next;
}


TypeEntry* TypeEntry::addToEnd(TypeEntry *entry,TypeEntry *end,int id){
       end->next = entry;
       return end->next;
}

bool SymTable::addEntry(char *name,TypeInfo *typeInfo)
{
    bool status=true;
    TypeEntry *dummy;
    SymTable *htbl;
    if(lkupEntry(name,dummy,htbl)){
       cout << "Entry " << name <<" already exists.Cant enter duplicate" << endl;
       return false;
    }
    numListEntries++;

        if(!list){ //first entry
            list = new TypeEntry(name,typeInfo,numListEntries);
            endOfList = list;
        }else{
	    TypeEntry *newEntry = new TypeEntry(name,typeInfo,numListEntries);
            endOfList = list->addToEnd(newEntry,endOfList,numListEntries);
        }

    return status;
}


bool SymTable::addFuncEntry(char *name,Type_t returnType,int blk,int depth)
{
 FuncTypeInfo *ftypeInfo = new FuncTypeInfo();
 ftypeInfo->returnType = new TypeInfo(); 
 ftypeInfo->type = func;
 ftypeInfo->storage = 0;
 ftypeInfo->lvalue =false; 
 ftypeInfo->block =blk; 

 ftypeInfo->returnType->type = returnType;
 ftypeInfo->returnType->ptrDepth  = depth;

 return addEntry(name,ftypeInfo);
}

bool SymTable::addArrayEntry(char *name,Type_t arrayType,int numElems,int depth)
{
 ArrayTypeInfo *typeInfo = new ArrayTypeInfo();
 typeInfo->type = array;
 typeInfo->arrayType = arrayType;
 typeInfo->storage = 0;
 typeInfo->numElements = numElems;
 typeInfo->ptrDepth = depth;
 typeInfo->lvalue = true;

 return addEntry(name,typeInfo);
}

bool SymTable::addEntry(char *name,Type_t type,int depth)
{
    bool status=true;
    TypeEntry *dummy;
    SymTable *htbl;
    if(lkupEntry(name,dummy,htbl)){
       cout << "Entry " << name <<" already exists.Cant enter duplicate" << endl;
       return false;
    }
    numListEntries++;

        if(!list){ //first entry
            list = new TypeEntry(name,type,numListEntries,depth,true);
            endOfList = list;
        }else{
            endOfList = list->addToEnd(name,type,endOfList,numListEntries,depth,true);
        }

    return status;
}


bool SymTable::addEntry(char *name,Type_t type,EntryKey key)
{
    bool status=true;

    if((key.levelId == levelId) && (key.blockId == blockId)){
        numListEntries++;

        if(!list){ //first entry
            list = new TypeEntry(name,type,numListEntries);
            endOfList = list;

        }else{
            endOfList = list->addToEnd(name,type,endOfList,numListEntries);

        }
    }else{
        printf("Invalid levelId/blockId\n");
        status = false;
    }

return status;
}

void SymTable::markBlocks(int blkId)
{
 TypeEntry *entry=list;
   while(entry){
      entry->maxVisBlk = blkId;
      entry=entry->next;
   }

}

SymTable *SymTable::createSubBlock()
{
    if(subBlock){
      if(subBlock->levelId == levelId + 1)
	return subBlock;
      else{
        printf("error creating subBlock\n");
	return NULL;
      }
    }

    subBlock = new SymTable(levelId+1,1,this);
    return subBlock;
}

SymTable *SymTable::createPeerBlock(SymTable *parent)
{
    if(levelId == 0){
       printf("Cannot create peer block at level 0\n");
       return NULL;
    }

    if(nextPeerBlock){
      if(nextPeerBlock->blockId == blockId + 1)
	return nextPeerBlock;
      else{
        printf("error creating peerBlock\n");
	return NULL;
      }
    }

    nextPeerBlock = new SymTable(levelId,blockId+1,parent);
    return nextPeerBlock;
}

SymTable *SymTable::createNewFuncTable()
{
  SymTable *tbl = this;
  if(tbl->levelId != 0){   //this can be done only at level 0, file scope
     cout << "Cant create func blocks if scope is not file scope\n";
     return NULL;
  }
  if(subBlock){
     tbl = subBlock->getLastPeerBlock();
     if(tbl){
	 tbl = tbl->createPeerBlock(tbl->parentBlock);
	 if(!tbl){
	    printf("CreateNewFuncTable::Error creating peer block\n");
	    return NULL;
         }else
	    return tbl;
     }else{
	    printf("CreateNewFuncTable::Error getting peer block\n");
	    return NULL;
     }
  }
  else
      return tbl->createSubBlock();       
}

SymTable *SymTable::createTable(int lvlId,int blkId)
{
  SymTable *tbl = getSubBlock(lvlId-1);
  if(tbl->subBlock){
      tbl = (tbl->subBlock)->getPeerBlock(blkId-1);
      if(tbl){
	 if(!tbl->nextPeerBlock)
	   return tbl->createPeerBlock(tbl->parentBlock);
         else{
           printf("Create table for already existing table\n");
	   return NULL;
	 }
      }
  }else{
      return tbl->createSubBlock();       
  }
}

SymTable *SymTable::getSubBlock(int lvlId)
{
    SymTable *tbl = this;

    while(tbl->levelId != lvlId){
        if(tbl->subBlock)
            tbl = tbl->subBlock;
        else{
            printf("Can't find table for that level\n");
            return NULL;
        }
    }

    return tbl;
}
 
SymTable *SymTable::getPeerBlock(int  blkId)
{
    SymTable *tbl = this;

    while(tbl->blockId != blkId){
        if(tbl->nextPeerBlock)
            tbl = tbl->nextPeerBlock;
        else{
            printf("Can't find table for that blk number %d\n",blkId);
            return NULL;
        }
    }

    return tbl;
}


SymTable *SymTable::getLastPeerBlock()
{
    SymTable *tbl = this;

    while(tbl->nextPeerBlock){
            tbl = tbl->nextPeerBlock;
    }

    return tbl;
}

SymTable *SymTable::getTable(int  lvlId,int blkId)
{
   SymTable *tbl = this;
   
   if(tbl->levelId == lvlId){
       if(tbl->blockId == blkId){
           return tbl;
       }else{
           return getPeerBlock(blkId);
       }
   }else{
       tbl = getSubBlock(lvlId);
       if(tbl)
           return tbl->getPeerBlock(blkId);
       else
           return NULL;
   }

}


void SymTable::printList(int pos)
{
  TypeEntry *entry=list;
   cout << setw(pos) << "" <<"[Level:" << levelId <<" Block:" <<  blockId << "]" << endl;
   while(entry){
       entry->print(pos);
       entry = entry->next;
   }
}

void SymTable::printTable(int pos)
{
  printList(pos);
  if(subBlock)
     subBlock->printTable(pos+3);
  if(nextPeerBlock)
     nextPeerBlock->printTable(pos);
}

bool SymTable::lkupWholeTable(char *name,TypeEntry*& entry,SymTable *&tbl)
{
  if(lkupList(name,entry) == true){
     tbl = this;
     return true;
  }

  if(subBlock)
     subBlock->lkupWholeTable(name,entry,tbl);
  if(nextPeerBlock)
     nextPeerBlock->lkupWholeTable(name,entry,tbl);
}


/*
bool SymTable::lkupList(char *name,int blk,TypeEntry *&entry)
{
   TypeEntry* listEntry=list;
   while(listEntry && (blk <= listEntry->MaxVisBlk)){
      if(!strcmp(name,listEntry->name)){
	 entry = listEntry;
	 return true;
      }
      listEntry = listEntry->next;
   }

   return false;
}
*/

bool SymTable::lkupList(char *name,TypeEntry *&entry)
{
  TypeEntry *e = list;
  while(e){
    if(!strcmp(e->name,name)){
         entry = e;
	 return true;
    }
    e= e->next;
  }

  return false;
}


bool SymTable::lkupEntry(char *name,TypeEntry*& entry,SymTable*& holdingTbl)
{
  if(lkupList(name,entry) == true){
     holdingTbl = this;
     return true;
  }

  if(parentBlock)
     return parentBlock->lkupEntry(name,entry,holdingTbl);
  else
     return false;
}


int SymTable::assignStorage(int startOffset)
{ 
  int storageUsed =0;

  if(levelId == 0 && blockId == 0){		//table at file scope-static	
     if(list){
          storageUsed = list->setStorage(global,0);
     }
  }else if(levelId == 1){			//table at func. scope
     if(list){
         storageUsed =  list->setStorage(stack,0);
     }
  }else{
     if(list){
         storageUsed =  list->setStorage(stack,startOffset);
     }
  }

  if(subBlock)
    storageUsed += subBlock->assignStorage(startOffset+storageUsed);

  aggregateStorage = storageUsed;

  if(nextPeerBlock)
    storageUsed += nextPeerBlock->assignStorage(startOffset+storageUsed);

  return storageUsed;
}

int SymTable::getFuncStorage(char *name)
{
 TypeEntry *e;
 SymTable *fnTbl;

  //this function assumed to be for 0,0 table
  if(lkupEntry(name,e,fnTbl)){
      fnTbl = NULL;//reuse
      FuncTypeInfo *f = (FuncTypeInfo *)e->typeInfo;
      fnTbl = getTable(1,f->block);
      if(fnTbl)
	 return fnTbl->getStorage();
      else
	return 0;
  }

  return 0;
}

SymTableMgr::SymTableMgr()
{
     symTable = new SymTable;
}

void SymTableMgr::printWholeTable()
{
 if(symTable)
   symTable->printTable(0);
}

bool SymTableMgr::lkupWholeTable(char *name,TypeEntry*&entry,SymTable *&tbl)
{
 if(symTable)
   return symTable->lkupWholeTable(name,entry,tbl);
}


bool SymTableMgr::incrementFuncArgCnt(char *f_name,SymTable *&tbl)
{
 TypeEntry *entry;
 FuncTypeInfo *tInfo;

 if(symTable)
   symTable->lkupWholeTable(f_name,entry,tbl);

 if(entry){
    tInfo = (FuncTypeInfo *)entry->typeInfo;
    if(tInfo){
       tInfo->numArgs++;
       return true;
    }
 }

 cout << "incrementFuncArg failed\n";
 return false;

}

bool SymTableMgr::addEntry(char *name,Type_t type,SymTable::EntryKey key)
{
    SymTable *targetTable;
    targetTable = symTable->getTable(key.blockId,key.levelId);

    if(targetTable)
        targetTable->addEntry(name,type,key);
    else{
        printf("Failed to add entry\n");
        return false;
    }

    return true;
}

int SymTableMgr::assignStorage()
{
    return symTable->assignStorage(0);
}

int SymTableMgr::getFuncStorage(char *name)
{
    return symTable->getFuncStorage(name);
}


SymTable *SymTableMgr::getTable(int lvlId,int blkId)
{
   return symTable->getTable(lvlId,blkId);
}

TypeEntry *SymTableMgr::getEntry(SymTable::EntryKey key)
{
}


