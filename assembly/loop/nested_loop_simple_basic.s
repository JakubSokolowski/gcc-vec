	.file	"nested_loop_simple.c"
	.text
	.comm	a,524288,32
	.comm	b,524288,32
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
	movl	$0, -4(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L5:
	movl	$0, -8(%rbp)
	jmp	.L3
.L4:
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$16, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	a(%rip), %rax
	movsd	(%rdx,%rax), %xmm1
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$16, %rdx
	addq	%rdx, %rax
	leaq	0(,%rax,8), %rdx
	leaq	b(%rip), %rax
	movsd	(%rdx,%rax), %xmm0
	movl	-8(%rbp), %eax
	cltq
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	salq	$16, %rdx
	addq	%rdx, %rax
	addsd	%xmm1, %xmm0
	leaq	0(,%rax,8), %rdx
	leaq	a(%rip), %rax
	movsd	%xmm0, (%rdx,%rax)
	addl	$1, -8(%rbp)
.L3:
	cmpl	$65535, -8(%rbp)
	jle	.L4
	addl	$1, -4(%rbp)
.L2:
	cmpl	$65535, -4(%rbp)
	jle	.L5
	nop
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
	movl	$0, %eax
	call	loop
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
