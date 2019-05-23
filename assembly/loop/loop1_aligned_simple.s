	.file	"loop1_aligned_simple.c"
	.text
	.p2align 4,,15
	.globl	loop
	.type	loop, @function
loop:
.LFB10:
	.cfi_startproc
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2:
	movapd	(%rdi,%rax), %xmm0
	addpd	(%rsi,%rax), %xmm0
	movaps	%xmm0, (%rdi,%rax)
	addq	$16, %rax
	cmpq	$524288, %rax
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
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
