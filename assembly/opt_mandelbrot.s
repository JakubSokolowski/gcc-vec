	.file	"opt_mandelbrot.cpp"
	.text
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1321:
	.cfi_startproc
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE1321:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4,,15
	.type	_ZNSt17_Function_handlerIFSt7complexIdES1_S1_EZ10MandelbrotvEUlS1_S1_E_E9_M_invokeERKSt9_Any_dataOS1_S8_, @function
_ZNSt17_Function_handlerIFSt7complexIdES1_S1_EZ10MandelbrotvEUlS1_S1_E_E9_M_invokeERKSt9_Any_dataOS1_S8_:
.LFB3598:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdx, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	movsd	8(%rsi), %xmm1
	movsd	(%rsi), %xmm0
	movapd	%xmm1, %xmm3
	movapd	%xmm0, %xmm2
	call	__muldc3@PLT
	unpcklpd	%xmm1, %xmm0
	movupd	(%rbx), %xmm2
	addpd	%xmm0, %xmm2
	movaps	%xmm2, (%rsp)
	movsd	(%rsp), %xmm0
	movsd	8(%rsp), %xmm1
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3598:
	.size	_ZNSt17_Function_handlerIFSt7complexIdES1_S1_EZ10MandelbrotvEUlS1_S1_E_E9_M_invokeERKSt9_Any_dataOS1_S8_, .-_ZNSt17_Function_handlerIFSt7complexIdES1_S1_EZ10MandelbrotvEUlS1_S1_E_E9_M_invokeERKSt9_Any_dataOS1_S8_
	.p2align 4,,15
	.type	_ZNSt14_Function_base13_Base_managerIZ10MandelbrotvEUlSt7complexIdES2_E_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIZ10MandelbrotvEUlSt7complexIdES2_E_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation:
.LFB3599:
	.cfi_startproc
	testl	%edx, %edx
	je	.L7
	cmpl	$1, %edx
	jne	.L6
	movq	%rsi, (%rdi)
.L6:
	xorl	%eax, %eax
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	leaq	_ZTIZ10MandelbrotvEUlSt7complexIdES0_E_(%rip), %rax
	movq	%rax, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE3599:
	.size	_ZNSt14_Function_base13_Base_managerIZ10MandelbrotvEUlSt7complexIdES2_E_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIZ10MandelbrotvEUlSt7complexIdES2_E_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation
	.p2align 4,,15
	.globl	_Z5ScaleR6WindowIiERS_IdESt7complexIdE
	.type	_Z5ScaleR6WindowIiERS_IdESt7complexIdE, @function
_Z5ScaleR6WindowIiERS_IdESt7complexIdE:
.LFB3142:
	.cfi_startproc
	movl	12(%rdi), %eax
	subl	8(%rdi), %eax
	pxor	%xmm2, %xmm2
	movsd	16(%rsi), %xmm3
	movsd	(%rsi), %xmm4
	cvtsi2sd	%eax, %xmm2
	movl	4(%rdi), %eax
	subl	(%rdi), %eax
	divsd	%xmm2, %xmm1
	movsd	24(%rsi), %xmm2
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	pxor	%xmm2, %xmm2
	cvtsi2sd	%eax, %xmm2
	addsd	%xmm3, %xmm1
	divsd	%xmm2, %xmm0
	movsd	8(%rsi), %xmm2
	subsd	%xmm4, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm4, %xmm0
	ret
	.cfi_endproc
.LFE3142:
	.size	_Z5ScaleR6WindowIiERS_IdESt7complexIdE, .-_Z5ScaleR6WindowIiERS_IdESt7complexIdE
	.p2align 4,,15
	.globl	_Z6EscapeSt7complexIdEiRKSt8functionIFS0_S0_S0_EE
	.type	_Z6EscapeSt7complexIdEiRKSt8functionIFS0_S0_S0_EE, @function
_Z6EscapeSt7complexIdEiRKSt8functionIFS0_S0_S0_EE:
.LFB3143:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movl	%edi, %r12d
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movq	%rsi, %rbp
	xorl	%ebx, %ebx
	pxor	%xmm2, %xmm2
	subq	$80, %rsp
	.cfi_def_cfa_offset 128
	pxor	%xmm3, %xmm3
	movsd	%xmm0, 16(%rsp)
	leaq	48(%rsp), %r14
	leaq	32(%rsp), %r13
	movsd	%xmm1, 24(%rsp)
	pxor	%xmm0, %xmm0
	movq	%fs:40, %rax
	movq	%rax, 72(%rsp)
	xorl	%eax, %eax
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L25:
	movsd	.LC1(%rip), %xmm4
	ucomisd	%xmm0, %xmm4
	jbe	.L10
	cmpq	$0, 16(%rbp)
	movsd	16(%rsp), %xmm5
	movsd	24(%rsp), %xmm6
	movsd	%xmm2, 32(%rsp)
	movsd	%xmm3, 40(%rsp)
	movsd	%xmm5, 48(%rsp)
	movsd	%xmm6, 56(%rsp)
	je	.L24
	movq	%r14, %rdx
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	*24(%rbp)
	movsd	%xmm0, 8(%rsp)
	addl	$1, %ebx
	movsd	%xmm1, (%rsp)
	call	cabs@PLT
	movsd	(%rsp), %xmm3
	movsd	8(%rsp), %xmm2
.L14:
	cmpl	%r12d, %ebx
	jl	.L25
.L10:
	movq	72(%rsp), %rcx
	xorq	%fs:40, %rcx
	movl	%ebx, %eax
	jne	.L26
	addq	$80, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L24:
	.cfi_restore_state
	call	_ZSt25__throw_bad_function_callv@PLT
.L26:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3143:
	.size	_Z6EscapeSt7complexIdEiRKSt8functionIFS0_S0_S0_EE, .-_Z6EscapeSt7complexIdEiRKSt8functionIFS0_S0_S0_EE
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"%\n"
	.text
	.p2align 4,,15
	.globl	_Z19GetNumberIterationsR6WindowIiERS_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdESA_SA_EE
	.type	_Z19GetNumberIterationsR6WindowIiERS_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdESA_SA_EE, @function
_Z19GetNumberIterationsR6WindowIiERS_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdESA_SA_EE:
.LFB3144:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%edx, %r15d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$152, %rsp
	.cfi_def_cfa_offset 208
	movq	%fs:40, %rdx
	movq	%rdx, 136(%rsp)
	xorl	%edx, %edx
	movq	%rcx, 80(%rsp)
	movl	12(%rdi), %edx
	movl	8(%rdi), %ecx
	movq	%rdi, 32(%rsp)
	cmpl	%edx, %ecx
	movl	%ecx, 88(%rsp)
	jge	.L27
	movl	4(%rdi), %eax
	movq	%rsi, %r14
	movq	%r8, %r13
	movl	$-1, 92(%rsp)
	movl	$0, 72(%rsp)
	.p2align 4,,10
	.p2align 3
.L28:
	movq	32(%rsp), %rsi
	pxor	%xmm7, %xmm7
	movl	(%rsi), %ecx
	cvtsi2sd	88(%rsp), %xmm7
	movsd	%xmm7, 64(%rsp)
	cmpl	%eax, %ecx
	movl	%ecx, 76(%rsp)
	jge	.L30
	movslq	72(%rsp), %rsi
	movl	%ecx, 44(%rsp)
	leaq	96(%rsp), %r12
	movapd	%xmm7, %xmm1
	salq	$2, %rsi
	movq	%rsi, 48(%rsp)
	movl	%ecx, %esi
	movq	32(%rsp), %rcx
	.p2align 4,,10
	.p2align 3
.L35:
	subl	8(%rcx), %edx
	pxor	%xmm0, %xmm0
	movsd	16(%r14), %xmm2
	subl	%esi, %eax
	movq	80(%rsp), %rsi
	xorl	%ebx, %ebx
	leaq	112(%rsp), %rbp
	cvtsi2sd	%edx, %xmm0
	divsd	%xmm0, %xmm1
	movsd	24(%r14), %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	pxor	%xmm1, %xmm1
	cvtsi2sd	%eax, %xmm1
	addsd	%xmm2, %xmm0
	movsd	(%r14), %xmm2
	movq	48(%rsp), %rax
	addq	(%rsi), %rax
	movsd	%xmm0, 16(%rsp)
	pxor	%xmm0, %xmm0
	movq	%rax, 56(%rsp)
	cvtsi2sd	44(%rsp), %xmm0
	divsd	%xmm1, %xmm0
	movapd	%xmm0, %xmm1
	movsd	8(%r14), %xmm0
	subsd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 24(%rsp)
	pxor	%xmm0, %xmm0
	movapd	%xmm0, %xmm2
	movapd	%xmm0, %xmm3
	jmp	.L36
	.p2align 4,,10
	.p2align 3
.L51:
	movsd	.LC1(%rip), %xmm4
	ucomisd	%xmm0, %xmm4
	jbe	.L31
	cmpq	$0, 16(%r13)
	movsd	24(%rsp), %xmm5
	movsd	16(%rsp), %xmm6
	movsd	%xmm2, 112(%rsp)
	movsd	%xmm3, 120(%rsp)
	movsd	%xmm5, 96(%rsp)
	movsd	%xmm6, 104(%rsp)
	je	.L50
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movq	%r13, %rdi
	call	*24(%r13)
	movsd	%xmm0, 8(%rsp)
	addl	$1, %ebx
	movsd	%xmm1, (%rsp)
	call	cabs@PLT
	movsd	(%rsp), %xmm3
	movsd	8(%rsp), %xmm2
.L36:
	cmpl	%ebx, %r15d
	jg	.L51
.L31:
	movq	56(%rsp), %rax
	movl	44(%rsp), %ecx
	addq	$4, 48(%rsp)
	movl	%ebx, (%rax)
	movl	72(%rsp), %eax
	subl	76(%rsp), %eax
	leal	1(%rcx,%rax), %esi
	movq	32(%rsp), %rax
	addl	$1, %ecx
	movl	%ecx, 44(%rsp)
	movl	4(%rax), %eax
	cmpl	%eax, %ecx
	jge	.L52
	movq	32(%rsp), %rdi
	movsd	64(%rsp), %xmm1
	movl	12(%rdi), %edx
	movl	(%rdi), %esi
	movq	%rdi, %rcx
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L52:
	movq	32(%rsp), %rdx
	movl	%esi, 72(%rsp)
	movl	12(%rdx), %edx
.L30:
	pxor	%xmm1, %xmm1
	movsd	64(%rsp), %xmm0
	cvtsi2sd	%edx, %xmm1
	mulsd	.LC2(%rip), %xmm0
	divsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %ebx
	cmpl	92(%rsp), %ebx
	jg	.L53
	addl	$1, 88(%rsp)
	movl	88(%rsp), %esi
	cmpl	%edx, %esi
	jl	.L28
.L27:
	movq	136(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L54
	addq	$152, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L53:
	.cfi_restore_state
	leaq	_ZSt4cout(%rip), %rdi
	movl	%ebx, %esi
	call	_ZNSolsEi@PLT
	leaq	.LC3(%rip), %rsi
	movl	$2, %edx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	32(%rsp), %rax
	addl	$1, 88(%rsp)
	movl	12(%rax), %edx
	movl	88(%rsp), %eax
	cmpl	%edx, %eax
	jge	.L27
	movq	32(%rsp), %rax
	movl	%ebx, 92(%rsp)
	movl	4(%rax), %eax
	jmp	.L28
.L50:
	call	_ZSt25__throw_bad_function_callv@PLT
.L54:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3144:
	.size	_Z19GetNumberIterationsR6WindowIiERS_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdESA_SA_EE, .-_Z19GetNumberIterationsR6WindowIiERS_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdESA_SA_EE
	.section	.rodata.str1.1
.LC4:
	.string	"Time to generate fractal"
.LC5:
	.string	" = "
.LC7:
	.string	" [ms]"
	.text
	.p2align 4,,15
	.globl	_Z20ComputeFractalPointsR6WindowIiERS_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdESA_SA_EE
	.type	_Z20ComputeFractalPointsR6WindowIiERS_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdESA_SA_EE, @function
_Z20ComputeFractalPointsR6WindowIiERS_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdESA_SA_EE:
.LFB3145:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movq	%rcx, %r14
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rsi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	%edx, %r13d
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%r8, 8(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movq	8(%rsp), %r8
	movq	%r14, %rcx
	movq	%rbx, %rdi
	movl	%r13d, %edx
	movq	%r12, %rsi
	movq	%rax, %rbp
	call	_Z19GetNumberIterationsR6WindowIiERS_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdESA_SA_EE
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movl	$24, %edx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC5(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movl	$3, %edx
	subq	%rbp, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	pxor	%xmm0, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rbx, %xmm0
	divsd	.LC6(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rbx
	movl	$5, %edx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L61
	cmpb	$0, 56(%rbp)
	je	.L57
	movsbl	67(%rbp), %esi
.L58:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
	.p2align 4,,10
	.p2align 3
.L57:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L58
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L58
.L61:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE3145:
	.size	_Z20ComputeFractalPointsR6WindowIiERS_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdESA_SA_EE, .-_Z20ComputeFractalPointsR6WindowIiERS_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdESA_SA_EE
	.p2align 4,,15
	.globl	_Z10Mandelbrotv
	.type	_Z10Mandelbrotv, @function
_Z10Mandelbrotv:
.LFB3158:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3158
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%ebx, %ebx
	subq	$184, %rsp
	.cfi_def_cfa_offset 240
	movq	%rdi, 72(%rsp)
	movl	$2560000, %edi
	movq	%fs:40, %rax
	movq	%rax, 168(%rsp)
	xorl	%eax, %eax
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movl	$2560000, %edx
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%rax, 56(%rsp)
	call	memset@PLT
	leaq	_ZNSt14_Function_base13_Base_managerIZ10MandelbrotvEUlSt7complexIdES2_E_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation(%rip), %rcx
	addq	$2560000, %rax
	movq	%rax, 80(%rsp)
	leaq	_ZNSt17_Function_handlerIFSt7complexIdES1_S1_EZ10MandelbrotvEUlS1_S1_E_E9_M_invokeERKSt9_Any_dataOS1_S8_(%rip), %rax
	movq	%rcx, 8(%rsp)
	movq	8(%rsp), %xmm0
	movq	%rax, 8(%rsp)
	movhps	8(%rsp), %xmm0
	movaps	%xmm0, 144(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movl	$-1, 68(%rsp)
	movq	%rax, 88(%rsp)
	movl	$0, 64(%rsp)
	.p2align 4,,10
	.p2align 3
.L71:
	pxor	%xmm7, %xmm7
	leal	1(%rbx), %r14d
	movq	56(%rsp), %rax
	leaq	96(%rsp), %r13
	xorl	%r15d, %r15d
	movslq	%r14d, %r14
	cvtsi2sd	64(%rsp), %xmm7
	movapd	%xmm7, %xmm0
	subq	%r14, %rbx
	leaq	(%rax,%rbx,4), %rax
	movsd	%xmm7, 48(%rsp)
	divsd	.LC8(%rip), %xmm0
	movq	%rax, 40(%rsp)
	mulsd	.LC9(%rip), %xmm0
	subsd	.LC10(%rip), %xmm0
	movsd	%xmm0, 32(%rsp)
	.p2align 4,,10
	.p2align 3
.L67:
	pxor	%xmm0, %xmm0
	xorl	%ebx, %ebx
	leaq	112(%rsp), %r12
	pxor	%xmm2, %xmm2
	leaq	128(%rsp), %rbp
	pxor	%xmm3, %xmm3
	cvtsi2sd	%r15d, %xmm0
	divsd	.LC8(%rip), %xmm0
	mulsd	.LC11(%rip), %xmm0
	subsd	.LC12(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)
	jmp	.L63
	.p2align 4,,10
	.p2align 3
.L69:
	cmpl	$500, %ebx
	je	.L64
.L63:
	cmpq	$0, 144(%rsp)
	movsd	24(%rsp), %xmm4
	movsd	32(%rsp), %xmm5
	movsd	%xmm2, 112(%rsp)
	movsd	%xmm3, 120(%rsp)
	movsd	%xmm4, 96(%rsp)
	movsd	%xmm5, 104(%rsp)
	je	.L101
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
.LEHB1:
	call	*152(%rsp)
	movsd	%xmm0, 16(%rsp)
	addl	$1, %ebx
	movsd	%xmm1, 8(%rsp)
	call	cabs@PLT
	movsd	.LC1(%rip), %xmm6
	movsd	8(%rsp), %xmm3
	ucomisd	%xmm0, %xmm6
	movsd	16(%rsp), %xmm2
	ja	.L69
.L64:
	movq	40(%rsp), %rax
	addl	$1, %r15d
	movl	%ebx, (%rax,%r14,4)
	movslq	%r14d, %rbx
	addq	$1, %r14
	cmpl	$800, %r15d
	jne	.L67
	movsd	48(%rsp), %xmm0
	mulsd	.LC2(%rip), %xmm0
	divsd	.LC8(%rip), %xmm0
	cvttsd2si	%xmm0, %r12d
	cmpl	68(%rsp), %r12d
	jg	.L102
.L70:
	addl	$1, 64(%rsp)
	movl	64(%rsp), %eax
	cmpl	$800, %eax
	jne	.L71
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	leaq	.LC4(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movl	$24, %edx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC5(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movl	$3, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	subq	88(%rsp), %rbx
	pxor	%xmm0, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rbx, %xmm0
	divsd	.LC6(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC7(%rip), %rsi
	movl	$5, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	.L103
	cmpb	$0, 56(%r12)
	je	.L73
	movsbl	67(%r12), %esi
.L74:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
.LEHE1:
	movq	144(%rsp), %rax
	testq	%rax, %rax
	je	.L75
	movl	$3, %edx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	*%rax
.L75:
	movq	72(%rsp), %rbx
	movl	$2560000, %edi
	movdqa	.LC13(%rip), %xmm0
	movups	%xmm0, (%rbx)
	pxor	%xmm0, %xmm0
	movq	$0, 32(%rbx)
	movups	%xmm0, 16(%rbx)
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	80(%rsp), %rdx
	cmpq	%rdx, 56(%rsp)
	movq	%rbx, %rcx
	movq	%rax, 16(%rbx)
	movq	%rax, 24(%rbx)
	leaq	2560000(%rax), %rbx
	movq	%rbx, 32(%rcx)
	je	.L76
	movq	56(%rsp), %rsi
	movl	$2560000, %edx
	movq	%rax, %rdi
	call	memcpy@PLT
.L76:
	movq	72(%rsp), %rax
	movq	56(%rsp), %rdi
	movq	%rbx, 24(%rax)
	movl	$500, 40(%rax)
	movq	%rax, %rbx
	call	_ZdlPv@PLT
	movq	168(%rsp), %rcx
	xorq	%fs:40, %rcx
	movq	%rbx, %rax
	jne	.L104
	addq	$184, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L102:
	.cfi_restore_state
	leaq	_ZSt4cout(%rip), %rdi
	movl	%r12d, %esi
.LEHB3:
	call	_ZNSolsEi@PLT
	leaq	.LC3(%rip), %rsi
	movl	$2, %edx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	%r12d, 68(%rsp)
	jmp	.L70
.L73:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L74
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L74
.L101:
	call	_ZSt25__throw_bad_function_callv@PLT
.LEHE3:
.L84:
	movq	%rax, %rbx
	movq	144(%rsp), %rax
	testq	%rax, %rax
	je	.L79
	leaq	128(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L79:
	movq	56(%rsp), %rdi
	call	_ZdlPv@PLT
	movq	%rbx, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L104:
	call	__stack_chk_fail@PLT
.L103:
.LEHB5:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE5:
.L83:
	movq	%rax, %rbx
	jmp	.L79
	.cfi_endproc
.LFE3158:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3158:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3158-.LLSDACSB3158
.LLSDACSB3158:
	.uleb128 .LEHB0-.LFB3158
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3158
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L84-.LFB3158
	.uleb128 0
	.uleb128 .LEHB2-.LFB3158
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L83-.LFB3158
	.uleb128 0
	.uleb128 .LEHB3-.LFB3158
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L84-.LFB3158
	.uleb128 0
	.uleb128 .LEHB4-.LFB3158
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB3158
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L84-.LFB3158
	.uleb128 0
.LLSDACSE3158:
	.text
	.size	_Z10Mandelbrotv, .-_Z10Mandelbrotv
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I__Z5ScaleR6WindowIiERS_IdESt7complexIdE, @function
_GLOBAL__sub_I__Z5ScaleR6WindowIiERS_IdESt7complexIdE:
.LFB3797:
	.cfi_startproc
	leaq	_ZStL8__ioinit(%rip), %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT
	.cfi_endproc
.LFE3797:
	.size	_GLOBAL__sub_I__Z5ScaleR6WindowIiERS_IdESt7complexIdE, .-_GLOBAL__sub_I__Z5ScaleR6WindowIiERS_IdESt7complexIdE
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z5ScaleR6WindowIiERS_IdESt7complexIdE
	.section	.data.rel.ro,"aw",@progbits
	.align 8
	.type	_ZTIZ10MandelbrotvEUlSt7complexIdES0_E_, @object
	.size	_ZTIZ10MandelbrotvEUlSt7complexIdES0_E_, 16
_ZTIZ10MandelbrotvEUlSt7complexIdES0_E_:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSZ10MandelbrotvEUlSt7complexIdES0_E_
	.section	.rodata
	.align 32
	.type	_ZTSZ10MandelbrotvEUlSt7complexIdES0_E_, @object
	.size	_ZTSZ10MandelbrotvEUlSt7complexIdES0_E_, 37
_ZTSZ10MandelbrotvEUlSt7complexIdES0_E_:
	.string	"*Z10MandelbrotvEUlSt7complexIdES0_E_"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1073741824
	.align 8
.LC2:
	.long	0
	.long	1079574528
	.align 8
.LC6:
	.long	0
	.long	1093567616
	.align 8
.LC8:
	.long	0
	.long	1082720256
	.align 8
.LC9:
	.long	858993459
	.long	1074475827
	.align 8
.LC10:
	.long	858993459
	.long	1073427251
	.align 8
.LC11:
	.long	858993460
	.long	1074475827
	.align 8
.LC12:
	.long	2576980378
	.long	1073846681
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC13:
	.long	0
	.long	800
	.long	0
	.long	800
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
