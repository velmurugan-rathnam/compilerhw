#ifndef LEXERDEFS_H
#define LEXERDEFS_H 

#define MAX_ATTR_LEN 128

enum Token {
  Unknown
};

enum Errors {
  NO_ERR,
  STRAY_SINGLE_QUOTE,
  UNRECOGNIZED_OCTAL,
  UNRECOGNIZED_ESC
};

enum Seperators {
 UNKNOWN_Seperator
};
enum Operators {
 UNKNOWN_Operator
};

enum compoundOp{
 UNKNOWN_Com_op
};


enum Keywords {
  UNKNOWN_Keyword
};


enum EscapeSeq {
 UNKNOWN_EscapeSeq

};


#endif
