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
	.globl	_ZN3OPT5ScaleER6WindowIiERS0_IdESt7complexIdE
	.type	_ZN3OPT5ScaleER6WindowIiERS0_IdESt7complexIdE, @function
_ZN3OPT5ScaleER6WindowIiERS0_IdESt7complexIdE:
.LFB3145:
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
.LFE3145:
	.size	_ZN3OPT5ScaleER6WindowIiERS0_IdESt7complexIdE, .-_ZN3OPT5ScaleER6WindowIiERS0_IdESt7complexIdE
	.p2align 4,,15
	.globl	_ZN3OPT6EscapeESt7complexIdEi
	.type	_ZN3OPT6EscapeESt7complexIdEi, @function
_ZN3OPT6EscapeESt7complexIdEi:
.LFB3146:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edi, %ebp
	pxor	%xmm5, %xmm5
	xorl	%ebx, %ebx
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	pxor	%xmm4, %xmm4
	movsd	%xmm0, 16(%rsp)
	pxor	%xmm0, %xmm0
	movsd	%xmm1, 24(%rsp)
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L14:
	movsd	.LC1(%rip), %xmm6
	ucomisd	%xmm0, %xmm6
	jbe	.L4
	movapd	%xmm5, %xmm1
	movapd	%xmm4, %xmm0
	movapd	%xmm5, %xmm3
	addl	$1, %ebx
	movapd	%xmm4, %xmm2
	call	__muldc3@PLT
	movsd	16(%rsp), %xmm4
	addsd	24(%rsp), %xmm1
	addsd	%xmm0, %xmm4
	movapd	%xmm4, %xmm0
	movsd	%xmm4, 8(%rsp)
	movsd	%xmm1, (%rsp)
	call	cabs@PLT
	movsd	(%rsp), %xmm5
	movsd	8(%rsp), %xmm4
.L6:
	cmpl	%ebp, %ebx
	jl	.L14
.L4:
	addq	$40, %rsp
	.cfi_def_cfa_offset 24
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3146:
	.size	_ZN3OPT6EscapeESt7complexIdEi, .-_ZN3OPT6EscapeESt7complexIdEi
	.p2align 4,,15
	.globl	_ZN3OPT19GetNumberIterationsER6WindowIiERS0_IdEiRSt6vectorIiSaIiEE
	.type	_ZN3OPT19GetNumberIterationsER6WindowIiERS0_IdEiRSt6vectorIiSaIiEE, @function
_ZN3OPT19GetNumberIterationsER6WindowIiERS0_IdEiRSt6vectorIiSaIiEE:
.LFB3150:
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 160
	movl	8(%rdi), %eax
	movl	12(%rdi), %r8d
	cmpl	%r8d, %eax
	movl	%eax, 76(%rsp)
	jge	.L15
	movl	4(%rdi), %eax
	movl	%edx, %ebp
	movq	%rcx, 88(%rsp)
	movq	%rsi, 80(%rsp)
	movq	%rdi, %r14
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L22:
	movl	(%r14), %r13d
	cmpl	%eax, %r13d
	jge	.L17
	movq	80(%rsp), %rsi
	movq	88(%rsp), %rcx
	leal	1(%rdx), %r12d
	movslq	%r12d, %r12
	movsd	16(%rsi), %xmm3
	movq	(%rcx), %rcx
	subq	%r12, %rdx
	movsd	24(%rsi), %xmm0
	movsd	(%rsi), %xmm7
	subsd	%xmm3, %xmm0
	movsd	%xmm3, 32(%rsp)
	leaq	(%rcx,%rdx,4), %r15
	pxor	%xmm3, %xmm3
	movsd	%xmm7, 48(%rsp)
	movl	%r13d, %edx
	movsd	%xmm0, 40(%rsp)
	cvtsi2sd	76(%rsp), %xmm3
	movsd	8(%rsi), %xmm0
	movsd	%xmm3, 64(%rsp)
	subsd	%xmm7, %xmm0
	movsd	%xmm0, 56(%rsp)
	.p2align 4,,10
	.p2align 3
.L21:
	subl	8(%r14), %r8d
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	subl	%edx, %eax
	xorl	%ebx, %ebx
	cvtsi2sd	%r8d, %xmm0
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm0, %xmm3
	movsd	40(%rsp), %xmm0
	mulsd	%xmm3, %xmm0
	addsd	32(%rsp), %xmm0
	movsd	%xmm0, 16(%rsp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	%r13d, %xmm0
	divsd	%xmm1, %xmm0
	mulsd	56(%rsp), %xmm0
	addsd	48(%rsp), %xmm0
	movsd	%xmm0, 24(%rsp)
	pxor	%xmm0, %xmm0
	movapd	%xmm0, %xmm5
	movapd	%xmm0, %xmm4
	jmp	.L19
	.p2align 4,,10
	.p2align 3
.L31:
	movsd	.LC1(%rip), %xmm6
	ucomisd	%xmm0, %xmm6
	jbe	.L18
	movapd	%xmm5, %xmm1
	movapd	%xmm4, %xmm0
	movapd	%xmm5, %xmm3
	addl	$1, %ebx
	movapd	%xmm4, %xmm2
	call	__muldc3@PLT
	movsd	24(%rsp), %xmm4
	movsd	16(%rsp), %xmm5
	addsd	%xmm0, %xmm4
	addsd	%xmm1, %xmm5
	movapd	%xmm4, %xmm0
	movsd	%xmm4, 8(%rsp)
	movapd	%xmm5, %xmm1
	movsd	%xmm5, (%rsp)
	call	cabs@PLT
	movsd	(%rsp), %xmm5
	movsd	8(%rsp), %xmm4
.L19:
	cmpl	%ebx, %ebp
	jg	.L31
.L18:
	movl	%ebx, (%r15,%r12,4)
	movl	4(%r14), %eax
	addl	$1, %r13d
	movslq	%r12d, %rdx
	addq	$1, %r12
	movl	12(%r14), %r8d
	cmpl	%eax, %r13d
	jge	.L17
	movl	(%r14), %edx
	movsd	64(%rsp), %xmm3
	jmp	.L21
	.p2align 4,,10
	.p2align 3
.L17:
	addl	$1, 76(%rsp)
	movl	76(%rsp), %edi
	cmpl	%r8d, %edi
	jl	.L22
.L15:
	addq	$104, %rsp
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
	.cfi_endproc
.LFE3150:
	.size	_ZN3OPT19GetNumberIterationsER6WindowIiERS0_IdEiRSt6vectorIiSaIiEE, .-_ZN3OPT19GetNumberIterationsER6WindowIiERS0_IdEiRSt6vectorIiSaIiEE
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"Time to generate fractal"
.LC3:
	.string	" = "
.LC5:
	.string	" [ms]"
	.text
	.p2align 4,,15
	.globl	_ZN3OPT20ComputeFractalPointsER6WindowIiERS0_IdEiRSt6vectorIiSaIiEE
	.type	_ZN3OPT20ComputeFractalPointsER6WindowIiERS0_IdEiRSt6vectorIiSaIiEE, @function
_ZN3OPT20ComputeFractalPointsER6WindowIiERS0_IdEiRSt6vectorIiSaIiEE:
.LFB3151:
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
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movq	%r14, %rcx
	movq	%rbx, %rdi
	movl	%r13d, %edx
	movq	%r12, %rsi
	movq	%rax, %rbp
	call	_ZN3OPT19GetNumberIterationsER6WindowIiERS0_IdEiRSt6vectorIiSaIiEE
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movl	$24, %edx
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movl	$3, %edx
	subq	%rbp, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	pxor	%xmm0, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rbx, %xmm0
	divsd	.LC4(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rbx
	movl	$5, %edx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L38
	cmpb	$0, 56(%rbp)
	je	.L34
	movsbl	67(%rbp), %esi
.L35:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	movq	%rax, %rdi
	jmp	_ZNSo5flushEv@PLT
	.p2align 4,,10
	.p2align 3
.L34:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L35
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L35
.L38:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE3151:
	.size	_ZN3OPT20ComputeFractalPointsER6WindowIiERS0_IdEiRSt6vectorIiSaIiEE, .-_ZN3OPT20ComputeFractalPointsER6WindowIiERS0_IdEiRSt6vectorIiSaIiEE
	.p2align 4,,15
	.globl	_ZN3OPT10MandelbrotEv
	.type	_ZN3OPT10MandelbrotEv, @function
_ZN3OPT10MandelbrotEv:
.LFB3164:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3164
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movl	$2560000, %edi
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	xorl	%r13d, %r13d
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movl	$2560000, %edx
	movq	%rax, %r15
	xorl	%esi, %esi
	movq	%rax, %rdi
	movq	%r15, %r12
	call	memset@PLT
	leaq	2560000(%r15), %rax
	movq	%rax, 32(%rsp)
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	movq	%rax, 40(%rsp)
	.p2align 4,,10
	.p2align 3
.L44:
	pxor	%xmm0, %xmm0
	xorl	%ebp, %ebp
	cvtsi2sd	%r13d, %xmm0
	divsd	.LC6(%rip), %xmm0
	mulsd	.LC7(%rip), %xmm0
	subsd	.LC8(%rip), %xmm0
	movsd	%xmm0, 24(%rsp)
	.p2align 4,,10
	.p2align 3
.L43:
	pxor	%xmm0, %xmm0
	xorl	%ebx, %ebx
	pxor	%xmm5, %xmm5
	pxor	%xmm4, %xmm4
	cvtsi2sd	%ebp, %xmm0
	divsd	.LC6(%rip), %xmm0
	mulsd	.LC9(%rip), %xmm0
	subsd	.LC10(%rip), %xmm0
	movsd	%xmm0, 16(%rsp)
	jmp	.L40
	.p2align 4,,10
	.p2align 3
.L42:
	cmpl	$500, %ebx
	je	.L41
.L40:
	movapd	%xmm5, %xmm2
	movapd	%xmm4, %xmm1
	movapd	%xmm5, %xmm0
	addl	$1, %ebx
	movapd	%xmm4, %xmm3
	call	__muldc3@PLT
	movsd	16(%rsp), %xmm5
	addsd	24(%rsp), %xmm1
	addsd	%xmm0, %xmm5
	movapd	%xmm5, %xmm0
	movsd	%xmm5, 8(%rsp)
	movsd	%xmm1, (%rsp)
	call	cabs@PLT
	movsd	.LC1(%rip), %xmm2
	movsd	(%rsp), %xmm4
	ucomisd	%xmm0, %xmm2
	movsd	8(%rsp), %xmm5
	ja	.L42
.L41:
	movl	%ebx, (%r12,%rbp,4)
	addq	$1, %rbp
	cmpq	$800, %rbp
	jne	.L43
	addl	$1, %r13d
	addq	$3200, %r12
	cmpl	$800, %r13d
	jne	.L44
	call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
	leaq	.LC2(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movl	$24, %edx
	movq	%rax, %rbx
.LEHB1:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	leaq	.LC3(%rip), %rsi
	leaq	_ZSt4cout(%rip), %rdi
	movl	$3, %edx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	subq	40(%rsp), %rbx
	pxor	%xmm0, %xmm0
	leaq	_ZSt4cout(%rip), %rdi
	cvtsi2sdq	%rbx, %xmm0
	divsd	.LC4(%rip), %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	leaq	.LC5(%rip), %rsi
	movl	$5, %edx
	movq	%rax, %rdi
	movq	%rax, %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L58
	cmpb	$0, 56(%rbp)
	je	.L46
	movsbl	67(%rbp), %esi
.L47:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movdqa	.LC11(%rip), %xmm0
	movl	$2560000, %edi
	movq	$0, 32(%r14)
	movups	%xmm0, (%r14)
	pxor	%xmm0, %xmm0
	movups	%xmm0, 16(%r14)
	call	_Znwm@PLT
	cmpq	%r15, 32(%rsp)
	leaq	2560000(%rax), %rbx
	movq	%rax, 16(%r14)
	movq	%rax, 24(%r14)
	movq	%rbx, 32(%r14)
	je	.L48
	movl	$2560000, %edx
	movq	%r15, %rsi
	movq	%rax, %rdi
	call	memcpy@PLT
.L48:
	movq	%rbx, 24(%r14)
	movl	$500, 40(%r14)
	movq	%r15, %rdi
	call	_ZdlPv@PLT
	addq	$56, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r14, %rax
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
.L46:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movl	$10, %esi
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L47
	movq	%rbp, %rdi
	call	*%rax
.LEHE1:
	movsbl	%al, %esi
	jmp	.L47
.L51:
	movq	%rax, %rbx
	movq	%r15, %rdi
	call	_ZdlPv@PLT
	movq	%rbx, %rdi
.LEHB2:
	call	_Unwind_Resume@PLT
.LEHE2:
.L58:
.LEHB3:
	call	_ZSt16__throw_bad_castv@PLT
.LEHE3:
	.cfi_endproc
.LFE3164:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA3164:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3164-.LLSDACSB3164
.LLSDACSB3164:
	.uleb128 .LEHB0-.LFB3164
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3164
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L51-.LFB3164
	.uleb128 0
	.uleb128 .LEHB2-.LFB3164
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB3164
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L51-.LFB3164
	.uleb128 0
.LLSDACSE3164:
	.text
	.size	_ZN3OPT10MandelbrotEv, .-_ZN3OPT10MandelbrotEv
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.type	_GLOBAL__sub_I__ZN3OPT5ScaleER6WindowIiERS0_IdESt7complexIdE, @function
_GLOBAL__sub_I__ZN3OPT5ScaleER6WindowIiERS0_IdESt7complexIdE:
.LFB3786:
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
.LFE3786:
	.size	_GLOBAL__sub_I__ZN3OPT5ScaleER6WindowIiERS0_IdESt7complexIdE, .-_GLOBAL__sub_I__ZN3OPT5ScaleER6WindowIiERS0_IdESt7complexIdE
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN3OPT5ScaleER6WindowIiERS0_IdESt7complexIdE
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC1:
	.long	0
	.long	1073741824
	.align 8
.LC4:
	.long	0
	.long	1093567616
	.align 8
.LC6:
	.long	0
	.long	1082720256
	.align 8
.LC7:
	.long	858993459
	.long	1074475827
	.align 8
.LC8:
	.long	858993459
	.long	1073427251
	.align 8
.LC9:
	.long	858993460
	.long	1074475827
	.align 8
.LC10:
	.long	2576980378
	.long	1073846681
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
