	.file	"entry_exit_nopt_simple.c"
	.text
	.p2align 4,,15
	.globl	loop
	.type	loop, @function
loop:
.LFB0:
	.cfi_startproc
	xorl	%eax, %eax
	pxor	%xmm1, %xmm1
	jmp	.L3
	.p2align 4,,10
	.p2align 3
.L6:
	addq	$4, %rax
	cmpq	$262144, %rax
	je	.L1
.L3:
	movss	(%rsi,%rax), %xmm0
	mulss	(%rdx,%rax), %xmm0
	ucomiss	%xmm0, %xmm1
	movss	%xmm0, (%rdi,%rax)
	jbe	.L6
.L1:
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
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.comm	c,262144,32
	.comm	b,262144,32
	.comm	a,262144,32
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
