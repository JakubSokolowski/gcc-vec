	.file	"loop_sin_opt_simple.c"
	.text
	.p2align 4,,15
	.globl	loop
	.type	loop, @function
loop:
.LFB0:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rsi, %r13
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbp
	movq	%rdx, %r12
	xorl	%ebx, %ebx
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	.p2align 4,,10
	.p2align 3
.L2:
	movss	0(%r13,%rbx), %xmm0
	mulss	(%r12,%rbx), %xmm0
	call	sinf@PLT
	addss	0(%rbp,%rbx), %xmm0
	movss	%xmm0, 0(%rbp,%rbx)
	addq	$4, %rbx
	cmpq	$262144, %rbx
	jne	.L2
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
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
	leaq	524288(%rsp), %rdx
	leaq	262144(%rsp), %rsi
	movq	%rsp, %rdi
	movq	%fs:40, %rax
	movq	%rax, 786440(%rsp)
	xorl	%eax, %eax
	call	loop
	movq	786440(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L9
	xorl	%eax, %eax
	addq	$786456, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L9:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
