	.file	"while_nopt_simple.c"
	.text
	.comm	a,262144,32
	.comm	b,262144,32
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movq	-32(%rbp), %rdx
	leaq	4(%rdx), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rcx
	movq	%rcx, -24(%rbp)
	movl	(%rdx), %edx
	movl	%edx, (%rax)
.L2:
	cmpq	$0, -24(%rbp)
	jne	.L3
	movq	-24(%rbp), %rax
	movl	(%rax), %edx
	movq	-32(%rbp), %rax
	movl	(%rax), %eax
	imull	%edx, %eax
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
	subq	$524320, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -524308(%rbp)
	jmp	.L6
.L7:
	call	rand@PLT
	movl	%eax, %ecx
	movl	$1717986919, %edx
	movl	%ecx, %eax
	imull	%edx
	sarl	$2, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	movl	-524308(%rbp), %eax
	cltq
	movl	%edx, -262160(%rbp,%rax,4)
	movl	-524308(%rbp), %eax
	cltq
	movl	-262160(%rbp,%rax,4), %edx
	movl	-524308(%rbp), %eax
	cltq
	movl	%edx, -524304(%rbp,%rax,4)
	addl	$1, -524308(%rbp)
.L6:
	cmpl	$65535, -524308(%rbp)
	jle	.L7
	leaq	-262160(%rbp), %rdx
	leaq	-524304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
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
