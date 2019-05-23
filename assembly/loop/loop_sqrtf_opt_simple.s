	.file	"loop_sqrtf_opt_simple.c"
	.text
	.p2align 4,,15
	.globl	loop
	.type	loop, @function
loop:
.LFB27:
	.cfi_startproc
	xorl	%ecx, %ecx
	.p2align 4,,10
	.p2align 3
.L3:
	flds	(%rdx,%rcx)
	flds	(%rsi,%rcx)
.L2:
	fprem
	fnstsw	%ax
	testb	$4, %ah
	jne	.L2
	fstp	%st(1)
	pxor	%xmm0, %xmm0
	pxor	%xmm2, %xmm2
	fstpl	-8(%rsp)
	cvtss2sd	(%rdi,%rcx), %xmm0
	addsd	-8(%rsp), %xmm0
	cvtsd2ss	%xmm0, %xmm2
	movss	%xmm2, (%rdi,%rcx)
	addq	$4, %rcx
	cmpq	$262144, %rcx
	jne	.L3
	rep ret
	.cfi_endproc
.LFE27:
	.size	loop, .-loop
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB28:
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
.LFE28:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
