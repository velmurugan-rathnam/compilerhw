
# line 2 "translate.y"
#include "parser.h"
#include "analyzer.h"

# line 6 "translate.y"
typedef union    {
    class Node* nodeptr;
    class Id_Node *identifierNode;
    class Type_terminal_Node *typeNode;
} YYSTYPE;
# define INC 257
# define DEC 258
# define COM 259
# define NOT 260
# define AND 261
# define MUL 262
# define DIV 263
# define MOD 264
# define ADD 265
# define SUB 266
# define LS 267
# define RS 268
# define LT 269
# define GT 270
# define LT_EQ 271
# define GT_EQ 272
# define COMP 273
# define NOT_EQ 274
# define XOR 275
# define OR 276
# define BOOL_AND 277
# define BOOL_OR 278
# define Id 279
# define Keyword 280
# define Operator 281
# define Seperator 282
# define Const 283
# define Space 284
# define END 285
# define Integer 286
# define Character 287
# define String 288
# define EQ 289
# define QES 290
# define ADD_EQ 291
# define SUB_EQ 292
# define MUL_EQ 293
# define DIV_EQ 294
# define MOD_EQ 295
# define LS_EQ 296
# define RS_EQ 297
# define AND_EQ 298
# define XOR_EQ 299
# define OR_EQ 300
# define DO 301
# define FOR 302
# define RET 303
# define BREAK 304
# define ELSE 305
# define SHORT 306
# define GOTO 307
# define SIGNED 308
# define UNSIGNED 309
# define VOID 310
# define IF 311
# define CHAR 312
# define INT 313
# define CONTINUE 314
# define LONG 315
# define WHILE 316
# define NEWLINE 317
# define H_TAB 318
# define BACKSPACE 319
# define CR 320
# define FF 321
# define V_TAB 322
# define ESC_BSLASH 323
# define ESC_SINGLE_QUOTE 324
# define ESC_DOUBLE_QUOTE 325
# define BELL 326
# define ESC_QUESTION 327
# define ESC_OCTAL 328
# define OPEN_BRACE 329
# define CLOSE_BRACE 330
# define OPEN_BRACKET 331
# define CLOSE_BRACKET 332
# define OPEN_CBRACE 333
# define CLOSE_CBRACE 334
# define COMMA 335
# define COLON 336
# define SEMICOLON 337
#define yyclearin yychar = -1
#define yyerrok yyerrflag = 0
extern int yychar;
extern int yyerrflag;
#ifndef YYMAXDEPTH
#define YYMAXDEPTH 150
#endif
YYSTYPE yylval, yyval;
typedef int yytabelem;
# define YYERRCODE 256

# line 1077 "translate.y"


static const yytabelem yyexca[] ={
-1, 1,
	0, -1,
	-2, 0,
-1, 33,
	333, 138,
	-2, 36,
-1, 93,
	336, 154,
	-2, 109,
-1, 145,
	306, 49,
	308, 49,
	309, 49,
	310, 49,
	312, 49,
	313, 49,
	315, 49,
	329, 49,
	330, 49,
	331, 49,
	333, 49,
	335, 49,
	337, 49,
	-2, 82,
	};
# define YYNPROD 217
# define YYLAST 861
static const yytabelem yyact[]={

   118,   119,   115,   114,   116,   123,   124,   125,   113,   112,
   309,   307,   118,   119,   115,   114,   116,   123,   124,   125,
   113,   112,    30,    57,   295,    56,   283,   245,   244,   132,
   133,   134,   170,   169,    30,   167,   284,   168,   233,   175,
    36,   132,   133,   134,    90,    91,    83,    81,   289,    22,
    84,    23,    26,    16,    88,    27,    24,    82,    25,    89,
   118,   119,   115,   114,   116,   123,   124,   125,   113,   112,
   286,   285,   130,   277,    28,   287,    36,   165,    28,   231,
    85,    30,    30,   157,   130,   158,   300,   314,   230,   132,
   133,   134,   296,   239,    42,    30,    41,   196,   197,   311,
   310,   302,   301,   279,    90,    91,    83,    81,   278,    22,
    84,    23,    26,    16,    88,    27,    24,    82,    25,    89,
   118,   119,   115,   114,   116,   123,   124,   125,   113,   112,
   276,   237,   130,   158,   265,   264,    36,    60,   232,   159,
    85,   157,    30,   158,    30,   237,   280,   158,   180,   132,
   133,   134,   177,   118,   119,   115,   114,   116,   123,   124,
   125,   113,   112,    28,    90,    91,    83,    81,   176,   199,
    84,   198,   249,   163,    88,    30,    30,    82,   211,    89,
    30,    51,   132,   133,   134,   162,   161,    54,    52,   160,
    53,    50,   130,    45,    19,   195,    36,   200,   217,    28,
    85,   216,    22,   135,    23,    26,    16,   194,    27,    24,
   216,    25,   118,   119,   115,   114,   116,   123,   124,   125,
   113,   112,    46,   152,   215,   130,   137,   117,    49,    47,
    19,    48,   138,   251,    30,   219,   221,   220,   222,   224,
   225,   132,   133,   134,   118,   119,   115,   114,   116,   123,
   124,   125,   113,   112,   227,   228,   118,   119,   115,   114,
   116,   123,   124,   125,   113,   112,    30,   123,   124,   125,
   131,   136,    12,   132,   133,   134,    38,    87,    30,   126,
     2,   181,    31,    94,   130,   132,   133,   134,   156,    61,
    43,    22,   281,    23,    26,    16,   106,    27,    24,   139,
    25,   120,    71,   179,   144,    22,    34,    23,    26,    16,
    58,    27,    24,    66,    25,    80,   130,   212,   146,   260,
    35,    64,    79,    59,   171,   147,    70,   129,   130,   118,
   119,   115,   114,   116,   145,   124,   125,   113,   112,   118,
   119,   115,   114,   116,   123,   124,   125,   113,   112,   166,
    63,    30,   128,   127,   121,    67,    69,    78,   132,   133,
   134,    30,   173,   150,   164,   151,    73,   229,   132,   133,
   134,    65,    75,    68,   154,   252,   118,   119,   115,   114,
   116,   123,   124,   125,   113,   112,   118,   119,   115,   114,
   116,   123,   124,   125,   113,   112,    76,    77,    30,    -1,
    72,   130,     6,    74,   143,   132,   133,   134,    30,     4,
    21,   130,   313,   109,    86,   132,   133,   134,   108,   111,
   268,   118,   119,   115,   114,   116,   123,   124,   125,   113,
   112,   118,   119,   115,   114,   116,   123,   124,   125,   113,
   112,   178,   242,    30,   238,   270,   110,   122,   130,   305,
   132,   133,   134,    30,   107,    97,   271,   274,   130,   304,
   132,   133,   134,   241,    28,   100,   118,   119,   115,   114,
   116,   123,   124,   125,   113,   112,   118,   119,   115,   114,
   116,   123,   124,   125,   113,   112,   267,   172,    30,   269,
    95,   263,   257,   130,   293,   132,   133,   134,    30,    28,
   229,   140,   262,   130,   259,   132,   133,   134,    22,    43,
    23,    26,    16,   101,    27,    24,    30,    25,   102,   243,
   103,   104,   105,   242,    99,   238,   272,    98,   235,   226,
   250,   157,   240,   158,   213,   149,    29,    29,   130,   193,
    92,    29,   223,    22,   275,    23,    26,    16,   209,    27,
    24,   218,    25,    29,   182,    29,   183,   184,   185,   186,
   187,   188,   189,   190,   191,   192,    19,    96,   298,    20,
    18,    11,    93,    32,     9,     7,    29,     1,    15,    14,
   247,   248,   148,    13,   253,    10,     0,     0,     0,   266,
     0,     0,    17,    29,     0,    93,     0,     0,   256,     0,
     0,     0,   258,   202,   202,   202,   202,   202,   202,   208,
   210,     0,   240,   213,   201,   203,   204,   205,   206,   207,
   174,    55,     8,    40,     5,     5,    93,     0,    33,   290,
   291,    37,     0,     0,     0,   155,     3,     0,     0,     0,
     0,     0,    44,     0,     0,    39,     0,     0,     0,   202,
     0,   308,     0,     0,     0,   282,     0,     0,     0,     0,
     0,     0,     0,   142,     0,     0,   153,     0,     0,     0,
    39,     0,     0,    62,     0,   141,     0,     0,     0,     0,
   142,     0,     0,     0,   292,   294,   202,   297,     0,    29,
     0,   202,     0,     0,     0,   141,    62,     0,     0,   303,
   306,     0,   202,     0,    93,     0,   202,   202,   202,   202,
     0,   312,     0,     0,   202,    93,   246,   202,     0,     0,
   202,     0,   255,     0,     0,     0,     0,     0,     0,     0,
   202,   273,     0,     0,     0,     0,     0,     0,     0,     0,
   261,     0,     0,     0,     0,     0,   236,     0,     0,     0,
   155,     0,     0,     0,   214,   202,     0,     0,     0,     0,
     0,     0,     0,     0,     0,     0,   288,     0,     0,     0,
     0,     0,    29,    29,     0,   202,   234,     0,     0,     0,
     0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     0,     0,     0,     0,     0,     0,     0,   155,     0,     0,
     0,     0,     0,     0,    93,    93,     0,   254,     0,     0,
     0,     0,     0,     0,     0,     0,   155,     0,   299,     0,
   236,     0,     0,     0,     0,     0,    93,     0,     0,     0,
     0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
     0,     0,     0,     0,     0,     0,     0,   153,     0,     0,
    44 };
static const yytabelem yypact[]={

   237,   237, -1000, -1000, -1000,   -99,  -293,   -15,   -15, -1000,
 -1000, -1000,  -235, -1000, -1000, -1000, -1000,  -135, -1000,   -99,
 -1000, -1000,  -120,   -84, -1000,  -122,  -125, -1000,   -63, -1000,
 -1000, -1000,  -312,   -15, -1000, -1000,  -197, -1000,   -15, -1000,
   -99,    72,   202,  -235,  -191, -1000,  -124, -1000,  -127, -1000,
 -1000,  -128, -1000,  -140, -1000, -1000, -1000,   -99,   -15,  -257,
 -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000,
 -1000, -1000, -1000, -1000,  -302,  -299, -1000, -1000, -1000, -1000,
 -1000,  -304,  -305,   -13,  -103, -1000,  -296, -1000,  -161,  -177,
  -137,  -181, -1000, -1000, -1000,   265,   -83,  -160, -1000, -1000,
 -1000, -1000, -1000, -1000, -1000, -1000,   -80, -1000, -1000, -1000,
 -1000, -1000,   209,   209,   209,   209,   209,   209,   219,   219,
   -98, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000,
    -1,   -51, -1000, -1000, -1000,   -75,   -34,   -28,   -11,     5,
 -1000, -1000, -1000, -1000,  -244, -1000,  -253, -1000, -1000, -1000,
  -192,  -297, -1000,  -184, -1000,  -246,  -238,  -188,   209, -1000,
 -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000,  -137, -1000,
 -1000, -1000,  -309,  -310, -1000,   209,   209,   209,  -144,  -137,
  -104,   209, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000,
 -1000, -1000, -1000, -1000,   209,   209, -1000, -1000,   209,   174,
   209, -1000, -1000, -1000, -1000, -1000, -1000, -1000, -1000,   209,
 -1000,   209,  -195,  -196,  -188,   209,   209,   209,   209, -1000,
 -1000, -1000, -1000,   209, -1000, -1000,   209, -1000, -1000,   209,
 -1000, -1000, -1000,   202, -1000, -1000,  -198,  -184,  -238,   209,
  -200,  -259, -1000, -1000, -1000, -1000, -1000,  -222,  -227,  -183,
 -1000,   -45,  -311, -1000, -1000, -1000,  -300,   -80,  -261, -1000,
  -260, -1000,   -98, -1000,   209, -1000, -1000,   -60,   -75,   -34,
   -28,   -11,     5, -1000, -1000,  -284, -1000, -1000,  -137,  -137,
   209,   164,  -313,  -245,   209, -1000, -1000,   209, -1000, -1000,
  -219, -1000,  -228, -1000,  -229,   129,   119,  -326, -1000, -1000,
  -137,  -327, -1000,  -230, -1000, -1000,  -231,    82, -1000, -1000,
 -1000, -1000,  -243, -1000, -1000 };
static const yytabelem yypgo[]={

     0,   585,   583,   579,   578,   535,   577,   280,   636,   623,
   575,   574,   573,   306,   622,   571,   592,   272,   570,   569,
   304,   283,   567,   296,   301,   279,   270,   203,   271,   551,
   226,   542,   232,   529,   299,   227,   501,   490,   527,   524,
   522,   521,   520,   518,   513,   465,   455,   454,   447,   446,
   419,   418,   403,   414,   540,   413,   410,   409,   402,   400,
   399,   397,   396,   375,   373,   372,   371,   277,   366,   223,
   365,   363,   350,   357,   374,   356,   313,   355,   354,   353,
   352,   327,   326,   276,   289,   323,   322,   321,   319,   318,
   317,   315,   303,   302,   288,   281 };
static const yytabelem yyr1[]={

     0,     6,     6,     7,     7,     8,     9,     9,    10,    10,
    11,    11,    11,     1,     2,     2,     2,     2,     2,     2,
     2,     2,     2,     2,     2,     3,     3,     3,     3,     3,
     3,     4,     4,     4,    12,    12,    13,    14,    14,    15,
    16,    16,    17,    17,    17,    17,    18,    19,    19,    19,
    19,    20,    21,    21,    22,    22,    23,    23,    24,    24,
    25,    25,    26,    26,    27,    27,    28,    28,    29,    29,
    29,    29,    30,    30,    31,    31,    32,    32,    33,    33,
    34,    34,    35,    35,    35,    36,    36,    37,    37,    37,
    37,    37,    37,    37,    37,    37,    38,    39,    40,    41,
    42,    43,    44,    45,    46,    46,    46,    46,    46,    47,
    47,    47,    48,    49,    50,    51,    52,    53,    53,    54,
    54,    95,    95,    95,    95,    95,    95,    95,    95,    95,
    95,    95,    95,    55,    55,    56,    57,    58,    58,    58,
    58,    59,    60,    60,     5,    61,    62,    63,    63,    64,
    64,    64,    65,    66,    67,    68,    69,    69,    69,    69,
    70,    70,    71,    72,    72,    72,    72,    72,    72,    72,
    72,    72,    72,    73,    74,    74,    74,    75,    76,    76,
    77,    77,    78,    78,    78,    79,    80,    81,    20,    82,
    83,    83,    84,    84,    85,    85,    86,    87,    88,    88,
    89,    93,    93,    94,    94,    94,    90,    90,    91,    92,
    92,    92,    92,    92,    92,    92,    92 };
static const yytabelem yyr2[]={

     0,     3,     5,     3,     3,     7,     3,     5,     3,     3,
     3,     3,     3,     3,     5,     5,     7,     3,     5,     3,
     3,     5,     5,     7,     3,     3,     7,     5,     5,     5,
     7,     3,     5,     5,     3,     7,     3,     3,     3,     5,
     3,     5,     3,     7,     3,     3,     3,     7,     9,     7,
     9,     3,     3,    11,     3,     7,     3,     7,     3,     7,
     3,     7,     3,     7,     3,     7,     3,     7,     3,     3,
     3,     3,     3,     7,     3,     3,     3,     7,     3,     3,
     3,     7,     3,     3,     3,     3,     9,     3,     3,     3,
     3,     3,     3,     3,     3,     3,     5,     5,     5,     5,
     5,     5,     5,     5,     3,     3,     3,     3,     3,     3,
     3,     3,     7,     5,     5,     9,     3,     3,     7,     3,
     7,     3,     3,     3,     3,     3,     3,     3,     3,     3,
     3,     3,     3,     7,     9,     9,     5,     3,     5,     5,
     7,     7,     3,     7,     3,    15,    11,     3,     3,     3,
     3,     3,     3,     7,     3,     3,     5,     3,     5,     3,
     3,     7,     3,     3,     3,     3,     3,     3,     3,     3,
     3,     3,     3,    11,     3,     3,     5,     5,     7,     5,
     3,     3,     3,     3,     3,     3,     3,     3,     3,     5,
     3,     5,     3,     3,     3,     5,    15,     5,     3,     7,
     3,     5,     7,     7,     7,     9,     3,     5,     7,     9,
    11,    15,    13,    13,    13,    11,    11 };
static const yytabelem yychk[]={

 -1000,    -6,    -7,    -8,   -57,    -9,   -58,   -10,   -14,   -11,
    -1,   -15,   -17,    -2,    -3,    -4,   310,   -16,   -18,   329,
   -19,   -56,   306,   308,   313,   315,   309,   312,   262,    -5,
   279,    -7,   -12,   -14,   -13,   -76,   333,    -9,   -83,    -8,
    -9,   331,   329,   -17,   -14,   313,   306,   313,   315,   312,
   313,   306,   313,   315,   312,   -16,   337,   335,   -83,   -85,
   334,   -84,    -8,   -72,   -87,   -66,   -76,   -77,   -64,   -75,
   -82,   -93,   -59,   -68,   -52,   -65,   -62,   -61,   -73,   -86,
   -91,   304,   314,   303,   307,   337,   -53,   -67,   311,   316,
   301,   302,   -54,    -5,   -21,   -37,   -22,   -46,   -38,   -39,
   -45,   -44,   -43,   -42,   -41,   -40,   -23,   -47,   -51,   -55,
   -49,   -50,   266,   265,   260,   259,   261,   -35,   257,   258,
   -24,   -78,   -48,   262,   263,   264,   -25,   -79,   -80,   -81,
   329,   -26,   286,   287,   288,   -27,   -28,   -30,   -32,   -34,
   -36,    -8,   -14,   332,   -20,   262,   -89,   -21,   -54,    -5,
   -71,   -70,   -69,    -9,   -74,   -16,   -94,   329,   331,   330,
   313,   313,   313,   313,   -13,   334,   -84,   337,   336,   337,
   337,   337,   -52,   -67,    -5,   335,   329,   329,   -72,   -92,
   329,   -95,   289,   291,   292,   293,   294,   295,   296,   297,
   298,   299,   300,   274,   290,   278,   257,   258,   331,   329,
   277,   -36,   -37,   -36,   -36,   -36,   -36,   -36,   -37,   329,
   -37,   276,   -90,   -52,    -9,   275,   261,   273,   -29,   269,
   271,   270,   272,   -31,   267,   268,   -33,   265,   266,   -35,
   332,   332,   330,   335,   -14,   -74,   -16,   329,   -94,   331,
   -74,   -20,   -21,   -72,   337,   337,   -54,   -52,   -52,   316,
   -72,   337,   -63,   -52,    -8,   -54,   -52,   -23,   -52,   330,
   -88,   -54,   -24,   -25,   330,   330,   -74,   -26,   -27,   -28,
   -30,   -32,   -34,   -36,   -69,   -20,   330,   332,   330,   330,
   329,   337,   -52,   337,   336,   332,   330,   335,   -36,   332,
   -72,   -72,   -52,   330,   -52,   337,   337,   -52,   -21,   -54,
   305,   330,   330,   -52,   330,   330,   -52,   337,   -72,   337,
   330,   330,   -52,   330,   330 };
static const yytabelem yydef[]={

     0,    -2,     1,     3,     4,     0,     0,     6,   137,     8,
     9,    37,    38,    10,    11,    12,    13,     0,    42,     0,
    44,    45,    24,    19,    17,    20,    25,    31,    40,    46,
   144,     2,     0,    -2,    34,   136,     0,     7,   139,   190,
     0,     0,     0,    39,     0,    14,    15,    18,    22,    33,
    21,    27,    28,    29,    32,    41,     5,     0,   140,     0,
   179,   194,   192,   193,   163,   164,   165,   166,   167,   168,
   169,   170,   171,   172,     0,     0,   180,   181,   149,   150,
   151,     0,     0,     0,     0,   155,   116,   152,     0,     0,
     0,     0,   117,    -2,   119,    85,    52,    87,    88,    89,
    90,    91,    92,    93,    94,    95,    54,   104,   105,   106,
   107,   108,     0,     0,     0,     0,     0,     0,     0,     0,
    56,   110,   111,    82,    83,    84,    58,   182,   183,   184,
     0,    60,   185,   186,   187,    62,    64,    66,    72,    76,
    80,   191,    36,    47,     0,    -2,     0,    51,   200,   109,
     0,   162,   160,   157,   159,   174,   175,     0,     0,    43,
    16,    23,    26,    30,    35,   178,   195,   197,     0,   177,
   189,   201,     0,     0,   154,     0,     0,     0,     0,     0,
     0,     0,   121,   122,   123,   124,   125,   126,   127,   128,
   129,   130,   131,   132,     0,     0,   113,   114,     0,     0,
     0,    96,    85,    97,   103,   102,   101,   100,    99,     0,
    98,     0,     0,     0,   206,     0,     0,     0,     0,    68,
    69,    70,    71,     0,    74,    75,     0,    78,    79,     0,
    48,    50,   135,     0,   156,   158,   174,     0,   176,     0,
     0,     0,    51,   153,   202,   141,   118,     0,     0,     0,
   208,     0,     0,   147,   148,   120,     0,    55,     0,   133,
     0,   198,    57,    59,     0,   112,   207,    61,    63,    65,
    67,    73,    77,    81,   161,     0,   203,   204,     0,     0,
     0,     0,     0,     0,     0,   115,   134,     0,    86,   205,
   146,   173,     0,   209,     0,     0,     0,     0,    53,   199,
     0,     0,   215,     0,   216,   210,     0,     0,   145,   196,
   214,   213,     0,   212,   211 };
typedef struct { char *t_name; int t_val; } yytoktype;
#ifndef YYDEBUG
#	define YYDEBUG	0	/* don't allow debugging */
#endif

#if YYDEBUG

yytoktype yytoks[] =
{
	"INC",	257,
	"DEC",	258,
	"COM",	259,
	"NOT",	260,
	"AND",	261,
	"MUL",	262,
	"DIV",	263,
	"MOD",	264,
	"ADD",	265,
	"SUB",	266,
	"LS",	267,
	"RS",	268,
	"LT",	269,
	"GT",	270,
	"LT_EQ",	271,
	"GT_EQ",	272,
	"COMP",	273,
	"NOT_EQ",	274,
	"XOR",	275,
	"OR",	276,
	"BOOL_AND",	277,
	"BOOL_OR",	278,
	"Id",	279,
	"Keyword",	280,
	"Operator",	281,
	"Seperator",	282,
	"Const",	283,
	"Space",	284,
	"END",	285,
	"Integer",	286,
	"Character",	287,
	"String",	288,
	"EQ",	289,
	"QES",	290,
	"ADD_EQ",	291,
	"SUB_EQ",	292,
	"MUL_EQ",	293,
	"DIV_EQ",	294,
	"MOD_EQ",	295,
	"LS_EQ",	296,
	"RS_EQ",	297,
	"AND_EQ",	298,
	"XOR_EQ",	299,
	"OR_EQ",	300,
	"DO",	301,
	"FOR",	302,
	"RET",	303,
	"BREAK",	304,
	"ELSE",	305,
	"SHORT",	306,
	"GOTO",	307,
	"SIGNED",	308,
	"UNSIGNED",	309,
	"VOID",	310,
	"IF",	311,
	"CHAR",	312,
	"INT",	313,
	"CONTINUE",	314,
	"LONG",	315,
	"WHILE",	316,
	"NEWLINE",	317,
	"H_TAB",	318,
	"BACKSPACE",	319,
	"CR",	320,
	"FF",	321,
	"V_TAB",	322,
	"ESC_BSLASH",	323,
	"ESC_SINGLE_QUOTE",	324,
	"ESC_DOUBLE_QUOTE",	325,
	"BELL",	326,
	"ESC_QUESTION",	327,
	"ESC_OCTAL",	328,
	"OPEN_BRACE",	329,
	"CLOSE_BRACE",	330,
	"OPEN_BRACKET",	331,
	"CLOSE_BRACKET",	332,
	"OPEN_CBRACE",	333,
	"CLOSE_CBRACE",	334,
	"COMMA",	335,
	"COLON",	336,
	"SEMICOLON",	337,
	"-unknown-",	-1	/* ends search */
};

char * yyreds[] =
{
	"-no such reduction-",
      "translation_unit : top_level_decl",
      "translation_unit : translation_unit top_level_decl",
      "top_level_decl : decl",
      "top_level_decl : function_definition",
      "decl : declaration_specifiers initialized_declarator_list SEMICOLON",
      "declaration_specifiers : type_specifier",
      "declaration_specifiers : type_specifier declaration_specifiers",
      "type_specifier : int_type_specifier",
      "type_specifier : void_type_specifier",
      "int_type_specifier : signed_type_specifier",
      "int_type_specifier : unsigned_type_specifier",
      "int_type_specifier : char_type_specifier",
      "void_type_specifier : VOID",
      "signed_type_specifier : SHORT INT",
      "signed_type_specifier : SIGNED SHORT",
      "signed_type_specifier : SIGNED SHORT INT",
      "signed_type_specifier : INT",
      "signed_type_specifier : SIGNED INT",
      "signed_type_specifier : SIGNED",
      "signed_type_specifier : LONG",
      "signed_type_specifier : LONG INT",
      "signed_type_specifier : SIGNED LONG",
      "signed_type_specifier : SIGNED LONG INT",
      "signed_type_specifier : SHORT",
      "unsigned_type_specifier : UNSIGNED",
      "unsigned_type_specifier : UNSIGNED SHORT INT",
      "unsigned_type_specifier : UNSIGNED SHORT",
      "unsigned_type_specifier : UNSIGNED INT",
      "unsigned_type_specifier : UNSIGNED LONG",
      "unsigned_type_specifier : UNSIGNED LONG INT",
      "char_type_specifier : CHAR",
      "char_type_specifier : UNSIGNED CHAR",
      "char_type_specifier : SIGNED CHAR",
      "initialized_declarator_list : initialized_declarator",
      "initialized_declarator_list : initialized_declarator_list COMMA initialized_declarator",
      "initialized_declarator : declarator",
      "declarator : pointer_declarator",
      "declarator : direct_declarator",
      "pointer_declarator : pointer direct_declarator",
      "pointer : MUL",
      "pointer : MUL pointer",
      "direct_declarator : simple_declarator",
      "direct_declarator : OPEN_BRACE declarator CLOSE_BRACE",
      "direct_declarator : array_declarator",
      "direct_declarator : function_declarator",
      "simple_declarator : identifier",
      "array_declarator : direct_declarator OPEN_BRACKET CLOSE_BRACKET",
      "array_declarator : direct_declarator OPEN_BRACKET constant_expr CLOSE_BRACKET",
      "array_declarator : direct_declarator OPEN_BRACKET MUL",
      "array_declarator : direct_declarator OPEN_BRACKET array_size_expr CLOSE_BRACKET",
      "constant_expr : conditional_expr",
      "conditional_expr : logical_or_expr",
      "conditional_expr : logical_or_expr QES expr COLON conditional_expr",
      "logical_or_expr : logical_and_expr",
      "logical_or_expr : logical_or_expr BOOL_OR logical_and_expr",
      "logical_and_expr : bitwise_or_expr",
      "logical_and_expr : logical_and_expr BOOL_AND bitwise_or_expr",
      "bitwise_or_expr : bitwise_xor_expr",
      "bitwise_or_expr : bitwise_or_expr OR bitwise_xor_expr",
      "bitwise_xor_expr : bitwise_and_expr",
      "bitwise_xor_expr : bitwise_and_expr XOR bitwise_and_expr",
      "bitwise_and_expr : equality_expr",
      "bitwise_and_expr : bitwise_and_expr AND equality_expr",
      "equality_expr : relational_expr",
      "equality_expr : equality_expr COMP relational_expr",
      "relational_expr : shift_expr",
      "relational_expr : relational_expr relational_op shift_expr",
      "relational_op : LT",
      "relational_op : LT_EQ",
      "relational_op : GT",
      "relational_op : GT_EQ",
      "shift_expr : additive_expr",
      "shift_expr : shift_expr shift_op additive_expr",
      "shift_op : LS",
      "shift_op : RS",
      "additive_expr : multiplicative_expr",
      "additive_expr : additive_expr add_op multiplicative_expr",
      "add_op : ADD",
      "add_op : SUB",
      "multiplicative_expr : cast_expr",
      "multiplicative_expr : multiplicative_expr mul_op cast_expr",
      "mul_op : MUL",
      "mul_op : DIV",
      "mul_op : MOD",
      "cast_expr : unary_expr",
      "cast_expr : OPEN_BRACE type_name CLOSE_BRACE cast_expr",
      "unary_expr : postfix_expr",
      "unary_expr : unary_minus_expr",
      "unary_expr : unary_plus_expr",
      "unary_expr : logical_negation_expr",
      "unary_expr : bitwise_negation_expr",
      "unary_expr : address_expr",
      "unary_expr : indirection_expr",
      "unary_expr : preincrement_expr",
      "unary_expr : predecrement_expr",
      "unary_minus_expr : SUB cast_expr",
      "unary_plus_expr : ADD cast_expr",
      "predecrement_expr : DEC unary_expr",
      "preincrement_expr : INC unary_expr",
      "indirection_expr : mul_op cast_expr",
      "address_expr : AND cast_expr",
      "bitwise_negation_expr : COM cast_expr",
      "logical_negation_expr : NOT cast_expr",
      "postfix_expr : primary_expr",
      "postfix_expr : subscript_expr",
      "postfix_expr : function_call",
      "postfix_expr : post_increment_expr",
      "postfix_expr : post_decrement_expr",
      "primary_expr : identifier",
      "primary_expr : constant",
      "primary_expr : paranthesized_expr",
      "paranthesized_expr : OPEN_BRACE expr CLOSE_BRACE",
      "post_increment_expr : postfix_expr INC",
      "post_decrement_expr : postfix_expr DEC",
      "subscript_expr : postfix_expr OPEN_BRACKET expr CLOSE_BRACKET",
      "expr : comma_expr",
      "comma_expr : assignment_expr",
      "comma_expr : comma_expr COMMA assignment_expr",
      "assignment_expr : conditional_expr",
      "assignment_expr : unary_expr assignment_op assignment_expr",
      "assignment_op : EQ",
      "assignment_op : ADD_EQ",
      "assignment_op : SUB_EQ",
      "assignment_op : MUL_EQ",
      "assignment_op : DIV_EQ",
      "assignment_op : MOD_EQ",
      "assignment_op : LS_EQ",
      "assignment_op : RS_EQ",
      "assignment_op : AND_EQ",
      "assignment_op : XOR_EQ",
      "assignment_op : OR_EQ",
      "assignment_op : NOT_EQ",
      "function_call : postfix_expr OPEN_BRACE CLOSE_BRACE",
      "function_call : postfix_expr OPEN_BRACE expression_list CLOSE_BRACE",
      "function_declarator : direct_declarator OPEN_BRACE parameter_type_list CLOSE_BRACE",
      "function_definition : function_def_specifier compound_statement",
      "function_def_specifier : declarator",
      "function_def_specifier : declaration_specifiers declarator",
      "function_def_specifier : declarator declaration_list",
      "function_def_specifier : declaration_specifiers declarator declaration_list",
      "goto_statement : GOTO named_label SEMICOLON",
      "identifier_list : identifier",
      "identifier_list : parameter_list COMMA identifier",
      "identifier : Id",
      "if_else_statement : IF OPEN_BRACE expr CLOSE_BRACE statement ELSE statement",
      "if_statement : IF OPEN_BRACE expr CLOSE_BRACE statement",
      "initial_clause : expr",
      "initial_clause : decl",
      "iterative_statement : while_statement",
      "iterative_statement : do_statement",
      "iterative_statement : for_statement",
      "label : named_label",
      "labeled_statement : label COLON statement",
      "named_label : identifier",
      "null_statement : SEMICOLON",
      "parameter_decl : declaration_specifiers declarator",
      "parameter_decl : declaration_specifiers",
      "parameter_decl : declaration_specifiers abstract_decl",
      "parameter_decl : abstract_decl",
      "parameter_list : parameter_decl",
      "parameter_list : parameter_list COMMA parameter_decl",
      "parameter_type_list : parameter_list",
      "statement : expression_statement",
      "statement : labeled_statement",
      "statement : compound_statement",
      "statement : conditional_statement",
      "statement : iterative_statement",
      "statement : break_statement",
      "statement : continue_statement",
      "statement : return_statement",
      "statement : goto_statement",
      "statement : null_statement",
      "while_statement : WHILE OPEN_BRACE expr CLOSE_BRACE statement",
      "abstract_decl : pointer",
      "abstract_decl : direct_abstract_decl",
      "abstract_decl : pointer direct_abstract_decl",
      "break_statement : BREAK SEMICOLON",
      "compound_statement : OPEN_CBRACE declaration_or_statement_list CLOSE_CBRACE",
      "compound_statement : OPEN_CBRACE CLOSE_CBRACE",
      "conditional_statement : if_statement",
      "conditional_statement : if_else_statement",
      "constant : integer_constant",
      "constant : character_constant",
      "constant : string_constant",
      "integer_constant : Integer",
      "character_constant : Character",
      "string_constant : String",
      "constant_expr : conditional_expr",
      "continue_statement : CONTINUE SEMICOLON",
      "declaration_list : decl",
      "declaration_list : declaration_list decl",
      "declaration_or_statement : decl",
      "declaration_or_statement : statement",
      "declaration_or_statement_list : declaration_or_statement",
      "declaration_or_statement_list : declaration_or_statement_list declaration_or_statement",
      "do_statement : DO statement WHILE OPEN_BRACE expr CLOSE_BRACE SEMICOLON",
      "expression_statement : expr SEMICOLON",
      "expression_list : assignment_expr",
      "expression_list : expression_list COMMA assignment_expr",
      "array_size_expr : assignment_expr",
      "return_statement : RET SEMICOLON",
      "return_statement : RET expr SEMICOLON",
      "direct_abstract_decl : OPEN_BRACE abstract_decl CLOSE_BRACE",
      "direct_abstract_decl : OPEN_BRACKET constant_expr CLOSE_BRACKET",
      "direct_abstract_decl : direct_abstract_decl OPEN_BRACKET constant_expr CLOSE_BRACKET",
      "type_name : declaration_specifiers",
      "type_name : declaration_specifiers abstract_decl",
      "for_statement : FOR for_expr statement",
      "for_expr : OPEN_BRACE SEMICOLON SEMICOLON CLOSE_BRACE",
      "for_expr : OPEN_BRACE initial_clause SEMICOLON SEMICOLON CLOSE_BRACE",
      "for_expr : OPEN_BRACE initial_clause SEMICOLON expr SEMICOLON expr CLOSE_BRACE",
      "for_expr : OPEN_BRACE initial_clause SEMICOLON expr SEMICOLON CLOSE_BRACE",
      "for_expr : OPEN_BRACE initial_clause SEMICOLON SEMICOLON expr CLOSE_BRACE",
      "for_expr : OPEN_BRACE SEMICOLON expr SEMICOLON expr CLOSE_BRACE",
      "for_expr : OPEN_BRACE SEMICOLON SEMICOLON expr CLOSE_BRACE",
      "for_expr : OPEN_BRACE SEMICOLON expr SEMICOLON CLOSE_BRACE",
};
#endif /* YYDEBUG */
/*
 * (c) Copyright 1990, OPEN SOFTWARE FOUNDATION, INC.
 * ALL RIGHTS RESERVED
 */
/*
 * OSF/1 Release 1.0
 */
/* @(#)yaccpar	1.3  com/cmd/lang/yacc,3.1, 9/7/89 18:46:37 */
/*
** Skeleton parser driver for yacc output
*/

/*
** yacc user known macros and defines
*/
#ifdef YYSPLIT
#   define YYERROR	return(-2)
#else
#   define YYERROR	goto yyerrlab
#endif

#define YYACCEPT	return(0)
#define YYABORT		return(1)
#define YYBACKUP( newtoken, newvalue )\
{\
	if ( yychar >= 0 || ( yyr2[ yytmp ] >> 1 ) != 1 )\
	{\
		yyerror( "syntax error - cannot backup" );\
		goto yyerrlab;\
	}\
	yychar = newtoken;\
	yystate = *yyps;\
	yylval = newvalue;\
	goto yynewstate;\
}
#define YYRECOVERING()	(!!yyerrflag)
#ifndef YYDEBUG
#	define YYDEBUG	1	/* make debugging available */
#endif

/*
** user known globals
*/
int yydebug;			/* set to 1 to get debugging */

/*
** driver internal defines
*/
#define YYFLAG		(-1000)

#ifdef YYSPLIT
#   define YYSCODE { \
			extern int (*yyf[])(); \
			register int yyret; \
			if (yyf[yytmp]) \
			    if ((yyret=(*yyf[yytmp])()) == -2) \
				    goto yyerrlab; \
				else if (yyret>=0) return(yyret); \
		   }
#endif

/*
** local variables used by the parser
 * these should be static in order to support
 * multiple parsers in a single executable program. POSIX 1003.2-1993
 */
static YYSTYPE yyv[ YYMAXDEPTH ];	/* value stack */
static int yys[ YYMAXDEPTH ];		/* state stack */

static YYSTYPE *yypv;			/* top of value stack */
static YYSTYPE *yypvt;			/* top of value stack for $vars */
static int *yyps;			/* top of state stack */

static int yystate;			/* current state */
static int yytmp;			/* extra var (lasts between blocks) */

/*
** global variables used by the parser - renamed as a result of -p
*/
int yynerrs;			/* number of errors */
int yyerrflag;			/* error recovery flag */
int yychar;			/* current input token number */

/*
** yyparse - return 0 if worked, 1 if syntax error not recovered from
*/
int
yyparse()
{
	/*
	** Initialize externals - yyparse may be called more than once
	*/
	yypv = &yyv[-1];
	yyps = &yys[-1];
	yystate = 0;
	yytmp = 0;
	yynerrs = 0;
	yyerrflag = 0;
	yychar = -1;

	goto yystack;
	{
		register YYSTYPE *yy_pv;	/* top of value stack */
		register int *yy_ps;		/* top of state stack */
		register int yy_state;		/* current state */
		register int  yy_n;		/* internal state number info */

		/*
		** get globals into registers.
		** branch to here only if YYBACKUP was called.
		*/
	yynewstate:
		yy_pv = yypv;
		yy_ps = yyps;
		yy_state = yystate;
		goto yy_newstate;

		/*
		** get globals into registers.
		** either we just started, or we just finished a reduction
		*/
	yystack:
		yy_pv = yypv;
		yy_ps = yyps;
		yy_state = yystate;

		/*
		** top of for (;;) loop while no reductions done
		*/
	yy_stack:
		/*
		** put a state and value onto the stacks
		*/
#if YYDEBUG
		/*
		** if debugging, look up token value in list of value vs.
		** name pairs.  0 and negative (-1) are special values.
		** Note: linear search is used since time is not a real
		** consideration while debugging.
		*/
		if ( yydebug )
		{
			register int yy_i;

			printf( "State %d, token ", yy_state );
			if ( yychar == 0 )
				printf( "end-of-file\n" );
			else if ( yychar < 0 )
				printf( "-none-\n" );
			else
			{
				for ( yy_i = 0; yytoks[yy_i].t_val >= 0;
					yy_i++ )
				{
					if ( yytoks[yy_i].t_val == yychar )
						break;
				}
				printf( "%s\n", yytoks[yy_i].t_name );
			}
		}
#endif /* YYDEBUG */
		if ( ++yy_ps >= &yys[ YYMAXDEPTH ] )	/* room on stack? */
		{
			yyerror( "yacc stack overflow" );
			YYABORT;
		}
		*yy_ps = yy_state;
		*++yy_pv = yyval;

		/*
		** we have a new state - find out what to do
		*/
	yy_newstate:
		if ( ( yy_n = yypact[ yy_state ] ) <= YYFLAG )
			goto yydefault;		/* simple state */
#if YYDEBUG
		/*
		** if debugging, need to mark whether new token grabbed
		*/
		yytmp = yychar < 0;
#endif
		if ( ( yychar < 0 ) && ( ( yychar = yylex() ) < 0 ) )
			yychar = 0;		/* reached EOF */
#if YYDEBUG
		if ( yydebug && yytmp )
		{
			register int yy_i;

			printf( "Received token " );
			if ( yychar == 0 )
				printf( "end-of-file\n" );
			else if ( yychar < 0 )
				printf( "-none-\n" );
			else
			{
				for ( yy_i = 0; yytoks[yy_i].t_val >= 0;
					yy_i++ )
				{
					if ( yytoks[yy_i].t_val == yychar )
						break;
				}
				printf( "%s\n", yytoks[yy_i].t_name );
			}
		}
#endif /* YYDEBUG */
		if ( ( ( yy_n += yychar ) < 0 ) || ( yy_n >= YYLAST ) )
			goto yydefault;
		if ( yychk[ yy_n = yyact[ yy_n ] ] == yychar )	/*valid shift*/
		{
			yychar = -1;
			yyval = yylval;
			yy_state = yy_n;
			if ( yyerrflag > 0 )
				yyerrflag--;
			goto yy_stack;
		}

	yydefault:
		if ( ( yy_n = yydef[ yy_state ] ) == -2 )
		{
#if YYDEBUG
			yytmp = yychar < 0;
#endif
			if ( ( yychar < 0 ) && ( ( yychar = yylex() ) < 0 ) )
				yychar = 0;		/* reached EOF */
#if YYDEBUG
			if ( yydebug && yytmp )
			{
				register int yy_i;

				printf( "Received token " );
				if ( yychar == 0 )
					printf( "end-of-file\n" );
				else if ( yychar < 0 )
					printf( "-none-\n" );
				else
				{
					for ( yy_i = 0;
						yytoks[yy_i].t_val >= 0;
						yy_i++ )
					{
						if ( yytoks[yy_i].t_val
							== yychar )
						{
							break;
						}
					}
					printf( "%s\n", yytoks[yy_i].t_name );
				}
			}
#endif /* YYDEBUG */
			/*
			** look through exception table
			*/
			{
				register const int *yyxi = yyexca;

				while ( ( *yyxi != -1 ) ||
					( yyxi[1] != yy_state ) )
				{
					yyxi += 2;
				}
				while ( ( *(yyxi += 2) >= 0 ) &&
					( *yyxi != yychar ) )
					;
				if ( ( yy_n = yyxi[1] ) < 0 )
					YYACCEPT;
			}
		}

		/*
		** check for syntax error
		*/
		if ( yy_n == 0 )	/* have an error */
		{
			/* no worry about speed here! */
			switch ( yyerrflag )
			{
			case 0:		/* new error */
				yyerror( "syntax error" );
				goto skip_init;
			yyerrlab:
				/*
				** get globals into registers.
				** we have a user generated syntax type error
				*/
				yy_pv = yypv;
				yy_ps = yyps;
				yy_state = yystate;
				yynerrs++;
			skip_init:
			case 1:
			case 2:		/* incompletely recovered error */
					/* try again... */
				yyerrflag = 3;
				/*
				** find state where "error" is a legal
				** shift action
				*/
				while ( yy_ps >= yys )
				{
					yy_n = yypact[ *yy_ps ] + YYERRCODE;
					if ( yy_n >= 0 && yy_n < YYLAST &&
						yychk[yyact[yy_n]] == YYERRCODE)					{
						/*
						** simulate shift of "error"
						*/
						yy_state = yyact[ yy_n ];
						goto yy_stack;
					}
					/*
					** current state has no shift on
					** "error", pop stack
					*/
#if YYDEBUG
#	define _POP_ "Error recovery pops state %d, uncovers state %d\n"
					if ( yydebug )
						printf( _POP_, *yy_ps,
							yy_ps[-1] );
#	undef _POP_
#endif
					yy_ps--;
					yy_pv--;
				}
				/*
				** there is no state on stack with "error" as
				** a valid shift.  give up.
				*/
				YYABORT;
			case 3:		/* no shift yet; eat a token */
#if YYDEBUG
				/*
				** if debugging, look up token in list of
				** pairs.  0 and negative shouldn't occur,
				** but since timing doesn't matter when
				** debugging, it doesn't hurt to leave the
				** tests here.
				*/
				if ( yydebug )
				{
					register int yy_i;

					printf( "Error recovery discards " );
					if ( yychar == 0 )
						printf( "token end-of-file\n" );
					else if ( yychar < 0 )
						printf( "token -none-\n" );
					else
					{
						for ( yy_i = 0;
							yytoks[yy_i].t_val >= 0;
							yy_i++ )
						{
							if ( yytoks[yy_i].t_val
								== yychar )
							{
								break;
							}
						}
						printf( "token %s\n",
							yytoks[yy_i].t_name );
					}
				}
#endif /* YYDEBUG */
				if ( yychar == 0 )	/* reached EOF. quit */
					YYABORT;
				yychar = -1;
				goto yy_newstate;
			}
		}/* end if ( yy_n == 0 ) */
		/*
		** reduction by production yy_n
		** put stack tops, etc. so things right after switch
		*/
#if YYDEBUG
		/*
		** if debugging, print the string that is the user's
		** specification of the reduction which is just about
		** to be done.
		*/
		if ( yydebug )
			printf( "Reduce by (%d) \"%s\"\n",
				yy_n, yyreds[ yy_n ] );
#endif
		yytmp = yy_n;			/* value to switch over */
		yypvt = yy_pv;			/* $vars top of value stack */
		/*
		** Look in goto table for next state
		** Sorry about using yy_state here as temporary
		** register variable, but why not, if it works...
		** If yyr2[ yy_n ] doesn't have the low order bit
		** set, then there is no action to be done for
		** this reduction.  So, no saving & unsaving of
		** registers done.  The only difference between the
		** code just after the if and the body of the if is
		** the goto yy_stack in the body.  This way the test
		** can be made before the choice of what to do is needed.
		*/
		{
			/* length of production doubled with extra bit */
			register int yy_len = yyr2[ yy_n ];

			if ( !( yy_len & 01 ) )
			{
				yy_len >>= 1;
				yyval = ( yy_pv -= yy_len )[1];	/* $$ = $1 */
				yy_state = yypgo[ yy_n = yyr1[ yy_n ] ] +
					*( yy_ps -= yy_len ) + 1;
				if ( yy_state >= YYLAST ||
					yychk[ yy_state =
					yyact[ yy_state ] ] != -yy_n )
				{
					yy_state = yyact[ yypgo[ yy_n ] ];
				}
				goto yy_stack;
			}
			yy_len >>= 1;
			yyval = ( yy_pv -= yy_len )[1];	/* $$ = $1 */
			yy_state = yypgo[ yy_n = yyr1[ yy_n ] ] +
				*( yy_ps -= yy_len ) + 1;
			if ( yy_state >= YYLAST ||
				yychk[ yy_state = yyact[ yy_state ] ] != -yy_n )
			{
				yy_state = yyact[ yypgo[ yy_n ] ];
			}
		}
					/* save until reenter driver code */
		yystate = yy_state;
		yyps = yy_ps;
		yypv = yy_pv;
	}
	/*
	** code supplied by user is placed in this switch
	*/

		switch(yytmp){

case 1:
# line 229 "translate.y"
{yyval.nodeptr = createNode("TranslationUnit",NonTerminal,yypvt[-0].nodeptr);
									 addToList(yyval.nodeptr);
									  } /*NOTREACHED*/ break;
case 2:
# line 234 "translate.y"
{yyval.nodeptr = createNode("TranslationUnit",NonTerminal,0,yypvt[-0].nodeptr);
									 
									 addToList(yypvt[-0].nodeptr);
									  } /*NOTREACHED*/ break;
case 3:
# line 240 "translate.y"
{yyval.nodeptr = createNode("Top_l_Decl",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 4:
# line 241 "translate.y"
{yyval.nodeptr = createNode("Top_l_Decl",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 5:
# line 245 "translate.y"
{yyval.nodeptr = createNode("Decl",Decl,yypvt[-2].nodeptr,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[2] = SEMICOLON;
									 } /*NOTREACHED*/ break;
case 6:
# line 251 "translate.y"
{yyval.nodeptr = createNode("Decl_Spec",Decl_Spec,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 7:
# line 252 "translate.y"
{yyval.nodeptr = createNode("Decl_Spec",Decl_Spec,yypvt[-1].nodeptr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 8:
# line 255 "translate.y"
{yyval.nodeptr = createNode("Type_Spec",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 9:
# line 256 "translate.y"
{yyval.nodeptr = createNode("Type_Spec",NonTerminal,yypvt[-0].typeNode);} /*NOTREACHED*/ break;
case 10:
# line 259 "translate.y"
{yyval.nodeptr = createNode("Int_Type_Spec",NonTerminal,yypvt[-0].typeNode);} /*NOTREACHED*/ break;
case 11:
# line 260 "translate.y"
{yyval.nodeptr = createNode("Int_Type_Spec",NonTerminal,yypvt[-0].typeNode);} /*NOTREACHED*/ break;
case 12:
# line 261 "translate.y"
{yyval.nodeptr = createNode("Int_Type_Spec",NonTerminal,yypvt[-0].typeNode);} /*NOTREACHED*/ break;
case 13:
# line 264 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Void_Type_Spec",Type_terminal);
									 yyval.typeNode->terminalVal[0] = VOID;
									 yyval.typeNode->Decl_type = void_;} /*NOTREACHED*/ break;
case 14:
# line 271 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = signed_short_int_; 
									 yyval.typeNode->terminalVal[0] = SHORT; 
									 yyval.typeNode->terminalVal[1] = INT;} /*NOTREACHED*/ break;
case 15:
# line 276 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = signed_short_int_; 
									 yyval.typeNode->terminalVal[0] = SIGNED; 
									 yyval.typeNode->terminalVal[1] = SHORT;} /*NOTREACHED*/ break;
case 16:
# line 281 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = signed_short_int_; 
									 yyval.typeNode->terminalVal[0] = SIGNED; 
									 yyval.typeNode->terminalVal[1] = SHORT; 
									 yyval.typeNode->terminalVal[2] = INT;} /*NOTREACHED*/ break;
case 17:
# line 287 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = signed_int_; 
									 yyval.typeNode->terminalVal[0] = INT;} /*NOTREACHED*/ break;
case 18:
# line 291 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = signed_int_; 
									 yyval.typeNode->terminalVal[0] = SIGNED; 
									 yyval.typeNode->terminalVal[1] = INT;} /*NOTREACHED*/ break;
case 19:
# line 296 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = signed_int_; 
									 yyval.typeNode->terminalVal[0] = SIGNED;} /*NOTREACHED*/ break;
case 20:
# line 300 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = signed_long_int_; 
									 yyval.typeNode->terminalVal[0] = LONG;} /*NOTREACHED*/ break;
case 21:
# line 304 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = signed_long_int_; 
									 yyval.typeNode->terminalVal[0] = LONG; 
									 yyval.typeNode->terminalVal[1] = INT;} /*NOTREACHED*/ break;
case 22:
# line 309 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = signed_long_int_; 
									 yyval.typeNode->terminalVal[0] = SIGNED; 
									 yyval.typeNode->terminalVal[1] = LONG;} /*NOTREACHED*/ break;
case 23:
# line 314 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = signed_long_int_; 
									 yyval.typeNode->terminalVal[0] = SIGNED; 
									 yyval.typeNode->terminalVal[1] = LONG; 
									 yyval.typeNode->terminalVal[2] = INT;} /*NOTREACHED*/ break;
case 24:
# line 320 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Signed_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = signed_short_int_; 
									 yyval.typeNode->terminalVal[0] = SHORT;} /*NOTREACHED*/ break;
case 25:
# line 326 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Unsigned_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = unsigned_short_int_; 
									 yyval.typeNode->terminalVal[0] = UNSIGNED;} /*NOTREACHED*/ break;
case 26:
# line 330 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Unsigned_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = unsigned_short_int_; 
									 yyval.typeNode->terminalVal[0] = UNSIGNED;
									 yyval.typeNode->terminalVal[1] = SHORT;
									 yyval.typeNode->terminalVal[2] = INT;} /*NOTREACHED*/ break;
case 27:
# line 336 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Unsigned_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = unsigned_short_int_; 
									 yyval.typeNode->terminalVal[0] = UNSIGNED;
									 yyval.typeNode->terminalVal[1] = SHORT;} /*NOTREACHED*/ break;
case 28:
# line 341 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Unsigned_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = unsigned_int_; 
									 yyval.typeNode->terminalVal[0] = UNSIGNED;
									 yyval.typeNode->terminalVal[1] = INT;} /*NOTREACHED*/ break;
case 29:
# line 346 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Unsigned_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = unsigned_long_int_; 
									 yyval.typeNode->terminalVal[0] = UNSIGNED;
									 yyval.typeNode->terminalVal[1] = LONG;} /*NOTREACHED*/ break;
case 30:
# line 351 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Unsigned_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = unsigned_long_int_; 
									 yyval.typeNode->terminalVal[0] = UNSIGNED;
									 yyval.typeNode->terminalVal[1] = LONG;
									 yyval.typeNode->terminalVal[2] = INT;} /*NOTREACHED*/ break;
case 31:
# line 359 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Char_Type_Specifier",Type_terminal);
									 yyval.typeNode->Decl_type = signed_char_; 
									 yyval.typeNode->terminalVal[0] = CHAR;} /*NOTREACHED*/ break;
case 32:
# line 363 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Char_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = unsigned_char_; 
									 yyval.typeNode->terminalVal[0] = UNSIGNED;
									 yyval.typeNode->terminalVal[1] = CHAR;} /*NOTREACHED*/ break;
case 33:
# line 368 "translate.y"
{yyval.typeNode = (Type_terminal_Node *)createNode("Char_Type_Spec",Type_terminal);
									 yyval.typeNode->Decl_type = signed_char_; 
									 yyval.typeNode->terminalVal[0] = SIGNED;
									 yyval.typeNode->terminalVal[1] = CHAR;} /*NOTREACHED*/ break;
case 34:
# line 374 "translate.y"
{yyval.nodeptr = createNode("Init_Decl_list",Init_Decl_list,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 35:
# line 376 "translate.y"
{yyval.nodeptr = createNode("Init_Decl_list",Init_Decl_list,yypvt[-2].nodeptr,0,yypvt[-0].nodeptr);
									 yyval.nodeptr->terminalVal[1] = COMMA;} /*NOTREACHED*/ break;
case 36:
# line 380 "translate.y"
{yyval.nodeptr = createNode("Init_Decl",Init_Decl,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 37:
# line 383 "translate.y"
{yyval.nodeptr = createNode("Declarator",Declarator,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 38:
# line 384 "translate.y"
{yyval.nodeptr = createNode("Declarator",Declarator,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 39:
# line 387 "translate.y"
{yyval.nodeptr = createNode("Pointer_Decl",Pointer_Decl,yypvt[-1].nodeptr,yypvt[-0].nodeptr,0,0,0);} /*NOTREACHED*/ break;
case 40:
# line 391 "translate.y"
{yyval.nodeptr = createNode("Pointer",Pointer);
									 yyval.nodeptr->terminalVal[0] = MUL;} /*NOTREACHED*/ break;
case 41:
# line 394 "translate.y"
{yyval.nodeptr = createNode("Pointer",Pointer,0,yypvt[-0].nodeptr);
									 yyval.nodeptr->terminalVal[0] = MUL;} /*NOTREACHED*/ break;
case 42:
# line 398 "translate.y"
{yyval.nodeptr = createNode("Direct_Decl",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 43:
# line 399 "translate.y"
{yyval.nodeptr = createNode("Direct_Decl",NonTerminal,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[0] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[2] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 44:
# line 402 "translate.y"
{yyval.nodeptr = createNode("Direct_Decl",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 45:
# line 403 "translate.y"
{yyval.nodeptr = createNode("Direct_Decl",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 46:
# line 407 "translate.y"
{yyval.nodeptr = createNode("Simple_Decl",Simple_Decl,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 47:
# line 411 "translate.y"
{yyval.nodeptr = createNode("Array_Decl",Array_Decl,yypvt[-2].nodeptr);
									 yyval.nodeptr->terminalVal[1] = OPEN_BRACKET;
									 yyval.nodeptr->terminalVal[2] = CLOSE_BRACKET;} /*NOTREACHED*/ break;
case 48:
# line 415 "translate.y"
{yyval.nodeptr = createNode("Array_Decl",Array_Decl,yypvt[-3].nodeptr,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[1] = OPEN_BRACKET;
									 yyval.nodeptr->terminalVal[3] = CLOSE_BRACKET;} /*NOTREACHED*/ break;
case 49:
# line 419 "translate.y"
{yyval.nodeptr = createNode("Array_Decl",Array_Decl,yypvt[-2].nodeptr);
									 yyval.nodeptr->terminalVal[1] = OPEN_BRACKET;
									 yyval.nodeptr->terminalVal[2] = MUL;} /*NOTREACHED*/ break;
case 50:
# line 423 "translate.y"
{yyval.nodeptr = createNode("Array_Decl",Array_Decl,yypvt[-3].nodeptr,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[1] = OPEN_BRACKET;
									 yyval.nodeptr->terminalVal[3] = CLOSE_BRACKET;} /*NOTREACHED*/ break;
case 51:
# line 429 "translate.y"
{yyval.nodeptr = createNode("Constant_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 52:
# line 433 "translate.y"
{yyval.nodeptr = createNode("Conditional_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 53:
# line 435 "translate.y"
{yyval.nodeptr = createNode("Conditional_Expr",Expr,yypvt[-4].nodeptr,0,yypvt[-2].nodeptr,0,yypvt[-0].nodeptr);
									 yyval.nodeptr->terminalVal[1] = QES;
									 yyval.nodeptr->terminalVal[3] = COLON;} /*NOTREACHED*/ break;
case 54:
# line 442 "translate.y"
{yyval.nodeptr = createNode("Logical_Or_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 55:
# line 444 "translate.y"
{Op_Node* p = (Op_Node *)createNode("(BOOL_OR)",Op);
									 p->opType = (int)BOOL_OR;
									 assignOpChildren(p,yypvt[-2].nodeptr,yypvt[-0].nodeptr);
									yyval.nodeptr = createNode("Logical_Or_Expr",Expr,p);} /*NOTREACHED*/ break;
case 56:
# line 451 "translate.y"
{yyval.nodeptr = createNode("Logical_And_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 57:
# line 453 "translate.y"
{Op_Node* p = (Op_Node *)createNode("(BOOL_AND)",Op);
									 p->opType = BOOL_AND;
									 assignOpChildren(p,yypvt[-2].nodeptr,yypvt[-0].nodeptr);
									yyval.nodeptr = createNode("Logical_And_Expr",Expr,p);} /*NOTREACHED*/ break;
case 58:
# line 460 "translate.y"
{yyval.nodeptr = createNode("Bitwise_or_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 59:
# line 462 "translate.y"
{Op_Node* p = (Op_Node *)createNode("(OR)",Op);
									 p->opType = OR;
									 assignOpChildren(p,yypvt[-2].nodeptr,yypvt[-0].nodeptr);
									yyval.nodeptr = createNode("Bitwise_or_Expr",Expr,p);} /*NOTREACHED*/ break;
case 60:
# line 469 "translate.y"
{yyval.nodeptr = createNode("Bitwise_Xor_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 61:
# line 471 "translate.y"
{Op_Node* p = (Op_Node *)createNode("(XOR)",Op);
									 p->opType = XOR;
									 assignOpChildren(p,yypvt[-2].nodeptr,yypvt[-0].nodeptr);
									 yyval.nodeptr = createNode("Bitwise_Xor_Expr",Expr,p);} /*NOTREACHED*/ break;
case 62:
# line 478 "translate.y"
{yyval.nodeptr = createNode("Bitwise_ANd_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 63:
# line 480 "translate.y"
{Op_Node* p = (Op_Node *)createNode("(AND)",Op);
									 p->opType = AND;
									 assignOpChildren(p,yypvt[-2].nodeptr,yypvt[-0].nodeptr);
									 yyval.nodeptr = createNode("Bitwise_ANd_Expr",Expr,p);
									 } /*NOTREACHED*/ break;
case 64:
# line 488 "translate.y"
{yyval.nodeptr = createNode("Equality_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 65:
# line 490 "translate.y"
{Op_Node* p = (Op_Node *)createNode("(COMP)",Op);
									 p->opType = COMP;
									 assignOpChildren(p,yypvt[-2].nodeptr,yypvt[-0].nodeptr);
									yyval.nodeptr = createNode("Equality_Expr",Expr,p);} /*NOTREACHED*/ break;
case 66:
# line 497 "translate.y"
{yyval.nodeptr = createNode("Relational_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 67:
# line 499 "translate.y"
{assignOpChildren((Op_Node *)yypvt[-1].nodeptr,yypvt[-2].nodeptr,yypvt[-0].nodeptr);
									 yyval.nodeptr = createNode("Relational_Expr",Expr,yypvt[-1].nodeptr);} /*NOTREACHED*/ break;
case 68:
# line 504 "translate.y"
{yyval.nodeptr = createNode("Rel_Op:(LT)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = LT;} /*NOTREACHED*/ break;
case 69:
# line 507 "translate.y"
{yyval.nodeptr = createNode("Rel_Op:(LT_EQ)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = LT_EQ;} /*NOTREACHED*/ break;
case 70:
# line 510 "translate.y"
{yyval.nodeptr = createNode("Rel_Op:(GT)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = GT;} /*NOTREACHED*/ break;
case 71:
# line 513 "translate.y"
{yyval.nodeptr = createNode("Rel_Op:(GT_EQ)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = GT_EQ;} /*NOTREACHED*/ break;
case 72:
# line 518 "translate.y"
{yyval.nodeptr = createNode("Shift_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 73:
# line 520 "translate.y"
{assignOpChildren((Op_Node *)yypvt[-1].nodeptr,yypvt[-2].nodeptr,yypvt[-0].nodeptr);
									 yyval.nodeptr = createNode("Shift_Expr",Expr,yypvt[-1].nodeptr);} /*NOTREACHED*/ break;
case 74:
# line 525 "translate.y"
{yyval.nodeptr = createNode("Shift_Op:(LS)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = LS;} /*NOTREACHED*/ break;
case 75:
# line 528 "translate.y"
{yyval.nodeptr = createNode("Shift_Op;(RS)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = RS;} /*NOTREACHED*/ break;
case 76:
# line 533 "translate.y"
{yyval.nodeptr = createNode("Additive_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 77:
# line 535 "translate.y"
{assignOpChildren((Op_Node *)yypvt[-1].nodeptr,yypvt[-2].nodeptr,yypvt[-0].nodeptr);
									 yyval.nodeptr = createNode("Additive_Expr",Expr,yypvt[-1].nodeptr);} /*NOTREACHED*/ break;
case 78:
# line 540 "translate.y"
{yyval.nodeptr = createNode("Add_Op:(ADD)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = ADD;} /*NOTREACHED*/ break;
case 79:
# line 543 "translate.y"
{yyval.nodeptr = createNode("Add_Op:(SUB)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = SUB;} /*NOTREACHED*/ break;
case 80:
# line 548 "translate.y"
{yyval.nodeptr = createNode("Multiplicative_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 81:
# line 550 "translate.y"
{assignOpChildren((Op_Node *)yypvt[-1].nodeptr,yypvt[-2].nodeptr,yypvt[-0].nodeptr);
									 yyval.nodeptr = createNode("Multiplicative_Expr",Expr,yypvt[-1].nodeptr);} /*NOTREACHED*/ break;
case 82:
# line 555 "translate.y"
{yyval.nodeptr = createNode("Mul_Op:(MUL)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = MUL;} /*NOTREACHED*/ break;
case 83:
# line 558 "translate.y"
{yyval.nodeptr = createNode("Mul_Op:(DIV)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = DIV;} /*NOTREACHED*/ break;
case 84:
# line 561 "translate.y"
{yyval.nodeptr = createNode("Mul_Op:(MOD)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = MOD;} /*NOTREACHED*/ break;
case 85:
# line 566 "translate.y"
{yyval.nodeptr = createNode("Cast_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 86:
# line 568 "translate.y"
{yyval.nodeptr = createNode("Cast_Expr",Expr,0,yypvt[-2].nodeptr,0,yypvt[-0].nodeptr);
									 yyval.nodeptr->terminalVal[0] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[2] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 87:
# line 574 "translate.y"
{yyval.nodeptr = createNode("Unary_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 88:
# line 576 "translate.y"
{yyval.nodeptr = createNode("Unary_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 89:
# line 578 "translate.y"
{yyval.nodeptr = createNode("Unary_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 90:
# line 580 "translate.y"
{yyval.nodeptr = createNode("Unary_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 91:
# line 582 "translate.y"
{yyval.nodeptr = createNode("Unary_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 92:
# line 584 "translate.y"
{yyval.nodeptr = createNode("Unary_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 93:
# line 586 "translate.y"
{yyval.nodeptr = createNode("Unary_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 94:
# line 588 "translate.y"
{yyval.nodeptr = createNode("Unary_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 95:
# line 590 "translate.y"
{yyval.nodeptr = createNode("Unary_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 96:
# line 594 "translate.y"
{Op_Node* p = (Op_Node *)createNode("Unary(SUB)",Op);
									 p->opType = SUB;
									 assignOpChildren(p,yypvt[-0].nodeptr,0,0,1);
									 yyval.nodeptr = createNode("Unary_Minus_Expr",Expr,p);
									 } /*NOTREACHED*/ break;
case 97:
# line 601 "translate.y"
{Op_Node* p = (Op_Node *)createNode("Unary(ADD)",Op);
									 p->opType = ADD;
									 assignOpChildren(p,yypvt[-0].nodeptr,0,0,1);
									 yyval.nodeptr = createNode("Unary_Plus_Expr",Expr,p);
									 } /*NOTREACHED*/ break;
case 98:
# line 608 "translate.y"
{Op_Node* p = (Op_Node *)createNode("pre(DEC)",Op);
									 p->opType = DEC;
									 assignOpChildren(p,yypvt[-0].nodeptr,0,0,1);
									yyval.nodeptr = createNode("Predecrement_Expr",Expr,p);
									 } /*NOTREACHED*/ break;
case 99:
# line 615 "translate.y"
{Op_Node* p = (Op_Node *)createNode("pre(INC)",Op);
									 p->opType = INC;
									 assignOpChildren(p,yypvt[-0].nodeptr,0,0,1);
									 yyval.nodeptr = createNode("Preincrement_Expr",Expr,p);
									 } /*NOTREACHED*/ break;
case 100:
# line 622 "translate.y"
{assignOpChildren((Op_Node *)yypvt[-1].nodeptr,yypvt[-0].nodeptr,0,0,1);
									yyval.nodeptr = createNode("Indirection_Exp",Expr,yypvt[-1].nodeptr);} /*NOTREACHED*/ break;
case 101:
# line 626 "translate.y"
{Op_Node* p = (Op_Node *)createNode("address(AND)",Op);
									 p->opType = AND;
									 assignOpChildren(p,yypvt[-0].nodeptr,0,0,1);
									yyval.nodeptr = createNode("Address_Expr",Expr,p);
									 } /*NOTREACHED*/ break;
case 102:
# line 633 "translate.y"
{Op_Node* p = (Op_Node *)createNode("(COM)",Op);
									 p->opType = COM;
									 assignOpChildren(p,yypvt[-0].nodeptr,0,0,1);
									yyval.nodeptr = createNode("Bitwise_Negation_Exp",Expr,p);
									 } /*NOTREACHED*/ break;
case 103:
# line 640 "translate.y"
{Op_Node* p = (Op_Node *)createNode("(NOT)",Op);
									 p->opType = NOT;
									 assignOpChildren(p,yypvt[-0].nodeptr,0,0,1);
									yyval.nodeptr = createNode("Logical_Negation_expr",Expr,p);
									 } /*NOTREACHED*/ break;
case 104:
# line 648 "translate.y"
{yyval.nodeptr = createNode("Postfix_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 105:
# line 650 "translate.y"
{yyval.nodeptr = createNode("Postfix_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 106:
# line 652 "translate.y"
{yyval.nodeptr = createNode("Postfix_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 107:
# line 654 "translate.y"
{yyval.nodeptr = createNode("Postfix_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 108:
# line 656 "translate.y"
{yyval.nodeptr = createNode("Postfix_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 109:
# line 660 "translate.y"
{yyval.nodeptr = createNode("Primary_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 110:
# line 662 "translate.y"
{yyval.nodeptr = createNode("Primary_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 111:
# line 664 "translate.y"
{yyval.nodeptr = createNode("Primary_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 112:
# line 669 "translate.y"
{yyval.nodeptr = createNode("Paranthesized_Expr",Paren_Expr,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[0] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[2] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 113:
# line 674 "translate.y"
{Op_Node* p = (Op_Node *)createNode("Post:(INC)",Op);
									 p->opType = INC;
									 assignOpChildren(p,yypvt[-1].nodeptr,0,0,1);
									yyval.nodeptr = createNode("Post_Inc_Expr",Expr,p);
									 } /*NOTREACHED*/ break;
case 114:
# line 681 "translate.y"
{Op_Node* p = (Op_Node *)createNode("Post:(DEC)",Op);
									 p->opType = DEC;
									 assignOpChildren(p,yypvt[-1].nodeptr,0,0,1);
									 yyval.nodeptr = createNode("Post_Dec_Expr",Expr,p);
									 } /*NOTREACHED*/ break;
case 115:
# line 689 "translate.y"
{yyval.nodeptr = createNode("Subscript_Expr",Expr,yypvt[-3].nodeptr,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[1] = OPEN_BRACKET;
									 yyval.nodeptr->terminalVal[3]= CLOSE_BRACKET;} /*NOTREACHED*/ break;
case 116:
# line 695 "translate.y"
{yyval.nodeptr = createNode("Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 117:
# line 699 "translate.y"
{yyval.nodeptr = createNode("Comma_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 118:
# line 701 "translate.y"
{yyval.nodeptr = createNode("Comma_Expr",Expr,yypvt[-2].nodeptr,0,yypvt[-0].nodeptr);
									 yyval.nodeptr->terminalVal[1] = COMMA;} /*NOTREACHED*/ break;
case 119:
# line 706 "translate.y"
{yyval.nodeptr = createNode("Assign_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 120:
# line 708 "translate.y"
{assignOpChildren((Op_Node *)yypvt[-1].nodeptr,yypvt[-2].nodeptr,yypvt[-0].nodeptr);
									 yyval.nodeptr = createNode("Assign_Expr",Expr,yypvt[-1].nodeptr);} /*NOTREACHED*/ break;
case 121:
# line 713 "translate.y"
{yyval.nodeptr = createNode("Assign_op:(EQ)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = EQ;} /*NOTREACHED*/ break;
case 122:
# line 716 "translate.y"
{yyval.nodeptr = createNode("Assign_op:(ADD_EQ)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = ADD_EQ;} /*NOTREACHED*/ break;
case 123:
# line 719 "translate.y"
{yyval.nodeptr = createNode("Assign_op:(SUB_EQ)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = SUB_EQ;} /*NOTREACHED*/ break;
case 124:
# line 722 "translate.y"
{yyval.nodeptr = createNode("Assign_op:(MUL_EQ)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = MUL_EQ;} /*NOTREACHED*/ break;
case 125:
# line 725 "translate.y"
{yyval.nodeptr = createNode("Assign_op:(DIV_EQ)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = DIV_EQ;} /*NOTREACHED*/ break;
case 126:
# line 728 "translate.y"
{yyval.nodeptr = createNode("Assign_op:(MOD_EQ)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = MOD_EQ;} /*NOTREACHED*/ break;
case 127:
# line 731 "translate.y"
{yyval.nodeptr = createNode("Assign_op:(LS_EQ)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = LS_EQ;} /*NOTREACHED*/ break;
case 128:
# line 734 "translate.y"
{yyval.nodeptr = createNode("Assign_op:(RS_EQ)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = RS_EQ;} /*NOTREACHED*/ break;
case 129:
# line 737 "translate.y"
{yyval.nodeptr = createNode("Assign_op:(AND_EQ)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = AND_EQ;} /*NOTREACHED*/ break;
case 130:
# line 740 "translate.y"
{yyval.nodeptr = createNode("Assign_op:(XOR_EQ)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = XOR_EQ;} /*NOTREACHED*/ break;
case 131:
# line 743 "translate.y"
{yyval.nodeptr = createNode("Assign_op:(OR_EQ)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = OR_EQ;} /*NOTREACHED*/ break;
case 132:
# line 746 "translate.y"
{yyval.nodeptr = createNode("Assign_op:(NOT_EQ)",Op);
									 ((Op_Node *)yyval.nodeptr)->opType = NOT_EQ;} /*NOTREACHED*/ break;
case 133:
# line 751 "translate.y"
{yyval.nodeptr = createNode("Func_Call",Func_Call,yypvt[-2].nodeptr);
									 yyval.nodeptr->terminalVal[1] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[2] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 134:
# line 755 "translate.y"
{yyval.nodeptr = createNode("Func_Call",Func_Call,yypvt[-3].nodeptr,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[1] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[3] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 135:
# line 761 "translate.y"
{yyval.nodeptr = createNode("Func_Declarator",Func_Declarator,yypvt[-3].nodeptr,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[1] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[3] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 136:
# line 766 "translate.y"
{yyval.nodeptr = createNode("Function_definition",Func_Defn,yypvt[-1].nodeptr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 137:
# line 770 "translate.y"
{yyval.nodeptr = createNode("Function_Def_Spec",Func_Defn_Spec,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 138:
# line 772 "translate.y"
{yyval.nodeptr = createNode("Function_Def_Spec",Func_Defn_Spec,yypvt[-1].nodeptr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 139:
# line 774 "translate.y"
{yyval.nodeptr = createNode("Function_Def_Spec",Func_Defn_Spec,yypvt[-1].nodeptr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 140:
# line 776 "translate.y"
{yyval.nodeptr = createNode("Function_Def_Spec",Func_Defn_Spec,yypvt[-2].nodeptr,yypvt[-1].nodeptr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 141:
# line 780 "translate.y"
{yyval.nodeptr = createNode("GOTO_Stmt",GOTO_Stmt,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[0] = GOTO;
									 yyval.nodeptr->terminalVal[2] = SEMICOLON;} /*NOTREACHED*/ break;
case 142:
# line 786 "translate.y"
{yyval.nodeptr = createNode("Identifier_List",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 143:
# line 788 "translate.y"
{yyval.nodeptr = createNode("Identifier_List",NonTerminal,yypvt[-2].nodeptr,0,yypvt[-0].nodeptr);
									 yyval.nodeptr->terminalVal[1] = COMMA;} /*NOTREACHED*/ break;
case 144:
# line 793 "translate.y"
{yyval.nodeptr = createNode("Identifier",Identifier);
									 yyval.nodeptr->terminalVal[0] = Id;} /*NOTREACHED*/ break;
case 145:
# line 798 "translate.y"
{yyval.nodeptr = createNode("If_Stmt",If_Else_Stmt,0,0,yypvt[-4].nodeptr,0,yypvt[-2].nodeptr,0,yypvt[-0].nodeptr);
									 yyval.nodeptr->terminalVal[0] = IF;
									 yyval.nodeptr->terminalVal[1] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[3] = CLOSE_BRACE;
									 yyval.nodeptr->terminalVal[5] = ELSE;} /*NOTREACHED*/ break;
case 146:
# line 805 "translate.y"
{yyval.nodeptr = createNode("If_Stmt",If_Stmt,0,0,yypvt[-2].nodeptr,0,yypvt[-0].nodeptr);
									 yyval.nodeptr->terminalVal[0] = IF;
									 yyval.nodeptr->terminalVal[1] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[3] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 147:
# line 812 "translate.y"
{yyval.nodeptr = createNode("Initial_Clause",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 148:
# line 814 "translate.y"
{yyval.nodeptr = createNode("Initial_Clause",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 149:
# line 819 "translate.y"
{yyval.nodeptr = createNode("Iterative_Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 150:
# line 821 "translate.y"
{yyval.nodeptr = createNode("Iterative_Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 151:
# line 823 "translate.y"
{yyval.nodeptr = createNode("Iterative_Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 152:
# line 827 "translate.y"
{yyval.nodeptr = createNode("label",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 153:
# line 831 "translate.y"
{yyval.nodeptr = createNode("Labeled_Stmt",Labeled_Stmt,yypvt[-2].nodeptr,0,yypvt[-0].nodeptr);
									 yyval.nodeptr->terminalVal[1] = COLON;} /*NOTREACHED*/ break;
case 154:
# line 836 "translate.y"
{yyval.nodeptr = createNode("NAMED_Label",NAMED_Label,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 155:
# line 840 "translate.y"
{yyval.nodeptr = createNode("NULL_Stmt",Terminal);
									 yyval.nodeptr->terminalVal[0] = SEMICOLON;} /*NOTREACHED*/ break;
case 156:
# line 845 "translate.y"
{yyval.nodeptr = createNode("Paramter_Decl",Parameter_Decl,yypvt[-1].nodeptr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 157:
# line 847 "translate.y"
{yyval.nodeptr = createNode("Paramter_Decl",Parameter_Decl,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 158:
# line 849 "translate.y"
{yyval.nodeptr = createNode("Paramter_Decl",Parameter_Decl,yypvt[-1].nodeptr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 159:
# line 851 "translate.y"
{yyval.nodeptr = createNode("Paramter_Decl",Parameter_Decl,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 160:
# line 855 "translate.y"
{yyval.nodeptr = createNode("Paramter_List",Parameter_List,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 161:
# line 857 "translate.y"
{yyval.nodeptr = createNode("Paramter_List",Parameter_List,yypvt[-2].nodeptr,0,yypvt[-0].nodeptr);
									 yyval.nodeptr->terminalVal[1] = COMMA;} /*NOTREACHED*/ break;
case 162:
# line 862 "translate.y"
{yyval.nodeptr = createNode("Parameter_Type_List",Parameter_Type_List,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 163:
# line 865 "translate.y"
{yyval.nodeptr = createNode("Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 164:
# line 866 "translate.y"
{yyval.nodeptr = createNode("Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 165:
# line 867 "translate.y"
{yyval.nodeptr = createNode("Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 166:
# line 868 "translate.y"
{yyval.nodeptr = createNode("Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 167:
# line 869 "translate.y"
{yyval.nodeptr = createNode("Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 168:
# line 870 "translate.y"
{yyval.nodeptr = createNode("Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 169:
# line 871 "translate.y"
{yyval.nodeptr = createNode("Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 170:
# line 872 "translate.y"
{yyval.nodeptr = createNode("Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 171:
# line 873 "translate.y"
{yyval.nodeptr = createNode("Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 172:
# line 874 "translate.y"
{yyval.nodeptr = createNode("Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 173:
# line 878 "translate.y"
{yyval.nodeptr = createNode("While_Stmt",NonTerminal,0,0,yypvt[-2].nodeptr,0,yypvt[-0].nodeptr);
									 yyval.nodeptr->terminalVal[0] = WHILE;
									 yyval.nodeptr->terminalVal[1] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[3] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 174:
# line 885 "translate.y"
{yyval.nodeptr = createNode("Abstact_Decl",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 175:
# line 887 "translate.y"
{yyval.nodeptr = createNode("Abstract_Decl",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 176:
# line 889 "translate.y"
{yyval.nodeptr = createNode("Abstract_Decl",NonTerminal,yypvt[-1].nodeptr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 177:
# line 894 "translate.y"
{yyval.nodeptr = createNode("Break_Stmt",NonTerminal);
									 yyval.nodeptr->terminalVal[0] = BREAK;
									 yyval.nodeptr->terminalVal[1] = SEMICOLON;} /*NOTREACHED*/ break;
case 178:
# line 900 "translate.y"
{yyval.nodeptr = createNode("Compound_Stmt",CompoundStmt,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[0] = OPEN_CBRACE;
									 yyval.nodeptr->terminalVal[2] = CLOSE_CBRACE;} /*NOTREACHED*/ break;
case 179:
# line 904 "translate.y"
{yyval.nodeptr = createNode("Compound_Stmt",CompoundStmt);
									 yyval.nodeptr->terminalVal[0] = OPEN_CBRACE;
									 yyval.nodeptr->terminalVal[1] = CLOSE_CBRACE;} /*NOTREACHED*/ break;
case 180:
# line 910 "translate.y"
{yyval.nodeptr = createNode("Conditional_Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 181:
# line 912 "translate.y"
{yyval.nodeptr = createNode("Conditional_Stmt",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 182:
# line 916 "translate.y"
{yyval.nodeptr = createNode("Const",Constant,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 183:
# line 918 "translate.y"
{yyval.nodeptr = createNode("Const",Constant,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 184:
# line 920 "translate.y"
{yyval.nodeptr = createNode("Const",Constant,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 185:
# line 924 "translate.y"
{yyval.nodeptr = createNode("Integer_Const",IntConst);
									 yyval.nodeptr->terminalVal[0] = Integer;} /*NOTREACHED*/ break;
case 186:
# line 928 "translate.y"
{yyval.nodeptr = createNode("Character_Const",CharConst);
									 yyval.nodeptr->terminalVal[0] = Character;} /*NOTREACHED*/ break;
case 187:
# line 932 "translate.y"
{yyval.nodeptr = createNode("String_Const",StrConst);
									 yyval.nodeptr->terminalVal[0] = String;} /*NOTREACHED*/ break;
case 188:
# line 937 "translate.y"
{yyval.nodeptr = createNode("Constant_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 189:
# line 941 "translate.y"
{yyval.nodeptr = createNode("Continue_Stmt",NonTerminal);
									 yyval.nodeptr->terminalVal[0] = CONTINUE;
									 yyval.nodeptr->terminalVal[1] = SEMICOLON;} /*NOTREACHED*/ break;
case 190:
# line 946 "translate.y"
{yyval.nodeptr = createNode("Decl_List",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 191:
# line 948 "translate.y"
{yyval.nodeptr = createNode("Decl_List",NonTerminal,yypvt[-1].nodeptr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 192:
# line 952 "translate.y"
{yyval.nodeptr = createNode("Decl_or_Stmt",Decl_or_Stmt,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 193:
# line 954 "translate.y"
{yyval.nodeptr = createNode("Decl_or_Stmt",Decl_or_Stmt,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 194:
# line 958 "translate.y"
{yyval.nodeptr = createNode("Decl_or_Stmt_List",Decl_or_Stmt_List,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 195:
# line 960 "translate.y"
{yyval.nodeptr = createNode("Decl_or_Stmt_List",Decl_or_Stmt_List,yypvt[-1].nodeptr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 196:
# line 964 "translate.y"
{yyval.nodeptr = createNode("Do_Stmt",NonTerminal,0,yypvt[-5].nodeptr,0,0,yypvt[-2].nodeptr);
									 yyval.nodeptr->terminalVal[0] = DO;
									 yyval.nodeptr->terminalVal[2] = WHILE;
									 yyval.nodeptr->terminalVal[3] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[5] = CLOSE_BRACE;
									 yyval.nodeptr->terminalVal[6] = SEMICOLON;} /*NOTREACHED*/ break;
case 197:
# line 973 "translate.y"
{yyval.nodeptr = createNode("Expression_Stmt",NonTerminal,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[1] = SEMICOLON;} /*NOTREACHED*/ break;
case 198:
# line 978 "translate.y"
{yyval.nodeptr = createNode("Expression_List",Expr_List,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 199:
# line 980 "translate.y"
{yyval.nodeptr = createNode("Expression_List",Expr_List,yypvt[-2].nodeptr,0,yypvt[-0].nodeptr);
									 yyval.nodeptr->terminalVal[1] = COMMA;} /*NOTREACHED*/ break;
case 200:
# line 985 "translate.y"
{yyval.nodeptr = createNode("Array_Size_Expr",Expr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 201:
# line 988 "translate.y"
{yyval.nodeptr = createNode("Return",Return_Stmt);
									 yyval.nodeptr->terminalVal[0] = RET;
									 yyval.nodeptr->terminalVal[1] = SEMICOLON;} /*NOTREACHED*/ break;
case 202:
# line 992 "translate.y"
{yyval.nodeptr = createNode("Return",Return_Stmt,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[0] = RET;
									 yyval.nodeptr->terminalVal[2] = SEMICOLON;} /*NOTREACHED*/ break;
case 203:
# line 998 "translate.y"
{yyval.nodeptr = createNode("Direct_Abs_Decl",NonTerminal,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[0] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[2] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 204:
# line 1002 "translate.y"
{yyval.nodeptr = createNode("Direct_Abs_Decl",NonTerminal,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[0] = OPEN_BRACKET;
									 yyval.nodeptr->terminalVal[2] = CLOSE_BRACKET;} /*NOTREACHED*/ break;
case 205:
# line 1006 "translate.y"
{yyval.nodeptr = createNode("Direct_Abs_Decl",NonTerminal,yypvt[-3].nodeptr,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[1] = OPEN_BRACKET;
									 yyval.nodeptr->terminalVal[3] = CLOSE_BRACKET;} /*NOTREACHED*/ break;
case 206:
# line 1013 "translate.y"
{yyval.nodeptr = createNode("Type_Name",NonTerminal,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 207:
# line 1015 "translate.y"
{yyval.nodeptr = createNode("Type_Name",NonTerminal,yypvt[-1].nodeptr,yypvt[-0].nodeptr);} /*NOTREACHED*/ break;
case 208:
# line 1019 "translate.y"
{yyval.nodeptr = createNode("For",NonTerminal,0,yypvt[-1].nodeptr,yypvt[-0].nodeptr);
									 yyval.nodeptr->terminalVal[0] = FOR;} /*NOTREACHED*/ break;
case 209:
# line 1025 "translate.y"
{yyval.nodeptr = createNode("For_Expr",Expr);
									 yyval.nodeptr->terminalVal[0] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[1] = SEMICOLON;
									 yyval.nodeptr->terminalVal[2] = SEMICOLON;
									 yyval.nodeptr->terminalVal[3] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 210:
# line 1032 "translate.y"
{yyval.nodeptr = createNode("For_Expr",Expr,0,yypvt[-3].nodeptr);
									 yyval.nodeptr->terminalVal[0] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[2] = SEMICOLON;
									 yyval.nodeptr->terminalVal[3] = SEMICOLON;
									 yyval.nodeptr->terminalVal[4] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 211:
# line 1038 "translate.y"
{yyval.nodeptr = createNode("For_Expr",Expr,0,yypvt[-5].nodeptr,0,yypvt[-3].nodeptr,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[0] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[2] = SEMICOLON;
									 yyval.nodeptr->terminalVal[4] = SEMICOLON;
									 yyval.nodeptr->terminalVal[6] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 212:
# line 1044 "translate.y"
{yyval.nodeptr = createNode("For_Expr",Expr,0,yypvt[-4].nodeptr,0,yypvt[-2].nodeptr);
									 yyval.nodeptr->terminalVal[0] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[2] = SEMICOLON;
									 yyval.nodeptr->terminalVal[4] = SEMICOLON;
									 yyval.nodeptr->terminalVal[6] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 213:
# line 1050 "translate.y"
{yyval.nodeptr = createNode("For_Expr",Expr,0,yypvt[-4].nodeptr,0,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[0] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[2] = SEMICOLON;
									 yyval.nodeptr->terminalVal[3] = SEMICOLON;
									 yyval.nodeptr->terminalVal[5] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 214:
# line 1056 "translate.y"
{yyval.nodeptr = createNode("For_Expr",Expr,0,0,yypvt[-3].nodeptr,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[0] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[1] = SEMICOLON;
									 yyval.nodeptr->terminalVal[3] = SEMICOLON;
									 yyval.nodeptr->terminalVal[5] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 215:
# line 1062 "translate.y"
{yyval.nodeptr = createNode("For_Expr",Expr,0,0,0,yypvt[-1].nodeptr);
									 yyval.nodeptr->terminalVal[0] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[1] = SEMICOLON;
									 yyval.nodeptr->terminalVal[2] = SEMICOLON;
									 yyval.nodeptr->terminalVal[4] = CLOSE_BRACE;} /*NOTREACHED*/ break;
case 216:
# line 1068 "translate.y"
{yyval.nodeptr = createNode("For_Expr",Expr,0,0,yypvt[-2].nodeptr);
									 yyval.nodeptr->terminalVal[0] = OPEN_BRACE;
									 yyval.nodeptr->terminalVal[1] = SEMICOLON;
									 yyval.nodeptr->terminalVal[3]= SEMICOLON;
									 yyval.nodeptr->terminalVal[4] = CLOSE_BRACE;} /*NOTREACHED*/ break;
}


	goto yystack;		/* reset registers in driver code */
}
