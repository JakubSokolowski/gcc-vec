	.file	"control_flow_nopt_simple.c"
	.text
	.p2align 4,,15
	.globl	loop
	.type	loop, @function
loop:
.LFB10:
	.cfi_startproc
	xorl	%eax, %eax
	pxor	%xmm2, %xmm2
	movss	.LC1(%rip), %xmm3
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L14:
	movss	(%rsi,%rax), %xmm0
	mulss	(%rdx,%rax), %xmm0
	addss	%xmm1, %xmm0
	movss	%xmm0, (%rdi,%rax)
.L4:
	addq	$4, %rax
	cmpq	$262144, %rax
	je	.L13
.L7:
	movss	(%rdi,%rax), %xmm1
	ucomiss	%xmm2, %xmm1
	ja	.L14
	ucomiss	.LC1(%rip), %xmm1
	jp	.L5
	jne	.L5
	movss	(%rsi,%rax), %xmm0
	addss	%xmm0, %xmm0
	movss	%xmm0, (%rdi,%rax)
	addq	$4, %rax
	cmpq	$262144, %rax
	jne	.L7
.L13:
	rep ret
	.p2align 4,,10
	.p2align 3
.L5:
	movss	%xmm3, (%rdi,%rax)
	jmp	.L4
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
	jne	.L18
	xorl	%eax, %eax
	addq	$786456, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L18:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1073741824
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
