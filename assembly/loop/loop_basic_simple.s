	.file	"loop_basic_simple.c"
	.text
	.p2align 4,,15
	.globl	loop
	.type	loop, @function
loop:
.LFB0:
	.cfi_startproc
	leaq	a(%rip), %rsi
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2:
	movdqa	(%rcx,%rax), %xmm0
	paddd	(%rdx,%rax), %xmm0
	movaps	%xmm0, (%rsi,%rax)
	addq	$16, %rax
	cmpq	$1024, %rax
	jne	.L2
	rep ret
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
	leaq	a(%rip), %rsi
	leaq	b(%rip), %rcx
	leaq	c(%rip), %rdx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L6:
	movdqa	(%rcx,%rax), %xmm0
	paddd	(%rdx,%rax), %xmm0
	movaps	%xmm0, (%rsi,%rax)
	addq	$16, %rax
	cmpq	$1024, %rax
	jne	.L6
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.comm	c,1024,32
	.comm	b,1024,32
	.comm	a,1024,32
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
