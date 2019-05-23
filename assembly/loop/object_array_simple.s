	.file	"object_array_simple.cpp"
	.text
	.p2align 4,,15
	.globl	_Z4loopP1A
	.type	_Z4loopP1A, @function
_Z4loopP1A:
.LFB1:
	.cfi_startproc
	movq	%rdi, %rax
	shrq	$2, %rax
	negq	%rax
	andl	$3, %eax
	je	.L6
	addl	$1, (%rdi)
	cmpl	$1, %eax
	je	.L7
	addl	$1, 4(%rdi)
	cmpl	$2, %eax
	je	.L8
	addl	$1, 8(%rdi)
	movl	$65533, %r10d
	movl	$3, %r8d
.L2:
	movl	$65536, %r9d
	xorl	%edx, %edx
	subl	%eax, %r9d
	movl	%eax, %eax
	movl	%r9d, %esi
	leaq	(%rdi,%rax,4), %rcx
	xorl	%eax, %eax
	shrl	$2, %esi
	movdqa	.LC0(%rip), %xmm1
	.p2align 4,,10
	.p2align 3
.L4:
	addl	$1, %edx
	movdqa	(%rcx,%rax), %xmm0
	paddd	%xmm1, %xmm0
	movaps	%xmm0, (%rcx,%rax)
	addq	$16, %rax
	cmpl	%edx, %esi
	ja	.L4
	movl	%r9d, %ecx
	movl	%r10d, %edx
	andl	$-4, %ecx
	subl	%ecx, %edx
	cmpl	%ecx, %r9d
	leal	(%rcx,%r8), %eax
	je	.L5
	movslq	%eax, %rcx
	addl	$1, (%rdi,%rcx,4)
	cmpl	$1, %edx
	leal	1(%rax), %ecx
	je	.L5
	movslq	%ecx, %rcx
	addl	$2, %eax
	addl	$1, (%rdi,%rcx,4)
	cmpl	$2, %edx
	je	.L5
	cltq
	addl	$1, (%rdi,%rax,4)
.L5:
	movl	(%rdi), %eax
	ret
.L7:
	movl	$65535, %r10d
	movl	$1, %r8d
	jmp	.L2
.L6:
	movl	$65536, %r10d
	xorl	%r8d, %r8d
	jmp	.L2
.L8:
	movl	$65534, %r10d
	movl	$2, %r8d
	jmp	.L2
	.cfi_endproc
.LFE1:
	.size	_Z4loopP1A, .-_Z4loopP1A
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	subq	$262168, %rsp
	.cfi_def_cfa_offset 262176
	movl	$262144, %edx
	xorl	%esi, %esi
	movq	%rsp, %rcx
	movq	%rcx, %rdi
	movq	%fs:40, %rax
	movq	%rax, 262152(%rsp)
	xorl	%eax, %eax
	call	memset@PLT
	movdqa	.LC0(%rip), %xmm1
	movq	%rax, %rdi
	leaq	262144(%rax), %rax
	.p2align 4,,10
	.p2align 3
.L18:
	movdqa	(%rdi), %xmm0
	addq	$16, %rdi
	paddd	%xmm1, %xmm0
	movaps	%xmm0, -16(%rdi)
	cmpq	%rdi, %rax
	jne	.L18
	movq	262152(%rsp), %rdx
	xorq	%fs:40, %rdx
	movl	(%rsp), %eax
	jne	.L22
	addq	$262168, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L22:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC0:
	.long	1
	.long	1
	.long	1
	.long	1
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
