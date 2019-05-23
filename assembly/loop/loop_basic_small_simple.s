	.file	"loop_basic_small_simple.c"
	.text
	.p2align 4,,15
	.globl	loop
	.type	loop, @function
loop:
.LFB0:
	.cfi_startproc
	movl	16+c(%rip), %eax
	addl	16+b(%rip), %eax
	movdqa	b(%rip), %xmm0
	paddd	c(%rip), %xmm0
	movaps	%xmm0, a(%rip)
	movl	%eax, 16+a(%rip)
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
	movl	16+c(%rip), %eax
	addl	16+b(%rip), %eax
	movdqa	b(%rip), %xmm0
	paddd	c(%rip), %xmm0
	movaps	%xmm0, a(%rip)
	movl	%eax, 16+a(%rip)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.comm	c,20,16
	.comm	b,20,16
	.comm	a,20,16
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
