	.file	"loop1_nopt_simple.c"
	.text
	.p2align 4,,15
	.globl	loop
	.type	loop, @function
loop:
.LFB10:
	.cfi_startproc
	leaq	16(%rsi), %rax
	cmpq	%rax, %rdi
	jnb	.L10
	leaq	16(%rdi), %rax
	cmpq	%rax, %rsi
	jb	.L8
.L10:
	movq	%rdi, %rdx
	xorl	%eax, %eax
	shrq	$3, %rdx
	andl	$1, %edx
	je	.L4
	movsd	(%rdi), %xmm0
	movl	$1, %eax
	addsd	(%rsi), %xmm0
	movsd	%xmm0, (%rdi)
.L4:
	movl	$65536, %r11d
	movl	%edx, %r9d
	xorl	%ecx, %ecx
	subl	%edx, %r11d
	salq	$3, %r9
	xorl	%edx, %edx
	movl	%r11d, %r10d
	leaq	(%rdi,%r9), %r8
	addq	%rsi, %r9
	shrl	%r10d
	.p2align 4,,10
	.p2align 3
.L5:
	movupd	(%r9,%rdx), %xmm0
	addl	$1, %ecx
	addpd	(%r8,%rdx), %xmm0
	movaps	%xmm0, (%r8,%rdx)
	addq	$16, %rdx
	cmpl	%r10d, %ecx
	jb	.L5
	movl	%r11d, %edx
	andl	$-2, %edx
	addl	%edx, %eax
	cmpl	%edx, %r11d
	je	.L1
	cltq
	leaq	(%rdi,%rax,8), %rdx
	movsd	(%rdx), %xmm0
	addsd	(%rsi,%rax,8), %xmm0
	movsd	%xmm0, (%rdx)
	ret
.L8:
	xorl	%eax, %eax
	.p2align 4,,10
	.p2align 3
.L2:
	movsd	(%rdi,%rax), %xmm0
	addsd	(%rsi,%rax), %xmm0
	movsd	%xmm0, (%rdi,%rax)
	addq	$8, %rax
	cmpq	$524288, %rax
	jne	.L2
.L1:
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
