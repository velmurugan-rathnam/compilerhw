	.verstamp 3 11
	.set noreorder
	.set volatile
	.set noat
	.arch ev4
	.file	1 "test.c"
.text
	.align 5
	.globl foo
	.ent foo
foo:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
$foo..ng:
	lda $30,-16($30)
	stq $26,0($30)
	stq $15,8($30)
	mov $30,$15
	.prologue 0
$L2:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	ret $31,($26),1
	.end foo
	.align 5
	.globl main
	.ent main
main:
	.frame $15,16,$26,0
	.mask 0x4008000,-16
	ldgp $29,0($27)
$main..ng:
	lda $30,-16($30)
	stq $26,0($30)
	stq $15,8($30)
	mov $30,$15
	.prologue 1
	bsr $26,$foo..ng
$L3:
	mov $15,$30
	ldq $26,0($30)
	ldq $15,8($30)
	lda $30,16($30)
	ret $31,($26),1
	.end main
