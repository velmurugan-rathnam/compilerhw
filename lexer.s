	.verstamp 3 11
	.set noreorder
	.set volatile
	.set noat
	.arch ev4
	.file	1 "lexer.cpp"
	.globl tokenstr
.data
	.align 2
tokenstr:
	.ascii "Id\0"
	.space 125
	.long 279
	.ascii "Keyword\0"
	.space 120
	.long 280
	.ascii "Operator\0"
	.space 119
	.long 281
	.ascii "Seperator\0"
	.space 118
	.long 282
	.ascii "Const\0"
	.space 122
	.long 283
	.ascii "Space\0"
	.space 122
	.long 284
	.ascii "END\0"
	.space 124
	.long 285
	.ascii "Integer\0"
	.space 120
	.long 286
	.ascii "Character\0"
	.space 118
	.long 287
	.ascii "String\0"
	.space 121
	.long 288
	.ascii "NOT\0"
	.space 124
	.long 260
	.ascii "MOD\0"
	.space 124
	.long 264
	.ascii "XOR\0"
	.space 124
	.long 275
	.ascii "AND\0"
	.space 124
	.long 261
	.ascii "MUL\0"
	.space 124
	.long 262
	.ascii "SUB\0"
	.space 124
	.long 266
	.ascii "ADD\0"
	.space 124
	.long 265
	.ascii "EQ\0"
	.space 125
	.long 289
	.ascii "COM\0"
	.space 124
	.long 259
	.ascii "OR\0"
	.space 125
	.long 276
	.ascii "LT\0"
	.space 125
	.long 269
	.ascii "GT\0"
	.space 125
	.long 270
	.ascii "DIV\0"
	.space 124
	.long 263
	.ascii "QES\0"
	.space 124
	.long 290
	.ascii "ADD_EQ\0"
	.space 121
	.long 291
	.ascii "SUB_EQ\0"
	.space 121
	.long 292
	.ascii "MUL_EQ\0"
	.space 121
	.long 293
	.ascii "DIV_EQ\0"
	.space 121
	.long 294
	.ascii "MOD_EQ\0"
	.space 121
	.long 295
	.ascii "LS_EQ\0"
	.space 122
	.long 296
	.ascii "RS_EQ\0"
	.space 122
	.long 297
	.ascii "AND_EQ\0"
	.space 121
	.long 298
	.ascii "XOR_EQ\0"
	.space 121
	.long 299
	.ascii "OR_EQ\0"
	.space 122
	.long 300
	.ascii "INC\0"
	.space 124
	.long 257
	.ascii "DEC\0"
	.space 124
	.long 258
	.ascii "COMP\0"
	.space 123
	.long 273
	.ascii "NOT_EQ\0"
	.space 121
	.long 274
	.ascii "BOOL_AND\0"
	.space 119
	.long 277
	.ascii "BOOL_OR\0"
	.space 120
	.long 278
	.ascii "LT_EQ\0"
	.space 122
	.long 271
	.ascii "GT_EQ\0"
	.space 122
	.long 272
	.ascii "LS\0"
	.space 125
	.long 267
	.ascii "RS\0"
	.space 125
	.long 268
	.ascii "DO\0"
	.space 125
	.long 301
	.ascii "FOR\0"
	.space 124
	.long 302
	.ascii "RET\0"
	.space 124
	.long 303
	.ascii "BREAK\0"
	.space 122
	.long 304
	.ascii "ELSE\0"
	.space 123
	.long 305
	.ascii "SHORT\0"
	.space 122
	.long 306
	.ascii "GOTO\0"
	.space 123
	.long 307
	.ascii "SIGNED\0"
	.space 121
	.long 308
	.ascii "UNSIGNED\0"
	.space 119
	.long 309
	.ascii "VOID\0"
	.space 123
	.long 310
	.ascii "IF\0"
	.space 125
	.long 311
	.ascii "CHAR\0"
	.space 123
	.long 312
	.ascii "INT\0"
	.space 124
	.long 313
	.ascii "CONTINUE\0"
	.space 119
	.long 314
	.ascii "LONG\0"
	.space 123
	.long 315
	.ascii "WHILE\0"
	.space 122
	.long 316
	.ascii "OPEN_BRACE\0"
	.space 117
	.long 329
	.ascii "CLOSE_BRACE\0"
	.space 116
	.long 330
	.ascii "OPEN_BRACKET\0"
	.space 115
	.long 331
	.ascii "CLOSE_BRACKET\0"
	.space 114
	.long 332
	.ascii "OPEN_CBRACE\0"
	.space 116
	.long 333
	.ascii "CLOSE_CBRACE\0"
	.space 115
	.long 334
	.ascii "COMMA\0"
	.space 122
	.long 335
	.ascii "COLON\0"
	.space 122
	.long 336
	.ascii "SEMICOLON\0"
	.space 118
	.long 337
	.ascii "\0"
	.space 127
	.long 0
	.globl seperatorList
	.align 2
seperatorList:
	.long 329
	.ascii "(\0"
	.space 126
	.long 330
	.ascii ")\0"
	.space 126
	.long 331
	.ascii "[\0"
	.space 126
	.long 332
	.ascii "]\0"
	.space 126
	.long 333
	.ascii "{\0"
	.space 126
	.long 334
	.ascii "}\0"
	.space 126
	.long 335
	.ascii ",\0"
	.space 126
	.long 336
	.ascii ":\0"
	.space 126
	.long 337
	.ascii ";\0"
	.space 126
	.long 0
	.space 128
	.globl escapeSeqList
	.align 2
escapeSeqList:
	.long 317
	.ascii "n\0"
	.space 126
	.long 324
	.ascii "'\0"
	.space 126
	.long 325
	.ascii "\"\0"
	.space 126
	.long 323
	.ascii "\\\0"
	.space 126
	.long 326
	.ascii "a\0"
	.space 126
	.long 319
	.ascii "b\0"
	.space 126
	.long 321
	.ascii "f\0"
	.space 126
	.long 318
	.ascii "t\0"
	.space 126
	.long 320
	.ascii "r\0"
	.space 126
	.long 322
	.ascii "v\0"
	.space 126
	.long 327
	.ascii "?\0"
	.space 126
	.long 0
	.ascii "\0"
	.space 127
	.globl operatorList
	.align 2
operatorList:
	.long 269
	.ascii "<\0"
	.space 126
	.long 270
	.ascii ">\0"
	.space 126
	.long 289
	.ascii "=\0"
	.space 126
	.long 260
	.ascii "!\0"
	.space 126
	.long 264
	.ascii "%\0"
	.space 126
	.long 275
	.ascii "^\0"
	.space 126
	.long 261
	.ascii "&\0"
	.space 126
	.long 262
	.ascii "*\0"
	.space 126
	.long 266
	.ascii "-\0"
	.space 126
	.long 265
	.ascii "+\0"
	.space 126
	.long 259
	.ascii "~\0"
	.space 126
	.long 276
	.ascii "|\0"
	.space 126
	.long 263
	.ascii "/\0"
	.space 126
	.long 290
	.ascii "?\0"
	.space 126
	.long 0
	.ascii "\0"
	.space 127
	.globl comOperatorList
	.align 2
comOperatorList:
	.long 291
	.ascii "+=\0"
	.space 125
	.long 292
	.ascii "-=\0"
	.space 125
	.long 293
	.ascii "*=\0"
	.space 125
	.long 294
	.ascii "/=\0"
	.space 125
	.long 295
	.ascii "%=\0"
	.space 125
	.long 298
	.ascii "&=\0"
	.space 125
	.long 299
	.ascii "^=\0"
	.space 125
	.long 300
	.ascii "|=\0"
	.space 125
	.long 257
	.ascii "++\0"
	.space 125
	.long 258
	.ascii "--\0"
	.space 125
	.long 267
	.ascii "<<\0"
	.space 125
	.long 268
	.ascii ">>\0"
	.space 125
	.long 271
	.ascii "<=\0"
	.space 125
	.long 272
	.ascii ">=\0"
	.space 125
	.long 273
	.ascii "==\0"
	.space 125
	.long 274
	.ascii "!=\0"
	.space 125
	.long 277
	.ascii "&&\0"
	.space 125
	.long 278
	.ascii "||\0"
	.space 125
	.long 0
	.ascii "\0"
	.space 127
	.globl keywordList
	.align 2
keywordList:
	.long 301
	.ascii "do\0"
	.space 125
	.long 302
	.ascii "for\0"
	.space 124
	.long 303
	.ascii "return\0"
	.space 121
	.long 304
	.ascii "break\0"
	.space 122
	.long 306
	.ascii "short\0"
	.space 122
	.long 305
	.ascii "else\0"
	.space 123
	.long 307
	.ascii "goto\0"
	.space 123
	.long 308
	.ascii "signed\0"
	.space 121
	.long 309
	.ascii "unsigned\0"
	.space 119
	.long 310
	.ascii "void\0"
	.space 123
	.long 312
	.ascii "char\0"
	.space 123
	.long 311
	.ascii "if\0"
	.space 125
	.long 313
	.ascii "int\0"
	.space 124
	.long 314
	.ascii "continue\0"
	.space 119
	.long 315
	.ascii "long\0"
	.space 123
	.long 316
	.ascii "while\0"
	.space 122
	.long 0
	.ascii "\0"
	.space 127
.text
	.align 5
	.globl isSeperator__5LexerPc
	.ent isSeperator__5LexerPc
isSeperator__5LexerPc:
	.frame $15,48,$26,0
	.mask 0x4008200,-48
	ldgp $29,0($27)
$isSeperator__5LexerPc..ng:
$LFB1:
	lda $30,-48($30)
$LCFI0:
	stq $26,0($30)
$LCFI1:
	stq $9,8($30)
$LCFI2:
	stq $15,16($30)
$LCFI3:
	mov $30,$15
$LCFI4:
	.prologue 1
	mov $16,$9
	stq $17,32($15)
	stl $31,40($15)
$L300:
	lda $1,seperatorList
	ldl $2,40($15)
	mov $2,$4
	sll $4,5,$3
	addq $3,$2,$3
	s4addq $3,0,$2
	addq $1,$2,$1
	ldl $2,0($1)
	bne $2,$L303
	br $31,$L301
$L303:
	ldl $1,40($15)
	mov $1,$3
	sll $3,5,$2
	addq $2,$1,$2
	s4addq $2,0,$1
	lda $3,seperatorList
	addq $3,4,$2
	addq $1,$2,$1
	mov $1,$16
	ldq $17,32($15)
	lda $18,1
	jsr $26,strncmp
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L302
	lda $1,seperatorList
	ldl $2,40($15)
	mov $2,$4
	sll $4,5,$3
	addq $3,$2,$3
	s4addq $3,0,$2
	addq $1,$2,$1
	lds $f10,0($1)
	sts $f10,0($9)
	lda $0,1
	br $31,$L299
$L304:
$L302:
	ldl $1,40($15)
	addl $1,1,$2
	stl $2,40($15)
	br $31,$L300
$L301:
	mov $31,$0
	br $31,$L299
$L299:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE1:
	.end isSeperator__5LexerPc
.rdata
	.quad 0
$LC0:
	.ascii "\0"
.text
	.align 5
	.globl isId__5Lexerc
	.ent isId__5Lexerc
isId__5Lexerc:
	.frame $15,112,$26,0
	.mask 0x4008600,-112
	ldgp $29,0($27)
$isId__5Lexerc..ng:
$LFB2:
	lda $30,-112($30)
$LCFI5:
	stq $26,0($30)
$LCFI6:
	stq $9,8($30)
$LCFI7:
	stq $10,16($30)
$LCFI8:
	stq $15,24($30)
$LCFI9:
	mov $30,$15
$LCFI10:
	.prologue 1
	mov $16,$9
	mov $17,$2
	mov $2,$1
	ldl $2,32($15)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,32($15)
	lda $2,__lc_ctype
	ldq $1,0($2)
	ldq $2,48($1)
	bne $2,$L308
	lda $2,__lc_ctype
	ldq $1,0($2)
	addq $15,33,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$4
	mov $4,$2
	s4addq $2,0,$3
	ldq $2,104($1)
	addq $3,$2,$1
	ldl $2,0($1)
	and $2,1,$1
	zapnot $1,15,$2
	bne $2,$L307
	br $31,$L309
$L308:
	lda $2,__lc_ctype
	ldq $1,0($2)
	addq $15,33,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$4
	mov $4,$2
	addl $2,$31,$3
	lda $2,__lc_ctype
	ldq $1,48($1)
	mov $3,$16
	lda $17,1
	ldq $18,0($2)
	mov $1,$27
	jsr $26,($27),0
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L307
	br $31,$L309
$L309:
	addq $15,33,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$3
	cmpeq $3,95,$1
	bne $1,$L307
	br $31,$L306
$L307:
	addq $15,40,$1
	mov $1,$16
	jsr $26,__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHB327:
$L329:
	lda $2,__lc_ctype
	ldq $1,0($2)
	ldq $2,48($1)
	bne $2,$L334
	lda $2,__lc_ctype
	ldq $1,0($2)
	addq $15,33,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$4
	mov $4,$2
	s4addq $2,0,$3
	ldq $2,104($1)
	addq $3,$2,$1
	ldl $2,0($1)
	and $2,2,$1
	zapnot $1,15,$2
	bne $2,$L333
	br $31,$L335
$L334:
	lda $2,__lc_ctype
	ldq $1,0($2)
	addq $15,33,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$4
	mov $4,$2
	addl $2,$31,$3
	lda $2,__lc_ctype
	ldq $1,48($1)
	mov $3,$16
	lda $17,2
	ldq $18,0($2)
	mov $1,$27
	jsr $26,($27),0
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L333
	br $31,$L335
$L335:
	addq $15,33,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$3
	cmpeq $3,95,$1
	bne $1,$L333
	br $31,$L332
$L333:
	lda $2,__lc_ctype
	ldq $1,0($2)
	ldq $2,48($1)
	bne $2,$L336
	lda $2,__lc_ctype
	ldq $1,0($2)
	addq $15,33,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$4
	mov $4,$2
	s4addq $2,0,$3
	ldq $2,104($1)
	addq $3,$2,$1
	ldl $2,0($1)
	lda $3,512
	and $2,$3,$1
	zapnot $1,15,$2
	bne $2,$L332
	br $31,$L337
$L336:
	lda $2,__lc_ctype
	ldq $1,0($2)
	addq $15,33,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$4
	mov $4,$2
	addl $2,$31,$3
	lda $2,__lc_ctype
	ldq $1,48($1)
	mov $3,$16
	lda $17,512
	ldq $18,0($2)
	mov $1,$27
	jsr $26,($27),0
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L332
	br $31,$L337
$L337:
	lda $2,_iob
	ldq_u $1,28($2)
	addq $2,28,$2
	extwl $1,$2,$3
	and $3,16,$1
	mov $1,$2
	sll $2,48,$3
	sra $3,48,$1
	bne $1,$L332
	br $31,$L331
$L332:
	br $31,$L330
$L331:
	addq $15,40,$1
	addq $15,33,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$2
	mov $1,$16
	mov $2,$17
	jsr $26,__apl__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c
	ldgp $29,0($26)
	lda $16,cin
	addq $15,32,$17
	jsr $26,get__7istreamRc
	ldgp $29,0($26)
	br $31,$L329
$L330:
	addq $15,33,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$1
	lda $16,cin
	mov $1,$17
	jsr $26,putback__7istreamc
	ldgp $29,0($26)
	addq $9,4,$10
	addq $15,40,$1
	mov $1,$16
	jsr $26,c_str__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	mov $10,$16
	mov $1,$17
	lda $18,128
	jsr $26,strncpy
	ldgp $29,0($26)
$LEHB348:
	addq $15,40,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE348:
	lda $0,1
	br $31,$L305
$LEHE327:
	br $31,$L347
$L328:
	jsr $26,__throw
	ldgp $29,0($26)
$L347:
	br $31,$L350
$L306:
	mov $31,$0
	br $31,$L305
$L350:
	br $31,$L351
$LEHB352:
$L327:
	br $29,$LSJ360
$LSJ360:
	ldgp $29,0($29)
	addq $15,40,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L328
$L348:
	br $29,$LSJ368
$LSJ368:
	ldgp $29,0($29)
	br $31,$L328
$LEHE352:
	br $31,$L352
$L353:
	jsr $26,__throw
	ldgp $29,0($26)
$L354:
$L352:
	br $29,$LSJ379
$LSJ379:
	ldgp $29,0($29)
	jsr $26,terminate__Fv
	ldgp $29,0($26)
$L351:
$L305:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,112($30)
	ret $31,($26),1
$LFE2:
	.end isId__5Lexerc
	.align 5
	.globl isCompoundOperator__5Lexerc
	.ent isCompoundOperator__5Lexerc
isCompoundOperator__5Lexerc:
	.frame $15,176,$26,0
	.mask 0x4008600,-176
	ldgp $29,0($27)
$isCompoundOperator__5Lexerc..ng:
$LFB3:
	lda $30,-176($30)
$LCFI11:
	stq $26,0($30)
$LCFI12:
	stq $9,8($30)
$LCFI13:
	stq $10,16($30)
$LCFI14:
	stq $15,24($30)
$LCFI15:
	mov $30,$15
$LCFI16:
	.prologue 1
	mov $16,$9
	mov $17,$2
	mov $2,$1
	ldl $2,32($15)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,32($15)
	lda $2,_iob
	ldq_u $1,28($2)
	addq $2,28,$2
	extwl $1,$2,$3
	and $3,16,$1
	mov $1,$2
	sll $2,48,$3
	sra $3,48,$1
	bne $1,$L356
	lda $16,cin
	jsr $26,get__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldl $2,32($15)
	zapnot $2,253,$2
	insbl $1,1,$1
	bis $1,$2,$1
	stl $1,32($15)
	br $31,$L357
$L356:
	mov $31,$0
	br $31,$L355
$L357:
	addq $15,33,$1
	mov $9,$16
	mov $1,$17
	jsr $26,isOperator__5LexerPc
	ldgp $29,0($26)
	mov $0,$1
	beq $1,$L358
	ldq_u $1,32($15)
	addq $15,32,$2
	extbl $1,$2,$1
	ldq_u $2,40($15)
	addq $15,40,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,40($15)
	ldq_u $1,33($15)
	addq $15,33,$2
	extbl $1,$2,$1
	ldq_u $2,41($15)
	addq $15,41,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,41($15)
	stl $31,104($15)
$L359:
	lda $1,comOperatorList
	ldl $2,104($15)
	mov $2,$4
	sll $4,5,$3
	addq $3,$2,$3
	s4addq $3,0,$2
	addq $1,$2,$1
	ldl $2,0($1)
	bne $2,$L362
	br $31,$L358
$L362:
	ldl $1,104($15)
	mov $1,$3
	sll $3,5,$2
	addq $2,$1,$2
	s4addq $2,0,$1
	lda $3,comOperatorList
	addq $3,4,$2
	addq $1,$2,$1
	addq $15,40,$2
	mov $1,$16
	mov $2,$17
	lda $18,2
	jsr $26,strncmp
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L361
	lda $1,comOperatorList
	ldl $2,104($15)
	mov $2,$4
	sll $4,5,$3
	addq $3,$2,$3
	s4addq $3,0,$2
	addq $1,$2,$1
	lds $f10,0($1)
	sts $f10,0($9)
	ldl $1,0($9)
	lda $2,267
	cmpeq $1,$2,$1
	bne $1,$L365
	ldl $1,0($9)
	lda $2,268
	cmpeq $1,$2,$1
	bne $1,$L365
	br $31,$L364
$L365:
	lda $16,cin
	jsr $26,peek__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldq_u $2,33($15)
	addq $15,33,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,33($15)
	addq $15,34,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$3
	cmpeq $3,61,$1
	beq $1,$L366
	lda $16,cin
	jsr $26,get__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldq_u $2,33($15)
	addq $15,33,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,33($15)
	addq $15,112,$1
	addq $15,40,$2
	mov $1,$16
	mov $2,$17
	jsr $26,__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	ldgp $29,0($26)
	mov $0,$1
$LEHB373:
	addq $15,112,$1
	addq $15,34,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$2
	mov $1,$16
	mov $2,$17
	jsr $26,__apl__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c
	ldgp $29,0($26)
	ldl $1,0($9)
	lda $2,267
	cmpeq $1,$2,$1
	beq $1,$L375
	lda $1,296
	br $31,$L376
$L375:
	lda $1,297
$L376:
	stl $1,0($9)
	addq $9,4,$10
	addq $15,112,$1
	mov $1,$16
	jsr $26,c_str__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	mov $10,$16
	mov $1,$17
	jsr $26,strcpy
	ldgp $29,0($26)
$LEHE373:
	br $31,$L377
$L374:
	jsr $26,__throw
	ldgp $29,0($26)
$L377:
	addq $15,112,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L378
$L366:
	addq $9,4,$1
	addq $15,40,$2
	mov $1,$16
	mov $2,$17
	jsr $26,strcpy
	ldgp $29,0($26)
$L378:
	br $31,$L379
$L364:
	addq $9,4,$1
	addq $15,40,$2
	mov $1,$16
	mov $2,$17
	jsr $26,strcpy
	ldgp $29,0($26)
$L379:
	lda $0,1
	br $31,$L355
$L363:
$L361:
	ldl $1,104($15)
	addl $1,1,$2
	stl $2,104($15)
	br $31,$L359
$L360:
$L358:
	addq $15,34,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$1
	lda $16,cin
	mov $1,$17
	jsr $26,putback__7istreamc
	ldgp $29,0($26)
	mov $31,$0
	br $31,$L355
	br $31,$L380
$LEHB381:
$L373:
	br $29,$LSJ685
$LSJ685:
	ldgp $29,0($29)
	addq $15,112,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L374
$LEHE381:
	br $31,$L381
$L382:
	jsr $26,__throw
	ldgp $29,0($26)
$L383:
$L381:
	br $29,$LSJ700
$LSJ700:
	ldgp $29,0($29)
	jsr $26,terminate__Fv
	ldgp $29,0($26)
$L380:
$L355:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,176($30)
	ret $31,($26),1
$LFE3:
	.end isCompoundOperator__5Lexerc
	.align 5
	.globl isOperator__5LexerPc
	.ent isOperator__5LexerPc
isOperator__5LexerPc:
	.frame $15,48,$26,0
	.mask 0x4008200,-48
	ldgp $29,0($27)
$isOperator__5LexerPc..ng:
$LFB4:
	lda $30,-48($30)
$LCFI17:
	stq $26,0($30)
$LCFI18:
	stq $9,8($30)
$LCFI19:
	stq $15,16($30)
$LCFI20:
	mov $30,$15
$LCFI21:
	.prologue 1
	mov $16,$9
	stq $17,32($15)
	stl $31,40($15)
$L385:
	lda $1,operatorList
	ldl $2,40($15)
	mov $2,$4
	sll $4,5,$3
	addq $3,$2,$3
	s4addq $3,0,$2
	addq $1,$2,$1
	ldl $2,0($1)
	bne $2,$L388
	br $31,$L386
$L388:
	ldl $1,40($15)
	mov $1,$3
	sll $3,5,$2
	addq $2,$1,$2
	s4addq $2,0,$1
	lda $3,operatorList
	addq $3,4,$2
	addq $1,$2,$1
	mov $1,$16
	ldq $17,32($15)
	lda $18,1
	jsr $26,strncmp
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L387
	lda $1,operatorList
	ldl $2,40($15)
	mov $2,$4
	sll $4,5,$3
	addq $3,$2,$3
	s4addq $3,0,$2
	addq $1,$2,$1
	lds $f10,0($1)
	sts $f10,0($9)
	lda $0,1
	br $31,$L384
$L389:
$L387:
	ldl $1,40($15)
	addl $1,1,$2
	stl $2,40($15)
	br $31,$L385
$L386:
	mov $31,$0
	br $31,$L384
$L384:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE4:
	.end isOperator__5LexerPc
	.align 5
	.globl isKeyword__5LexerPc
	.ent isKeyword__5LexerPc
isKeyword__5LexerPc:
	.frame $15,48,$26,0
	.mask 0x4008200,-48
	ldgp $29,0($27)
$isKeyword__5LexerPc..ng:
$LFB5:
	lda $30,-48($30)
$LCFI22:
	stq $26,0($30)
$LCFI23:
	stq $9,8($30)
$LCFI24:
	stq $15,16($30)
$LCFI25:
	mov $30,$15
$LCFI26:
	.prologue 1
	mov $16,$9
	stq $17,32($15)
	stl $31,40($15)
$L391:
	lda $1,keywordList
	ldl $2,40($15)
	mov $2,$4
	sll $4,5,$3
	addq $3,$2,$3
	s4addq $3,0,$2
	addq $1,$2,$1
	ldl $2,0($1)
	bne $2,$L394
	br $31,$L392
$L394:
	ldl $1,40($15)
	mov $1,$3
	sll $3,5,$2
	addq $2,$1,$2
	s4addq $2,0,$1
	lda $3,keywordList
	addq $3,4,$2
	addq $1,$2,$1
	ldq $16,32($15)
	mov $1,$17
	jsr $26,strcmp
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L393
	lda $1,keywordList
	ldl $2,40($15)
	mov $2,$4
	sll $4,5,$3
	addq $3,$2,$3
	s4addq $3,0,$2
	addq $1,$2,$1
	lds $f10,0($1)
	sts $f10,0($9)
	lda $0,1
	br $31,$L390
$L395:
$L393:
	ldl $1,40($15)
	addl $1,1,$2
	stl $2,40($15)
	br $31,$L391
$L392:
	mov $31,$0
	br $31,$L390
$L390:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE5:
	.end isKeyword__5LexerPc
.rdata
$LC1:
	.ascii "\"\0"
$LC2:
	.ascii "'\0"
.text
	.align 5
	.globl isLiteral__5LexercR6ErrorsRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.ent isLiteral__5LexercR6ErrorsRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
isLiteral__5LexercR6ErrorsRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0:
	.frame $15,352,$26,0
	.mask 0x4008e00,-352
	ldgp $29,0($27)
$isLiteral__5LexercR6ErrorsRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng:
$LFB6:
	lda $30,-352($30)
$LCFI27:
	stq $26,0($30)
$LCFI28:
	stq $9,8($30)
$LCFI29:
	stq $10,16($30)
$LCFI30:
	stq $11,24($30)
$LCFI31:
	stq $15,32($30)
$LCFI32:
	mov $30,$15
$LCFI33:
	.prologue 1
	mov $16,$9
	mov $17,$1
	stq $18,56($15)
	stq $19,64($15)
	ldl $2,48($15)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,48($15)
	lda $2,__lc_ctype
	ldq $1,0($2)
	ldq $2,48($1)
	bne $2,$L398
	lda $2,__lc_ctype
	ldq $1,0($2)
	addq $15,49,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$4
	mov $4,$2
	s4addq $2,0,$3
	ldq $2,104($1)
	addq $3,$2,$1
	ldl $2,0($1)
	and $2,16,$1
	zapnot $1,15,$2
	bne $2,$L399
	br $31,$L397
$L398:
	lda $2,__lc_ctype
	ldq $1,0($2)
	addq $15,49,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$4
	mov $4,$2
	addl $2,$31,$3
	lda $2,__lc_ctype
	ldq $1,48($1)
	mov $3,$16
	lda $17,16
	ldq $18,0($2)
	mov $1,$27
	jsr $26,($27),0
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L399
	br $31,$L397
$L399:
	addq $15,80,$1
	mov $1,$16
	jsr $26,__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHB400:
$L402:
	lda $2,__lc_ctype
	ldq $1,0($2)
	ldq $2,48($1)
	bne $2,$L406
	lda $2,__lc_ctype
	ldq $1,0($2)
	addq $15,49,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$4
	mov $4,$2
	s4addq $2,0,$3
	ldq $2,104($1)
	addq $3,$2,$1
	ldl $2,0($1)
	and $2,16,$1
	zapnot $1,15,$2
	bne $2,$L407
	br $31,$L405
$L406:
	lda $2,__lc_ctype
	ldq $1,0($2)
	addq $15,49,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$4
	mov $4,$2
	addl $2,$31,$3
	lda $2,__lc_ctype
	ldq $1,48($1)
	mov $3,$16
	lda $17,16
	ldq $18,0($2)
	mov $1,$27
	jsr $26,($27),0
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L407
	br $31,$L405
$L407:
	lda $2,__lc_ctype
	ldq $1,0($2)
	ldq $2,48($1)
	bne $2,$L408
	lda $2,__lc_ctype
	ldq $1,0($2)
	addq $15,49,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$4
	mov $4,$2
	s4addq $2,0,$3
	ldq $2,104($1)
	addq $3,$2,$1
	ldl $2,0($1)
	lda $3,512
	and $2,$3,$1
	zapnot $1,15,$2
	bne $2,$L405
	br $31,$L409
$L408:
	lda $2,__lc_ctype
	ldq $1,0($2)
	addq $15,49,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$4
	mov $4,$2
	addl $2,$31,$3
	lda $2,__lc_ctype
	ldq $1,48($1)
	mov $3,$16
	lda $17,512
	ldq $18,0($2)
	mov $1,$27
	jsr $26,($27),0
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L405
	br $31,$L409
$L409:
	lda $2,_iob
	ldq_u $1,28($2)
	addq $2,28,$2
	extwl $1,$2,$3
	and $3,16,$1
	mov $1,$2
	sll $2,48,$3
	sra $3,48,$1
	bne $1,$L405
	br $31,$L404
$L405:
	br $31,$L403
$L404:
	addq $15,80,$1
	addq $15,49,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$2
	mov $1,$16
	mov $2,$17
	jsr $26,__apl__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c
	ldgp $29,0($26)
	lda $16,cin
	addq $15,48,$17
	jsr $26,get__7istreamRc
	ldgp $29,0($26)
	br $31,$L402
$L403:
	addq $15,49,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$1
	lda $16,cin
	mov $1,$17
	jsr $26,putback__7istreamc
	ldgp $29,0($26)
	addq $9,4,$10
	addq $15,80,$1
	mov $1,$16
	jsr $26,c_str__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	mov $10,$16
	mov $1,$17
	lda $18,128
	jsr $26,strncpy
	ldgp $29,0($26)
	lda $1,286
	stl $1,0($9)
	addq $15,80,$1
	ldq $16,64($15)
	mov $1,$17
	jsr $26,__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHB413:
	addq $15,80,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE413:
	lda $0,1
	br $31,$L396
$LEHE400:
	br $31,$L397
$L401:
	jsr $26,__throw
	ldgp $29,0($26)
$L412:
$L397:
	addq $15,49,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$3
	cmpeq $3,34,$1
	beq $1,$L415
	addq $15,80,$1
	mov $1,$16
	jsr $26,__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHB416:
	mov $31,$1
	ldq_u $2,144($15)
	addq $15,144,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,144($15)
$L418:
	lda $2,_iob
	ldq_u $1,28($2)
	addq $2,28,$2
	extwl $1,$2,$3
	and $3,16,$1
	mov $1,$2
	sll $2,48,$3
	sra $3,48,$1
	beq $1,$L420
	br $31,$L419
$L420:
	lda $16,cin
	jsr $26,get__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldq_u $2,72($15)
	addq $15,72,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,72($15)
	addq $15,73,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$3
	cmpeq $3,34,$1
	beq $1,$L421
	addq $15,145,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$3
	cmpeq $3,92,$1
	bne $1,$L421
	addq $9,4,$10
	addq $15,80,$1
	mov $1,$16
	jsr $26,c_str__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	mov $10,$16
	mov $1,$17
	lda $18,128
	jsr $26,strncpy
	ldgp $29,0($26)
	lda $1,288
	stl $1,0($9)
	addq $15,152,$10
	addq $15,216,$2
	addq $15,80,$1
	mov $2,$16
	lda $17,$LC1
	mov $1,$18
	jsr $26,__pl__H3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_PCX01RCt12basic_string3ZX01ZX11ZX21_t12basic_string3ZX01ZX11ZX21
	ldgp $29,0($26)
$LEHB445:
	addq $15,216,$1
	mov $10,$16
	mov $1,$17
	lda $18,$LC1
	jsr $26,__pl__H3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_RCt12basic_string3ZX01ZX11ZX21PCX01_t12basic_string3ZX01ZX11ZX21
	ldgp $29,0($26)
$LEHB447:
	addq $15,152,$1
	ldq $16,64($15)
	mov $1,$17
	jsr $26,__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE447:
	br $31,$L449
$L448:
	jsr $26,__throw
	ldgp $29,0($26)
$L449:
	addq $15,152,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE445:
	br $31,$L450
$L446:
	jsr $26,__throw
	ldgp $29,0($26)
$L450:
	addq $15,216,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHB453:
	addq $15,80,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE453:
	lda $0,1
	br $31,$L396
	br $31,$L451
$L421:
	addq $15,80,$1
	addq $15,73,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$2
	mov $1,$16
	mov $2,$17
	jsr $26,__apl__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c
	ldgp $29,0($26)
$L451:
	ldq_u $1,72($15)
	addq $15,72,$2
	extbl $1,$2,$1
	ldq_u $2,144($15)
	addq $15,144,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,144($15)
	br $31,$L418
$L419:
$LEHE416:
	br $31,$L452
$L417:
	jsr $26,__throw
	ldgp $29,0($26)
$L452:
	addq $15,80,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$L415:
	addq $15,49,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$3
	cmpeq $3,39,$1
	beq $1,$L455
	addq $15,80,$1
	mov $1,$16
	jsr $26,__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHB456:
$L458:
	lda $2,_iob
	ldq_u $1,28($2)
	addq $2,28,$2
	extwl $1,$2,$3
	and $3,16,$1
	mov $1,$2
	sll $2,48,$3
	sra $3,48,$1
	beq $1,$L460
	br $31,$L459
$L460:
	lda $16,cin
	jsr $26,get__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldq_u $2,72($15)
	addq $15,72,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,72($15)
	addq $15,73,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$3
	cmpeq $3,92,$1
	beq $1,$L461
	addq $15,73,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$1
	mov $9,$16
	mov $1,$17
	ldq $18,56($15)
	ldq $19,64($15)
	jsr $26,handleEscape__5LexercR6ErrorsRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$10
$LEHB479:
	addq $15,80,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE479:
	mov $10,$0
	br $31,$L396
	br $31,$L462
$L461:
	ldq_u $1,72($15)
	addq $15,72,$2
	extbl $1,$2,$1
	ldq_u $2,144($15)
	addq $15,144,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,144($15)
	lda $16,cin
	jsr $26,peek__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldq_u $2,72($15)
	addq $15,72,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,72($15)
	addq $15,73,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$3
	cmpeq $3,39,$1
	beq $1,$L463
	lda $16,cin
	jsr $26,get__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldq_u $2,72($15)
	addq $15,72,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,72($15)
	addq $15,80,$1
	addq $15,145,$3
	ldq_u $2,-1($3)
	extqh $2,$3,$3
	sra $3,56,$2
	mov $1,$16
	mov $2,$17
	jsr $26,__apl__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c
	ldgp $29,0($26)
	addq $9,4,$10
	addq $15,80,$1
	mov $1,$16
	jsr $26,c_str__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	mov $10,$16
	mov $1,$17
	lda $18,128
	jsr $26,strncpy
	ldgp $29,0($26)
	lda $1,287
	stl $1,0($9)
	addq $15,152,$10
	addq $15,160,$11
	lda $1,280($15)
	addq $9,4,$2
	mov $1,$16
	mov $2,$17
	jsr $26,__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	ldgp $29,0($26)
	mov $0,$1
$LEHB464:
	lda $1,280($15)
	mov $11,$16
	lda $17,$LC2
	mov $1,$18
	jsr $26,__pl__H3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_PCX01RCt12basic_string3ZX01ZX11ZX21_t12basic_string3ZX01ZX11ZX21
	ldgp $29,0($26)
$LEHB466:
	addq $15,160,$1
	mov $10,$16
	mov $1,$17
	lda $18,$LC2
	jsr $26,__pl__H3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_RCt12basic_string3ZX01ZX11ZX21PCX01_t12basic_string3ZX01ZX11ZX21
	ldgp $29,0($26)
$LEHB468:
	addq $15,152,$1
	ldq $16,64($15)
	mov $1,$17
	jsr $26,__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE468:
	br $31,$L470
$L469:
	jsr $26,__throw
	ldgp $29,0($26)
$L470:
	addq $15,152,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE466:
	br $31,$L471
$L467:
	jsr $26,__throw
	ldgp $29,0($26)
$L471:
	addq $15,160,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE464:
	br $31,$L472
$L465:
	jsr $26,__throw
	ldgp $29,0($26)
$L472:
	lda $1,280($15)
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHB477:
	addq $15,80,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE477:
	lda $0,1
	br $31,$L396
	br $31,$L462
$L463:
	ldq $1,56($15)
	lda $2,1
	stl $2,0($1)
	addq $15,145,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$1
	lda $16,cin
	mov $1,$17
	jsr $26,putback__7istreamc
	ldgp $29,0($26)
$LEHB475:
	addq $15,80,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE475:
	mov $31,$0
	br $31,$L396
$L473:
$L462:
	br $31,$L458
$L459:
$LEHE456:
	br $31,$L474
$L457:
	jsr $26,__throw
	ldgp $29,0($26)
$L474:
	addq $15,80,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$L455:
	mov $31,$0
	br $31,$L396
	br $31,$L481
$LEHB482:
$L400:
	br $29,$LSJ1608
$LSJ1608:
	ldgp $29,0($29)
	addq $15,80,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L401
$L413:
	br $29,$LSJ1616
$LSJ1616:
	ldgp $29,0($29)
	br $31,$L401
$L447:
	br $29,$LSJ1620
$LSJ1620:
	ldgp $29,0($29)
	addq $15,152,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L448
$L445:
	br $29,$LSJ1628
$LSJ1628:
	ldgp $29,0($29)
	addq $15,216,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L446
$L416:
	br $29,$LSJ1636
$LSJ1636:
	ldgp $29,0($29)
	addq $15,80,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L417
$L453:
	br $29,$LSJ1644
$LSJ1644:
	ldgp $29,0($29)
	br $31,$L417
$L468:
	br $29,$LSJ1648
$LSJ1648:
	ldgp $29,0($29)
	addq $15,152,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L469
$L466:
	br $29,$LSJ1656
$LSJ1656:
	ldgp $29,0($29)
	addq $15,160,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L467
$L464:
	br $29,$LSJ1664
$LSJ1664:
	ldgp $29,0($29)
	lda $1,280($15)
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L465
$L456:
	br $29,$LSJ1672
$LSJ1672:
	ldgp $29,0($29)
	addq $15,80,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L457
$L475:
	br $29,$LSJ1680
$LSJ1680:
	ldgp $29,0($29)
	br $31,$L457
$L477:
	br $29,$LSJ1684
$LSJ1684:
	ldgp $29,0($29)
	br $31,$L457
$L479:
	br $29,$LSJ1688
$LSJ1688:
	ldgp $29,0($29)
	br $31,$L457
$LEHE482:
	br $31,$L482
$L483:
	jsr $26,__throw
	ldgp $29,0($26)
$L484:
$L482:
	br $29,$LSJ1699
$LSJ1699:
	ldgp $29,0($29)
	jsr $26,terminate__Fv
	ldgp $29,0($26)
$L481:
$L396:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $15,32($30)
	lda $30,352($30)
	ret $31,($26),1
$LFE6:
	.end isLiteral__5LexercR6ErrorsRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
.rdata
$LC3:
	.ascii "'\\''\0"
$LC4:
	.ascii "'\\\0"
.text
	.align 5
	.globl handleEscape__5LexercR6ErrorsRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.ent handleEscape__5LexercR6ErrorsRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
handleEscape__5LexercR6ErrorsRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0:
	.frame $15,352,$26,0
	.mask 0x4008e00,-352
	ldgp $29,0($27)
$handleEscape__5LexercR6ErrorsRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng:
$LFB7:
	lda $30,-352($30)
$LCFI34:
	stq $26,0($30)
$LCFI35:
	stq $9,8($30)
$LCFI36:
	stq $10,16($30)
$LCFI37:
	stq $11,24($30)
$LCFI38:
	stq $15,32($30)
$LCFI39:
	mov $30,$15
$LCFI40:
	.prologue 1
	mov $16,$9
	mov $17,$1
	stq $18,56($15)
	stq $19,64($15)
	ldl $2,48($15)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,48($15)
	stl $31,144($15)
	mov $31,$1
	ldl $2,80($15)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,80($15)
	mov $31,$1
	ldl $2,80($15)
	zapnot $2,253,$2
	insbl $1,1,$1
	bis $1,$2,$1
	stl $1,80($15)
	mov $31,$1
	ldl $2,80($15)
	zapnot $2,251,$2
	insbl $1,2,$1
	bis $1,$2,$1
	stl $1,80($15)
$L486:
	lda $2,_iob
	ldq_u $1,28($2)
	addq $2,28,$2
	extwl $1,$2,$3
	and $3,16,$1
	mov $1,$2
	sll $2,48,$3
	sra $3,48,$1
	bne $1,$L489
	ldl $1,144($15)
	cmple $1,2,$2
	bne $2,$L488
	br $31,$L489
$L489:
	br $31,$L487
$L488:
	lda $16,cin
	jsr $26,get__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldl $2,72($15)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,72($15)
	ldl $1,72($15)
	extbl $1,0,$3
	sll $3,56,$2
	sra $2,56,$1
	cmpeq $1,39,$2
	beq $2,$L490
	lda $16,cin
	jsr $26,peek__7istream
	ldgp $29,0($26)
	mov $0,$1
	cmpeq $1,39,$2
	beq $2,$L491
	lda $16,cin
	jsr $26,get__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldl $2,72($15)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,72($15)
	addq $9,4,$1
	mov $1,$16
	lda $17,$LC2
	jsr $26,strcpy
	ldgp $29,0($26)
	ldq $16,64($15)
	lda $17,$LC3
	jsr $26,__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	ldgp $29,0($26)
	lda $1,287
	stl $1,0($9)
	lda $0,1
	br $31,$L485
	br $31,$L490
$L491:
	br $31,$L487
$L493:
$L490:
	ldl $1,144($15)
	addq $15,80,$2
	addq $2,$1,$1
	ldl $3,72($15)
	extbl $3,0,$2
	ldq_u $3,0($1)
	mov $1,$4
	mskbl $3,$4,$3
	insbl $2,$4,$2
	bis $2,$3,$2
	stq_u $2,0($1)
	ldl $1,144($15)
	addl $1,1,$2
	stl $2,144($15)
	lda $2,__lc_ctype
	ldq $1,0($2)
	ldq $2,48($1)
	bne $2,$L495
	lda $2,__lc_ctype
	ldq $1,0($2)
	ldl $2,72($15)
	extbl $2,0,$4
	sll $4,56,$3
	sra $3,56,$2
	mov $2,$3
	s4addq $3,0,$2
	ldq $3,104($1)
	addq $2,$3,$1
	ldl $2,0($1)
	and $2,16,$1
	zapnot $1,15,$2
	bne $2,$L496
	br $31,$L494
$L495:
	lda $2,__lc_ctype
	ldq $1,0($2)
	ldl $2,72($15)
	extbl $2,0,$3
	sll $3,56,$2
	sra $2,56,$4
	addl $4,$31,$3
	lda $2,__lc_ctype
	ldq $1,48($1)
	mov $3,$16
	lda $17,16
	ldq $18,0($2)
	mov $1,$27
	jsr $26,($27),0
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L496
	br $31,$L494
$L496:
	ldl $1,72($15)
	extbl $1,0,$3
	sll $3,56,$2
	sra $2,56,$1
	cmple $1,47,$2
	bne $2,$L498
	ldl $1,72($15)
	extbl $1,0,$3
	sll $3,56,$2
	sra $2,56,$1
	cmple $1,55,$2
	beq $2,$L498
	br $31,$L497
$L498:
	ldq $1,56($15)
	lda $2,2
	stl $2,0($1)
$L497:
	br $31,$L499
$L494:
	addq $15,72,$1
	mov $9,$16
	mov $1,$17
	jsr $26,isEscapeSeq__5LexerPc
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L500
	ldq $1,56($15)
	lda $2,3
	stl $2,0($1)
$L500:
	br $31,$L487
$L499:
	br $31,$L486
$L487:
	ldl $1,144($15)
	cmpeq $1,3,$2
	bne $2,$L502
	ldl $1,72($15)
	extbl $1,0,$3
	sll $3,56,$2
	sra $2,56,$1
	cmpeq $1,39,$2
	beq $2,$L502
	br $31,$L501
$L502:
	lda $16,cin
	jsr $26,peek__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldl $2,72($15)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,72($15)
$L501:
	ldl $1,72($15)
	extbl $1,0,$3
	sll $3,56,$2
	sra $2,56,$1
	cmpeq $1,39,$2
	bne $2,$L503
$L504:
	ldl $1,144($15)
	bge $1,$L507
	br $31,$L505
$L507:
	ldl $1,144($15)
	addq $15,80,$2
	addq $2,$1,$1
	addq $1,1,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$1
	lda $16,cin
	mov $1,$17
	jsr $26,putback__7istreamc
	ldgp $29,0($26)
$L506:
	ldl $1,144($15)
	subl $1,1,$2
	stl $2,144($15)
	br $31,$L504
$L505:
	lda $16,cin
	lda $17,92
	jsr $26,putback__7istreamc
	ldgp $29,0($26)
	ldq $1,56($15)
	lda $2,1
	stl $2,0($1)
	mov $31,$0
	br $31,$L485
	br $31,$L508
$L503:
	lda $16,cin
	jsr $26,get__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldl $2,72($15)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,72($15)
	ldq $1,56($15)
	ldl $2,0($1)
	zapnot $2,15,$1
	bne $1,$L509
	addq $9,4,$1
	addq $15,80,$2
	mov $1,$16
	mov $2,$17
	lda $18,3
	jsr $26,strncpy
	ldgp $29,0($26)
	addq $15,152,$10
	addq $15,216,$11
	lda $1,280($15)
	addq $9,4,$2
	mov $1,$16
	mov $2,$17
	jsr $26,__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	ldgp $29,0($26)
	mov $0,$1
$LEHB510:
	lda $1,280($15)
	mov $11,$16
	lda $17,$LC4
	mov $1,$18
	jsr $26,__pl__H3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_PCX01RCt12basic_string3ZX01ZX11ZX21_t12basic_string3ZX01ZX11ZX21
	ldgp $29,0($26)
$LEHB512:
	addq $15,216,$1
	mov $10,$16
	mov $1,$17
	lda $18,$LC2
	jsr $26,__pl__H3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_RCt12basic_string3ZX01ZX11ZX21PCX01_t12basic_string3ZX01ZX11ZX21
	ldgp $29,0($26)
$LEHB514:
	addq $15,152,$1
	ldq $16,64($15)
	mov $1,$17
	jsr $26,__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE514:
	br $31,$L516
$L515:
	jsr $26,__throw
	ldgp $29,0($26)
$L516:
	addq $15,152,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE512:
	br $31,$L517
$L513:
	jsr $26,__throw
	ldgp $29,0($26)
$L517:
	addq $15,216,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE510:
	br $31,$L518
$L511:
	jsr $26,__throw
	ldgp $29,0($26)
$L518:
	lda $1,280($15)
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	lda $1,287
	stl $1,0($9)
	lda $0,1
	br $31,$L485
	br $31,$L508
$L509:
	mov $31,$0
	br $31,$L485
$L519:
$L508:
	br $31,$L520
$LEHB521:
$L514:
	br $29,$LSJ2143
$LSJ2143:
	ldgp $29,0($29)
	addq $15,152,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L515
$L512:
	br $29,$LSJ2151
$LSJ2151:
	ldgp $29,0($29)
	addq $15,216,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L513
$L510:
	br $29,$LSJ2159
$LSJ2159:
	ldgp $29,0($29)
	lda $1,280($15)
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L511
$LEHE521:
	br $31,$L521
$L522:
	jsr $26,__throw
	ldgp $29,0($26)
$L523:
$L521:
	br $29,$LSJ2174
$LSJ2174:
	ldgp $29,0($29)
	jsr $26,terminate__Fv
	ldgp $29,0($26)
$L520:
$L485:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $15,32($30)
	lda $30,352($30)
	ret $31,($26),1
$LFE7:
	.end handleEscape__5LexercR6ErrorsRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.align 5
	.globl isEscapeSeq__5LexerPc
	.ent isEscapeSeq__5LexerPc
isEscapeSeq__5LexerPc:
	.frame $15,48,$26,0
	.mask 0x4008200,-48
	ldgp $29,0($27)
$isEscapeSeq__5LexerPc..ng:
$LFB8:
	lda $30,-48($30)
$LCFI41:
	stq $26,0($30)
$LCFI42:
	stq $9,8($30)
$LCFI43:
	stq $15,16($30)
$LCFI44:
	mov $30,$15
$LCFI45:
	.prologue 1
	mov $16,$9
	stq $17,32($15)
	stl $31,40($15)
$L525:
	lda $1,escapeSeqList
	ldl $2,40($15)
	mov $2,$4
	sll $4,5,$3
	addq $3,$2,$3
	s4addq $3,0,$2
	addq $1,$2,$1
	ldl $2,0($1)
	bne $2,$L528
	br $31,$L526
$L528:
	ldl $1,40($15)
	mov $1,$3
	sll $3,5,$2
	addq $2,$1,$2
	s4addq $2,0,$1
	lda $3,escapeSeqList
	addq $3,4,$2
	addq $1,$2,$1
	mov $1,$16
	ldq $17,32($15)
	lda $18,1
	jsr $26,strncmp
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L527
	addq $9,4,$1
	ldl $2,40($15)
	mov $2,$4
	sll $4,5,$3
	addq $3,$2,$3
	s4addq $3,0,$2
	lda $4,escapeSeqList
	addq $4,4,$3
	addq $2,$3,$2
	mov $1,$16
	mov $2,$17
	lda $18,1
	jsr $26,strncpy
	ldgp $29,0($26)
	lda $0,1
	br $31,$L524
$L529:
$L527:
	ldl $1,40($15)
	addl $1,1,$2
	stl $2,40($15)
	br $31,$L525
$L526:
	mov $31,$0
	br $31,$L524
$L524:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE8:
	.end isEscapeSeq__5LexerPc
.rdata
$LC5:
	.ascii "EOF reached looking for comment termination\0"
.text
	.align 5
	.globl isComment__5Lexerc
	.ent isComment__5Lexerc
isComment__5Lexerc:
	.frame $15,48,$26,0
	.mask 0x4008200,-48
	ldgp $29,0($27)
$isComment__5Lexerc..ng:
$LFB9:
	lda $30,-48($30)
$LCFI46:
	stq $26,0($30)
$LCFI47:
	stq $9,8($30)
$LCFI48:
	stq $15,16($30)
$LCFI49:
	mov $30,$15
$LCFI50:
	.prologue 1
	mov $16,$9
	mov $17,$2
	mov $2,$1
	ldl $2,32($15)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,32($15)
	addq $15,33,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$3
	cmpeq $3,47,$1
	beq $1,$L531
	lda $16,cin
	jsr $26,peek__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldq_u $2,33($15)
	addq $15,33,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,33($15)
	addq $15,34,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$3
	cmpeq $3,42,$1
	beq $1,$L531
	lda $16,cin
	jsr $26,get__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldq_u $2,33($15)
	addq $15,33,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,33($15)
$L533:
	lda $2,_iob
	ldq_u $1,28($2)
	addq $2,28,$2
	extwl $1,$2,$3
	and $3,16,$1
	mov $1,$2
	sll $2,48,$3
	sra $3,48,$1
	beq $1,$L535
	br $31,$L534
$L535:
	lda $16,cin
	jsr $26,get__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldq_u $2,34($15)
	addq $15,34,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,34($15)
	addq $15,35,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$3
	cmpeq $3,42,$1
	beq $1,$L536
	lda $16,cin
	jsr $26,peek__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldq_u $2,33($15)
	addq $15,33,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,33($15)
$L536:
	addq $15,34,$2
	ldq_u $1,-1($2)
	extqh $1,$2,$2
	sra $2,56,$3
	cmpeq $3,47,$1
	beq $1,$L537
	lda $16,cin
	jsr $26,get__7istream
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldq_u $2,33($15)
	addq $15,33,$3
	mskbl $2,$3,$2
	insbl $1,$3,$1
	bis $1,$2,$1
	stq_u $1,33($15)
	lda $0,1
	br $31,$L530
$L537:
	br $31,$L533
$L534:
	lda $16,cout
	lda $17,$LC5
	jsr $26,__ls__7ostreamPCc
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$16
	lda $17,endl__FR7ostream
	jsr $26,__ls__7ostreamPFR7ostream_R7ostream
	ldgp $29,0($26)
$L532:
$L531:
	mov $31,$0
	br $31,$L530
$L530:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE9:
	.end isComment__5Lexerc
.rdata
$LC6:
	.ascii "Invalid literal, Err Code:\0"
.text
	.align 5
	.globl token__5LexerRiRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0T2
	.ent token__5LexerRiRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0T2
token__5LexerRiRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0T2:
	.frame $15,128,$26,0
	.mask 0x4008200,-128
	ldgp $29,0($27)
$token__5LexerRiRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0T2..ng:
$LFB10:
	lda $30,-128($30)
$LCFI51:
	stq $26,0($30)
$LCFI52:
	stq $9,8($30)
$LCFI53:
	stq $15,16($30)
$LCFI54:
	mov $30,$15
$LCFI55:
	.prologue 1
	mov $16,$9
	stq $17,32($15)
	stq $18,40($15)
	stq $19,48($15)
	addq $15,56,$1
	mov $1,$16
	jsr $26,__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHB539:
	stl $31,124($15)
$L541:
	lda $2,_iob
	ldq_u $1,28($2)
	addq $2,28,$2
	extwl $1,$2,$3
	and $3,16,$1
	mov $1,$2
	sll $2,48,$3
	sra $3,48,$1
	beq $1,$L543
	br $31,$L542
$L543:
	addq $15,120,$1
	lda $16,cin
	mov $1,$17
	jsr $26,get__7istreamRc
	ldgp $29,0($26)
	lda $2,__lc_ctype
	ldq $1,0($2)
	ldq $2,48($1)
	bne $2,$L545
	lda $2,__lc_ctype
	ldq $1,0($2)
	ldl $2,120($15)
	extbl $2,0,$4
	sll $4,56,$3
	sra $3,56,$2
	mov $2,$3
	s4addq $3,0,$2
	ldq $3,104($1)
	addq $2,$3,$1
	ldl $2,0($1)
	lda $3,512
	and $2,$3,$1
	zapnot $1,15,$2
	bne $2,$L546
	br $31,$L544
$L545:
	lda $2,__lc_ctype
	ldq $1,0($2)
	ldl $2,120($15)
	extbl $2,0,$3
	sll $3,56,$2
	sra $2,56,$4
	addl $4,$31,$3
	lda $2,__lc_ctype
	ldq $1,48($1)
	mov $3,$16
	lda $17,512
	ldq $18,0($2)
	mov $1,$27
	jsr $26,($27),0
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L546
	br $31,$L544
$L546:
	ldq $1,32($15)
	lda $2,284
	stl $2,0($1)
$LEHB581:
	addq $15,56,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE581:
	mov $31,$0
	br $31,$L538
$L544:
	ldl $1,120($15)
	extbl $1,0,$3
	sll $3,56,$2
	sra $2,56,$1
	mov $9,$16
	mov $1,$17
	bsr $26,$isComment__5Lexerc..ng
	mov $0,$1
	beq $1,$L547
$LEHB579:
	addq $15,56,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE579:
	mov $31,$0
	br $31,$L538
	br $31,$L548
$L547:
	lda $2,_iob
	ldq_u $1,28($2)
	addq $2,28,$2
	extwl $1,$2,$3
	and $3,16,$1
	mov $1,$2
	sll $2,48,$3
	sra $3,48,$1
	beq $1,$L548
	br $31,$L542
$L549:
$L548:
	addq $15,120,$1
	mov $9,$16
	mov $1,$17
	bsr $26,$isSeperator__5LexerPc..ng
	mov $0,$1
	beq $1,$L550
	ldl $1,120($15)
	extbl $1,0,$3
	sll $3,56,$2
	sra $2,56,$1
	ldq $16,40($15)
	mov $1,$17
	jsr $26,__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c
	ldgp $29,0($26)
	ldq $1,32($15)
	lda $2,282
	stl $2,0($1)
$LEHB577:
	addq $15,56,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE577:
	lda $0,1
	br $31,$L538
$L550:
	ldl $1,120($15)
	extbl $1,0,$3
	sll $3,56,$2
	sra $2,56,$1
	addq $15,124,$2
	mov $9,$16
	mov $1,$17
	mov $2,$18
	ldq $19,48($15)
	bsr $26,$isLiteral__5LexercR6ErrorsRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	beq $1,$L553
	addq $9,4,$1
	ldq $16,40($15)
	mov $1,$17
	jsr $26,__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	ldgp $29,0($26)
	ldq $1,32($15)
	lda $2,283
	stl $2,0($1)
$LEHB575:
	addq $15,56,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE575:
	lda $0,1
	br $31,$L538
	br $31,$L554
$L553:
	lda $2,_iob
	ldq_u $1,28($2)
	addq $2,28,$2
	extwl $1,$2,$3
	and $3,16,$1
	mov $1,$2
	sll $2,48,$3
	sra $3,48,$1
	beq $1,$L555
	ldq $1,32($15)
	lda $2,285
	stl $2,0($1)
	br $31,$L542
	br $31,$L554
$L555:
	ldl $2,124($15)
	zapnot $2,15,$1
	beq $1,$L554
	lda $16,cout
	lda $17,$LC6
	jsr $26,__ls__7ostreamPCc
	ldgp $29,0($26)
	mov $0,$1
	ldl $2,124($15)
	mov $1,$16
	mov $2,$17
	jsr $26,__ls__7ostreami
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$16
	lda $17,endl__FR7ostream
	jsr $26,__ls__7ostreamPFR7ostream_R7ostream
	ldgp $29,0($26)
$L557:
$L556:
$L554:
	addq $15,120,$1
	mov $9,$16
	mov $1,$17
	bsr $26,$isOperator__5LexerPc..ng
	mov $0,$1
	beq $1,$L558
	ldl $1,120($15)
	extbl $1,0,$3
	sll $3,56,$2
	sra $2,56,$1
	mov $9,$16
	mov $1,$17
	bsr $26,$isCompoundOperator__5Lexerc..ng
	mov $0,$1
	beq $1,$L559
	addq $9,4,$1
	ldq $16,40($15)
	mov $1,$17
	jsr $26,__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	ldgp $29,0($26)
	ldq $1,32($15)
	lda $2,281
	stl $2,0($1)
$LEHB573:
	addq $15,56,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE573:
	lda $0,1
	br $31,$L538
	br $31,$L558
$L559:
	ldl $1,120($15)
	extbl $1,0,$3
	sll $3,56,$2
	sra $2,56,$1
	ldq $16,40($15)
	mov $1,$17
	jsr $26,__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c
	ldgp $29,0($26)
	ldq $1,32($15)
	lda $2,281
	stl $2,0($1)
$LEHB571:
	addq $15,56,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE571:
	lda $0,1
	br $31,$L538
$L560:
$L558:
	ldl $1,120($15)
	extbl $1,0,$3
	sll $3,56,$2
	sra $2,56,$1
	mov $9,$16
	mov $1,$17
	bsr $26,$isId__5Lexerc..ng
	mov $0,$1
	beq $1,$L561
	addq $9,4,$1
	mov $9,$16
	mov $1,$17
	bsr $26,$isKeyword__5LexerPc..ng
	mov $0,$1
	beq $1,$L562
	ldq $1,32($15)
	lda $2,280
	stl $2,0($1)
	addq $9,4,$1
	ldq $16,40($15)
	mov $1,$17
	jsr $26,__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	ldgp $29,0($26)
$LEHB569:
	addq $15,56,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE569:
	lda $0,1
	br $31,$L538
	br $31,$L561
$L562:
	ldq $1,32($15)
	lda $2,279
	stl $2,0($1)
	addq $9,4,$1
	ldq $16,40($15)
	mov $1,$17
	jsr $26,__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	ldgp $29,0($26)
$LEHB567:
	addq $15,56,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE567:
	lda $0,1
	br $31,$L538
$L563:
$L561:
	br $31,$L541
$L542:
	ldq $1,32($15)
	lda $2,285
	stl $2,0($1)
$LEHB565:
	addq $15,56,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHE565:
	mov $31,$0
	br $31,$L538
$LEHE539:
	br $31,$L564
$L540:
	jsr $26,__throw
	ldgp $29,0($26)
$L564:
	br $31,$L583
$LEHB584:
$L539:
	br $29,$LSJ2929
$LSJ2929:
	ldgp $29,0($29)
	addq $15,56,$1
	mov $1,$16
	lda $17,2
	jsr $26,_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	br $31,$L540
$L565:
	br $29,$LSJ2937
$LSJ2937:
	ldgp $29,0($29)
	br $31,$L540
$L567:
	br $29,$LSJ2941
$LSJ2941:
	ldgp $29,0($29)
	br $31,$L540
$L569:
	br $29,$LSJ2945
$LSJ2945:
	ldgp $29,0($29)
	br $31,$L540
$L571:
	br $29,$LSJ2949
$LSJ2949:
	ldgp $29,0($29)
	br $31,$L540
$L573:
	br $29,$LSJ2953
$LSJ2953:
	ldgp $29,0($29)
	br $31,$L540
$L575:
	br $29,$LSJ2957
$LSJ2957:
	ldgp $29,0($29)
	br $31,$L540
$L577:
	br $29,$LSJ2961
$LSJ2961:
	ldgp $29,0($29)
	br $31,$L540
$L579:
	br $29,$LSJ2965
$LSJ2965:
	ldgp $29,0($29)
	br $31,$L540
$L581:
	br $29,$LSJ2969
$LSJ2969:
	ldgp $29,0($29)
	br $31,$L540
$LEHE584:
	br $31,$L584
$L585:
	jsr $26,__throw
	ldgp $29,0($26)
$L586:
$L584:
	br $29,$LSJ2980
$LSJ2980:
	ldgp $29,0($29)
	jsr $26,terminate__Fv
	ldgp $29,0($26)
$L583:
$L538:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,128($30)
	ret $31,($26),1
$LFE10:
	.end token__5LexerRiRt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0T2
.rdata
$LC7:
	.ascii "out of memory\0"
.text
	.align 5
	.ent _S_oom_malloc__t23__malloc_alloc_template1i0Ul
_S_oom_malloc__t23__malloc_alloc_template1i0Ul:
	.frame $15,48,$26,0
	.mask 0x4008000,-48
	ldgp $29,0($27)
$_S_oom_malloc__t23__malloc_alloc_template1i0Ul..ng:
$LFB11:
	lda $30,-48($30)
$LCFI56:
	stq $26,0($30)
$LCFI57:
	stq $15,8($30)
$LCFI58:
	mov $30,$15
$LCFI59:
	.prologue 1
	stq $16,16($15)
$L599:
	lda $1,_t23__malloc_alloc_template1i0$__malloc_alloc_oom_handler
	ldt $f10,0($1)
	stt $f10,24($15)
	ldq $1,24($15)
	bne $1,$L602
	lda $16,cerr
	lda $17,$LC7
	jsr $26,__ls__7ostreamPCc
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$16
	lda $17,endl__FR7ostream
	jsr $26,__ls__7ostreamPFR7ostream_R7ostream
	ldgp $29,0($26)
	lda $16,1
	jsr $26,exit
	ldgp $29,0($26)
$L602:
	ldq $1,24($15)
	mov $1,$27
	jsr $26,($27),0
	ldgp $29,0($26)
	ldq $16,16($15)
	jsr $26,malloc
	ldgp $29,0($26)
	mov $0,$1
	stq $1,40($15)
	ldt $f11,40($15)
	fmov $f11,$f10
	stt $f10,32($15)
	ldq $1,32($15)
	beq $1,$L601
	ldq $1,32($15)
	mov $1,$0
	br $31,$L598
$L603:
$L601:
	br $31,$L599
$L600:
$L598:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE11:
	.end _S_oom_malloc__t23__malloc_alloc_template1i0Ul
	.align 5
	.ent _S_chunk_alloc__t24__default_alloc_template2b0i0UlRi
_S_chunk_alloc__t24__default_alloc_template2b0i0UlRi:
	.frame $15,112,$26,0
	.mask 0x4008200,-112
	ldgp $29,0($27)
$_S_chunk_alloc__t24__default_alloc_template2b0i0UlRi..ng:
$LFB12:
	lda $30,-112($30)
$LCFI60:
	stq $26,0($30)
$LCFI61:
	stq $9,8($30)
$LCFI62:
	stq $15,16($30)
$LCFI63:
	mov $30,$15
$LCFI64:
	.prologue 1
	stq $16,32($15)
	stq $17,40($15)
	ldq $1,40($15)
	ldl $2,0($1)
	ldq $1,32($15)
	mulq $1,$2,$2
	stq $2,56($15)
	lda $1,_t24__default_alloc_template2b0i0$_S_end_free
	lda $2,_t24__default_alloc_template2b0i0$_S_start_free
	ldq $1,0($1)
	ldq $2,0($2)
	subq $1,$2,$1
	stq $1,64($15)
	ldq $1,64($15)
	ldq $2,56($15)
	cmpult $1,$2,$1
	bne $1,$L608
	lda $1,_t24__default_alloc_template2b0i0$_S_start_free
	ldt $f10,0($1)
	stt $f10,48($15)
	lda $1,_t24__default_alloc_template2b0i0$_S_start_free
	lda $2,_t24__default_alloc_template2b0i0$_S_start_free
	ldq $3,0($2)
	ldq $2,56($15)
	addq $3,$2,$3
	stq $3,0($1)
	ldq $1,48($15)
	mov $1,$0
	br $31,$L607
	br $31,$L609
$L608:
	ldq $1,64($15)
	ldq $2,32($15)
	cmpult $1,$2,$1
	bne $1,$L610
	ldq $1,40($15)
	ldq $24,64($15)
	ldq $25,32($15)
	divqu $24,$25,$27
	mov $27,$2
	stl $2,0($1)
	ldq $1,40($15)
	ldl $2,0($1)
	ldq $1,32($15)
	mulq $1,$2,$2
	stq $2,56($15)
	lda $1,_t24__default_alloc_template2b0i0$_S_start_free
	ldt $f10,0($1)
	stt $f10,48($15)
	lda $1,_t24__default_alloc_template2b0i0$_S_start_free
	lda $2,_t24__default_alloc_template2b0i0$_S_start_free
	ldq $3,0($2)
	ldq $2,56($15)
	addq $3,$2,$3
	stq $3,0($1)
	ldq $1,48($15)
	mov $1,$0
	br $31,$L607
	br $31,$L609
$L610:
	lda $1,_t24__default_alloc_template2b0i0$_S_heap_size
	ldq $2,0($1)
	srl $2,4,$1
	mov $1,$16
	jsr $26,_S_round_up__t24__default_alloc_template2b0i0Ul
	ldgp $29,0($26)
	mov $0,$1
	ldt $f10,56($15)
	stt $f10,104($15)
	ldq $3,104($15)
	mov $3,$2
	addq $2,$2,$3
	addq $3,$1,$1
	stq $1,72($15)
	ldq $1,64($15)
	beq $1,$L612
	ldq $16,64($15)
	jsr $26,_S_freelist_index__t24__default_alloc_template2b0i0Ul
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$2
	s8addq $2,0,$1
	lda $2,_t24__default_alloc_template2b0i0$_S_free_list
	addq $2,$1,$1
	stq $1,80($15)
	lda $2,_t24__default_alloc_template2b0i0$_S_start_free
	ldq $1,0($2)
	ldq $2,80($15)
	ldt $f10,0($2)
	stt $f10,0($1)
	ldq $1,80($15)
	lda $2,_t24__default_alloc_template2b0i0$_S_start_free
	ldt $f10,0($2)
	stt $f10,0($1)
$L612:
	lda $9,_t24__default_alloc_template2b0i0$_S_start_free
	ldq $16,72($15)
	jsr $26,malloc
	ldgp $29,0($26)
	mov $0,$1
	stq $1,0($9)
	lda $1,_t24__default_alloc_template2b0i0$_S_start_free
	ldq $2,0($1)
	bne $2,$L613
	ldt $f10,32($15)
	stt $f10,80($15)
$L614:
	ldq $1,80($15)
	cmpule $1,128,$2
	bne $2,$L617
	br $31,$L615
$L617:
	ldq $16,80($15)
	jsr $26,_S_freelist_index__t24__default_alloc_template2b0i0Ul
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$2
	s8addq $2,0,$1
	lda $2,_t24__default_alloc_template2b0i0$_S_free_list
	addq $2,$1,$1
	stq $1,88($15)
	ldq $1,88($15)
	ldt $f10,0($1)
	stt $f10,96($15)
	ldq $1,96($15)
	beq $1,$L616
	ldq $1,88($15)
	ldq $2,96($15)
	ldt $f10,0($2)
	stt $f10,0($1)
	lda $1,_t24__default_alloc_template2b0i0$_S_start_free
	ldt $f10,96($15)
	stt $f10,0($1)
	lda $1,_t24__default_alloc_template2b0i0$_S_end_free
	lda $2,_t24__default_alloc_template2b0i0$_S_start_free
	ldq $3,0($2)
	ldq $2,80($15)
	addq $3,$2,$3
	stq $3,0($1)
	ldq $16,32($15)
	ldq $17,40($15)
	bsr $26,$_S_chunk_alloc__t24__default_alloc_template2b0i0UlRi..ng
	mov $0,$1
	mov $1,$0
	br $31,$L607
$L618:
$L616:
	ldq $1,80($15)
	addq $1,8,$2
	stq $2,80($15)
	br $31,$L614
$L615:
	lda $1,_t24__default_alloc_template2b0i0$_S_end_free
	stq $31,0($1)
	lda $9,_t24__default_alloc_template2b0i0$_S_start_free
	ldq $16,72($15)
	jsr $26,allocate__t23__malloc_alloc_template1i0Ul
	ldgp $29,0($26)
	stq $0,0($9)
$L613:
	lda $1,_t24__default_alloc_template2b0i0$_S_heap_size
	lda $2,_t24__default_alloc_template2b0i0$_S_heap_size
	ldq $3,0($2)
	ldq $2,72($15)
	addq $3,$2,$3
	stq $3,0($1)
	lda $1,_t24__default_alloc_template2b0i0$_S_end_free
	lda $2,_t24__default_alloc_template2b0i0$_S_start_free
	ldq $3,0($2)
	ldq $2,72($15)
	addq $3,$2,$3
	stq $3,0($1)
	ldq $16,32($15)
	ldq $17,40($15)
	bsr $26,$_S_chunk_alloc__t24__default_alloc_template2b0i0UlRi..ng
	mov $0,$1
	mov $1,$0
	br $31,$L607
$L611:
$L609:
$L607:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,112($30)
	ret $31,($26),1
$LFE12:
	.end _S_chunk_alloc__t24__default_alloc_template2b0i0UlRi
	.align 5
	.ent _S_refill__t24__default_alloc_template2b0i0Ul
_S_refill__t24__default_alloc_template2b0i0Ul:
	.frame $15,96,$26,0
	.mask 0x4008000,-96
	ldgp $29,0($27)
$_S_refill__t24__default_alloc_template2b0i0Ul..ng:
$LFB13:
	lda $30,-96($30)
$LCFI65:
	stq $26,0($30)
$LCFI66:
	stq $15,8($30)
$LCFI67:
	mov $30,$15
$LCFI68:
	.prologue 1
	stq $16,16($15)
	lda $1,20
	stl $1,24($15)
	addq $15,24,$1
	ldq $16,16($15)
	mov $1,$17
	bsr $26,$_S_chunk_alloc__t24__default_alloc_template2b0i0UlRi..ng
	mov $0,$1
	stq $1,32($15)
	ldl $1,24($15)
	cmpeq $1,1,$2
	beq $2,$L619
	ldq $1,32($15)
	mov $1,$0
	br $31,$L606
$L619:
	ldq $16,16($15)
	jsr $26,_S_freelist_index__t24__default_alloc_template2b0i0Ul
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$2
	s8addq $2,0,$1
	lda $2,_t24__default_alloc_template2b0i0$_S_free_list
	addq $2,$1,$1
	stq $1,40($15)
	ldt $f10,32($15)
	stt $f10,48($15)
	ldq $1,40($15)
	ldq $2,32($15)
	ldq $3,16($15)
	addq $2,$3,$2
	stq $2,80($15)
	ldt $f11,80($15)
	fmov $f11,$f10
	stt $f10,64($15)
	stt $f10,0($1)
	lda $1,1
	stl $1,72($15)
$L620:
	ldt $f10,64($15)
	stt $f10,56($15)
	ldq $1,64($15)
	ldq $2,16($15)
	addq $1,$2,$1
	stq $1,64($15)
	ldl $2,24($15)
	subl $2,1,$1
	addl $1,$31,$2
	ldl $1,72($15)
	cmpeq $2,$1,$2
	beq $2,$L623
	ldq $1,56($15)
	stq $31,0($1)
	br $31,$L621
	br $31,$L622
$L623:
	ldq $1,56($15)
	ldt $f10,64($15)
	stt $f10,0($1)
$L624:
$L622:
	ldl $1,72($15)
	addl $1,1,$2
	stl $2,72($15)
	br $31,$L620
$L621:
	ldq $1,48($15)
	mov $1,$0
	br $31,$L606
$L606:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,96($30)
	ret $31,($26),1
$LFE13:
	.end _S_refill__t24__default_alloc_template2b0i0Ul
	.align 5
	.ent clone__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
clone__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep:
	.frame $15,48,$26,0
	.mask 0x4008200,-48
	ldgp $29,0($27)
$clone__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep..ng:
$LFB14:
	lda $30,-48($30)
$LCFI69:
	stq $26,0($30)
$LCFI70:
	stq $9,8($30)
$LCFI71:
	stq $15,16($30)
$LCFI72:
	mov $30,$15
$LCFI73:
	.prologue 1
	mov $16,$9
	ldq $16,0($9)
	jsr $26,create__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl
	ldgp $29,0($26)
	mov $0,$1
	stq $1,32($15)
	mov $9,$16
	jsr $26,data__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
	ldgp $29,0($26)
	mov $0,$1
	ldq $16,32($15)
	mov $31,$17
	mov $1,$18
	ldq $19,0($9)
	jsr $26,copy__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl
	ldgp $29,0($26)
	ldq $1,32($15)
	ldt $f10,0($9)
	stt $f10,0($1)
	ldq $16,32($15)
	jsr $26,data__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$0
	br $31,$L587
$L587:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE14:
	.end clone__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
.rdata
$LC8:
	.ascii "pos > len\0"
$LC9:
	.ascii "len - n1 > max_size () - n2\0"
.text
	.align 5
	.ent replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlUlc
replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlUlc:
	.frame $15,128,$26,0
	.mask 0x400be00,-128
	ldgp $29,0($27)
$replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlUlc..ng:
$LFB15:
	lda $30,-128($30)
$LCFI74:
	stq $26,0($30)
$LCFI75:
	stq $9,8($30)
$LCFI76:
	stq $10,16($30)
$LCFI77:
	stq $11,24($30)
$LCFI78:
	stq $12,32($30)
$LCFI79:
	stq $13,40($30)
$LCFI80:
	stq $15,48($30)
$LCFI81:
	mov $30,$15
$LCFI82:
	.prologue 1
	mov $16,$9
	stq $17,64($15)
	stq $18,72($15)
	stq $19,80($15)
	mov $20,$2
	mov $2,$1
	ldl $2,88($15)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,88($15)
	mov $9,$16
	jsr $26,length__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$10
	stq $10,96($15)
$L628:
	ldq $1,64($15)
	ldq $2,96($15)
	cmpule $1,$2,$1
	bne $1,$L630
	lda $16,$LC8
	jsr $26,__out_of_range__FPCc
	ldgp $29,0($26)
$L631:
$L630:
	br $31,$L629
$L632:
	br $31,$L628
$L629:
	ldq $1,96($15)
	ldq $2,64($15)
	subq $1,$2,$1
	ldq $2,72($15)
	cmpule $2,$1,$1
	bne $1,$L633
	ldq $1,96($15)
	ldq $2,64($15)
	subq $1,$2,$1
	stq $1,72($15)
$L633:
	nop
$L634:
	ldq $1,96($15)
	ldq $2,72($15)
	subq $1,$2,$12
	mov $9,$16
	jsr $26,max_size__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	ldq $2,80($15)
	subq $1,$2,$1
	cmpule $12,$1,$2
	bne $2,$L636
	lda $16,$LC9
	jsr $26,__length_error__FPCc
	ldgp $29,0($26)
$L638:
$L636:
	br $31,$L635
$L639:
	br $31,$L634
$L635:
	ldq $1,96($15)
	ldq $2,72($15)
	subq $1,$2,$1
	ldq $2,80($15)
	addq $1,$2,$1
	stq $1,104($15)
	mov $9,$16
	ldq $17,104($15)
	jsr $26,check_realloc__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ul
	ldgp $29,0($26)
	mov $0,$1
	beq $1,$L645
	ldq $16,104($15)
	jsr $26,create__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl
	ldgp $29,0($26)
	mov $0,$1
	stq $1,112($15)
	mov $9,$16
	jsr $26,data__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	ldq $16,112($15)
	mov $31,$17
	mov $1,$18
	ldq $19,64($15)
	jsr $26,copy__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl
	ldgp $29,0($26)
	ldq $1,64($15)
	ldq $2,80($15)
	addq $1,$2,$12
	mov $9,$16
	jsr $26,data__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	ldq $2,64($15)
	addq $1,$2,$1
	ldq $2,72($15)
	addq $1,$2,$1
	ldq $2,64($15)
	ldq $3,72($15)
	addq $2,$3,$2
	ldq $3,96($15)
	subq $3,$2,$2
	ldq $16,112($15)
	mov $12,$17
	mov $1,$18
	mov $2,$19
	jsr $26,copy__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl
	ldgp $29,0($26)
	ldl $1,88($15)
	extbl $1,0,$3
	sll $3,56,$2
	sra $2,56,$1
	ldq $16,112($15)
	ldq $17,64($15)
	mov $1,$18
	ldq $19,80($15)
	jsr $26,set__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlcUl
	ldgp $29,0($26)
	mov $9,$16
	ldq $17,112($15)
	jsr $26,repup__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PQ2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
	ldgp $29,0($26)
	br $31,$L648
$L645:
	mov $9,$16
	jsr $26,rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$12
	ldq $1,64($15)
	ldq $2,80($15)
	addq $1,$2,$13
	mov $9,$16
	jsr $26,data__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	ldq $2,64($15)
	addq $1,$2,$1
	ldq $2,72($15)
	addq $1,$2,$1
	ldq $2,64($15)
	ldq $3,72($15)
	addq $2,$3,$2
	ldq $3,96($15)
	subq $3,$2,$2
	mov $12,$16
	mov $13,$17
	mov $1,$18
	mov $2,$19
	jsr $26,move__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl
	ldgp $29,0($26)
	mov $9,$16
	jsr $26,rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	ldl $2,88($15)
	extbl $2,0,$4
	sll $4,56,$3
	sra $3,56,$2
	mov $1,$16
	ldq $17,64($15)
	mov $2,$18
	ldq $19,80($15)
	jsr $26,set__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlcUl
	ldgp $29,0($26)
$L648:
	mov $9,$16
	jsr $26,rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$11
	ldt $f10,104($15)
	stt $f10,0($11)
	mov $9,$0
	br $31,$L627
$L627:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $15,48($30)
	lda $30,128($30)
	ret $31,($26),1
$LFE15:
	.end replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlUlc
	.align 5
	.ent replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlPCcUl
replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlPCcUl:
	.frame $15,128,$26,0
	.mask 0x400be00,-128
	ldgp $29,0($27)
$replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlPCcUl..ng:
$LFB16:
	lda $30,-128($30)
$LCFI83:
	stq $26,0($30)
$LCFI84:
	stq $9,8($30)
$LCFI85:
	stq $10,16($30)
$LCFI86:
	stq $11,24($30)
$LCFI87:
	stq $12,32($30)
$LCFI88:
	stq $13,40($30)
$LCFI89:
	stq $15,48($30)
$LCFI90:
	mov $30,$15
$LCFI91:
	.prologue 1
	mov $16,$9
	stq $17,64($15)
	stq $18,72($15)
	stq $19,80($15)
	stq $20,88($15)
	mov $9,$16
	jsr $26,length__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$10
	stq $10,96($15)
$L652:
	ldq $1,64($15)
	ldq $2,96($15)
	cmpule $1,$2,$1
	bne $1,$L654
	lda $16,$LC8
	jsr $26,__out_of_range__FPCc
	ldgp $29,0($26)
$L655:
$L654:
	br $31,$L653
$L656:
	br $31,$L652
$L653:
	ldq $1,96($15)
	ldq $2,64($15)
	subq $1,$2,$1
	ldq $2,72($15)
	cmpule $2,$1,$1
	bne $1,$L657
	ldq $1,96($15)
	ldq $2,64($15)
	subq $1,$2,$1
	stq $1,72($15)
$L657:
	nop
$L658:
	ldq $1,96($15)
	ldq $2,72($15)
	subq $1,$2,$12
	mov $9,$16
	jsr $26,max_size__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	ldq $2,88($15)
	subq $1,$2,$1
	cmpule $12,$1,$2
	bne $2,$L660
	lda $16,$LC9
	jsr $26,__length_error__FPCc
	ldgp $29,0($26)
$L661:
$L660:
	br $31,$L659
$L662:
	br $31,$L658
$L659:
	ldq $1,96($15)
	ldq $2,72($15)
	subq $1,$2,$1
	ldq $2,88($15)
	addq $1,$2,$1
	stq $1,104($15)
	mov $9,$16
	ldq $17,104($15)
	jsr $26,check_realloc__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ul
	ldgp $29,0($26)
	mov $0,$1
	beq $1,$L663
	ldq $16,104($15)
	jsr $26,create__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl
	ldgp $29,0($26)
	mov $0,$1
	stq $1,112($15)
	mov $9,$16
	jsr $26,data__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	ldq $16,112($15)
	mov $31,$17
	mov $1,$18
	ldq $19,64($15)
	jsr $26,copy__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl
	ldgp $29,0($26)
	ldq $1,64($15)
	ldq $2,88($15)
	addq $1,$2,$12
	mov $9,$16
	jsr $26,data__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	ldq $2,64($15)
	addq $1,$2,$1
	ldq $2,72($15)
	addq $1,$2,$1
	ldq $2,64($15)
	ldq $3,72($15)
	addq $2,$3,$2
	ldq $3,96($15)
	subq $3,$2,$2
	ldq $16,112($15)
	mov $12,$17
	mov $1,$18
	mov $2,$19
	jsr $26,copy__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl
	ldgp $29,0($26)
	ldq $16,112($15)
	ldq $17,64($15)
	ldq $18,80($15)
	ldq $19,88($15)
	jsr $26,copy__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl
	ldgp $29,0($26)
	mov $9,$16
	ldq $17,112($15)
	jsr $26,repup__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PQ2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
	ldgp $29,0($26)
	br $31,$L664
$L663:
	mov $9,$16
	jsr $26,rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$12
	ldq $1,64($15)
	ldq $2,88($15)
	addq $1,$2,$13
	mov $9,$16
	jsr $26,data__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	ldq $2,64($15)
	addq $1,$2,$1
	ldq $2,72($15)
	addq $1,$2,$1
	ldq $2,64($15)
	ldq $3,72($15)
	addq $2,$3,$2
	ldq $3,96($15)
	subq $3,$2,$2
	mov $12,$16
	mov $13,$17
	mov $1,$18
	mov $2,$19
	jsr $26,move__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl
	ldgp $29,0($26)
	mov $9,$16
	jsr $26,rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$16
	ldq $17,64($15)
	ldq $18,80($15)
	ldq $19,88($15)
	jsr $26,copy__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl
	ldgp $29,0($26)
$L664:
	mov $9,$16
	jsr $26,rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$11
	ldt $f10,104($15)
	stt $f10,0($11)
	mov $9,$0
	br $31,$L651
$L651:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $13,40($30)
	ldq $15,48($30)
	lda $30,128($30)
	ret $31,($26),1
$LFE16:
	.end replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlPCcUl
.rdata
$LC10:
	.ascii "pos2 > len2\0"
.text
	.align 5
	.ent replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlRCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUl
replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlRCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUl:
	.frame $15,80,$26,0
	.mask 0x4008600,-80
	ldgp $29,0($27)
$replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlRCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUl..ng:
$LFB17:
	lda $30,-80($30)
$LCFI92:
	stq $26,0($30)
$LCFI93:
	stq $9,8($30)
$LCFI94:
	stq $10,16($30)
$LCFI95:
	stq $15,24($30)
$LCFI96:
	mov $30,$15
$LCFI97:
	.prologue 1
	mov $16,$9
	stq $17,32($15)
	stq $18,40($15)
	stq $19,48($15)
	stq $20,56($15)
	stq $21,64($15)
	ldq $16,48($15)
	jsr $26,length__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$10
	stq $10,72($15)
	ldq $1,32($15)
	bne $1,$L666
	mov $9,$16
	jsr $26,length__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	ldq $2,40($15)
	cmpult $2,$1,$1
	bne $1,$L666
	ldq $1,56($15)
	bne $1,$L666
	ldq $1,64($15)
	ldq $2,72($15)
	cmpult $1,$2,$1
	bne $1,$L666
	mov $9,$16
	ldq $17,48($15)
	jsr $26,__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$0
	br $31,$L665
$L666:
	nop
$L667:
	ldq $1,56($15)
	ldq $2,72($15)
	cmpule $1,$2,$1
	bne $1,$L669
	lda $16,$LC10
	jsr $26,__out_of_range__FPCc
	ldgp $29,0($26)
$L670:
$L669:
	br $31,$L668
$L671:
	br $31,$L667
$L668:
	ldq $1,72($15)
	ldq $2,56($15)
	subq $1,$2,$1
	ldq $2,64($15)
	cmpule $2,$1,$1
	bne $1,$L672
	ldq $1,72($15)
	ldq $2,56($15)
	subq $1,$2,$1
	stq $1,64($15)
$L672:
	ldq $16,48($15)
	jsr $26,data__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	ldq $2,56($15)
	addq $1,$2,$1
	mov $9,$16
	ldq $17,32($15)
	ldq $18,40($15)
	mov $1,$19
	ldq $20,64($15)
	bsr $26,$replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlPCcUl..ng
	mov $0,$1
	mov $1,$0
	br $31,$L665
$L665:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,80($30)
	ret $31,($26),1
$LFE17:
	.end replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlRCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUl
	.align 5
	.ent rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng:
$LFB18:
	lda $30,-16($30)
$LCFI98:
	stq $26,0($30)
$LCFI99:
	stq $15,8($30)
$LCFI100:
	mov $30,$15
$LCFI101:
	.prologue 0
	mov $16,$1
	ldq $3,0($1)
	subq $3,32,$2
	mov $2,$0
	br $31,$L311
$L311:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	ret $31,($26),1
$LFE18:
	.end rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.align 5
	.ent _S_freelist_index__t24__default_alloc_template2b0i0Ul
_S_freelist_index__t24__default_alloc_template2b0i0Ul:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$_S_freelist_index__t24__default_alloc_template2b0i0Ul..ng:
$LFB19:
	lda $30,-16($30)
$LCFI102:
	stq $26,0($30)
$LCFI103:
	stq $15,8($30)
$LCFI104:
	mov $30,$15
$LCFI105:
	.prologue 0
	mov $16,$1
	addq $1,7,$2
	srl $2,3,$3
	subq $3,1,$2
	mov $2,$0
	br $31,$L318
$L318:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	ret $31,($26),1
$LFE19:
	.end _S_freelist_index__t24__default_alloc_template2b0i0Ul
	.align 5
	.ent _$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0:
	.frame $15,32,$26,0
	.mask 0x4008600,-32
	ldgp $29,0($27)
$_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng:
$LFB20:
	lda $30,-32($30)
$LCFI106:
	stq $26,0($30)
$LCFI107:
	stq $9,8($30)
$LCFI108:
	stq $10,16($30)
$LCFI109:
	stq $15,24($30)
$LCFI110:
	mov $30,$15
$LCFI111:
	.prologue 1
	mov $16,$10
	mov $17,$9
	mov $10,$16
	bsr $26,$rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	mov $1,$16
	jsr $26,release__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
	ldgp $29,0($26)
$L319:
	and $9,1,$1
	addl $1,$31,$2
	beq $2,$L321
	mov $10,$16
	jsr $26,__builtin_delete
	ldgp $29,0($26)
	br $31,$L321
$L320:
$L321:
$L310:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE20:
	.end _$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.align 5
	.ent data__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
data__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$data__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep..ng:
$LFB21:
	lda $30,-16($30)
$LCFI112:
	stq $26,0($30)
$LCFI113:
	stq $15,8($30)
$LCFI114:
	mov $30,$15
$LCFI115:
	.prologue 0
	mov $16,$1
	addq $1,32,$2
	mov $2,$0
	br $31,$L325
$L325:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	ret $31,($26),1
$LFE21:
	.end data__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
	.align 5
	.ent __t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
	ldgp $29,0($27)
$__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng:
$LFB22:
	lda $30,-32($30)
$LCFI116:
	stq $26,0($30)
$LCFI117:
	stq $9,8($30)
$LCFI118:
	stq $15,16($30)
$LCFI119:
	mov $30,$15
$LCFI120:
	.prologue 1
	mov $16,$9
	lda $16,_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0$nilRep
	jsr $26,grab__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
	ldgp $29,0($26)
	stq $0,0($9)
$L326:
	mov $9,$0
	br $31,$L322
$L322:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE22:
	.end __t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.align 5
	.ent length__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
length__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
	ldgp $29,0($27)
$length__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng:
$LFB23:
	lda $30,-32($30)
$LCFI121:
	stq $26,0($30)
$LCFI122:
	stq $9,8($30)
$LCFI123:
	stq $15,16($30)
$LCFI124:
	mov $30,$15
$LCFI125:
	.prologue 1
	mov $16,$9
	mov $9,$16
	bsr $26,$rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	ldq $2,0($1)
	mov $2,$0
	br $31,$L340
$L340:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE23:
	.end length__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.align 5
	.ent __apl__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c
__apl__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c:
	.frame $15,32,$26,0
	.mask 0x4008600,-32
	ldgp $29,0($27)
$__apl__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c..ng:
$LFB24:
	lda $30,-32($30)
$LCFI126:
	stq $26,0($30)
$LCFI127:
	stq $9,8($30)
$LCFI128:
	stq $10,16($30)
$LCFI129:
	stq $15,24($30)
$LCFI130:
	mov $30,$15
$LCFI131:
	.prologue 1
	mov $16,$9
	mov $17,$10
	mov $9,$16
	lda $17,1
	mov $10,$18
	jsr $26,append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ulc
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$0
	br $31,$L338
$L338:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE24:
	.end __apl__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c
	.align 5
	.ent data__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
data__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
	ldgp $29,0($27)
$data__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng:
$LFB25:
	lda $30,-32($30)
$LCFI132:
	stq $26,0($30)
$LCFI133:
	stq $9,8($30)
$LCFI134:
	stq $15,16($30)
$LCFI135:
	mov $30,$15
$LCFI136:
	.prologue 1
	mov $16,$9
	mov $9,$16
	bsr $26,$rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	mov $1,$16
	bsr $26,$data__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep..ng
	mov $0,$1
	mov $1,$0
	br $31,$L346
$L346:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE25:
	.end data__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.align 5
	.ent c_str__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
c_str__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
	ldgp $29,0($27)
$c_str__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng:
$LFB26:
	lda $30,-32($30)
$LCFI137:
	stq $26,0($30)
$LCFI138:
	stq $9,8($30)
$LCFI139:
	stq $15,16($30)
$LCFI140:
	mov $30,$15
$LCFI141:
	.prologue 1
	mov $16,$9
	mov $9,$16
	bsr $26,$length__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	bne $1,$L342
	lda $0,$LC0
	br $31,$L341
$L342:
	mov $9,$16
	jsr $26,terminate__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $9,$16
	bsr $26,$data__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	mov $1,$0
	br $31,$L341
$L341:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE26:
	.end c_str__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.align 5
	.ent __t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc:
	.frame $15,32,$26,0
	.mask 0x4008600,-32
	ldgp $29,0($27)
$__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc..ng:
$LFB27:
	lda $30,-32($30)
$LCFI142:
	stq $26,0($30)
$LCFI143:
	stq $9,8($30)
$LCFI144:
	stq $10,16($30)
$LCFI145:
	stq $15,24($30)
$LCFI146:
	mov $30,$15
$LCFI147:
	.prologue 1
	mov $16,$10
	mov $17,$9
	lda $16,_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0$nilRep
	jsr $26,grab__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
	ldgp $29,0($26)
	stq $0,0($10)
	mov $10,$16
	mov $9,$17
	jsr $26,assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	ldgp $29,0($26)
$L370:
	mov $10,$0
	br $31,$L367
$L367:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE27:
	.end __t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	.align 5
	.ent __as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0:
	.frame $15,32,$26,0
	.mask 0x4008600,-32
	ldgp $29,0($27)
$__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng:
$LFB28:
	lda $30,-32($30)
$LCFI148:
	stq $26,0($30)
$LCFI149:
	stq $9,8($30)
$LCFI150:
	stq $10,16($30)
$LCFI151:
	stq $15,24($30)
$LCFI152:
	mov $30,$15
$LCFI153:
	.prologue 1
	mov $16,$10
	mov $17,$9
	cmpeq $9,$10,$1
	bne $1,$L411
	mov $10,$16
	bsr $26,$rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	mov $1,$16
	jsr $26,release__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
	ldgp $29,0($26)
	mov $9,$16
	bsr $26,$rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	mov $1,$16
	jsr $26,grab__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
	ldgp $29,0($26)
	mov $0,$1
	stq $1,0($10)
$L411:
	mov $10,$0
	br $31,$L410
$L410:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE28:
	.end __as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.align 5
	.ent __pl__H3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_PCX01RCt12basic_string3ZX01ZX11ZX21_t12basic_string3ZX01ZX11ZX21
__pl__H3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_PCX01RCt12basic_string3ZX01ZX11ZX21_t12basic_string3ZX01ZX11ZX21:
	.frame $15,112,$26,0
	.mask 0x4008e00,-112
	ldgp $29,0($27)
$__pl__H3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_PCX01RCt12basic_string3ZX01ZX11ZX21_t12basic_string3ZX01ZX11ZX21..ng:
$LFB29:
	lda $30,-112($30)
$LCFI154:
	stq $26,0($30)
$LCFI155:
	stq $9,8($30)
$LCFI156:
	stq $10,16($30)
$LCFI157:
	stq $11,24($30)
$LCFI158:
	stq $15,32($30)
$LCFI159:
	mov $30,$15
$LCFI160:
	.prologue 1
	mov $16,$9
	mov $17,$10
	mov $18,$11
	addq $15,48,$16
	mov $10,$17
	bsr $26,$__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc..ng
$LEHB423:
	addq $15,48,$16
	mov $11,$17
	mov $31,$18
	lda $19,-1
	jsr $26,append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUl
	ldgp $29,0($26)
	mov $9,$16
	addq $15,48,$17
	jsr $26,__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
$LEHB427:
	addq $15,48,$16
	lda $17,2
	bsr $26,$_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
$LEHE427:
	br $31,$L422
$LEHE423:
	br $31,$L426
$L424:
	jsr $26,__throw
	ldgp $29,0($26)
$L426:
	br $31,$L429
$LEHB430:
$L423:
	br $29,$LSJ4636
$LSJ4636:
	ldgp $29,0($29)
	addq $15,48,$16
	lda $17,2
	bsr $26,$_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	br $31,$L424
$L427:
	br $29,$LSJ4643
$LSJ4643:
	ldgp $29,0($29)
	br $31,$L424
$LEHE430:
	br $31,$L430
$L431:
	jsr $26,__throw
	ldgp $29,0($26)
$L432:
$L430:
	br $29,$LSJ4654
$LSJ4654:
	ldgp $29,0($29)
	jsr $26,terminate__Fv
	ldgp $29,0($26)
$L429:
$L422:
	mov $9,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $15,32($30)
	lda $30,112($30)
	ret $31,($26),1
$LFE29:
	.end __pl__H3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_PCX01RCt12basic_string3ZX01ZX11ZX21_t12basic_string3ZX01ZX11ZX21
	.align 5
	.ent __pl__H3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_RCt12basic_string3ZX01ZX11ZX21PCX01_t12basic_string3ZX01ZX11ZX21
__pl__H3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_RCt12basic_string3ZX01ZX11ZX21PCX01_t12basic_string3ZX01ZX11ZX21:
	.frame $15,112,$26,0
	.mask 0x4008e00,-112
	ldgp $29,0($27)
$__pl__H3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_RCt12basic_string3ZX01ZX11ZX21PCX01_t12basic_string3ZX01ZX11ZX21..ng:
$LFB30:
	lda $30,-112($30)
$LCFI161:
	stq $26,0($30)
$LCFI162:
	stq $9,8($30)
$LCFI163:
	stq $10,16($30)
$LCFI164:
	stq $11,24($30)
$LCFI165:
	stq $15,32($30)
$LCFI166:
	mov $30,$15
$LCFI167:
	.prologue 1
	mov $16,$9
	mov $17,$10
	mov $18,$11
	addq $15,48,$16
	mov $10,$17
	jsr $26,__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
$LEHB434:
	addq $15,48,$16
	mov $11,$17
	jsr $26,append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	ldgp $29,0($26)
	mov $9,$16
	addq $15,48,$17
	jsr $26,__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
$LEHB439:
	addq $15,48,$16
	lda $17,2
	bsr $26,$_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
$LEHE439:
	br $31,$L433
$LEHE434:
	br $31,$L438
$L435:
	jsr $26,__throw
	ldgp $29,0($26)
$L438:
	br $31,$L441
$LEHB442:
$L434:
	br $29,$LSJ4733
$LSJ4733:
	ldgp $29,0($29)
	addq $15,48,$16
	lda $17,2
	bsr $26,$_$_t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	br $31,$L435
$L439:
	br $29,$LSJ4740
$LSJ4740:
	ldgp $29,0($29)
	br $31,$L435
$LEHE442:
	br $31,$L442
$L443:
	jsr $26,__throw
	ldgp $29,0($26)
$L444:
$L442:
	br $29,$LSJ4751
$LSJ4751:
	ldgp $29,0($29)
	jsr $26,terminate__Fv
	ldgp $29,0($26)
$L441:
$L433:
	mov $9,$0
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $15,32($30)
	lda $30,112($30)
	ret $31,($26),1
$LFE30:
	.end __pl__H3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_RCt12basic_string3ZX01ZX11ZX21PCX01_t12basic_string3ZX01ZX11ZX21
	.align 5
	.ent __as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc:
	.frame $15,32,$26,0
	.mask 0x4008600,-32
	ldgp $29,0($27)
$__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc..ng:
$LFB31:
	lda $30,-32($30)
$LCFI168:
	stq $26,0($30)
$LCFI169:
	stq $9,8($30)
$LCFI170:
	stq $10,16($30)
$LCFI171:
	stq $15,24($30)
$LCFI172:
	mov $30,$15
$LCFI173:
	.prologue 1
	mov $16,$9
	mov $17,$10
	mov $9,$16
	mov $10,$17
	jsr $26,assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$0
	br $31,$L492
$L492:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE31:
	.end __as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	.align 5
	.ent __as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c
__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c:
	.frame $15,32,$26,0
	.mask 0x4008600,-32
	ldgp $29,0($27)
$__as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c..ng:
$LFB32:
	lda $30,-32($30)
$LCFI174:
	stq $26,0($30)
$LCFI175:
	stq $9,8($30)
$LCFI176:
	stq $10,16($30)
$LCFI177:
	stq $15,24($30)
$LCFI178:
	mov $30,$15
$LCFI179:
	.prologue 1
	mov $16,$9
	mov $17,$10
	mov $9,$16
	lda $17,1
	mov $10,$18
	jsr $26,assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ulc
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$0
	br $31,$L551
$L551:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE32:
	.end __as__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0c
	.align 5
	.ent allocate__t23__malloc_alloc_template1i0Ul
allocate__t23__malloc_alloc_template1i0Ul:
	.frame $15,48,$26,0
	.mask 0x4008200,-48
	ldgp $29,0($27)
$allocate__t23__malloc_alloc_template1i0Ul..ng:
$LFB33:
	lda $30,-48($30)
$LCFI180:
	stq $26,0($30)
$LCFI181:
	stq $9,8($30)
$LCFI182:
	stq $15,16($30)
$LCFI183:
	mov $30,$15
$LCFI184:
	.prologue 1
	mov $16,$9
	mov $9,$16
	jsr $26,malloc
	ldgp $29,0($26)
	mov $0,$1
	stq $1,40($15)
	ldt $f11,40($15)
	fmov $f11,$f10
	stt $f10,32($15)
	ldq $1,32($15)
	bne $1,$L597
	mov $9,$16
	bsr $26,$_S_oom_malloc__t23__malloc_alloc_template1i0Ul..ng
	mov $0,$1
	stq $1,32($15)
$L597:
	ldq $1,32($15)
	mov $1,$0
	br $31,$L596
$L596:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE33:
	.end allocate__t23__malloc_alloc_template1i0Ul
	.align 5
	.ent _S_round_up__t24__default_alloc_template2b0i0Ul
_S_round_up__t24__default_alloc_template2b0i0Ul:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$_S_round_up__t24__default_alloc_template2b0i0Ul..ng:
$LFB34:
	lda $30,-16($30)
$LCFI185:
	stq $26,0($30)
$LCFI186:
	stq $15,8($30)
$LCFI187:
	mov $30,$15
$LCFI188:
	.prologue 0
	mov $16,$1
	addq $1,7,$2
	bic $2,7,$2
	mov $2,$0
	br $31,$L605
$L605:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	ret $31,($26),1
$LFE34:
	.end _S_round_up__t24__default_alloc_template2b0i0Ul
	.align 5
	.ent create__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl
create__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl:
	.frame $15,48,$26,0
	.mask 0x4008200,-48
	ldgp $29,0($27)
$create__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl..ng:
$LFB35:
	lda $30,-48($30)
$LCFI189:
	stq $26,0($30)
$LCFI190:
	stq $9,8($30)
$LCFI191:
	stq $15,16($30)
$LCFI192:
	mov $30,$15
$LCFI193:
	.prologue 1
	mov $16,$9
	addq $9,1,$1
	mov $1,$16
	jsr $26,frob_size__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$9
	lda $16,32
	mov $9,$17
	jsr $26,__nw__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlUl
	ldgp $29,0($26)
	stq $0,32($15)
	ldq $1,32($15)
	stq $9,8($1)
	ldq $1,32($15)
	lda $2,1
	stq $2,16($1)
	ldq $1,32($15)
	stq $31,24($1)
	ldq $1,32($15)
	mov $1,$0
	br $31,$L588
$L588:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE35:
	.end create__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl
	.align 5
	.ent copy__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl
copy__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl:
	.frame $15,48,$26,0
	.mask 0x4009e00,-48
	ldgp $29,0($27)
$copy__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl..ng:
$LFB36:
	lda $30,-48($30)
$LCFI194:
	stq $26,0($30)
$LCFI195:
	stq $9,8($30)
$LCFI196:
	stq $10,16($30)
$LCFI197:
	stq $11,24($30)
$LCFI198:
	stq $12,32($30)
$LCFI199:
	stq $15,40($30)
$LCFI200:
	mov $30,$15
$LCFI201:
	.prologue 1
	mov $16,$9
	mov $17,$10
	mov $18,$11
	mov $19,$12
	beq $12,$L626
	mov $9,$16
	bsr $26,$data__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep..ng
	mov $0,$1
	addq $1,$10,$2
	mov $2,$16
	mov $11,$17
	mov $12,$18
	jsr $26,copy__t18string_char_traits1ZcPcPCcUl
	ldgp $29,0($26)
$L626:
$L625:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $15,40($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE36:
	.end copy__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl
	.align 5
	.ent max_size__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
max_size__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$max_size__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng:
$LFB37:
	lda $30,-16($30)
$LCFI202:
	stq $26,0($30)
$LCFI203:
	stq $15,8($30)
$LCFI204:
	mov $30,$15
$LCFI205:
	.prologue 0
	mov $16,$1
	lda $0,-2
	br $31,$L637
$L637:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	ret $31,($26),1
$LFE37:
	.end max_size__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.align 5
	.ent check_realloc__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ul
check_realloc__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ul:
	.frame $15,48,$26,0
	.mask 0x4009e00,-48
	ldgp $29,0($27)
$check_realloc__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ul..ng:
$LFB38:
	lda $30,-48($30)
$LCFI206:
	stq $26,0($30)
$LCFI207:
	stq $9,8($30)
$LCFI208:
	stq $10,16($30)
$LCFI209:
	stq $11,24($30)
$LCFI210:
	stq $12,32($30)
$LCFI211:
	stq $15,40($30)
$LCFI212:
	mov $30,$15
$LCFI213:
	.prologue 1
	mov $16,$9
	mov $17,$10
	addq $10,1,$10
	mov $9,$16
	bsr $26,$rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	mov $1,$11
	stq $31,24($11)
	mov $31,$12
	mov $9,$16
	bsr $26,$rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	ldq $2,16($1)
	cmpule $2,1,$1
	beq $1,$L644
	mov $9,$16
	jsr $26,capacity__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	cmpule $10,$1,$2
	beq $2,$L644
	mov $9,$16
	jsr $26,capacity__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$1
	mov $10,$16
	mov $1,$17
	jsr $26,excess_slop__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlUl
	ldgp $29,0($26)
	mov $0,$1
	bne $1,$L644
	br $31,$L643
$L644:
	lda $12,1
$L643:
	mov $12,$0
	br $31,$L640
$L640:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $15,40($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE38:
	.end check_realloc__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ul
	.align 5
	.ent set__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlcUl
set__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlcUl:
	.frame $15,64,$26,0
	.mask 0x4008e00,-64
	ldgp $29,0($27)
$set__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlcUl..ng:
$LFB39:
	lda $30,-64($30)
$LCFI214:
	stq $26,0($30)
$LCFI215:
	stq $9,8($30)
$LCFI216:
	stq $10,16($30)
$LCFI217:
	stq $11,24($30)
$LCFI218:
	stq $15,32($30)
$LCFI219:
	mov $30,$15
$LCFI220:
	.prologue 1
	mov $16,$9
	mov $17,$10
	mov $18,$2
	mov $2,$1
	ldl $2,48($15)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,48($15)
	mov $19,$11
	ldl $1,48($15)
	extbl $1,0,$3
	sll $3,56,$2
	sra $2,56,$1
	mov $9,$16
	bsr $26,$data__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep..ng
	mov $0,$1
	addq $1,$10,$2
	mov $2,$16
	addq $15,48,$17
	mov $11,$18
	jsr $26,set__t18string_char_traits1ZcPcRCcUl
	ldgp $29,0($26)
$L646:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $15,32($30)
	lda $30,64($30)
	ret $31,($26),1
$LFE39:
	.end set__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlcUl
	.align 5
	.ent repup__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PQ2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
repup__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PQ2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep:
	.frame $15,32,$26,0
	.mask 0x4008600,-32
	ldgp $29,0($27)
$repup__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PQ2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep..ng:
$LFB40:
	lda $30,-32($30)
$LCFI221:
	stq $26,0($30)
$LCFI222:
	stq $9,8($30)
$LCFI223:
	stq $10,16($30)
$LCFI224:
	stq $15,24($30)
$LCFI225:
	mov $30,$15
$LCFI226:
	.prologue 1
	mov $16,$10
	mov $17,$9
	mov $10,$16
	bsr $26,$rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	mov $1,$16
	jsr $26,release__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
	ldgp $29,0($26)
	mov $9,$16
	bsr $26,$data__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep..ng
	mov $0,$1
	stq $1,0($10)
$L647:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE40:
	.end repup__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PQ2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
	.align 5
	.ent move__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl
move__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl:
	.frame $15,48,$26,0
	.mask 0x4009e00,-48
	ldgp $29,0($27)
$move__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl..ng:
$LFB41:
	lda $30,-48($30)
$LCFI227:
	stq $26,0($30)
$LCFI228:
	stq $9,8($30)
$LCFI229:
	stq $10,16($30)
$LCFI230:
	stq $11,24($30)
$LCFI231:
	stq $12,32($30)
$LCFI232:
	stq $15,40($30)
$LCFI233:
	mov $30,$15
$LCFI234:
	.prologue 1
	mov $16,$9
	mov $17,$10
	mov $18,$11
	mov $19,$12
	beq $12,$L650
	mov $9,$16
	bsr $26,$data__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep..ng
	mov $0,$1
	addq $1,$10,$2
	mov $2,$16
	mov $11,$17
	mov $12,$18
	jsr $26,move__t18string_char_traits1ZcPcPCcUl
	ldgp $29,0($26)
$L650:
$L649:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $15,40($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE41:
	.end move__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlPCcUl
	.align 5
	.ent release__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
release__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
	ldgp $29,0($27)
$release__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep..ng:
$LFB42:
	lda $30,-32($30)
$LCFI235:
	stq $26,0($30)
$LCFI236:
	stq $9,8($30)
$LCFI237:
	stq $15,16($30)
$LCFI238:
	mov $30,$15
$LCFI239:
	.prologue 1
	mov $16,$9
	ldq $2,16($9)
	subq $2,1,$1
	mov $1,$2
	stq $2,16($9)
	bne $2,$L313
	mov $9,$16
	jsr $26,__dl__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepPv
	ldgp $29,0($26)
$L313:
$L312:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE42:
	.end release__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
	.align 5
	.ent grab__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
grab__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
	ldgp $29,0($27)
$grab__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep..ng:
$LFB43:
	lda $30,-32($30)
$LCFI240:
	stq $26,0($30)
$LCFI241:
	stq $9,8($30)
$LCFI242:
	stq $15,16($30)
$LCFI243:
	mov $30,$15
$LCFI244:
	.prologue 1
	mov $16,$9
	ldq $1,24($9)
	beq $1,$L324
	mov $9,$16
	bsr $26,$clone__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep..ng
	mov $0,$1
	mov $1,$0
	br $31,$L323
$L324:
	ldq $1,16($9)
	addq $1,1,$2
	stq $2,16($9)
	mov $9,$16
	bsr $26,$data__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep..ng
	mov $0,$1
	mov $1,$0
	br $31,$L323
$L323:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE43:
	.end grab__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep
	.align 5
	.ent append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ulc
append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ulc:
	.frame $15,48,$26,0
	.mask 0x4008e00,-48
	ldgp $29,0($27)
$append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ulc..ng:
$LFB44:
	lda $30,-48($30)
$LCFI245:
	stq $26,0($30)
$LCFI246:
	stq $9,8($30)
$LCFI247:
	stq $10,16($30)
$LCFI248:
	stq $11,24($30)
$LCFI249:
	stq $15,32($30)
$LCFI250:
	mov $30,$15
$LCFI251:
	.prologue 1
	mov $16,$11
	mov $17,$9
	mov $18,$10
	mov $11,$16
	bsr $26,$length__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	mov $11,$16
	mov $1,$17
	mov $31,$18
	mov $9,$19
	mov $10,$20
	bsr $26,$replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlUlc..ng
	mov $0,$1
	mov $1,$0
	br $31,$L339
$L339:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $15,32($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE44:
	.end append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ulc
	.align 5
	.ent terminate__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
terminate__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0:
	.frame $15,48,$26,0
	.mask 0x4008600,-48
	ldgp $29,0($27)
$terminate__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng:
$LFB45:
	lda $30,-48($30)
$LCFI252:
	stq $26,0($30)
$LCFI253:
	stq $9,8($30)
$LCFI254:
	stq $10,16($30)
$LCFI255:
	stq $15,24($30)
$LCFI256:
	mov $30,$15
$LCFI257:
	.prologue 1
	mov $16,$9
	mov $9,$16
	bsr $26,$rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$10
	mov $9,$16
	bsr $26,$length__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	mov $10,$16
	mov $1,$17
	jsr $26,__vc__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl
	ldgp $29,0($26)
	mov $0,$10
	jsr $26,eos__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	ldl $2,32($15)
	bic $2,255,$2
	insbl $1,0,$1
	bis $1,$2,$1
	stl $1,32($15)
	mov $10,$16
	addq $15,32,$17
	jsr $26,assign__t18string_char_traits1ZcRcRCc
	ldgp $29,0($26)
$L343:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE45:
	.end terminate__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.align 5
	.ent assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc:
	.frame $15,32,$26,0
	.mask 0x4008600,-32
	ldgp $29,0($27)
$assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc..ng:
$LFB46:
	lda $30,-32($30)
$LCFI258:
	stq $26,0($30)
$LCFI259:
	stq $9,8($30)
$LCFI260:
	stq $10,16($30)
$LCFI261:
	stq $15,24($30)
$LCFI262:
	mov $30,$15
$LCFI263:
	.prologue 1
	mov $16,$9
	mov $17,$10
	mov $10,$16
	jsr $26,length__t18string_char_traits1ZcPCc
	ldgp $29,0($26)
	mov $0,$1
	mov $9,$16
	mov $10,$17
	mov $1,$18
	jsr $26,assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCcUl
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$0
	br $31,$L368
$L368:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE46:
	.end assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	.align 5
	.ent __t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0:
	.frame $15,32,$26,0
	.mask 0x4008600,-32
	ldgp $29,0($27)
$__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng:
$LFB47:
	lda $30,-32($30)
$LCFI264:
	stq $26,0($30)
$LCFI265:
	stq $9,8($30)
$LCFI266:
	stq $10,16($30)
$LCFI267:
	stq $15,24($30)
$LCFI268:
	mov $30,$15
$LCFI269:
	.prologue 1
	mov $16,$10
	mov $17,$9
	mov $9,$16
	bsr $26,$rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	mov $1,$16
	bsr $26,$grab__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep..ng
	stq $0,0($10)
$L372:
	mov $10,$0
	br $31,$L371
$L371:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE47:
	.end __t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.align 5
	.ent append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUl
append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUl:
	.frame $15,48,$26,0
	.mask 0x4009e00,-48
	ldgp $29,0($27)
$append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUl..ng:
$LFB48:
	lda $30,-48($30)
$LCFI270:
	stq $26,0($30)
$LCFI271:
	stq $9,8($30)
$LCFI272:
	stq $10,16($30)
$LCFI273:
	stq $11,24($30)
$LCFI274:
	stq $12,32($30)
$LCFI275:
	stq $15,40($30)
$LCFI276:
	mov $30,$15
$LCFI277:
	.prologue 1
	mov $16,$12
	mov $17,$9
	mov $18,$10
	mov $19,$11
	mov $12,$16
	bsr $26,$length__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	mov $12,$16
	mov $1,$17
	mov $31,$18
	mov $9,$19
	mov $10,$20
	mov $11,$21
	bsr $26,$replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlRCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUl..ng
	mov $0,$1
	mov $1,$0
	br $31,$L425
$L425:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $12,32($30)
	ldq $15,40($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE48:
	.end append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0RCt12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUl
	.align 5
	.ent append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc:
	.frame $15,32,$26,0
	.mask 0x4008600,-32
	ldgp $29,0($27)
$append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc..ng:
$LFB49:
	lda $30,-32($30)
$LCFI278:
	stq $26,0($30)
$LCFI279:
	stq $9,8($30)
$LCFI280:
	stq $10,16($30)
$LCFI281:
	stq $15,24($30)
$LCFI282:
	mov $30,$15
$LCFI283:
	.prologue 1
	mov $16,$9
	mov $17,$10
	mov $10,$16
	jsr $26,length__t18string_char_traits1ZcPCc
	ldgp $29,0($26)
	mov $0,$1
	mov $9,$16
	mov $10,$17
	mov $1,$18
	jsr $26,append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCcUl
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$0
	br $31,$L436
$L436:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE49:
	.end append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCc
	.align 5
	.ent assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ulc
assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ulc:
	.frame $15,48,$26,0
	.mask 0x4008e00,-48
	ldgp $29,0($27)
$assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ulc..ng:
$LFB50:
	lda $30,-48($30)
$LCFI284:
	stq $26,0($30)
$LCFI285:
	stq $9,8($30)
$LCFI286:
	stq $10,16($30)
$LCFI287:
	stq $11,24($30)
$LCFI288:
	stq $15,32($30)
$LCFI289:
	mov $30,$15
$LCFI290:
	.prologue 1
	mov $16,$9
	mov $17,$10
	mov $18,$11
	mov $9,$16
	mov $31,$17
	lda $18,-1
	mov $10,$19
	mov $11,$20
	bsr $26,$replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlUlc..ng
	mov $0,$1
	mov $1,$0
	br $31,$L552
$L552:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $15,32($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE50:
	.end assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0Ulc
	.align 5
	.ent frob_size__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl
frob_size__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl:
	.frame $15,32,$26,0
	.mask 0x4008000,-32
$frob_size__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl..ng:
$LFB51:
	lda $30,-32($30)
$LCFI291:
	stq $26,0($30)
$LCFI292:
	stq $15,8($30)
$LCFI293:
	mov $30,$15
$LCFI294:
	.prologue 0
	mov $16,$1
	lda $2,16
	stq $2,16($15)
$L590:
	ldq $2,16($15)
	cmpult $2,$1,$3
	bne $3,$L592
	br $31,$L591
$L592:
	ldt $f10,16($15)
	stt $f10,24($15)
	ldq $3,24($15)
	mov $3,$2
	addq $2,$2,$3
	stq $3,16($15)
	br $31,$L590
$L591:
	ldq $2,16($15)
	mov $2,$0
	br $31,$L589
$L589:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE51:
	.end frob_size__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl
	.align 5
	.ent __nw__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlUl
__nw__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlUl:
	.frame $15,32,$26,0
	.mask 0x4008600,-32
	ldgp $29,0($27)
$__nw__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlUl..ng:
$LFB52:
	lda $30,-32($30)
$LCFI295:
	stq $26,0($30)
$LCFI296:
	stq $9,8($30)
$LCFI297:
	stq $10,16($30)
$LCFI298:
	stq $15,24($30)
$LCFI299:
	mov $30,$15
$LCFI300:
	.prologue 1
	mov $16,$9
	mov $17,$10
	addq $9,$10,$1
	mov $1,$16
	jsr $26,allocate__t24__default_alloc_template2b0i0Ul
	ldgp $29,0($26)
	mov $0,$1
	mov $1,$0
	br $31,$L593
$L593:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE52:
	.end __nw__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlUl
	.align 5
	.ent capacity__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
capacity__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
	ldgp $29,0($27)
$capacity__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng:
$LFB53:
	lda $30,-32($30)
$LCFI301:
	stq $26,0($30)
$LCFI302:
	stq $9,8($30)
$LCFI303:
	stq $15,16($30)
$LCFI304:
	mov $30,$15
$LCFI305:
	.prologue 1
	mov $16,$9
	mov $9,$16
	bsr $26,$rep__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	ldq $2,8($1)
	mov $2,$0
	br $31,$L641
$L641:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE53:
	.end capacity__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.align 5
	.ent excess_slop__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlUl
excess_slop__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlUl:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$excess_slop__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlUl..ng:
$LFB54:
	lda $30,-16($30)
$LCFI306:
	stq $26,0($30)
$LCFI307:
	stq $15,8($30)
$LCFI308:
	mov $30,$15
$LCFI309:
	.prologue 0
	mov $16,$2
	mov $17,$1
	cmpule $2,16,$4
	lda $3,16
	cmoveq $4,$2,$3
	mov $3,$4
	addq $4,$4,$5
	cmpult $5,$1,$3
	mov $3,$0
	br $31,$L642
$L642:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	ret $31,($26),1
$LFE54:
	.end excess_slop__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUlUl
	.align 5
	.ent __dl__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepPv
__dl__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepPv:
	.frame $15,32,$26,0
	.mask 0x4008200,-32
	ldgp $29,0($27)
$__dl__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepPv..ng:
$LFB55:
	lda $30,-32($30)
$LCFI310:
	stq $26,0($30)
$LCFI311:
	stq $9,8($30)
$LCFI312:
	stq $15,16($30)
$LCFI313:
	mov $30,$15
$LCFI314:
	.prologue 1
	mov $16,$9
	ldq $2,8($9)
	addq $2,32,$1
	mov $9,$16
	mov $1,$17
	jsr $26,deallocate__t24__default_alloc_template2b0i0PvUl
	ldgp $29,0($26)
$L314:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE55:
	.end __dl__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepPv
	.align 5
	.ent __vc__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl
__vc__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl:
	.frame $15,32,$26,0
	.mask 0x4008600,-32
	ldgp $29,0($27)
$__vc__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl..ng:
$LFB56:
	lda $30,-32($30)
$LCFI315:
	stq $26,0($30)
$LCFI316:
	stq $9,8($30)
$LCFI317:
	stq $10,16($30)
$LCFI318:
	stq $15,24($30)
$LCFI319:
	mov $30,$15
$LCFI320:
	.prologue 1
	mov $16,$9
	mov $17,$10
	mov $9,$16
	bsr $26,$data__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3Rep..ng
	mov $0,$2
	addq $2,$10,$1
	mov $1,$0
	br $31,$L344
$L344:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE56:
	.end __vc__Q2t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0_3RepUl
	.align 5
	.ent eos__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
eos__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
	ldgp $29,0($27)
$eos__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng:
$LFB57:
	lda $30,-16($30)
$LCFI321:
	stq $26,0($30)
$LCFI322:
	stq $15,8($30)
$LCFI323:
	mov $30,$15
$LCFI324:
	.prologue 1
	jsr $26,eos__t18string_char_traits1Zc
	ldgp $29,0($26)
	mov $0,$2
	mov $2,$1
	addl $1,$31,$0
	br $31,$L345
$L345:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	ret $31,($26),1
$LFE57:
	.end eos__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0
	.align 5
	.ent assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCcUl
assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCcUl:
	.frame $15,48,$26,0
	.mask 0x4008e00,-48
	ldgp $29,0($27)
$assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCcUl..ng:
$LFB58:
	lda $30,-48($30)
$LCFI325:
	stq $26,0($30)
$LCFI326:
	stq $9,8($30)
$LCFI327:
	stq $10,16($30)
$LCFI328:
	stq $11,24($30)
$LCFI329:
	stq $15,32($30)
$LCFI330:
	mov $30,$15
$LCFI331:
	.prologue 1
	mov $16,$9
	mov $17,$10
	mov $18,$11
	mov $9,$16
	mov $31,$17
	lda $18,-1
	mov $10,$19
	mov $11,$20
	bsr $26,$replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlPCcUl..ng
	mov $0,$1
	mov $1,$0
	br $31,$L369
$L369:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $15,32($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE58:
	.end assign__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCcUl
	.align 5
	.ent append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCcUl
append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCcUl:
	.frame $15,48,$26,0
	.mask 0x4008e00,-48
	ldgp $29,0($27)
$append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCcUl..ng:
$LFB59:
	lda $30,-48($30)
$LCFI332:
	stq $26,0($30)
$LCFI333:
	stq $9,8($30)
$LCFI334:
	stq $10,16($30)
$LCFI335:
	stq $11,24($30)
$LCFI336:
	stq $15,32($30)
$LCFI337:
	mov $30,$15
$LCFI338:
	.prologue 1
	mov $16,$11
	mov $17,$9
	mov $18,$10
	mov $11,$16
	bsr $26,$length__Ct12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0..ng
	mov $0,$1
	mov $11,$16
	mov $1,$17
	mov $31,$18
	mov $9,$19
	mov $10,$20
	bsr $26,$replace__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0UlUlPCcUl..ng
	mov $0,$1
	mov $1,$0
	br $31,$L437
$L437:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $11,24($30)
	ldq $15,32($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE59:
	.end append__t12basic_string3ZcZt18string_char_traits1ZcZt24__default_alloc_template2b0i0PCcUl
	.align 5
	.ent allocate__t24__default_alloc_template2b0i0Ul
allocate__t24__default_alloc_template2b0i0Ul:
	.frame $15,64,$26,0
	.mask 0x4008200,-64
	ldgp $29,0($27)
$allocate__t24__default_alloc_template2b0i0Ul..ng:
$LFB60:
	lda $30,-64($30)
$LCFI339:
	stq $26,0($30)
$LCFI340:
	stq $9,8($30)
$LCFI341:
	stq $15,16($30)
$LCFI342:
	mov $30,$15
$LCFI343:
	.prologue 1
	mov $16,$9
	cmpule $9,128,$1
	bne $1,$L595
	mov $9,$16
	bsr $26,$allocate__t23__malloc_alloc_template1i0Ul..ng
	mov $0,$1
	mov $1,$0
	br $31,$L594
$L595:
	mov $9,$16
	bsr $26,$_S_freelist_index__t24__default_alloc_template2b0i0Ul..ng
	mov $0,$1
	mov $1,$2
	s8addq $2,0,$1
	lda $2,_t24__default_alloc_template2b0i0$_S_free_list
	addq $2,$1,$1
	stq $1,32($15)
	ldq $1,32($15)
	ldt $f10,0($1)
	stt $f10,40($15)
	ldq $1,40($15)
	bne $1,$L604
	mov $9,$16
	bsr $26,$_S_round_up__t24__default_alloc_template2b0i0Ul..ng
	mov $0,$1
	mov $1,$16
	bsr $26,$_S_refill__t24__default_alloc_template2b0i0Ul..ng
	mov $0,$1
	stq $1,48($15)
	ldq $1,48($15)
	mov $1,$0
	br $31,$L594
$L604:
	ldq $1,32($15)
	ldq $2,40($15)
	ldt $f10,0($2)
	stt $f10,0($1)
	ldq $1,40($15)
	mov $1,$0
	br $31,$L594
$L594:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $15,16($30)
	lda $30,64($30)
	ret $31,($26),1
$LFE60:
	.end allocate__t24__default_alloc_template2b0i0Ul
	.align 5
	.ent deallocate__t24__default_alloc_template2b0i0PvUl
deallocate__t24__default_alloc_template2b0i0PvUl:
	.frame $15,48,$26,0
	.mask 0x4008600,-48
	ldgp $29,0($27)
$deallocate__t24__default_alloc_template2b0i0PvUl..ng:
$LFB61:
	lda $30,-48($30)
$LCFI344:
	stq $26,0($30)
$LCFI345:
	stq $9,8($30)
$LCFI346:
	stq $10,16($30)
$LCFI347:
	stq $15,24($30)
$LCFI348:
	mov $30,$15
$LCFI349:
	.prologue 1
	mov $16,$9
	mov $17,$10
	stq $9,32($15)
	cmpule $10,128,$1
	bne $1,$L316
	mov $9,$16
	mov $10,$17
	jsr $26,deallocate__t23__malloc_alloc_template1i0PvUl
	ldgp $29,0($26)
	br $31,$L315
$L316:
	mov $10,$16
	bsr $26,$_S_freelist_index__t24__default_alloc_template2b0i0Ul..ng
	mov $0,$1
	mov $1,$2
	s8addq $2,0,$1
	lda $2,_t24__default_alloc_template2b0i0$_S_free_list
	addq $2,$1,$1
	stq $1,40($15)
	ldq $1,32($15)
	ldq $2,40($15)
	ldt $f10,0($2)
	stt $f10,0($1)
	ldq $1,40($15)
	ldt $f10,32($15)
	stt $f10,0($1)
$L315:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,48($30)
	ret $31,($26),1
$LFE61:
	.end deallocate__t24__default_alloc_template2b0i0PvUl
	.align 5
	.ent deallocate__t23__malloc_alloc_template1i0PvUl
deallocate__t23__malloc_alloc_template1i0PvUl:
	.frame $15,32,$26,0
	.mask 0x4008600,-32
	ldgp $29,0($27)
$deallocate__t23__malloc_alloc_template1i0PvUl..ng:
$LFB62:
	lda $30,-32($30)
$LCFI350:
	stq $26,0($30)
$LCFI351:
	stq $9,8($30)
$LCFI352:
	stq $10,16($30)
$LCFI353:
	stq $15,24($30)
$LCFI354:
	mov $30,$15
$LCFI355:
	.prologue 1
	mov $16,$10
	mov $17,$9
	mov $10,$16
	jsr $26,free
	ldgp $29,0($26)
$L317:
	mov $15,$30
	ldq $26,0($30)
	ldq $9,8($30)
	ldq $10,16($30)
	ldq $15,24($30)
	lda $30,32($30)
	ret $31,($26),1
$LFE62:
	.end deallocate__t23__malloc_alloc_template1i0PvUl
.rdata
	.align 3
__EXCEPTION_TABLE__:
	.quad $LEHB327
	.quad $LEHE327
	.quad $L327

	.quad $LEHB348
	.quad $LEHE348
	.quad $L348

	.quad $LEHB352
	.quad $LEHE352
	.quad $L352

	.quad $LEHB373
	.quad $LEHE373
	.quad $L373

	.quad $LEHB381
	.quad $LEHE381
	.quad $L381

	.quad $LEHB400
	.quad $LEHE400
	.quad $L400

	.quad $LEHB413
	.quad $LEHE413
	.quad $L413

	.quad $LEHB416
	.quad $LEHE416
	.quad $L416

	.quad $LEHB445
	.quad $LEHE445
	.quad $L445

	.quad $LEHB447
	.quad $LEHE447
	.quad $L447

	.quad $LEHB453
	.quad $LEHE453
	.quad $L453

	.quad $LEHB456
	.quad $LEHE456
	.quad $L456

	.quad $LEHB479
	.quad $LEHE479
	.quad $L479

	.quad $LEHB464
	.quad $LEHE464
	.quad $L464

	.quad $LEHB466
	.quad $LEHE466
	.quad $L466

	.quad $LEHB468
	.quad $LEHE468
	.quad $L468

	.quad $LEHB477
	.quad $LEHE477
	.quad $L477

	.quad $LEHB475
	.quad $LEHE475
	.quad $L475

	.quad $LEHB482
	.quad $LEHE482
	.quad $L482

	.quad $LEHB510
	.quad $LEHE510
	.quad $L510

	.quad $LEHB512
	.quad $LEHE512
	.quad $L512

	.quad $LEHB514
	.quad $LEHE514
	.quad $L514

	.quad $LEHB521
	.quad $LEHE521
	.quad $L521

	.quad $LEHB539
	.quad $LEHE539
	.quad $L539

	.quad $LEHB581
	.quad $LEHE581
	.quad $L581

	.quad $LEHB579
	.quad $LEHE579
	.quad $L579

	.quad $LEHB577
	.quad $LEHE577
	.quad $L577

	.quad $LEHB575
	.quad $LEHE575
	.quad $L575

	.quad $LEHB573
	.quad $LEHE573
	.quad $L573

	.quad $LEHB571
	.quad $LEHE571
	.quad $L571

	.quad $LEHB569
	.quad $LEHE569
	.quad $L569

	.quad $LEHB567
	.quad $LEHE567
	.quad $L567

	.quad $LEHB565
	.quad $LEHE565
	.quad $L565

	.quad $LEHB584
	.quad $LEHE584
	.quad $L584

	.quad $LEHB423
	.quad $LEHE423
	.quad $L423

	.quad $LEHB427
	.quad $LEHE427
	.quad $L427

	.quad $LEHB430
	.quad $LEHE430
	.quad $L430

	.quad $LEHB434
	.quad $LEHE434
	.quad $L434

	.quad $LEHB439
	.quad $LEHE439
	.quad $L439

	.quad $LEHB442
	.quad $LEHE442
	.quad $L442

$LRTH1:
	.quad -1
	.quad -1


.data
	.align 3
	.globl _GLOBAL_$F$tokenstr
_GLOBAL_$F$tokenstr:
__FRAME_BEGIN__:
	.align 0
	.long	$LECIE1-$LSCIE1
$LSCIE1:
	.align 0
	.long	0x0
	.byte	0x1
	.ascii "eh\0"

	.align 0
	.quad	__EXCEPTION_TABLE__
	.byte	0x1
	.byte	0x78
	.byte	0x40
	.byte	0xc
	.byte	0x1e
	.byte	0x0
	.byte	0x9
	.byte	0x40
	.byte	0x1a
	.align 3
$LECIE1:
	.align 0
	.long	$LEFDE1-$LSFDE1
$LSFDE1:
	.align 0
	.long	$LSFDE1-__FRAME_BEGIN__
	.align 0
	.quad	$LFB1
	.align 0
	.quad	$LFE1-$LFB1
	.byte	0x4
	.align 0
	.long	$LCFI0-$LFB1
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI1-$LCFI0
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI2-$LCFI1
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI3-$LCFI2
	.byte	0x8f
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI4-$LCFI3
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE1:
	.align 0
	.long	$LEFDE3-$LSFDE3
$LSFDE3:
	.align 0
	.long	$LSFDE3-__FRAME_BEGIN__
	.align 0
	.quad	$LFB2
	.align 0
	.quad	$LFE2-$LFB2
	.byte	0x4
	.align 0
	.long	$LCFI5-$LFB2
	.byte	0xe
	.byte	0x70
	.byte	0x4
	.align 0
	.long	$LCFI6-$LCFI5
	.byte	0x9a
	.byte	0xe
	.byte	0x4
	.align 0
	.long	$LCFI7-$LCFI6
	.byte	0x89
	.byte	0xd
	.byte	0x4
	.align 0
	.long	$LCFI8-$LCFI7
	.byte	0x8a
	.byte	0xc
	.byte	0x4
	.align 0
	.long	$LCFI9-$LCFI8
	.byte	0x8f
	.byte	0xb
	.byte	0x4
	.align 0
	.long	$LCFI10-$LCFI9
	.byte	0xc
	.byte	0xf
	.byte	0x70
	.align 3
$LEFDE3:
	.align 0
	.long	$LEFDE5-$LSFDE5
$LSFDE5:
	.align 0
	.long	$LSFDE5-__FRAME_BEGIN__
	.align 0
	.quad	$LFB3
	.align 0
	.quad	$LFE3-$LFB3
	.byte	0x4
	.align 0
	.long	$LCFI11-$LFB3
	.byte	0xe
	.byte	0xb0,0x1
	.byte	0x4
	.align 0
	.long	$LCFI12-$LCFI11
	.byte	0x9a
	.byte	0x16
	.byte	0x4
	.align 0
	.long	$LCFI13-$LCFI12
	.byte	0x89
	.byte	0x15
	.byte	0x4
	.align 0
	.long	$LCFI14-$LCFI13
	.byte	0x8a
	.byte	0x14
	.byte	0x4
	.align 0
	.long	$LCFI15-$LCFI14
	.byte	0x8f
	.byte	0x13
	.byte	0x4
	.align 0
	.long	$LCFI16-$LCFI15
	.byte	0xc
	.byte	0xf
	.byte	0xb0,0x1
	.align 3
$LEFDE5:
	.align 0
	.long	$LEFDE7-$LSFDE7
$LSFDE7:
	.align 0
	.long	$LSFDE7-__FRAME_BEGIN__
	.align 0
	.quad	$LFB4
	.align 0
	.quad	$LFE4-$LFB4
	.byte	0x4
	.align 0
	.long	$LCFI17-$LFB4
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI18-$LCFI17
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI19-$LCFI18
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI20-$LCFI19
	.byte	0x8f
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI21-$LCFI20
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE7:
	.align 0
	.long	$LEFDE9-$LSFDE9
$LSFDE9:
	.align 0
	.long	$LSFDE9-__FRAME_BEGIN__
	.align 0
	.quad	$LFB5
	.align 0
	.quad	$LFE5-$LFB5
	.byte	0x4
	.align 0
	.long	$LCFI22-$LFB5
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI23-$LCFI22
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI24-$LCFI23
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI25-$LCFI24
	.byte	0x8f
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI26-$LCFI25
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE9:
	.align 0
	.long	$LEFDE11-$LSFDE11
$LSFDE11:
	.align 0
	.long	$LSFDE11-__FRAME_BEGIN__
	.align 0
	.quad	$LFB6
	.align 0
	.quad	$LFE6-$LFB6
	.byte	0x4
	.align 0
	.long	$LCFI27-$LFB6
	.byte	0xe
	.byte	0xe0,0x2
	.byte	0x4
	.align 0
	.long	$LCFI28-$LCFI27
	.byte	0x9a
	.byte	0x2c
	.byte	0x4
	.align 0
	.long	$LCFI29-$LCFI28
	.byte	0x89
	.byte	0x2b
	.byte	0x4
	.align 0
	.long	$LCFI30-$LCFI29
	.byte	0x8a
	.byte	0x2a
	.byte	0x4
	.align 0
	.long	$LCFI31-$LCFI30
	.byte	0x8b
	.byte	0x29
	.byte	0x4
	.align 0
	.long	$LCFI32-$LCFI31
	.byte	0x8f
	.byte	0x28
	.byte	0x4
	.align 0
	.long	$LCFI33-$LCFI32
	.byte	0xc
	.byte	0xf
	.byte	0xe0,0x2
	.align 3
$LEFDE11:
	.align 0
	.long	$LEFDE13-$LSFDE13
$LSFDE13:
	.align 0
	.long	$LSFDE13-__FRAME_BEGIN__
	.align 0
	.quad	$LFB7
	.align 0
	.quad	$LFE7-$LFB7
	.byte	0x4
	.align 0
	.long	$LCFI34-$LFB7
	.byte	0xe
	.byte	0xe0,0x2
	.byte	0x4
	.align 0
	.long	$LCFI35-$LCFI34
	.byte	0x9a
	.byte	0x2c
	.byte	0x4
	.align 0
	.long	$LCFI36-$LCFI35
	.byte	0x89
	.byte	0x2b
	.byte	0x4
	.align 0
	.long	$LCFI37-$LCFI36
	.byte	0x8a
	.byte	0x2a
	.byte	0x4
	.align 0
	.long	$LCFI38-$LCFI37
	.byte	0x8b
	.byte	0x29
	.byte	0x4
	.align 0
	.long	$LCFI39-$LCFI38
	.byte	0x8f
	.byte	0x28
	.byte	0x4
	.align 0
	.long	$LCFI40-$LCFI39
	.byte	0xc
	.byte	0xf
	.byte	0xe0,0x2
	.align 3
$LEFDE13:
	.align 0
	.long	$LEFDE15-$LSFDE15
$LSFDE15:
	.align 0
	.long	$LSFDE15-__FRAME_BEGIN__
	.align 0
	.quad	$LFB8
	.align 0
	.quad	$LFE8-$LFB8
	.byte	0x4
	.align 0
	.long	$LCFI41-$LFB8
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI42-$LCFI41
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI43-$LCFI42
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI44-$LCFI43
	.byte	0x8f
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI45-$LCFI44
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE15:
	.align 0
	.long	$LEFDE17-$LSFDE17
$LSFDE17:
	.align 0
	.long	$LSFDE17-__FRAME_BEGIN__
	.align 0
	.quad	$LFB9
	.align 0
	.quad	$LFE9-$LFB9
	.byte	0x4
	.align 0
	.long	$LCFI46-$LFB9
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI47-$LCFI46
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI48-$LCFI47
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI49-$LCFI48
	.byte	0x8f
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI50-$LCFI49
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE17:
	.align 0
	.long	$LEFDE19-$LSFDE19
$LSFDE19:
	.align 0
	.long	$LSFDE19-__FRAME_BEGIN__
	.align 0
	.quad	$LFB10
	.align 0
	.quad	$LFE10-$LFB10
	.byte	0x4
	.align 0
	.long	$LCFI51-$LFB10
	.byte	0xe
	.byte	0x80,0x1
	.byte	0x4
	.align 0
	.long	$LCFI52-$LCFI51
	.byte	0x9a
	.byte	0x10
	.byte	0x4
	.align 0
	.long	$LCFI53-$LCFI52
	.byte	0x89
	.byte	0xf
	.byte	0x4
	.align 0
	.long	$LCFI54-$LCFI53
	.byte	0x8f
	.byte	0xe
	.byte	0x4
	.align 0
	.long	$LCFI55-$LCFI54
	.byte	0xc
	.byte	0xf
	.byte	0x80,0x1
	.align 3
$LEFDE19:
	.align 0
	.long	$LEFDE21-$LSFDE21
$LSFDE21:
	.align 0
	.long	$LSFDE21-__FRAME_BEGIN__
	.align 0
	.quad	$LFB11
	.align 0
	.quad	$LFE11-$LFB11
	.byte	0x4
	.align 0
	.long	$LCFI56-$LFB11
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI57-$LCFI56
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI58-$LCFI57
	.byte	0x8f
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI59-$LCFI58
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE21:
	.align 0
	.long	$LEFDE23-$LSFDE23
$LSFDE23:
	.align 0
	.long	$LSFDE23-__FRAME_BEGIN__
	.align 0
	.quad	$LFB12
	.align 0
	.quad	$LFE12-$LFB12
	.byte	0x4
	.align 0
	.long	$LCFI60-$LFB12
	.byte	0xe
	.byte	0x70
	.byte	0x4
	.align 0
	.long	$LCFI61-$LCFI60
	.byte	0x9a
	.byte	0xe
	.byte	0x4
	.align 0
	.long	$LCFI62-$LCFI61
	.byte	0x89
	.byte	0xd
	.byte	0x4
	.align 0
	.long	$LCFI63-$LCFI62
	.byte	0x8f
	.byte	0xc
	.byte	0x4
	.align 0
	.long	$LCFI64-$LCFI63
	.byte	0xc
	.byte	0xf
	.byte	0x70
	.align 3
$LEFDE23:
	.align 0
	.long	$LEFDE25-$LSFDE25
$LSFDE25:
	.align 0
	.long	$LSFDE25-__FRAME_BEGIN__
	.align 0
	.quad	$LFB13
	.align 0
	.quad	$LFE13-$LFB13
	.byte	0x4
	.align 0
	.long	$LCFI65-$LFB13
	.byte	0xe
	.byte	0x60
	.byte	0x4
	.align 0
	.long	$LCFI66-$LCFI65
	.byte	0x9a
	.byte	0xc
	.byte	0x4
	.align 0
	.long	$LCFI67-$LCFI66
	.byte	0x8f
	.byte	0xb
	.byte	0x4
	.align 0
	.long	$LCFI68-$LCFI67
	.byte	0xc
	.byte	0xf
	.byte	0x60
	.align 3
$LEFDE25:
	.align 0
	.long	$LEFDE27-$LSFDE27
$LSFDE27:
	.align 0
	.long	$LSFDE27-__FRAME_BEGIN__
	.align 0
	.quad	$LFB14
	.align 0
	.quad	$LFE14-$LFB14
	.byte	0x4
	.align 0
	.long	$LCFI69-$LFB14
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI70-$LCFI69
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI71-$LCFI70
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI72-$LCFI71
	.byte	0x8f
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI73-$LCFI72
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE27:
	.align 0
	.long	$LEFDE29-$LSFDE29
$LSFDE29:
	.align 0
	.long	$LSFDE29-__FRAME_BEGIN__
	.align 0
	.quad	$LFB15
	.align 0
	.quad	$LFE15-$LFB15
	.byte	0x4
	.align 0
	.long	$LCFI74-$LFB15
	.byte	0xe
	.byte	0x80,0x1
	.byte	0x4
	.align 0
	.long	$LCFI75-$LCFI74
	.byte	0x9a
	.byte	0x10
	.byte	0x4
	.align 0
	.long	$LCFI76-$LCFI75
	.byte	0x89
	.byte	0xf
	.byte	0x4
	.align 0
	.long	$LCFI77-$LCFI76
	.byte	0x8a
	.byte	0xe
	.byte	0x4
	.align 0
	.long	$LCFI78-$LCFI77
	.byte	0x8b
	.byte	0xd
	.byte	0x4
	.align 0
	.long	$LCFI79-$LCFI78
	.byte	0x8c
	.byte	0xc
	.byte	0x4
	.align 0
	.long	$LCFI80-$LCFI79
	.byte	0x8d
	.byte	0xb
	.byte	0x4
	.align 0
	.long	$LCFI81-$LCFI80
	.byte	0x8f
	.byte	0xa
	.byte	0x4
	.align 0
	.long	$LCFI82-$LCFI81
	.byte	0xc
	.byte	0xf
	.byte	0x80,0x1
	.align 3
$LEFDE29:
	.align 0
	.long	$LEFDE31-$LSFDE31
$LSFDE31:
	.align 0
	.long	$LSFDE31-__FRAME_BEGIN__
	.align 0
	.quad	$LFB16
	.align 0
	.quad	$LFE16-$LFB16
	.byte	0x4
	.align 0
	.long	$LCFI83-$LFB16
	.byte	0xe
	.byte	0x80,0x1
	.byte	0x4
	.align 0
	.long	$LCFI84-$LCFI83
	.byte	0x9a
	.byte	0x10
	.byte	0x4
	.align 0
	.long	$LCFI85-$LCFI84
	.byte	0x89
	.byte	0xf
	.byte	0x4
	.align 0
	.long	$LCFI86-$LCFI85
	.byte	0x8a
	.byte	0xe
	.byte	0x4
	.align 0
	.long	$LCFI87-$LCFI86
	.byte	0x8b
	.byte	0xd
	.byte	0x4
	.align 0
	.long	$LCFI88-$LCFI87
	.byte	0x8c
	.byte	0xc
	.byte	0x4
	.align 0
	.long	$LCFI89-$LCFI88
	.byte	0x8d
	.byte	0xb
	.byte	0x4
	.align 0
	.long	$LCFI90-$LCFI89
	.byte	0x8f
	.byte	0xa
	.byte	0x4
	.align 0
	.long	$LCFI91-$LCFI90
	.byte	0xc
	.byte	0xf
	.byte	0x80,0x1
	.align 3
$LEFDE31:
	.align 0
	.long	$LEFDE33-$LSFDE33
$LSFDE33:
	.align 0
	.long	$LSFDE33-__FRAME_BEGIN__
	.align 0
	.quad	$LFB17
	.align 0
	.quad	$LFE17-$LFB17
	.byte	0x4
	.align 0
	.long	$LCFI92-$LFB17
	.byte	0xe
	.byte	0x50
	.byte	0x4
	.align 0
	.long	$LCFI93-$LCFI92
	.byte	0x9a
	.byte	0xa
	.byte	0x4
	.align 0
	.long	$LCFI94-$LCFI93
	.byte	0x89
	.byte	0x9
	.byte	0x4
	.align 0
	.long	$LCFI95-$LCFI94
	.byte	0x8a
	.byte	0x8
	.byte	0x4
	.align 0
	.long	$LCFI96-$LCFI95
	.byte	0x8f
	.byte	0x7
	.byte	0x4
	.align 0
	.long	$LCFI97-$LCFI96
	.byte	0xc
	.byte	0xf
	.byte	0x50
	.align 3
$LEFDE33:
	.align 0
	.long	$LEFDE35-$LSFDE35
$LSFDE35:
	.align 0
	.long	$LSFDE35-__FRAME_BEGIN__
	.align 0
	.quad	$LFB18
	.align 0
	.quad	$LFE18-$LFB18
	.byte	0x4
	.align 0
	.long	$LCFI98-$LFB18
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.align 0
	.long	$LCFI99-$LCFI98
	.byte	0x9a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI100-$LCFI99
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI101-$LCFI100
	.byte	0xc
	.byte	0xf
	.byte	0x10
	.align 3
$LEFDE35:
	.align 0
	.long	$LEFDE37-$LSFDE37
$LSFDE37:
	.align 0
	.long	$LSFDE37-__FRAME_BEGIN__
	.align 0
	.quad	$LFB19
	.align 0
	.quad	$LFE19-$LFB19
	.byte	0x4
	.align 0
	.long	$LCFI102-$LFB19
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.align 0
	.long	$LCFI103-$LCFI102
	.byte	0x9a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI104-$LCFI103
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI105-$LCFI104
	.byte	0xc
	.byte	0xf
	.byte	0x10
	.align 3
$LEFDE37:
	.align 0
	.long	$LEFDE39-$LSFDE39
$LSFDE39:
	.align 0
	.long	$LSFDE39-__FRAME_BEGIN__
	.align 0
	.quad	$LFB20
	.align 0
	.quad	$LFE20-$LFB20
	.byte	0x4
	.align 0
	.long	$LCFI106-$LFB20
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI107-$LCFI106
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI108-$LCFI107
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI109-$LCFI108
	.byte	0x8a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI110-$LCFI109
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI111-$LCFI110
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE39:
	.align 0
	.long	$LEFDE41-$LSFDE41
$LSFDE41:
	.align 0
	.long	$LSFDE41-__FRAME_BEGIN__
	.align 0
	.quad	$LFB21
	.align 0
	.quad	$LFE21-$LFB21
	.byte	0x4
	.align 0
	.long	$LCFI112-$LFB21
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.align 0
	.long	$LCFI113-$LCFI112
	.byte	0x9a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI114-$LCFI113
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI115-$LCFI114
	.byte	0xc
	.byte	0xf
	.byte	0x10
	.align 3
$LEFDE41:
	.align 0
	.long	$LEFDE43-$LSFDE43
$LSFDE43:
	.align 0
	.long	$LSFDE43-__FRAME_BEGIN__
	.align 0
	.quad	$LFB22
	.align 0
	.quad	$LFE22-$LFB22
	.byte	0x4
	.align 0
	.long	$LCFI116-$LFB22
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI117-$LCFI116
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI118-$LCFI117
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI119-$LCFI118
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI120-$LCFI119
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE43:
	.align 0
	.long	$LEFDE45-$LSFDE45
$LSFDE45:
	.align 0
	.long	$LSFDE45-__FRAME_BEGIN__
	.align 0
	.quad	$LFB23
	.align 0
	.quad	$LFE23-$LFB23
	.byte	0x4
	.align 0
	.long	$LCFI121-$LFB23
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI122-$LCFI121
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI123-$LCFI122
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI124-$LCFI123
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI125-$LCFI124
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE45:
	.align 0
	.long	$LEFDE47-$LSFDE47
$LSFDE47:
	.align 0
	.long	$LSFDE47-__FRAME_BEGIN__
	.align 0
	.quad	$LFB24
	.align 0
	.quad	$LFE24-$LFB24
	.byte	0x4
	.align 0
	.long	$LCFI126-$LFB24
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI127-$LCFI126
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI128-$LCFI127
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI129-$LCFI128
	.byte	0x8a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI130-$LCFI129
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI131-$LCFI130
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE47:
	.align 0
	.long	$LEFDE49-$LSFDE49
$LSFDE49:
	.align 0
	.long	$LSFDE49-__FRAME_BEGIN__
	.align 0
	.quad	$LFB25
	.align 0
	.quad	$LFE25-$LFB25
	.byte	0x4
	.align 0
	.long	$LCFI132-$LFB25
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI133-$LCFI132
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI134-$LCFI133
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI135-$LCFI134
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI136-$LCFI135
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE49:
	.align 0
	.long	$LEFDE51-$LSFDE51
$LSFDE51:
	.align 0
	.long	$LSFDE51-__FRAME_BEGIN__
	.align 0
	.quad	$LFB26
	.align 0
	.quad	$LFE26-$LFB26
	.byte	0x4
	.align 0
	.long	$LCFI137-$LFB26
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI138-$LCFI137
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI139-$LCFI138
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI140-$LCFI139
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI141-$LCFI140
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE51:
	.align 0
	.long	$LEFDE53-$LSFDE53
$LSFDE53:
	.align 0
	.long	$LSFDE53-__FRAME_BEGIN__
	.align 0
	.quad	$LFB27
	.align 0
	.quad	$LFE27-$LFB27
	.byte	0x4
	.align 0
	.long	$LCFI142-$LFB27
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI143-$LCFI142
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI144-$LCFI143
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI145-$LCFI144
	.byte	0x8a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI146-$LCFI145
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI147-$LCFI146
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE53:
	.align 0
	.long	$LEFDE55-$LSFDE55
$LSFDE55:
	.align 0
	.long	$LSFDE55-__FRAME_BEGIN__
	.align 0
	.quad	$LFB28
	.align 0
	.quad	$LFE28-$LFB28
	.byte	0x4
	.align 0
	.long	$LCFI148-$LFB28
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI149-$LCFI148
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI150-$LCFI149
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI151-$LCFI150
	.byte	0x8a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI152-$LCFI151
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI153-$LCFI152
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE55:
	.align 0
	.long	$LEFDE57-$LSFDE57
$LSFDE57:
	.align 0
	.long	$LSFDE57-__FRAME_BEGIN__
	.align 0
	.quad	$LFB29
	.align 0
	.quad	$LFE29-$LFB29
	.byte	0x4
	.align 0
	.long	$LCFI154-$LFB29
	.byte	0xe
	.byte	0x70
	.byte	0x4
	.align 0
	.long	$LCFI155-$LCFI154
	.byte	0x9a
	.byte	0xe
	.byte	0x4
	.align 0
	.long	$LCFI156-$LCFI155
	.byte	0x89
	.byte	0xd
	.byte	0x4
	.align 0
	.long	$LCFI157-$LCFI156
	.byte	0x8a
	.byte	0xc
	.byte	0x4
	.align 0
	.long	$LCFI158-$LCFI157
	.byte	0x8b
	.byte	0xb
	.byte	0x4
	.align 0
	.long	$LCFI159-$LCFI158
	.byte	0x8f
	.byte	0xa
	.byte	0x4
	.align 0
	.long	$LCFI160-$LCFI159
	.byte	0xc
	.byte	0xf
	.byte	0x70
	.align 3
$LEFDE57:
	.align 0
	.long	$LEFDE59-$LSFDE59
$LSFDE59:
	.align 0
	.long	$LSFDE59-__FRAME_BEGIN__
	.align 0
	.quad	$LFB30
	.align 0
	.quad	$LFE30-$LFB30
	.byte	0x4
	.align 0
	.long	$LCFI161-$LFB30
	.byte	0xe
	.byte	0x70
	.byte	0x4
	.align 0
	.long	$LCFI162-$LCFI161
	.byte	0x9a
	.byte	0xe
	.byte	0x4
	.align 0
	.long	$LCFI163-$LCFI162
	.byte	0x89
	.byte	0xd
	.byte	0x4
	.align 0
	.long	$LCFI164-$LCFI163
	.byte	0x8a
	.byte	0xc
	.byte	0x4
	.align 0
	.long	$LCFI165-$LCFI164
	.byte	0x8b
	.byte	0xb
	.byte	0x4
	.align 0
	.long	$LCFI166-$LCFI165
	.byte	0x8f
	.byte	0xa
	.byte	0x4
	.align 0
	.long	$LCFI167-$LCFI166
	.byte	0xc
	.byte	0xf
	.byte	0x70
	.align 3
$LEFDE59:
	.align 0
	.long	$LEFDE61-$LSFDE61
$LSFDE61:
	.align 0
	.long	$LSFDE61-__FRAME_BEGIN__
	.align 0
	.quad	$LFB31
	.align 0
	.quad	$LFE31-$LFB31
	.byte	0x4
	.align 0
	.long	$LCFI168-$LFB31
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI169-$LCFI168
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI170-$LCFI169
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI171-$LCFI170
	.byte	0x8a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI172-$LCFI171
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI173-$LCFI172
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE61:
	.align 0
	.long	$LEFDE63-$LSFDE63
$LSFDE63:
	.align 0
	.long	$LSFDE63-__FRAME_BEGIN__
	.align 0
	.quad	$LFB32
	.align 0
	.quad	$LFE32-$LFB32
	.byte	0x4
	.align 0
	.long	$LCFI174-$LFB32
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI175-$LCFI174
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI176-$LCFI175
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI177-$LCFI176
	.byte	0x8a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI178-$LCFI177
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI179-$LCFI178
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE63:
	.align 0
	.long	$LEFDE65-$LSFDE65
$LSFDE65:
	.align 0
	.long	$LSFDE65-__FRAME_BEGIN__
	.align 0
	.quad	$LFB33
	.align 0
	.quad	$LFE33-$LFB33
	.byte	0x4
	.align 0
	.long	$LCFI180-$LFB33
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI181-$LCFI180
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI182-$LCFI181
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI183-$LCFI182
	.byte	0x8f
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI184-$LCFI183
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE65:
	.align 0
	.long	$LEFDE67-$LSFDE67
$LSFDE67:
	.align 0
	.long	$LSFDE67-__FRAME_BEGIN__
	.align 0
	.quad	$LFB34
	.align 0
	.quad	$LFE34-$LFB34
	.byte	0x4
	.align 0
	.long	$LCFI185-$LFB34
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.align 0
	.long	$LCFI186-$LCFI185
	.byte	0x9a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI187-$LCFI186
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI188-$LCFI187
	.byte	0xc
	.byte	0xf
	.byte	0x10
	.align 3
$LEFDE67:
	.align 0
	.long	$LEFDE69-$LSFDE69
$LSFDE69:
	.align 0
	.long	$LSFDE69-__FRAME_BEGIN__
	.align 0
	.quad	$LFB35
	.align 0
	.quad	$LFE35-$LFB35
	.byte	0x4
	.align 0
	.long	$LCFI189-$LFB35
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI190-$LCFI189
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI191-$LCFI190
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI192-$LCFI191
	.byte	0x8f
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI193-$LCFI192
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE69:
	.align 0
	.long	$LEFDE71-$LSFDE71
$LSFDE71:
	.align 0
	.long	$LSFDE71-__FRAME_BEGIN__
	.align 0
	.quad	$LFB36
	.align 0
	.quad	$LFE36-$LFB36
	.byte	0x4
	.align 0
	.long	$LCFI194-$LFB36
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI195-$LCFI194
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI196-$LCFI195
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI197-$LCFI196
	.byte	0x8a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI198-$LCFI197
	.byte	0x8b
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI199-$LCFI198
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI200-$LCFI199
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI201-$LCFI200
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE71:
	.align 0
	.long	$LEFDE73-$LSFDE73
$LSFDE73:
	.align 0
	.long	$LSFDE73-__FRAME_BEGIN__
	.align 0
	.quad	$LFB37
	.align 0
	.quad	$LFE37-$LFB37
	.byte	0x4
	.align 0
	.long	$LCFI202-$LFB37
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.align 0
	.long	$LCFI203-$LCFI202
	.byte	0x9a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI204-$LCFI203
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI205-$LCFI204
	.byte	0xc
	.byte	0xf
	.byte	0x10
	.align 3
$LEFDE73:
	.align 0
	.long	$LEFDE75-$LSFDE75
$LSFDE75:
	.align 0
	.long	$LSFDE75-__FRAME_BEGIN__
	.align 0
	.quad	$LFB38
	.align 0
	.quad	$LFE38-$LFB38
	.byte	0x4
	.align 0
	.long	$LCFI206-$LFB38
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI207-$LCFI206
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI208-$LCFI207
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI209-$LCFI208
	.byte	0x8a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI210-$LCFI209
	.byte	0x8b
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI211-$LCFI210
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI212-$LCFI211
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI213-$LCFI212
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE75:
	.align 0
	.long	$LEFDE77-$LSFDE77
$LSFDE77:
	.align 0
	.long	$LSFDE77-__FRAME_BEGIN__
	.align 0
	.quad	$LFB39
	.align 0
	.quad	$LFE39-$LFB39
	.byte	0x4
	.align 0
	.long	$LCFI214-$LFB39
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.align 0
	.long	$LCFI215-$LCFI214
	.byte	0x9a
	.byte	0x8
	.byte	0x4
	.align 0
	.long	$LCFI216-$LCFI215
	.byte	0x89
	.byte	0x7
	.byte	0x4
	.align 0
	.long	$LCFI217-$LCFI216
	.byte	0x8a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI218-$LCFI217
	.byte	0x8b
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI219-$LCFI218
	.byte	0x8f
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI220-$LCFI219
	.byte	0xc
	.byte	0xf
	.byte	0x40
	.align 3
$LEFDE77:
	.align 0
	.long	$LEFDE79-$LSFDE79
$LSFDE79:
	.align 0
	.long	$LSFDE79-__FRAME_BEGIN__
	.align 0
	.quad	$LFB40
	.align 0
	.quad	$LFE40-$LFB40
	.byte	0x4
	.align 0
	.long	$LCFI221-$LFB40
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI222-$LCFI221
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI223-$LCFI222
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI224-$LCFI223
	.byte	0x8a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI225-$LCFI224
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI226-$LCFI225
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE79:
	.align 0
	.long	$LEFDE81-$LSFDE81
$LSFDE81:
	.align 0
	.long	$LSFDE81-__FRAME_BEGIN__
	.align 0
	.quad	$LFB41
	.align 0
	.quad	$LFE41-$LFB41
	.byte	0x4
	.align 0
	.long	$LCFI227-$LFB41
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI228-$LCFI227
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI229-$LCFI228
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI230-$LCFI229
	.byte	0x8a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI231-$LCFI230
	.byte	0x8b
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI232-$LCFI231
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI233-$LCFI232
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI234-$LCFI233
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE81:
	.align 0
	.long	$LEFDE83-$LSFDE83
$LSFDE83:
	.align 0
	.long	$LSFDE83-__FRAME_BEGIN__
	.align 0
	.quad	$LFB42
	.align 0
	.quad	$LFE42-$LFB42
	.byte	0x4
	.align 0
	.long	$LCFI235-$LFB42
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI236-$LCFI235
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI237-$LCFI236
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI238-$LCFI237
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI239-$LCFI238
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE83:
	.align 0
	.long	$LEFDE85-$LSFDE85
$LSFDE85:
	.align 0
	.long	$LSFDE85-__FRAME_BEGIN__
	.align 0
	.quad	$LFB43
	.align 0
	.quad	$LFE43-$LFB43
	.byte	0x4
	.align 0
	.long	$LCFI240-$LFB43
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI241-$LCFI240
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI242-$LCFI241
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI243-$LCFI242
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI244-$LCFI243
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE85:
	.align 0
	.long	$LEFDE87-$LSFDE87
$LSFDE87:
	.align 0
	.long	$LSFDE87-__FRAME_BEGIN__
	.align 0
	.quad	$LFB44
	.align 0
	.quad	$LFE44-$LFB44
	.byte	0x4
	.align 0
	.long	$LCFI245-$LFB44
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI246-$LCFI245
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI247-$LCFI246
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI248-$LCFI247
	.byte	0x8a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI249-$LCFI248
	.byte	0x8b
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI250-$LCFI249
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI251-$LCFI250
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE87:
	.align 0
	.long	$LEFDE89-$LSFDE89
$LSFDE89:
	.align 0
	.long	$LSFDE89-__FRAME_BEGIN__
	.align 0
	.quad	$LFB45
	.align 0
	.quad	$LFE45-$LFB45
	.byte	0x4
	.align 0
	.long	$LCFI252-$LFB45
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI253-$LCFI252
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI254-$LCFI253
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI255-$LCFI254
	.byte	0x8a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI256-$LCFI255
	.byte	0x8f
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI257-$LCFI256
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE89:
	.align 0
	.long	$LEFDE91-$LSFDE91
$LSFDE91:
	.align 0
	.long	$LSFDE91-__FRAME_BEGIN__
	.align 0
	.quad	$LFB46
	.align 0
	.quad	$LFE46-$LFB46
	.byte	0x4
	.align 0
	.long	$LCFI258-$LFB46
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI259-$LCFI258
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI260-$LCFI259
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI261-$LCFI260
	.byte	0x8a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI262-$LCFI261
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI263-$LCFI262
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE91:
	.align 0
	.long	$LEFDE93-$LSFDE93
$LSFDE93:
	.align 0
	.long	$LSFDE93-__FRAME_BEGIN__
	.align 0
	.quad	$LFB47
	.align 0
	.quad	$LFE47-$LFB47
	.byte	0x4
	.align 0
	.long	$LCFI264-$LFB47
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI265-$LCFI264
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI266-$LCFI265
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI267-$LCFI266
	.byte	0x8a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI268-$LCFI267
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI269-$LCFI268
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE93:
	.align 0
	.long	$LEFDE95-$LSFDE95
$LSFDE95:
	.align 0
	.long	$LSFDE95-__FRAME_BEGIN__
	.align 0
	.quad	$LFB48
	.align 0
	.quad	$LFE48-$LFB48
	.byte	0x4
	.align 0
	.long	$LCFI270-$LFB48
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI271-$LCFI270
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI272-$LCFI271
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI273-$LCFI272
	.byte	0x8a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI274-$LCFI273
	.byte	0x8b
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI275-$LCFI274
	.byte	0x8c
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI276-$LCFI275
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI277-$LCFI276
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE95:
	.align 0
	.long	$LEFDE97-$LSFDE97
$LSFDE97:
	.align 0
	.long	$LSFDE97-__FRAME_BEGIN__
	.align 0
	.quad	$LFB49
	.align 0
	.quad	$LFE49-$LFB49
	.byte	0x4
	.align 0
	.long	$LCFI278-$LFB49
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI279-$LCFI278
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI280-$LCFI279
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI281-$LCFI280
	.byte	0x8a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI282-$LCFI281
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI283-$LCFI282
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE97:
	.align 0
	.long	$LEFDE99-$LSFDE99
$LSFDE99:
	.align 0
	.long	$LSFDE99-__FRAME_BEGIN__
	.align 0
	.quad	$LFB50
	.align 0
	.quad	$LFE50-$LFB50
	.byte	0x4
	.align 0
	.long	$LCFI284-$LFB50
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI285-$LCFI284
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI286-$LCFI285
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI287-$LCFI286
	.byte	0x8a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI288-$LCFI287
	.byte	0x8b
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI289-$LCFI288
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI290-$LCFI289
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE99:
	.align 0
	.long	$LEFDE101-$LSFDE101
$LSFDE101:
	.align 0
	.long	$LSFDE101-__FRAME_BEGIN__
	.align 0
	.quad	$LFB51
	.align 0
	.quad	$LFE51-$LFB51
	.byte	0x4
	.align 0
	.long	$LCFI291-$LFB51
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI292-$LCFI291
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI293-$LCFI292
	.byte	0x8f
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI294-$LCFI293
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE101:
	.align 0
	.long	$LEFDE103-$LSFDE103
$LSFDE103:
	.align 0
	.long	$LSFDE103-__FRAME_BEGIN__
	.align 0
	.quad	$LFB52
	.align 0
	.quad	$LFE52-$LFB52
	.byte	0x4
	.align 0
	.long	$LCFI295-$LFB52
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI296-$LCFI295
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI297-$LCFI296
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI298-$LCFI297
	.byte	0x8a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI299-$LCFI298
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI300-$LCFI299
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE103:
	.align 0
	.long	$LEFDE105-$LSFDE105
$LSFDE105:
	.align 0
	.long	$LSFDE105-__FRAME_BEGIN__
	.align 0
	.quad	$LFB53
	.align 0
	.quad	$LFE53-$LFB53
	.byte	0x4
	.align 0
	.long	$LCFI301-$LFB53
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI302-$LCFI301
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI303-$LCFI302
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI304-$LCFI303
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI305-$LCFI304
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE105:
	.align 0
	.long	$LEFDE107-$LSFDE107
$LSFDE107:
	.align 0
	.long	$LSFDE107-__FRAME_BEGIN__
	.align 0
	.quad	$LFB54
	.align 0
	.quad	$LFE54-$LFB54
	.byte	0x4
	.align 0
	.long	$LCFI306-$LFB54
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.align 0
	.long	$LCFI307-$LCFI306
	.byte	0x9a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI308-$LCFI307
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI309-$LCFI308
	.byte	0xc
	.byte	0xf
	.byte	0x10
	.align 3
$LEFDE107:
	.align 0
	.long	$LEFDE109-$LSFDE109
$LSFDE109:
	.align 0
	.long	$LSFDE109-__FRAME_BEGIN__
	.align 0
	.quad	$LFB55
	.align 0
	.quad	$LFE55-$LFB55
	.byte	0x4
	.align 0
	.long	$LCFI310-$LFB55
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI311-$LCFI310
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI312-$LCFI311
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI313-$LCFI312
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI314-$LCFI313
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE109:
	.align 0
	.long	$LEFDE111-$LSFDE111
$LSFDE111:
	.align 0
	.long	$LSFDE111-__FRAME_BEGIN__
	.align 0
	.quad	$LFB56
	.align 0
	.quad	$LFE56-$LFB56
	.byte	0x4
	.align 0
	.long	$LCFI315-$LFB56
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI316-$LCFI315
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI317-$LCFI316
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI318-$LCFI317
	.byte	0x8a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI319-$LCFI318
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI320-$LCFI319
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE111:
	.align 0
	.long	$LEFDE113-$LSFDE113
$LSFDE113:
	.align 0
	.long	$LSFDE113-__FRAME_BEGIN__
	.align 0
	.quad	$LFB57
	.align 0
	.quad	$LFE57-$LFB57
	.byte	0x4
	.align 0
	.long	$LCFI321-$LFB57
	.byte	0xe
	.byte	0x10
	.byte	0x4
	.align 0
	.long	$LCFI322-$LCFI321
	.byte	0x9a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI323-$LCFI322
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI324-$LCFI323
	.byte	0xc
	.byte	0xf
	.byte	0x10
	.align 3
$LEFDE113:
	.align 0
	.long	$LEFDE115-$LSFDE115
$LSFDE115:
	.align 0
	.long	$LSFDE115-__FRAME_BEGIN__
	.align 0
	.quad	$LFB58
	.align 0
	.quad	$LFE58-$LFB58
	.byte	0x4
	.align 0
	.long	$LCFI325-$LFB58
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI326-$LCFI325
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI327-$LCFI326
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI328-$LCFI327
	.byte	0x8a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI329-$LCFI328
	.byte	0x8b
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI330-$LCFI329
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI331-$LCFI330
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE115:
	.align 0
	.long	$LEFDE117-$LSFDE117
$LSFDE117:
	.align 0
	.long	$LSFDE117-__FRAME_BEGIN__
	.align 0
	.quad	$LFB59
	.align 0
	.quad	$LFE59-$LFB59
	.byte	0x4
	.align 0
	.long	$LCFI332-$LFB59
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI333-$LCFI332
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI334-$LCFI333
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI335-$LCFI334
	.byte	0x8a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI336-$LCFI335
	.byte	0x8b
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI337-$LCFI336
	.byte	0x8f
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI338-$LCFI337
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE117:
	.align 0
	.long	$LEFDE119-$LSFDE119
$LSFDE119:
	.align 0
	.long	$LSFDE119-__FRAME_BEGIN__
	.align 0
	.quad	$LFB60
	.align 0
	.quad	$LFE60-$LFB60
	.byte	0x4
	.align 0
	.long	$LCFI339-$LFB60
	.byte	0xe
	.byte	0x40
	.byte	0x4
	.align 0
	.long	$LCFI340-$LCFI339
	.byte	0x9a
	.byte	0x8
	.byte	0x4
	.align 0
	.long	$LCFI341-$LCFI340
	.byte	0x89
	.byte	0x7
	.byte	0x4
	.align 0
	.long	$LCFI342-$LCFI341
	.byte	0x8f
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI343-$LCFI342
	.byte	0xc
	.byte	0xf
	.byte	0x40
	.align 3
$LEFDE119:
	.align 0
	.long	$LEFDE121-$LSFDE121
$LSFDE121:
	.align 0
	.long	$LSFDE121-__FRAME_BEGIN__
	.align 0
	.quad	$LFB61
	.align 0
	.quad	$LFE61-$LFB61
	.byte	0x4
	.align 0
	.long	$LCFI344-$LFB61
	.byte	0xe
	.byte	0x30
	.byte	0x4
	.align 0
	.long	$LCFI345-$LCFI344
	.byte	0x9a
	.byte	0x6
	.byte	0x4
	.align 0
	.long	$LCFI346-$LCFI345
	.byte	0x89
	.byte	0x5
	.byte	0x4
	.align 0
	.long	$LCFI347-$LCFI346
	.byte	0x8a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI348-$LCFI347
	.byte	0x8f
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI349-$LCFI348
	.byte	0xc
	.byte	0xf
	.byte	0x30
	.align 3
$LEFDE121:
	.align 0
	.long	$LEFDE123-$LSFDE123
$LSFDE123:
	.align 0
	.long	$LSFDE123-__FRAME_BEGIN__
	.align 0
	.quad	$LFB62
	.align 0
	.quad	$LFE62-$LFB62
	.byte	0x4
	.align 0
	.long	$LCFI350-$LFB62
	.byte	0xe
	.byte	0x20
	.byte	0x4
	.align 0
	.long	$LCFI351-$LCFI350
	.byte	0x9a
	.byte	0x4
	.byte	0x4
	.align 0
	.long	$LCFI352-$LCFI351
	.byte	0x89
	.byte	0x3
	.byte	0x4
	.align 0
	.long	$LCFI353-$LCFI352
	.byte	0x8a
	.byte	0x2
	.byte	0x4
	.align 0
	.long	$LCFI354-$LCFI353
	.byte	0x8f
	.byte	0x1
	.byte	0x4
	.align 0
	.long	$LCFI355-$LCFI354
	.byte	0xc
	.byte	0xf
	.byte	0x20
	.align 3
$LEFDE123:
	.align 0
	.long	0x0
