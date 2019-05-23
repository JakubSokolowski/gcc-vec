	.file	"read_after_write_simple.c"
	.text
	.p2align 4,,15
	.globl	loop
	.type	loop, @function
loop:
.LFB0:
	.cfi_startproc
	leaq	4+a(%rip), %rax
	movl	$0, a(%rip)
	movl	$1, %edx
	leaq	262140(%rax), %rcx
	.p2align 4,,10
	.p2align 3
.L2:
	movl	%edx, (%rax)
	addq	$4, %rax
	addl	$1, %edx
	cmpq	%rcx, %rax
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
	leaq	4+a(%rip), %rax
	movl	$0, a(%rip)
	movl	$1, %edx
	leaq	262140(%rax), %rcx
	.p2align 4,,10
	.p2align 3
.L6:
	movl	%edx, (%rax)
	addq	$4, %rax
	addl	$1, %edx
	cmpq	%rcx, %rax
	jne	.L6
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.comm	a,262144,32
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
