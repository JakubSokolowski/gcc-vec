	.file	"while_nopt_simple.c"
	.text
	.p2align 4,,15
	.globl	loop
	.type	loop, @function
loop:
.LFB10:
	.cfi_startproc
	movl	0, %eax
	ud2
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.p2align 4,,10
	.p2align 3
.L4:
	call	rand@PLT
	jmp	.L4
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.comm	b,262144,32
	.comm	a,262144,32
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
