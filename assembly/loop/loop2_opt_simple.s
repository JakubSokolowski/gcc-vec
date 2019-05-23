	.file	"loop2_opt_simple.c"
	.text
	.p2align 4,,15
	.globl	loop
	.type	loop, @function
loop:
.LFB0:
	.cfi_startproc
	movd	262140+c(%rip), %xmm3
	leaq	a(%rip), %rdx
	leaq	b(%rip), %rcx
	xorl	%eax, %eax
	pshufd	$0, %xmm3, %xmm2
	.p2align 4,,10
	.p2align 3
.L2:
	movdqa	(%rcx,%rax), %xmm1
	movdqa	%xmm1, %xmm0
	pcmpgtd	%xmm2, %xmm0
	pand	%xmm0, %xmm1
	pandn	%xmm2, %xmm0
	por	%xmm1, %xmm0
	movaps	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	$262144, %rax
	jne	.L2
	movl	(%rdx), %eax
	ret
	.cfi_endproc
.LFE0:
	.size	loop, .-loop
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	subq	$786456, %rsp
	.cfi_def_cfa_offset 786464
	movq	%fs:40, %rax
	movq	%rax, 786440(%rsp)
	xorl	%eax, %eax
	leaq	524288(%rsp), %rdx
	leaq	262144(%rsp), %rsi
	movq	%rsp, %rdi
	call	loop
	movq	786440(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L8
	xorl	%eax, %eax
	addq	$786456, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L8:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.comm	c,262144,32
	.comm	b,262144,32
	.comm	a,262144,32
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
