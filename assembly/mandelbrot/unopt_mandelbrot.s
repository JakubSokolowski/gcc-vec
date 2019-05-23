	.file	"unopt_mandelbrot.cpp"
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
	.type	_ZNSt17_Function_handlerIFSt7complexIdES1_S1_EZN5UNOPT10MandelbrotEvEUlS1_S1_E_E9_M_invokeERKSt9_Any_dataOS1_S9_, @function
_ZNSt17_Function_handlerIFSt7complexIdES1_S1_EZN5UNOPT10MandelbrotEvEUlS1_S1_E_E9_M_invokeERKSt9_Any_dataOS1_S9_:
.LFB3596:
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
.LFE3596:
	.size	_ZNSt17_Function_handlerIFSt7complexIdES1_S1_EZN5UNOPT10MandelbrotEvEUlS1_S1_E_E9_M_invokeERKSt9_Any_dataOS1_S9_, .-_ZNSt17_Function_handlerIFSt7complexIdES1_S1_EZN5UNOPT10MandelbrotEvEUlS1_S1_E_E9_M_invokeERKSt9_Any_dataOS1_S9_
	.p2align 4,,15
	.type	_ZNSt14_Function_base13_Base_managerIZN5UNOPT10MandelbrotEvEUlSt7complexIdES3_E_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, @function
_ZNSt14_Function_base13_Base_managerIZN5UNOPT10MandelbrotEvEUlSt7complexIdES3_E_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation:
.LFB3597:
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
	leaq	_ZTIZN5UNOPT10MandelbrotEvEUlSt7complexIdES1_E_(%rip), %rax
	movq	%rax, (%rdi)
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE3597:
	.size	_ZNSt14_Function_base13_Base_managerIZN5UNOPT10MandelbrotEvEUlSt7complexIdES3_E_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation, .-_ZNSt14_Function_base13_Base_managerIZN5UNOPT10MandelbrotEvEUlSt7complexIdES3_E_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation
	.p2align 4,,15
	.globl	_ZN5UNOPT5ScaleE6WindowIiES0_IdESt7complexIdE
	.type	_ZN5UNOPT5ScaleE6WindowIiES0_IdESt7complexIdE, @function
_ZN5UNOPT5ScaleE6WindowIiES0_IdESt7complexIdE:
.LFB3145:
	.cfi_startproc
	movq	%rsi, %rax
	pxor	%xmm2, %xmm2
	sarq	$32, %rax
	movsd	24(%rsp), %xmm3
	subl	%esi, %eax
	movsd	8(%rsp), %xmm4
	cvtsi2sd	%eax, %xmm2
	movq	%rdi, %rax
	sarq	$32, %rax
	subl	%edi, %eax
	divsd	%xmm2, %xmm1
	movsd	32(%rsp), %xmm2
	subsd	%xmm3, %xmm2
	mulsd	%xmm2, %xmm1
	pxor	%xmm2, %xmm2
	cvtsi2sd	%eax, %xmm2
	addsd	%xmm3, %xmm1
	divsd	%xmm2, %xmm0
	movsd	16(%rsp), %xmm2
	subsd	%xmm4, %xmm2
	mulsd	%xmm2, %xmm0
	addsd	%xmm4, %xmm0
	ret
	.cfi_endproc
.LFE3145:
	.size	_ZN5UNOPT5ScaleE6WindowIiES0_IdESt7complexIdE, .-_ZN5UNOPT5ScaleE6WindowIiES0_IdESt7complexIdE
	.p2align 4,,15
	.globl	_ZN5UNOPT6EscapeESt7complexIdEiRKSt8functionIFS1_S1_S1_EE
	.type	_ZN5UNOPT6EscapeESt7complexIdEiRKSt8functionIFS1_S1_S1_EE, @function
_ZN5UNOPT6EscapeESt7complexIdEiRKSt8functionIFS1_S1_S1_EE:
.LFB3146:
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
.LFE3146:
	.size	_ZN5UNOPT6EscapeESt7complexIdEiRKSt8functionIFS1_S1_S1_EE, .-_ZN5UNOPT6EscapeESt7complexIdEiRKSt8functionIFS1_S1_S1_EE
	.section	.text._ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_,comdat
	.align 2
	.p2align 4,,15
	.weak	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.type	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, @function
_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_:
.LFB3657:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbp
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	8(%rdi), %rcx
	movq	(%rdi), %rbx
	movq	%rcx, %rax
	subq	%rbx, %r14
	subq	%rbx, %rax
	sarq	$2, %rax
	testq	%rax, %rax
	je	.L35
	leaq	(%rax,%rax), %rsi
	movq	$-4, %r15
	cmpq	%rsi, %rax
	jbe	.L46
.L29:
	movq	%r15, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	0(%rbp), %rbx
	movq	8(%rbp), %rcx
	movq	%r12, %r8
	movq	(%rsp), %rdx
	movq	%rax, %r13
	addq	%rax, %r15
	subq	%rbx, %r8
.L30:
	addq	%r13, %r14
	je	.L31
	movl	(%rdx), %eax
	movl	%eax, (%r14)
.L31:
	cmpq	%rbx, %r12
	je	.L32
	movq	%r8, %rdx
	movq	%rbx, %rsi
	movq	%r13, %rdi
	movq	%rcx, 8(%rsp)
	movq	%r8, (%rsp)
	call	memmove@PLT
	movq	8(%rsp), %rcx
	movq	(%rsp), %r8
.L32:
	movq	%rcx, %r14
	leaq	4(%r13,%r8), %r8
	subq	%r12, %r14
	cmpq	%r12, %rcx
	je	.L33
	movq	%r8, %rdi
	movq	%r14, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	%rax, %r8
.L33:
	addq	%r8, %r14
	testq	%rbx, %rbx
	je	.L34
	movq	%rbx, %rdi
	call	_ZdlPv@PLT
.L34:
	movq	%r13, 0(%rbp)
	movq	%r14, 8(%rbp)
	movq	%r15, 16(%rbp)
	addq	$24, %rsp
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
	.p2align 4,,10
	.p2align 3
.L35:
	.cfi_restore_state
	movl	$1, %esi
.L28:
	leaq	0(,%rsi,4), %r15
	jmp	.L29
	.p2align 4,,10
	.p2align 3
.L46:
	movabsq	$4611686018427387903, %rax
	cmpq	%rax, %rsi
	ja	.L29
	testq	%rsi, %rsi
	jne	.L28
	movq	%r14, %r8
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	jmp	.L30
	.cfi_endproc
.LFE3657:
	.size	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, .-_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"Time to generate fractal"
.LC8:
	.string	" = "
.LC10:
	.string	" [ms]"
	.text
	.p2align 4,,15
	.globl	_ZN5UNOPT10MandelbrotEv
	.type	_ZN5UNOPT10MandelbrotEv, @function
_ZN5UNOPT10MandelbrotEv:
.LFB3161:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3161
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	leaq	_ZNSt14_Function_base13_Base_managerIZN5UNOPT10MandelbrotEvEUlSt7complexIdES3_E_E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation(%rip), %rcx
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	xorl	%r15d, %r15d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	pxor	%xmm0, %xmm0
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	movq	%fs:40, %rax
	movq	%rax, 184(%rsp)
	xorl	%eax, %eax
	leaq	_ZNSt17_Function_handlerIFSt7complexIdES1_S1_EZN5UNOPT10MandelbrotEvEUlS1_S1_E_E9_M_invokeERKSt9_Any_dataOS1_S9_(%rip), %rax
	movq	%rcx, 8(%rsp)
	movq	%rdi, 48(%rsp)
	movaps	%xmm0, 112(%rsp)
	movq	$0, 128(%rsp)
	movq	8(%rsp), %xmm0
	movq	%rax, 8(%rsp)
	movhps	8(%rsp), %xmm0
	movaps	%xmm0, 160(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movq	%rax, 56(%rsp)
	.p2align 4,,10
	.p2align 3
.L58:
	pxor	%xmm0, %xmm0
	leaq	80(%rsp), %r13
	xorl	%r14d, %r14d
	cvtsi2sd	%r15d, %xmm0
	divsd	.LC2(%rip), %xmm0
	mulsd	.LC3(%rip), %xmm0
	subsd	.LC4(%rip), %xmm0
	movsd	%xmm0, 40(%rsp)
	.p2align 4,,10
	.p2align 3
.L57:
	pxor	%xmm0, %xmm0
	xorl	%ebx, %ebx
	leaq	96(%rsp), %r12
	pxor	%xmm2, %xmm2
	leaq	144(%rsp), %rbp
	pxor	%xmm3, %xmm3
	cvtsi2sd	%r14d, %xmm0
	divsd	.LC2(%rip), %xmm0
	mulsd	.LC5(%rip), %xmm0
	subsd	.LC6(%rip), %xmm0
	movapd	%xmm0, %xmm6
	movhpd	40(%rsp), %xmm6
	movaps	%xmm6, 16(%rsp)
	jmp	.L48
	.p2align 4,,10
	.p2align 3
.L54:
	cmpl	$500, %ebx
	je	.L49
.L48:
	cmpq	$0, 160(%rsp)
	movsd	%xmm2, 96(%rsp)
	movapd	16(%rsp), %xmm4
	movsd	%xmm3, 104(%rsp)
	movaps	%xmm4, 80(%rsp)
	je	.L100
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%rbp, %rdi
.LEHB0:
	call	*168(%rsp)
	movsd	%xmm0, 32(%rsp)
	addl	$1, %ebx
	movsd	%xmm1, 8(%rsp)
	call	cabs@PLT
	movsd	.LC1(%rip), %xmm5
	movsd	8(%rsp), %xmm3
	ucomisd	%xmm0, %xmm5
	movsd	32(%rsp), %xmm2
	ja	.L54
.L49:
	movq	120(%rsp), %rsi
	cmpq	128(%rsp), %rsi
	movl	%ebx, 76(%rsp)
	je	.L101
	testq	%rsi, %rsi
	je	.L55
	movl	%ebx, (%rsi)
.L55:
	addq	$4, %rsi
	movq	%rsi, 120(%rsp)
.L56:
	addl	$1, %r14d
	cmpl	$800, %r14d
	jne	.L57
	addl	$1, %r15d
	cmpl	$800, %r15d
	jne	.L58
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	leaq	.LC7(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movl	$24, %edx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC8(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movl	$3, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	subq	56(%rsp), %rbx
	pxor	%xmm0, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rbx, %xmm0
	divsd	.LC9(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC10(%rip), %rsi
	movl	$5, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r12
	testq	%r12, %r12
	je	.L102
	cmpb	$0, 56(%r12)
	je	.L60
	movsbl	67(%r12), %esi
.L61:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
.LEHE0:
	movq	160(%rsp), %rax
	testq	%rax, %rax
	je	.L62
	movl	$3, %edx
	movq	%rbp, %rsi
	movq	%rbp, %rdi
	call	*%rax
.L62:
	movq	120(%rsp), %rcx
	movq	112(%rsp), %rbp
	movq	48(%rsp), %rdx
	movdqa	.LC11(%rip), %xmm0
	movq	%rcx, %rbx
	subq	%rbp, %rbx
	movq	$0, 32(%rdx)
	movups	%xmm0, (%rdx)
	movq	%rbx, %rax
	pxor	%xmm0, %xmm0
	sarq	$2, %rax
	testq	%rax, %rax
	movups	%xmm0, 16(%rdx)
	movq	%rbx, %rdx
	je	.L64
	movabsq	$4611686018427387903, %rdx
	cmpq	%rdx, %rax
	ja	.L103
	movq	%rbx, %rdi
.LEHB1:
	call	_Znwm@PLT
.LEHE1:
	movq	120(%rsp), %rcx
	movq	112(%rsp), %rbp
	movq	%rcx, %rdx
	subq	%rbp, %rdx
.L64:
	movq	48(%rsp), %r15
	addq	%rax, %rbx
	cmpq	%rbp, %rcx
	movq	%rbx, 32(%r15)
	movq	%rax, 16(%r15)
	leaq	(%rax,%rdx), %rbx
	movq	%rax, 24(%r15)
	je	.L66
	movq	%rbp, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
	movq	%rbx, 24(%r15)
	movl	$500, 40(%r15)
.L67:
	movq	%rbp, %rdi
	call	_ZdlPv@PLT
	movq	48(%rsp), %rax
.L47:
	movq	184(%rsp), %rcx
	xorq	%fs:40, %rcx
	jne	.L104
	addq	$200, %rsp
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
	.p2align 4,,10
	.p2align 3
.L101:
	.cfi_restore_state
	leaq	76(%rsp), %rdx
	leaq	112(%rsp), %rdi
.LEHB2:
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	jmp	.L56
.L66:
	testq	%rbp, %rbp
	movq	%r15, %rax
	movq	%rbx, 24(%r15)
	movl	$500, 40(%r15)
	je	.L47
	jmp	.L67
.L60:
	movq	%r12, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r12), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L61
	movq	%r12, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L61
.L100:
	call	_ZSt25__throw_bad_function_callv@PLT
.LEHE2:
.L76:
	movq	%rax, %rbx
	movq	160(%rsp), %rax
	testq	%rax, %rax
	je	.L71
	leaq	144(%rsp), %rdi
	movl	$3, %edx
	movq	%rdi, %rsi
	call	*%rax
.L71:
	movq	112(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L72
	call	_ZdlPv@PLT
.L72:
	movq	%rbx, %rdi
.LEHB3:
	call	_Unwind_Resume@PLT
.LEHE3:
.L75:
	movq	%rax, %rbx
	jmp	.L71
.L102:
.LEHB4:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE4:
.L104:
	call	__stack_chk_fail@PLT
.L103:
.LEHB5:
	call	_ZSt17__throw_bad_allocv@PLT
.LEHE5:
	.cfi_endproc
.LFE3161:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3161:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3161-.LLSDACSB3161
.LLSDACSB3161:
	.uleb128 .LEHB0-.LFB3161
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L76-.LFB3161
	.uleb128 0
	.uleb128 .LEHB1-.LFB3161
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L75-.LFB3161
	.uleb128 0
	.uleb128 .LEHB2-.LFB3161
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L76-.LFB3161
	.uleb128 0
	.uleb128 .LEHB3-.LFB3161
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB3161
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L76-.LFB3161
	.uleb128 0
	.uleb128 .LEHB5-.LFB3161
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L75-.LFB3161
	.uleb128 0
.LLSDACSE3161:
	.text
	.size	_ZN5UNOPT10MandelbrotEv, .-_ZN5UNOPT10MandelbrotEv
	.p2align 4,,15
	.globl	_ZN5UNOPT19GetNumberIterationsE6WindowIiES0_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdES9_S9_EE
	.type	_ZN5UNOPT19GetNumberIterationsE6WindowIiES0_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdES9_S9_EE, @function
_ZN5UNOPT19GetNumberIterationsE6WindowIiES0_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdES9_S9_EE:
.LFB3147:
	.cfi_startproc
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
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	movq	%fs:40, %rax
	movq	%rax, 152(%rsp)
	xorl	%eax, %eax
	movq	%rsi, %rax
	movl	%edi, 88(%rsp)
	shrq	$32, %rdi
	sarq	$32, %rax
	movq	%rcx, 32(%rsp)
	movq	%rdi, 40(%rsp)
	cmpl	%eax, %esi
	movl	%esi, 92(%rsp)
	movl	%eax, 84(%rsp)
	jge	.L105
	movl	%edx, %ebp
	movq	%r8, %r15
	movl	%esi, 80(%rsp)
	.p2align 4,,10
	.p2align 3
.L117:
	movl	40(%rsp), %eax
	movl	88(%rsp), %r14d
	cmpl	%r14d, %eax
	jle	.L107
	pxor	%xmm7, %xmm7
	subl	%r14d, %eax
	leaq	112(%rsp), %r13
	pxor	%xmm1, %xmm1
	leaq	128(%rsp), %r12
	pxor	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm7
	movl	84(%rsp), %eax
	subl	92(%rsp), %eax
	movsd	240(%rsp), %xmm2
	cvtsi2sd	80(%rsp), %xmm0
	movsd	224(%rsp), %xmm6
	movsd	%xmm6, 64(%rsp)
	cvtsi2sd	%eax, %xmm1
	movsd	%xmm7, 56(%rsp)
	divsd	%xmm1, %xmm0
	movsd	248(%rsp), %xmm1
	subsd	%xmm2, %xmm1
	mulsd	%xmm1, %xmm0
	addsd	%xmm2, %xmm0
	movsd	%xmm0, 48(%rsp)
	movsd	232(%rsp), %xmm0
	subsd	%xmm6, %xmm0
	movsd	%xmm0, 72(%rsp)
	.p2align 4,,10
	.p2align 3
.L116:
	pxor	%xmm1, %xmm1
	xorl	%ebx, %ebx
	pxor	%xmm0, %xmm0
	cvtsi2sd	%r14d, %xmm1
	movapd	%xmm0, %xmm2
	movapd	%xmm0, %xmm3
	divsd	56(%rsp), %xmm1
	mulsd	72(%rsp), %xmm1
	addsd	64(%rsp), %xmm1
	movapd	%xmm1, %xmm6
	movhpd	48(%rsp), %xmm6
	movaps	%xmm6, 16(%rsp)
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L134:
	cmpl	%ebx, %ebp
	jle	.L108
	cmpq	$0, 16(%r15)
	movsd	%xmm2, 128(%rsp)
	movapd	16(%rsp), %xmm5
	movsd	%xmm3, 136(%rsp)
	movaps	%xmm5, 112(%rsp)
	je	.L133
	movq	%r13, %rdx
	movq	%r12, %rsi
	movq	%r15, %rdi
	call	*24(%r15)
	movsd	%xmm0, 8(%rsp)
	addl	$1, %ebx
	movsd	%xmm1, (%rsp)
	call	cabs@PLT
	movsd	(%rsp), %xmm3
	movsd	8(%rsp), %xmm2
.L113:
	movsd	.LC1(%rip), %xmm4
	ucomisd	%xmm0, %xmm4
	ja	.L134
.L108:
	movq	32(%rsp), %rax
	movl	%ebx, 108(%rsp)
	movq	8(%rax), %rsi
	cmpq	16(%rax), %rsi
	je	.L135
	testq	%rsi, %rsi
	je	.L114
	movl	%ebx, (%rsi)
.L114:
	addq	$4, %rsi
	movq	%rsi, 8(%rax)
.L115:
	addl	$1, %r14d
	cmpl	%r14d, 40(%rsp)
	jne	.L116
.L107:
	addl	$1, 80(%rsp)
	movl	80(%rsp), %eax
	cmpl	84(%rsp), %eax
	jne	.L117
.L105:
	movq	152(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L136
	addq	$168, %rsp
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
	.p2align 4,,10
	.p2align 3
.L135:
	.cfi_restore_state
	leaq	108(%rsp), %rdx
	movq	%rax, %rdi
	call	_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_
	jmp	.L115
.L133:
	call	_ZSt25__throw_bad_function_callv@PLT
.L136:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3147:
	.size	_ZN5UNOPT19GetNumberIterationsE6WindowIiES0_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdES9_S9_EE, .-_ZN5UNOPT19GetNumberIterationsE6WindowIiES0_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdES9_S9_EE
	.p2align 4,,15
	.globl	_ZN5UNOPT20ComputeFractalPointsE6WindowIiES0_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdES9_S9_EE
	.type	_ZN5UNOPT20ComputeFractalPointsE6WindowIiES0_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdES9_S9_EE, @function
_ZN5UNOPT20ComputeFractalPointsE6WindowIiES0_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdES9_S9_EE:
.LFB3148:
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
	movq	%rdi, %r12
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	%edx, %r13d
	movq	%rsi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	movq	%r8, 8(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	pushq	88(%rsp)
	.cfi_def_cfa_offset 72
	pushq	88(%rsp)
	.cfi_def_cfa_offset 80
	movq	%r14, %rcx
	pushq	88(%rsp)
	.cfi_def_cfa_offset 88
	pushq	88(%rsp)
	.cfi_def_cfa_offset 96
	movq	%rbx, %rsi
	movq	40(%rsp), %r8
	movl	%r13d, %edx
	movq	%r12, %rdi
	movq	%rax, %rbp
	call	_ZN5UNOPT19GetNumberIterationsE6WindowIiES0_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdES9_S9_EE
	addq	$32, %rsp
	.cfi_def_cfa_offset 64
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	leaq	.LC7(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movl	$24, %edx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC8(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movl	$3, %edx
	subq	%rbp, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	pxor	%xmm0, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rbx, %xmm0
	divsd	.LC9(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rbx
	movl	$5, %edx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L143
	cmpb	$0, 56(%rbp)
	je	.L139
	movsbl	67(%rbp), %esi
.L140:
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
.L139:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L140
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L140
.L143:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE3148:
	.size	_ZN5UNOPT20ComputeFractalPointsE6WindowIiES0_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdES9_S9_EE, .-_ZN5UNOPT20ComputeFractalPointsE6WindowIiES0_IdEiRSt6vectorIiSaIiEERKSt8functionIFSt7complexIdES9_S9_EE
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I__ZN5UNOPT5ScaleE6WindowIiES0_IdESt7complexIdE, @function
_GLOBAL__sub_I__ZN5UNOPT5ScaleE6WindowIiES0_IdESt7complexIdE:
.LFB3833:
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
.LFE3833:
	.size	_GLOBAL__sub_I__ZN5UNOPT5ScaleE6WindowIiES0_IdESt7complexIdE, .-_GLOBAL__sub_I__ZN5UNOPT5ScaleE6WindowIiES0_IdESt7complexIdE
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN5UNOPT5ScaleE6WindowIiES0_IdESt7complexIdE
	.section	.data.rel.ro,"aw",@progbits
	.align 8
	.type	_ZTIZN5UNOPT10MandelbrotEvEUlSt7complexIdES1_E_, @object
	.size	_ZTIZN5UNOPT10MandelbrotEvEUlSt7complexIdES1_E_, 16
_ZTIZN5UNOPT10MandelbrotEvEUlSt7complexIdES1_E_:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSZN5UNOPT10MandelbrotEvEUlSt7complexIdES1_E_
	.section	.rodata
	.align 32
	.type	_ZTSZN5UNOPT10MandelbrotEvEUlSt7complexIdES1_E_, @object
	.size	_ZTSZN5UNOPT10MandelbrotEvEUlSt7complexIdES1_E_, 45
_ZTSZN5UNOPT10MandelbrotEvEUlSt7complexIdES1_E_:
	.string	"*ZN5UNOPT10MandelbrotEvEUlSt7complexIdES1_E_"
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
	.long	1082720256
	.align 8
.LC3:
	.long	858993459
	.long	1074475827
	.align 8
.LC4:
	.long	858993459
	.long	1073427251
	.align 8
.LC5:
	.long	858993460
	.long	1074475827
	.align 8
.LC6:
	.long	2576980378
	.long	1073846681
	.align 8
.LC9:
	.long	0
	.long	1093567616
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC11:
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
