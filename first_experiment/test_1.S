	.text
	.file	"test_1.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -16(%rbp)
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf@PLT
	movabsq	$.L.str.1, %rdi
	movl	$20, %esi
	movb	$0, %al
	callq	printf@PLT
	movabsq	$.L.str.2, %rdi
	leaq	-12(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf@PLT
	cmpl	$20, -12(%rbp)
	jle	.LBB0_2
# %bb.1:
	movabsq	$.L.str.3, %rdi
	movl	$20, %esi
	movb	$0, %al
	callq	printf@PLT
	movl	$1, -16(%rbp)
	jmp	.LBB0_6
.LBB0_2:
	movl	$2, -4(%rbp)
	movl	$1, -8(%rbp)
	movl	-12(%rbp), %esi
	movabsq	$.L.str.4, %rdi
	movb	$0, %al
	callq	printf@PLT
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-8(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %eax
	imull	-4(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-4(%rbp), %esi
	movl	-20(%rbp), %edx
	movl	-8(%rbp), %ecx
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB0_3
.LBB0_5:
	movabsq	$.L.str.6, %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %edx
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	$0, -16(%rbp)
.LBB0_6:
	movl	-16(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"=== \350\260\203\350\257\225\346\250\241\345\274\217\345\274\200\345\220\257 ===\n"
	.size	.L.str, 28

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\350\257\267\350\276\223\345\205\245\344\270\200\344\270\252\344\270\215\345\244\247\344\272\216%d\347\232\204\346\225\264\346\225\260: "
	.size	.L.str.1, 38

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"%d"
	.size	.L.str.2, 3

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\350\276\223\345\205\245\345\200\274\350\277\207\345\244\247\357\274\201\346\234\200\345\244\247\345\200\274\345\205\201\350\256\270\344\270\272%d\n"
	.size	.L.str.3, 40

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"\345\274\200\345\247\213\350\256\241\347\256\227%d\347\232\204\351\230\266\344\271\230...\n"
	.size	.L.str.4, 28

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"i=%d, i\302\262=%d, \345\275\223\345\211\215\351\230\266\344\271\230\345\200\274=%d\n"
	.size	.L.str.5, 34

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\346\234\200\347\273\210\347\273\223\346\236\234: "
	.size	.L.str.6, 15

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%d! = %d\n"
	.size	.L.str.7, 10

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
