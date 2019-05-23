	.file	"loop2_opt_simple.c"
	.text
	.comm	a,262144,32
	.comm	b,262144,32
	.comm	c,262144,32
	.globl	loop
	.type	loop, @function
loop:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$0, -8(%rbp)
	jmp	.L2
.L5:
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.L3
.L4:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	c(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	b(%rip), %rax
	movl	(%rcx,%rax), %eax
	cmpl	%eax, %edx
	cmovl	%eax, %edx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	leaq	a(%rip), %rax
	movl	%edx, (%rcx,%rax)
	addl	$1, -4(%rbp)
.L3:
	cmpl	$65535, -4(%rbp)
	jle	.L4
	addl	$1, -8(%rbp)
.L2:
	cmpl	$65535, -8(%rbp)
	jle	.L5
	movl	a(%rip), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	loop, .-loop
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$786448, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-262160(%rbp), %rdx
	leaq	-524304(%rbp), %rcx
	leaq	-786448(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	loop
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
