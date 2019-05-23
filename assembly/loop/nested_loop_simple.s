	.file	"nested_loop_simple.c"
	.text
	.p2align 4,,15
	.globl	loop
	.type	loop, @function
loop:
.LFB10:
	.cfi_startproc
	leaq	a(%rip), %r9
	leaq	b(%rip), %r8
	xorl	%esi, %esi
	movabsq	$34359738368, %rdi
	.p2align 4,,10
	.p2align 3
.L2:
	leaq	(%r9,%rsi), %rdx
	leaq	(%r8,%rsi), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L3:
	movapd	(%rdx,%rax), %xmm0
	addpd	(%rcx,%rax), %xmm0
	movaps	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	$524288, %rax
	jne	.L3
	addq	$524288, %rsi
	cmpq	%rdi, %rsi
	jne	.L2
	rep ret
	.cfi_endproc
.LFE10:
	.size	loop, .-loop
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	leaq	a(%rip), %r9
	leaq	b(%rip), %r8
	xorl	%esi, %esi
	movabsq	$34359738368, %rdi
	.p2align 4,,10
	.p2align 3
.L8:
	leaq	(%r9,%rsi), %rdx
	leaq	(%r8,%rsi), %rcx
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L9:
	movapd	(%rdx,%rax), %xmm0
	addpd	(%rcx,%rax), %xmm0
	movaps	%xmm0, (%rdx,%rax)
	addq	$16, %rax
	cmpq	$524288, %rax
	jne	.L9
	addq	$524288, %rsi
	cmpq	%rdi, %rsi
	jne	.L8
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.comm	b,524288,32
	.comm	a,524288,32
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
