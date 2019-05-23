	.file	"loop2_nopt_simple.c"
	.text
	.p2align 4,,15
	.globl	loop
	.type	loop, @function
loop:
.LFB0:
	.cfi_startproc
	leaq	a(%rip), %rdi
	leaq	b(%rip), %r10
	leaq	c(%rip), %rsi
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	.p2align 4,,10
	.p2align 3
.L2:
	movl	(%r10,%rax), %edx
	movl	(%rsi,%rax), %r8d
	movl	(%rdi,%rax), %ecx
	imull	%edx, %r8d
	cmpl	%r8d, %ecx
	jle	.L3
	cmpl	%edx, (%rsi,%r9,4)
	cmovge	(%rsi,%r9,4), %edx
	addl	%ecx, %edx
	movl	%edx, (%rdi,%rax)
	addq	$4, %rax
	cmpq	$262144, %rax
	jne	.L2
	movl	a(%rip), %eax
	ret
	.p2align 4,,10
	.p2align 3
.L3:
	movl	$23, (%rdi,%rax)
	addq	$4, %rax
	cmpq	$262144, %rax
	jne	.L2
	movl	a(%rip), %eax
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
	jne	.L10
	xorl	%eax, %eax
	addq	$786456, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L10:
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
