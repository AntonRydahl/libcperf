	.text
	.file	"vararg.cpp"
	.globl	_ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2_ # -- Begin function _ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2_
	.p2align	4, 0x90
	.type	_ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2_,@function
_ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2_: # @_ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	subq	$184, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rdi, %rbx
	movl	%esi, 4(%rsp)
	movl	16(%rdi), %eax
	movl	%eax, 12(%rsp)
	movl	$1, 8(%rsp)
	movq	8(%rdi), %rcx
	testl	%esi, %esi
	jns	.LBB0_2
# %bb.1:                                # %if.then
	movl	$0, 4(%rsp)
.LBB0_2:                                # %if.end
	leaq	12(%rsp), %rdx
	movq	%rdx, 48(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 56(%rsp)
	movq	%rcx, 24(%rsp)
	leaq	4(%rsp), %rcx
	movq	%rcx, 64(%rsp)
	movq	%rcx, 32(%rsp)
	leaq	8(%rsp), %rcx
	movq	%rcx, 72(%rsp)
	movq	%rcx, 40(%rsp)
	movabsq	$17179869186, %rcx              # imm = 0x400000002
	movq	%rcx, 80(%rsp)
	leaq	48(%rsp), %rcx
	movq	%rcx, 88(%rsp)
	leaq	16(%rsp), %rcx
	movq	%rcx, 96(%rsp)
	leaq	.L.offload_sizes.7(%rip), %rcx
	movq	%rcx, 104(%rsp)
	leaq	.L.offload_maptypes.8(%rip), %rcx
	movq	%rcx, 112(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 120(%rsp)
	movq	%rax, 136(%rsp)
	movups	%xmm0, 144(%rsp)
	movups	%xmm0, 160(%rsp)
	movl	$0, 176(%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	movq	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28.region_id@GOTPCREL(%rip), %r8
	leaq	80(%rsp), %r9
	movq	$-1, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__tgt_target_kernel@PLT
	movq	_ZSt4cout@GOTPCREL(%rip), %r14
	leaq	.L.str(%rip), %rsi
	movl	$26, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r14
	testq	%r14, %r14
	je	.LBB0_9
# %bb.3:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r14)
	je	.LBB0_5
# %bb.4:                                # %if.then.i2.i.i
	movzbl	67(%r14), %eax
	jmp	.LBB0_6
.LBB0_5:                                # %if.end.i.i.i
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB0_6:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	cmpb	$0, 28(%rbx)
	je	.LBB0_7
# %bb.8:                                # %if.end8
	addq	$184, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_7:                                # %if.then7
	.cfi_def_cfa_offset 208
	movq	%rbx, %rdi
	callq	_ZN7gpumath5ArrayIiE7to_hostEv
	addq	$184, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	retq
.LBB0_9:                                # %if.then.i.i.i
	.cfi_def_cfa_offset 208
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end0:
	.size	_ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2_, .Lfunc_end0-_ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath5ArrayIiE7to_hostEv,"axG",@progbits,_ZN7gpumath5ArrayIiE7to_hostEv,comdat
	.weak	_ZN7gpumath5ArrayIiE7to_hostEv  # -- Begin function _ZN7gpumath5ArrayIiE7to_hostEv
	.p2align	4, 0x90
	.type	_ZN7gpumath5ArrayIiE7to_hostEv,@function
_ZN7gpumath5ArrayIiE7to_hostEv:         # @_ZN7gpumath5ArrayIiE7to_hostEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movq	8(%rbx), %rsi
	movslq	16(%rbx), %rdx
	shlq	$2, %rdx
	movl	20(%rbx), %r9d
	movl	24(%rbx), %eax
	movl	%eax, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	omp_target_memcpy@PLT
	testl	%eax, %eax
	je	.LBB1_6
# %bb.1:                                # %if.then
	movl	%eax, %ebp
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.1(%rip), %rsi
	movl	$16, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	24(%rbx), %esi
	movq	%r14, %rdi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rbx
	leaq	.L.str.2(%rip), %rsi
	movl	$28, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB1_7
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r14)
	je	.LBB1_4
# %bb.3:                                # %if.then.i2.i.i
	movzbl	67(%r14), %eax
	jmp	.LBB1_5
.LBB1_6:                                # %if.else
	movb	$0, 28(%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_4:                                # %if.end.i.i.i
	.cfi_def_cfa_offset 48
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB1_5:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT               # TAILCALL
.LBB1_7:                                # %if.then.i.i.i
	.cfi_def_cfa_offset 48
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end1:
	.size	_ZN7gpumath5ArrayIiE7to_hostEv, .Lfunc_end1-_ZN7gpumath5ArrayIiE7to_hostEv
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %invoke.cont8
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	leaq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
	movl	$1752066419, 24(%rsp)           # imm = 0x686E6973
	movw	$102, 28(%rsp)
	movq	$5, 16(%rsp)
	leaq	56(%rsp), %r13
	movq	%r13, 40(%rsp)
	movabsq	$8313482654224703327, %rax      # imm = 0x735F6C6D636F5F5F
	movq	%rax, 56(%rsp)
	movabsq	$3617347485668632947, %rcx      # imm = 0x3233665F686E6973
	movq	%rcx, 63(%rsp)
	movq	$15, 48(%rsp)
	movb	$0, 71(%rsp)
	leaq	184(%rsp), %r14
	movq	%r14, 168(%rsp)
	movl	$1752066419, 184(%rsp)          # imm = 0x686E6973
	movw	$102, 188(%rsp)
	movq	$5, 176(%rsp)
	leaq	88(%rsp), %r15
	movq	%r15, 72(%rsp)
	movq	%rcx, 95(%rsp)
	movq	%rax, 88(%rsp)
	movq	$15, 80(%rsp)
	movb	$0, 103(%rsp)
.Ltmp0:
	leaq	168(%rsp), %rdi
	leaq	72(%rsp), %rsi
	callq	_Z7timingsIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
.Ltmp1:
# %bb.1:                                # %invoke.cont10
	movq	72(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB2_3
# %bb.2:                                # %if.then.i.i67
	callq	_ZdlPv@PLT
.LBB2_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	168(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB2_5
# %bb.4:                                # %if.then.i.i69
	callq	_ZdlPv@PLT
.LBB2_5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
	leaq	152(%rsp), %rbp
	movq	%rbp, 136(%rsp)
	movq	8(%rsp), %r14
	movq	16(%rsp), %rbx
	movq	%rbp, %r15
	cmpq	$16, %rbx
	jb	.LBB2_14
# %bb.6:                                # %if.then.i.i78
	testq	%rbx, %rbx
	js	.LBB2_7
# %bb.9:                                # %if.end11.i.i.i80
	movq	%rbx, %rdi
	incq	%rdi
	js	.LBB2_10
# %bb.12:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i83
.Ltmp3:
	callq	_Znwm@PLT
.Ltmp4:
# %bb.13:                               # %call5.i.i.i.i.i5.i.noexc88
	movq	%rax, %r15
	movq	%rax, 136(%rsp)
	movq	%rbx, 152(%rsp)
.LBB2_14:                               # %if.end.i.i73
	testq	%rbx, %rbx
	je	.LBB2_18
# %bb.15:                               # %if.end.i.i73
	cmpq	$1, %rbx
	jne	.LBB2_17
# %bb.16:                               # %if.then.i.i.i.i76
	movzbl	(%r14), %eax
	movb	%al, (%r15)
	jmp	.LBB2_18
.LBB2_17:                               # %if.end.i.i.i.i.i77
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.LBB2_18:                               # %invoke.cont12
	movq	%rbx, 144(%rsp)
	movb	$0, (%r15,%rbx)
	leaq	120(%rsp), %r12
	movq	%r12, 104(%rsp)
	movq	40(%rsp), %r14
	movq	48(%rsp), %rbx
	movq	%r12, %r15
	cmpq	$16, %rbx
	jb	.LBB2_27
# %bb.19:                               # %if.then.i.i98
	testq	%rbx, %rbx
	js	.LBB2_20
# %bb.22:                               # %if.end11.i.i.i100
	movq	%rbx, %rdi
	incq	%rdi
	js	.LBB2_23
# %bb.25:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i103
.Ltmp5:
	callq	_Znwm@PLT
.Ltmp6:
# %bb.26:                               # %call5.i.i.i.i.i5.i.noexc108
	movq	%rax, %r15
	movq	%rax, 104(%rsp)
	movq	%rbx, 120(%rsp)
.LBB2_27:                               # %if.end.i.i93
	testq	%rbx, %rbx
	je	.LBB2_31
# %bb.28:                               # %if.end.i.i93
	cmpq	$1, %rbx
	jne	.LBB2_30
# %bb.29:                               # %if.then.i.i.i.i96
	movzbl	(%r14), %eax
	movb	%al, (%r15)
	jmp	.LBB2_31
.LBB2_30:                               # %if.end.i.i.i.i.i97
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.LBB2_31:                               # %invoke.cont15
	movq	%rbx, 112(%rsp)
	movb	$0, (%r15,%rbx)
.Ltmp7:
	leaq	136(%rsp), %rdi
	leaq	104(%rsp), %rsi
	callq	_Z11correctnessIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
.Ltmp8:
# %bb.32:                               # %invoke.cont17
	movq	104(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB2_34
# %bb.33:                               # %if.then.i.i112
	callq	_ZdlPv@PLT
.LBB2_34:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
	movq	136(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.LBB2_36
# %bb.35:                               # %if.then.i.i115
	callq	_ZdlPv@PLT
.LBB2_36:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
	movq	40(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB2_38
# %bb.37:                               # %if.then.i.i118
	callq	_ZdlPv@PLT
.LBB2_38:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB2_40
# %bb.39:                               # %if.then.i.i121
	callq	_ZdlPv@PLT
.LBB2_40:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
	xorl	%eax, %eax
	addq	$200, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB2_10:                               # %if.end.i.i.i.i.i.i84
	.cfi_def_cfa_offset 256
.Ltmp15:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp16:
# %bb.11:                               # %.noexc87
.LBB2_23:                               # %if.end.i.i.i.i.i.i104
.Ltmp10:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp11:
# %bb.24:                               # %.noexc107
.LBB2_7:                                # %if.then.i.i.i85
.Ltmp17:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp18:
# %bb.8:                                # %.noexc86
.LBB2_20:                               # %if.then.i.i.i105
.Ltmp12:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp13:
# %bb.21:                               # %.noexc106
.LBB2_46:                               # %lpad16
.Ltmp9:
	movq	%rax, %rbx
	movq	104(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB2_48
# %bb.47:                               # %if.then.i.i130
	callq	_ZdlPv@PLT
	jmp	.LBB2_48
.LBB2_42:                               # %lpad9
.Ltmp2:
	movq	%rax, %rbx
	movq	72(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB2_44
# %bb.43:                               # %if.then.i.i124
	callq	_ZdlPv@PLT
.LBB2_44:                               # %ehcleanup
	movq	168(%rsp), %rdi
	cmpq	%r14, %rdi
	jne	.LBB2_49
	jmp	.LBB2_50
.LBB2_45:                               # %lpad14
.Ltmp14:
	movq	%rax, %rbx
.LBB2_48:                               # %ehcleanup19
	movq	136(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.LBB2_50
.LBB2_49:                               # %if.then.i.i133
	callq	_ZdlPv@PLT
	jmp	.LBB2_50
.LBB2_41:                               # %lpad4
.Ltmp19:
	movq	%rax, %rbx
.LBB2_50:                               # %ehcleanup20
	movq	40(%rsp), %rdi
	cmpq	%r13, %rdi
	jne	.LBB2_51
# %bb.52:                               # %ehcleanup21
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rax
	cmpq	%rax, %rdi
	jne	.LBB2_53
.LBB2_54:                               # %ehcleanup23
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB2_51:                               # %if.then.i.i136
	callq	_ZdlPv@PLT
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB2_54
.LBB2_53:                               # %if.then.i.i139
	callq	_ZdlPv@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp5-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp8-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin0          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Lfunc_end2-.Ltmp13            #   Call between .Ltmp13 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z7timingsIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
.LCPI3_0:
	.long	0xc0490fdb                      # float -3.14159274
.LCPI3_1:
	.long	0x40490fdb                      # float 3.14159274
	.section	.text._Z7timingsIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,"axG",@progbits,_Z7timingsIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,comdat
	.weak	_Z7timingsIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	.p2align	4, 0x90
	.type	_Z7timingsIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,@function
_Z7timingsIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_: # @_Z7timingsIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$168, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	omp_get_default_device@PLT
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
	leaq	136(%rsp), %r15
	movq	%r15, %rdi
	movl	$536870911, %esi                # imm = 0x1FFFFFFF
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIfEC2Eiii
.Ltmp20:
	movss	.LCPI3_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movq	%r15, %rdi
	callq	_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_
.Ltmp21:
# %bb.1:                                # %invoke.cont
.Ltmp23:
	callq	omp_get_default_device@PLT
.Ltmp24:
# %bb.2:                                # %invoke.cont2
.Ltmp25:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp26:
# %bb.3:                                # %invoke.cont4
.Ltmp27:
	leaq	104(%rsp), %rdi
	movl	$536870911, %esi                # imm = 0x1FFFFFFF
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIfEC2Eiii
.Ltmp28:
# %bb.4:                                # %invoke.cont6
.Ltmp30:
	callq	omp_get_default_device@PLT
.Ltmp31:
# %bb.5:                                # %invoke.cont8
.Ltmp32:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp33:
# %bb.6:                                # %invoke.cont10
.Ltmp34:
	leaq	72(%rsp), %rdi
	movl	$536870911, %esi                # imm = 0x1FFFFFFF
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIfEC2Eiii
.Ltmp35:
# %bb.7:                                # %invoke.cont12
	leaq	56(%rsp), %r13
	movq	%r13, 40(%rsp)
	movq	(%r14), %r15
	movq	8(%r14), %r14
	movq	%r13, %r12
	cmpq	$16, %r14
	jb	.LBB3_12
# %bb.8:                                # %if.then.i.i
	testq	%r14, %r14
	js	.LBB3_38
# %bb.9:                                # %if.end11.i.i.i
	movq	%r14, %rdi
	incq	%rdi
	js	.LBB3_34
# %bb.10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
.Ltmp37:
	callq	_Znwm@PLT
.Ltmp38:
# %bb.11:                               # %call5.i.i.i.i.i5.i.noexc
	movq	%rax, %r12
	movq	%rax, 40(%rsp)
	movq	%r14, 56(%rsp)
.LBB3_12:                               # %if.end.i.i
	testq	%r14, %r14
	je	.LBB3_16
# %bb.13:                               # %if.end.i.i
	cmpq	$1, %r14
	jne	.LBB3_15
# %bb.14:                               # %if.then.i.i.i.i
	movzbl	(%r15), %eax
	movb	%al, (%r12)
	jmp	.LBB3_16
.LBB3_15:                               # %if.end.i.i.i.i.i
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB3_16:                               # %invoke.cont14
	movq	%r14, 48(%rsp)
	movb	$0, (%r12,%r14)
	leaq	24(%rsp), %r12
	movq	%r12, 8(%rsp)
	movq	(%rbx), %r14
	movq	8(%rbx), %rbx
	movq	%r12, %r15
	cmpq	$16, %rbx
	jb	.LBB3_21
# %bb.17:                               # %if.then.i.i15
	testq	%rbx, %rbx
	js	.LBB3_40
# %bb.18:                               # %if.end11.i.i.i17
	movq	%rbx, %rdi
	incq	%rdi
	js	.LBB3_36
# %bb.19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i20
.Ltmp39:
	callq	_Znwm@PLT
.Ltmp40:
# %bb.20:                               # %call5.i.i.i.i.i5.i.noexc25
	movq	%rax, %r15
	movq	%rax, 8(%rsp)
	movq	%rbx, 24(%rsp)
.LBB3_21:                               # %if.end.i.i10
	testq	%rbx, %rbx
	je	.LBB3_25
# %bb.22:                               # %if.end.i.i10
	cmpq	$1, %rbx
	jne	.LBB3_24
# %bb.23:                               # %if.then.i.i.i.i13
	movzbl	(%r14), %eax
	movb	%al, (%r15)
	jmp	.LBB3_25
.LBB3_24:                               # %if.end.i.i.i.i.i14
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.LBB3_25:                               # %invoke.cont17
	movq	%rbx, 16(%rsp)
	movb	$0, (%r15,%rbx)
.Ltmp41:
	leaq	136(%rsp), %rdi
	leaq	104(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	40(%rsp), %rcx
	leaq	8(%rsp), %r8
	callq	_ZN7gpumath12compare_timeIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
.Ltmp42:
# %bb.26:                               # %invoke.cont19
	movq	8(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB3_28
# %bb.27:                               # %if.then.i.i29
	callq	_ZdlPv@PLT
.LBB3_28:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	40(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB3_30
# %bb.29:                               # %if.then.i.i31
	callq	_ZdlPv@PLT
.LBB3_30:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
	movq	72(%rsp), %rdi
	callq	free@PLT
	movq	$0, 72(%rsp)
	movq	80(%rsp), %rdi
	movl	96(%rsp), %esi
.Ltmp44:
	callq	omp_target_free@PLT
.Ltmp45:
# %bb.31:                               # %_ZN7gpumath5ArrayIfED2Ev.exit
	movq	104(%rsp), %rdi
	callq	free@PLT
	movq	$0, 104(%rsp)
	movq	112(%rsp), %rdi
	movl	128(%rsp), %esi
.Ltmp47:
	callq	omp_target_free@PLT
.Ltmp48:
# %bb.32:                               # %_ZN7gpumath5ArrayIfED2Ev.exit36
	movq	136(%rsp), %rdi
	callq	free@PLT
	movq	$0, 136(%rsp)
	movq	144(%rsp), %rdi
	movl	160(%rsp), %esi
.Ltmp50:
	callq	omp_target_free@PLT
.Ltmp51:
# %bb.33:                               # %_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev.exit
	addq	$168, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB3_34:                               # %if.end.i.i.i.i.i.i
	.cfi_def_cfa_offset 224
.Ltmp58:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp59:
# %bb.35:                               # %.noexc6
.LBB3_36:                               # %if.end.i.i.i.i.i.i21
.Ltmp53:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp54:
# %bb.37:                               # %.noexc24
.LBB3_38:                               # %if.then.i.i.i
.Ltmp60:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp61:
# %bb.39:                               # %.noexc
.LBB3_40:                               # %if.then.i.i.i22
.Ltmp55:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp56:
# %bb.41:                               # %.noexc23
.LBB3_42:                               # %terminate.lpad.i.i
.Ltmp52:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB3_43:                               # %terminate.lpad.i35
.Ltmp49:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB3_44:                               # %terminate.lpad.i
.Ltmp46:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB3_45:                               # %lpad18
.Ltmp43:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB3_52
# %bb.46:                               # %if.then.i.i38
	callq	_ZdlPv@PLT
	jmp	.LBB3_52
.LBB3_47:                               # %lpad
.Ltmp22:
	jmp	.LBB3_48
.LBB3_49:                               # %lpad7
.Ltmp36:
	movq	%rax, %rbx
	jmp	.LBB3_56
.LBB3_50:                               # %lpad1
.Ltmp29:
.LBB3_48:                               # %lpad
	movq	%rax, %rbx
	leaq	136(%rsp), %rdi
	callq	_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB3_51:                               # %lpad16
.Ltmp57:
	movq	%rax, %rbx
.LBB3_52:                               # %ehcleanup
	movq	40(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB3_55
# %bb.53:                               # %if.then.i.i41
	callq	_ZdlPv@PLT
	jmp	.LBB3_55
.LBB3_54:                               # %lpad13
.Ltmp62:
	movq	%rax, %rbx
.LBB3_55:                               # %ehcleanup20
	leaq	72(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIfED2Ev
.LBB3_56:                               # %ehcleanup21
	leaq	104(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIfED2Ev
	leaq	136(%rsp), %rdi
	callq	_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	_Z7timingsIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_, .Lfunc_end3-_Z7timingsIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	.cfi_endproc
	.section	.gcc_except_table._Z7timingsIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,"aG",@progbits,_Z7timingsIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,comdat
	.p2align	2, 0x0
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp20-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin1          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp28-.Ltmp23                #   Call between .Ltmp23 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin1          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp35-.Ltmp30                #   Call between .Ltmp30 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin1          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp62-.Lfunc_begin1          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp57-.Lfunc_begin1          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin1          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin1          #     jumps to .Ltmp46
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp47-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin1          #     jumps to .Ltmp49
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp50-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin1          #     jumps to .Ltmp52
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp58-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp62-.Lfunc_begin1          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp57-.Lfunc_begin1          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin1          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin1          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Lfunc_end3-.Ltmp56            #   Call between .Ltmp56 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z11correctnessIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
.LCPI4_0:
	.long	0xc0490fdb                      # float -3.14159274
.LCPI4_1:
	.long	0x40490fdb                      # float 3.14159274
	.section	.text._Z11correctnessIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,"axG",@progbits,_Z11correctnessIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,comdat
	.weak	_Z11correctnessIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	.p2align	4, 0x90
	.type	_Z11correctnessIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,@function
_Z11correctnessIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_: # @_Z11correctnessIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	omp_get_default_device@PLT
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
	leaq	104(%rsp), %r15
	movq	%r15, %rdi
	movl	$536870911, %esi                # imm = 0x1FFFFFFF
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIfEC2Eiii
.Ltmp63:
	movq	%r15, %rdi
	movl	$2048, %esi                     # imm = 0x800
	callq	_ZN7gpumath5ArrayIfE7reshapeEi
.Ltmp64:
# %bb.1:                                # %invoke.cont
.Ltmp65:
	leaq	104(%rsp), %rdi
	movss	.LCPI4_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	callq	_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_
.Ltmp66:
# %bb.2:                                # %invoke.cont2
.Ltmp68:
	callq	omp_get_default_device@PLT
.Ltmp69:
# %bb.3:                                # %invoke.cont4
.Ltmp70:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp71:
# %bb.4:                                # %invoke.cont6
.Ltmp72:
	leaq	72(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIfEC2Eiii
.Ltmp73:
# %bb.5:                                # %invoke.cont8
.Ltmp75:
	callq	omp_get_default_device@PLT
.Ltmp76:
# %bb.6:                                # %invoke.cont10
.Ltmp77:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp78:
# %bb.7:                                # %invoke.cont12
.Ltmp79:
	leaq	168(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIfEC2Eiii
.Ltmp80:
# %bb.8:                                # %invoke.cont14
.Ltmp82:
	callq	omp_get_default_device@PLT
.Ltmp83:
# %bb.9:                                # %invoke.cont16
.Ltmp84:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp85:
# %bb.10:                               # %invoke.cont18
.Ltmp86:
	leaq	136(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIfEC2Eiii
.Ltmp87:
# %bb.11:                               # %invoke.cont20
.Ltmp89:
	leaq	72(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIfE7to_hostEv
.Ltmp90:
# %bb.12:                               # %invoke.cont22
	leaq	56(%rsp), %r13
	movq	%r13, 40(%rsp)
	movq	(%r14), %r15
	movq	8(%r14), %r14
	movq	%r13, %r12
	cmpq	$16, %r14
	jb	.LBB4_17
# %bb.13:                               # %if.then.i.i
	testq	%r14, %r14
	js	.LBB4_44
# %bb.14:                               # %if.end11.i.i.i
	movq	%r14, %rdi
	incq	%rdi
	js	.LBB4_40
# %bb.15:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
.Ltmp91:
	callq	_Znwm@PLT
.Ltmp92:
# %bb.16:                               # %call5.i.i.i.i.i5.i.noexc
	movq	%rax, %r12
	movq	%rax, 40(%rsp)
	movq	%r14, 56(%rsp)
.LBB4_17:                               # %if.end.i.i
	testq	%r14, %r14
	je	.LBB4_21
# %bb.18:                               # %if.end.i.i
	cmpq	$1, %r14
	jne	.LBB4_20
# %bb.19:                               # %if.then.i.i.i.i
	movzbl	(%r15), %eax
	movb	%al, (%r12)
	jmp	.LBB4_21
.LBB4_20:                               # %if.end.i.i.i.i.i
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB4_21:                               # %invoke.cont23
	movq	%r14, 48(%rsp)
	movb	$0, (%r12,%r14)
	leaq	24(%rsp), %r12
	movq	%r12, 8(%rsp)
	movq	(%rbx), %r14
	movq	8(%rbx), %rbx
	movq	%r12, %r15
	cmpq	$16, %rbx
	jb	.LBB4_26
# %bb.22:                               # %if.then.i.i16
	testq	%rbx, %rbx
	js	.LBB4_46
# %bb.23:                               # %if.end11.i.i.i18
	movq	%rbx, %rdi
	incq	%rdi
	js	.LBB4_42
# %bb.24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i21
.Ltmp93:
	callq	_Znwm@PLT
.Ltmp94:
# %bb.25:                               # %call5.i.i.i.i.i5.i.noexc26
	movq	%rax, %r15
	movq	%rax, 8(%rsp)
	movq	%rbx, 24(%rsp)
.LBB4_26:                               # %if.end.i.i11
	testq	%rbx, %rbx
	je	.LBB4_30
# %bb.27:                               # %if.end.i.i11
	cmpq	$1, %rbx
	jne	.LBB4_29
# %bb.28:                               # %if.then.i.i.i.i14
	movzbl	(%r14), %eax
	movb	%al, (%r15)
	jmp	.LBB4_30
.LBB4_29:                               # %if.end.i.i.i.i.i15
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.LBB4_30:                               # %invoke.cont26
	movq	%rbx, 16(%rsp)
	movb	$0, (%r15,%rbx)
.Ltmp95:
	leaq	104(%rsp), %rdi
	leaq	72(%rsp), %rsi
	leaq	168(%rsp), %rdx
	leaq	136(%rsp), %rcx
	leaq	40(%rsp), %r8
	leaq	8(%rsp), %r9
	callq	_ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
.Ltmp96:
# %bb.31:                               # %invoke.cont28
	movq	8(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB4_33
# %bb.32:                               # %if.then.i.i30
	callq	_ZdlPv@PLT
.LBB4_33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	40(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB4_35
# %bb.34:                               # %if.then.i.i32
	callq	_ZdlPv@PLT
.LBB4_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
	movq	136(%rsp), %rdi
	callq	free@PLT
	movq	$0, 136(%rsp)
	movq	144(%rsp), %rdi
	movl	160(%rsp), %esi
.Ltmp98:
	callq	omp_target_free@PLT
.Ltmp99:
# %bb.36:                               # %_ZN7gpumath5ArrayIfED2Ev.exit
	movq	168(%rsp), %rdi
	callq	free@PLT
	movq	$0, 168(%rsp)
	movq	176(%rsp), %rdi
	movl	192(%rsp), %esi
.Ltmp101:
	callq	omp_target_free@PLT
.Ltmp102:
# %bb.37:                               # %_ZN7gpumath5ArrayIfED2Ev.exit37
	movq	72(%rsp), %rdi
	callq	free@PLT
	movq	$0, 72(%rsp)
	movq	80(%rsp), %rdi
	movl	96(%rsp), %esi
.Ltmp104:
	callq	omp_target_free@PLT
.Ltmp105:
# %bb.38:                               # %_ZN7gpumath5ArrayIfED2Ev.exit41
	movq	104(%rsp), %rdi
	callq	free@PLT
	movq	$0, 104(%rsp)
	movq	112(%rsp), %rdi
	movl	128(%rsp), %esi
.Ltmp107:
	callq	omp_target_free@PLT
.Ltmp108:
# %bb.39:                               # %_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev.exit
	addq	$200, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB4_40:                               # %if.end.i.i.i.i.i.i
	.cfi_def_cfa_offset 256
.Ltmp115:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp116:
# %bb.41:                               # %.noexc7
.LBB4_42:                               # %if.end.i.i.i.i.i.i22
.Ltmp110:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp111:
# %bb.43:                               # %.noexc25
.LBB4_44:                               # %if.then.i.i.i
.Ltmp117:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp118:
# %bb.45:                               # %.noexc
.LBB4_46:                               # %if.then.i.i.i23
.Ltmp112:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp113:
# %bb.47:                               # %.noexc24
.LBB4_48:                               # %terminate.lpad.i.i
.Ltmp109:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB4_49:                               # %terminate.lpad.i40
.Ltmp106:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB4_50:                               # %terminate.lpad.i36
.Ltmp103:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB4_51:                               # %terminate.lpad.i
.Ltmp100:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB4_52:                               # %lpad27
.Ltmp97:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB4_60
# %bb.53:                               # %if.then.i.i43
	callq	_ZdlPv@PLT
	jmp	.LBB4_60
.LBB4_54:                               # %lpad
.Ltmp67:
	jmp	.LBB4_55
.LBB4_56:                               # %lpad15
.Ltmp88:
	movq	%rax, %rbx
	jmp	.LBB4_64
.LBB4_57:                               # %lpad9
.Ltmp81:
	movq	%rax, %rbx
	jmp	.LBB4_65
.LBB4_58:                               # %lpad3
.Ltmp74:
.LBB4_55:                               # %lpad
	movq	%rax, %rbx
	leaq	104(%rsp), %rdi
	callq	_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB4_59:                               # %lpad25
.Ltmp114:
	movq	%rax, %rbx
.LBB4_60:                               # %ehcleanup
	movq	40(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB4_63
# %bb.61:                               # %if.then.i.i46
	callq	_ZdlPv@PLT
	jmp	.LBB4_63
.LBB4_62:                               # %lpad21
.Ltmp119:
	movq	%rax, %rbx
.LBB4_63:                               # %ehcleanup29
	leaq	136(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIfED2Ev
.LBB4_64:                               # %ehcleanup30
	leaq	168(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIfED2Ev
.LBB4_65:                               # %ehcleanup32
	leaq	72(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIfED2Ev
	leaq	104(%rsp), %rdi
	callq	_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end4:
	.size	_Z11correctnessIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_, .Lfunc_end4-_Z11correctnessIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	.cfi_endproc
	.section	.gcc_except_table._Z11correctnessIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,"aG",@progbits,_Z11correctnessIJfEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,comdat
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp63-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp66-.Ltmp63                #   Call between .Ltmp63 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin2          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp73-.Ltmp68                #   Call between .Ltmp68 and .Ltmp73
	.uleb128 .Ltmp74-.Lfunc_begin2          #     jumps to .Ltmp74
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp80-.Ltmp75                #   Call between .Ltmp75 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin2          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp87-.Ltmp82                #   Call between .Ltmp82 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin2          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp92-.Ltmp89                #   Call between .Ltmp89 and .Ltmp92
	.uleb128 .Ltmp119-.Lfunc_begin2         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin2          # >> Call Site 7 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin2          # >> Call Site 8 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp114-.Lfunc_begin2         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin2          # >> Call Site 9 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin2          # >> Call Site 10 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin2          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin2          # >> Call Site 11 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin2         #     jumps to .Ltmp100
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp101-.Lfunc_begin2         # >> Call Site 12 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin2         #     jumps to .Ltmp103
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp104-.Lfunc_begin2         # >> Call Site 13 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin2         #     jumps to .Ltmp106
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp107-.Lfunc_begin2         # >> Call Site 14 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin2         #     jumps to .Ltmp109
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp115-.Lfunc_begin2         # >> Call Site 15 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp119-.Lfunc_begin2         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp114-.Lfunc_begin2         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp119-.Lfunc_begin2         #     jumps to .Ltmp119
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin2         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Lfunc_end4-.Ltmp113           #   Call between .Ltmp113 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	__cxa_begin_catch@PLT
	callq	_ZSt9terminatev@PLT
.Lfunc_end5:
	.size	__clang_call_terminate, .Lfunc_end5-__clang_call_terminate
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_
.LCPI6_0:
	.quad	0xbff0000000000000              # double -1
	.section	.text._ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_,"axG",@progbits,_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_,comdat
	.weak	_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_
	.p2align	4, 0x90
	.type	_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_,@function
_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_: # @_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$192, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movss	%xmm0, 20(%rsp)
	movl	16(%rdi), %eax
	movl	%eax, 16(%rsp)
	subss	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	cvtss2sd	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm0
	addsd	.LCPI6_0(%rip), %xmm0
	divsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, 12(%rsp)
	movq	8(%rdi), %rcx
	leaq	16(%rsp), %rdx
	movq	%rdx, 56(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 64(%rsp)
	movq	%rcx, 32(%rsp)
	leaq	20(%rsp), %rcx
	movq	%rcx, 72(%rsp)
	movq	%rcx, 40(%rsp)
	leaq	12(%rsp), %rcx
	movq	%rcx, 80(%rsp)
	movq	%rcx, 48(%rsp)
	movabsq	$17179869186, %rcx              # imm = 0x400000002
	movq	%rcx, 88(%rsp)
	leaq	56(%rsp), %rcx
	movq	%rcx, 96(%rsp)
	leaq	24(%rsp), %rcx
	movq	%rcx, 104(%rsp)
	leaq	.L.offload_sizes.7(%rip), %rcx
	movq	%rcx, 112(%rsp)
	leaq	.L.offload_maptypes.8(%rip), %rcx
	movq	%rcx, 120(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 128(%rsp)
	movq	%rax, 144(%rsp)
	movups	%xmm0, 152(%rsp)
	movups	%xmm0, 168(%rsp)
	movl	$0, 184(%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	movq	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14.region_id@GOTPCREL(%rip), %r8
	leaq	88(%rsp), %r9
	movq	$-1, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__tgt_target_kernel@PLT
	movq	_ZSt4cout@GOTPCREL(%rip), %r14
	leaq	.L.str.9(%rip), %rsi
	movl	$18, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	$32, %esi
	movq	%r14, %rdi
	callq	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %r14
	leaq	.L.str.10(%rip), %rsi
	movl	$7, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r15
	testq	%r15, %r15
	je	.LBB6_7
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r15)
	je	.LBB6_3
# %bb.2:                                # %if.then.i2.i.i
	movzbl	67(%r15), %eax
	jmp	.LBB6_4
.LBB6_3:                                # %if.end.i.i.i
	movq	%r15, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	movq	%r15, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB6_4:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	cmpb	$0, 28(%rbx)
	jne	.LBB6_6
# %bb.5:                                # %if.then
	movq	%rbx, %rdi
	callq	_ZN7gpumath5ArrayIfE7to_hostEv
.LBB6_6:                                # %if.end
	addq	$192, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB6_7:                                # %if.then.i.i.i
	.cfi_def_cfa_offset 224
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end6:
	.size	_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_, .Lfunc_end6-_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath5ArrayIfEC2Eiii,"axG",@progbits,_ZN7gpumath5ArrayIfEC2Eiii,comdat
	.weak	_ZN7gpumath5ArrayIfEC2Eiii      # -- Begin function _ZN7gpumath5ArrayIfEC2Eiii
	.p2align	4, 0x90
	.type	_ZN7gpumath5ArrayIfEC2Eiii,@function
_ZN7gpumath5ArrayIfEC2Eiii:             # @_ZN7gpumath5ArrayIfEC2Eiii
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	pushq	%rax
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rdi, %rbx
	movl	%esi, 16(%rdi)
	movl	%ecx, 20(%rdi)
	movl	%edx, 24(%rdi)
	movb	$1, 28(%rdi)
	movslq	%esi, %r14
	shlq	$2, %r14
	movq	%r14, %rdi
	callq	malloc@PLT
	movq	%rax, (%rbx)
	testq	%rax, %rax
	jne	.LBB7_6
# %bb.1:                                # %if.then
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.11(%rip), %rsi
	movl	$31, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	20(%rbx), %esi
	movq	%r14, %rdi
	callq	_ZNSolsEi@PLT
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r15
	testq	%r15, %r15
	je	.LBB7_13
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r15)
	je	.LBB7_4
# %bb.3:                                # %if.then.i2.i.i
	movzbl	67(%r15), %eax
	jmp	.LBB7_5
.LBB7_4:                                # %if.end.i.i.i
	movq	%r15, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	movq	%r15, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB7_5:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movslq	16(%rbx), %r14
	movl	24(%rbx), %ebp
	shlq	$2, %r14
.LBB7_6:                                # %if.end
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	omp_target_alloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB7_7
# %bb.12:                               # %if.end20
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB7_7:                                # %if.then15
	.cfi_def_cfa_offset 48
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.12(%rip), %rsi
	movl	$33, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	24(%rbx), %esi
	movq	%r14, %rdi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB7_13
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12
	cmpb	$0, 56(%r14)
	je	.LBB7_10
# %bb.9:                                # %if.then.i2.i.i15
	movzbl	67(%r14), %eax
	jmp	.LBB7_11
.LBB7_10:                               # %if.end.i.i.i20
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB7_11:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT               # TAILCALL
.LBB7_13:                               # %if.then.i.i.i
	.cfi_def_cfa_offset 48
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end7:
	.size	_ZN7gpumath5ArrayIfEC2Eiii, .Lfunc_end7-_ZN7gpumath5ArrayIfEC2Eiii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath12compare_timeIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,"axG",@progbits,_ZN7gpumath12compare_timeIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,comdat
	.weak	_ZN7gpumath12compare_timeIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_ # -- Begin function _ZN7gpumath12compare_timeIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
	.p2align	4, 0x90
	.type	_ZN7gpumath12compare_timeIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,@function
_ZN7gpumath12compare_timeIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_: # @_ZN7gpumath12compare_timeIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$72, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %r15
	leaq	.L.str.13(%rip), %rsi
	leaq	40(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rcx, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp120:
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movl	$500, %ecx                      # imm = 0x1F4
	callq	_ZN7gpumath8gpu_timeIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Ltmp121:
# %bb.1:                                # %invoke.cont
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	movq	40(%rsp), %rdi
	leaq	56(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB8_3
# %bb.2:                                # %if.then.i.i
	callq	_ZdlPv@PLT
.LBB8_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	_ZSt4cout@GOTPCREL(%rip), %r13
	leaq	.L.str.14(%rip), %rsi
	movl	$19, %edx
	movq	%r13, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r12), %rsi
	movq	8(%r12), %rdx
	movq	%r13, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %r12
	leaq	.L.str.15(%rip), %rsi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rdi
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %r12
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r12,%rax), %r13
	testq	%r13, %r13
	je	.LBB8_20
# %bb.4:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r13)
	je	.LBB8_6
# %bb.5:                                # %if.then.i2.i.i
	movzbl	67(%r13), %eax
	jmp	.LBB8_7
.LBB8_6:                                # %if.end.i.i.i
	movq	%r13, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r13), %rax
	movq	%r13, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB8_7:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	leaq	.L.str.13(%rip), %rsi
	leaq	8(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp123:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movl	$500, %ecx                      # imm = 0x1F4
	callq	_ZN7gpumath8gpu_timeIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Ltmp124:
# %bb.8:                                # %invoke.cont8
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB8_10
# %bb.9:                                # %if.then.i.i7
	callq	_ZdlPv@PLT
.LBB8_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
	movq	_ZSt4cout@GOTPCREL(%rip), %r14
	leaq	.L.str.16(%rip), %rsi
	movl	$18, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rbx
	leaq	.L.str.15(%rip), %rsi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movsd	(%rsp), %xmm0                   # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB8_20
# %bb.11:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
	cmpb	$0, 56(%r14)
	je	.LBB8_13
# %bb.12:                               # %if.then.i2.i.i34
	movzbl	67(%r14), %eax
	jmp	.LBB8_14
.LBB8_13:                               # %if.end.i.i.i39
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB8_14:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	addq	$72, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB8_20:                               # %if.then.i.i.i
	.cfi_def_cfa_offset 128
	callq	_ZSt16__throw_bad_castv@PLT
.LBB8_16:                               # %lpad7
.Ltmp125:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rax
	jmp	.LBB8_17
.LBB8_15:                               # %lpad
.Ltmp122:
	movq	%rax, %rbx
	movq	40(%rsp), %rdi
	leaq	56(%rsp), %rax
.LBB8_17:                               # %lpad7
	cmpq	%rax, %rdi
	je	.LBB8_19
# %bb.18:                               # %ehcleanup.sink.split
	callq	_ZdlPv@PLT
.LBB8_19:                               # %ehcleanup
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end8:
	.size	_ZN7gpumath12compare_timeIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_, .Lfunc_end8-_ZN7gpumath12compare_timeIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath12compare_timeIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,"aG",@progbits,_ZN7gpumath12compare_timeIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp120-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp120
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp120-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp121-.Ltmp120              #   Call between .Ltmp120 and .Ltmp121
	.uleb128 .Ltmp122-.Lfunc_begin3         #     jumps to .Ltmp122
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp123-.Ltmp121              #   Call between .Ltmp121 and .Ltmp123
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp124-.Ltmp123              #   Call between .Ltmp123 and .Ltmp124
	.uleb128 .Ltmp125-.Lfunc_begin3         #     jumps to .Ltmp125
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Lfunc_end8-.Ltmp124           #   Call between .Ltmp124 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7gpumath5ArrayIfED2Ev,"axG",@progbits,_ZN7gpumath5ArrayIfED2Ev,comdat
	.weak	_ZN7gpumath5ArrayIfED2Ev        # -- Begin function _ZN7gpumath5ArrayIfED2Ev
	.p2align	4, 0x90
	.type	_ZN7gpumath5ArrayIfED2Ev,@function
_ZN7gpumath5ArrayIfED2Ev:               # @_ZN7gpumath5ArrayIfED2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	callq	free@PLT
	movq	$0, (%rbx)
	movq	8(%rbx), %rdi
	movl	24(%rbx), %esi
.Ltmp126:
	callq	omp_target_free@PLT
.Ltmp127:
# %bb.1:                                # %invoke.cont
	movq	$0, 8(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB9_2:                                # %terminate.lpad
	.cfi_def_cfa_offset 16
.Ltmp128:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end9:
	.size	_ZN7gpumath5ArrayIfED2Ev, .Lfunc_end9-_ZN7gpumath5ArrayIfED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath5ArrayIfED2Ev,"aG",@progbits,_ZN7gpumath5ArrayIfED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp126-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin4         #     jumps to .Ltmp128
	.byte	1                               #   On action: 1
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev,"axG",@progbits,_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev,comdat
	.weak	_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev # -- Begin function _ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev,@function
_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev: # @_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	callq	free@PLT
	movq	$0, (%rbx)
	movq	8(%rbx), %rdi
	movl	24(%rbx), %esi
.Ltmp129:
	callq	omp_target_free@PLT
.Ltmp130:
# %bb.1:                                # %_ZN7gpumath5ArrayIfED2Ev.exit
	movq	$0, 8(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB10_2:                               # %terminate.lpad.i
	.cfi_def_cfa_offset 16
.Ltmp131:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end10:
	.size	_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev, .Lfunc_end10-_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev,"aG",@progbits,_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp129-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin5         #     jumps to .Ltmp131
	.byte	1                               #   On action: 1
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7gpumath5ArrayIfE7to_hostEv,"axG",@progbits,_ZN7gpumath5ArrayIfE7to_hostEv,comdat
	.weak	_ZN7gpumath5ArrayIfE7to_hostEv  # -- Begin function _ZN7gpumath5ArrayIfE7to_hostEv
	.p2align	4, 0x90
	.type	_ZN7gpumath5ArrayIfE7to_hostEv,@function
_ZN7gpumath5ArrayIfE7to_hostEv:         # @_ZN7gpumath5ArrayIfE7to_hostEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movq	8(%rbx), %rsi
	movslq	16(%rbx), %rdx
	shlq	$2, %rdx
	movl	20(%rbx), %r9d
	movl	24(%rbx), %eax
	movl	%eax, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	omp_target_memcpy@PLT
	testl	%eax, %eax
	je	.LBB11_6
# %bb.1:                                # %if.then
	movl	%eax, %ebp
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.1(%rip), %rsi
	movl	$16, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	24(%rbx), %esi
	movq	%r14, %rdi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rbx
	leaq	.L.str.2(%rip), %rsi
	movl	$28, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB11_7
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r14)
	je	.LBB11_4
# %bb.3:                                # %if.then.i2.i.i
	movzbl	67(%r14), %eax
	jmp	.LBB11_5
.LBB11_6:                               # %if.else
	movb	$0, 28(%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB11_4:                               # %if.end.i.i.i
	.cfi_def_cfa_offset 48
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB11_5:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT               # TAILCALL
.LBB11_7:                               # %if.then.i.i.i
	.cfi_def_cfa_offset 48
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end11:
	.size	_ZN7gpumath5ArrayIfE7to_hostEv, .Lfunc_end11-_ZN7gpumath5ArrayIfE7to_hostEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath8gpu_timeIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"axG",@progbits,_ZN7gpumath8gpu_timeIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.weak	_ZN7gpumath8gpu_timeIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi # -- Begin function _ZN7gpumath8gpu_timeIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.p2align	4, 0x90
	.type	_ZN7gpumath8gpu_timeIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,@function
_ZN7gpumath8gpu_timeIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi: # @_ZN7gpumath8gpu_timeIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$600, %rsp                      # imm = 0x258
	.cfi_def_cfa_offset 656
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	.L.str.17(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	movq	24(%rsp), %rsi
	movq	%rsi, %rax
	shrq	$2, %rax
	movabsq	$2305843009213693951, %rcx      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	je	.LBB12_1
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	leaq	4(%rsi), %r13
	movq	16(%rsp), %rax
	leaq	32(%rsp), %r12
	movl	$15, %ecx
	cmpq	%r12, %rax
	je	.LBB12_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	32(%rsp), %rcx
.LBB12_5:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	cmpq	%rcx, %r13
	jbe	.LBB12_6
# %bb.7:                                # %if.else.i.i.i
.Ltmp132:
	leaq	.L.str.18(%rip), %rcx
	leaq	16(%rsp), %rdi
	movl	$4, %r8d
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp133:
	jmp	.LBB12_8
.LBB12_6:                               # %if.end.i.i.i.i.i
	movl	$1954051118, (%rax,%rsi)        # imm = 0x7478742E
.LBB12_8:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
	movq	%r13, 24(%rsp)
	movq	16(%rsp), %rax
	movb	$0, (%rax,%r13)
	leaq	72(%rsp), %r13
	movq	%r13, 56(%rsp)
	movq	16(%rsp), %rax
	cmpq	%r12, %rax
	je	.LBB12_9
# %bb.11:                               # %if.else.i.i
	movq	%rax, 56(%rsp)
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 72(%rsp)
	jmp	.LBB12_12
.LBB12_9:                               # %if.then.i.i
	movq	24(%rsp), %rbp
	movq	%rbp, %rdx
	movq	$-1, %rax
	incq	%rdx
	je	.LBB12_12
# %bb.10:                               # %if.end.i.i.i
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	memcpy@PLT
	movq	%rbp, %rax
.LBB12_12:                              # %invoke.cont
	movq	%rax, 64(%rsp)
	movq	%r12, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
.Ltmp134:
	leaq	88(%rsp), %rdi
	leaq	56(%rsp), %rsi
	movl	$16, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.Ltmp135:
# %bb.13:                               # %invoke.cont3
	movq	56(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB12_15
# %bb.14:                               # %if.then.i.i9
	callq	_ZdlPv@PLT
.LBB12_15:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	16(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB12_17
# %bb.16:                               # %if.then.i.i11
	callq	_ZdlPv@PLT
.LBB12_17:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
	xorpd	%xmm0, %xmm0
	testl	%ebx, %ebx
	jle	.LBB12_18
# %bb.25:                               # %for.body.preheader
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	leaq	88(%rsp), %r12
	.p2align	4, 0x90
.LBB12_26:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
.Ltmp137:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	movsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp138:
# %bb.27:                               # %invoke.cont7
                                        #   in Loop: Header=BB12_26 Depth=1
.Ltmp139:
	movq	%r12, %rdi
	movsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp140:
# %bb.28:                               # %invoke.cont8
                                        #   in Loop: Header=BB12_26 Depth=1
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB12_29
# %bb.31:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB12_26 Depth=1
	cmpb	$0, 56(%rbp)
	je	.LBB12_33
# %bb.32:                               # %if.then.i2.i.i
                                        #   in Loop: Header=BB12_26 Depth=1
	movzbl	67(%rbp), %eax
	jmp	.LBB12_35
	.p2align	4, 0x90
.LBB12_33:                              # %if.end.i.i.i22
                                        #   in Loop: Header=BB12_26 Depth=1
.Ltmp141:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp142:
# %bb.34:                               # %.noexc26
                                        #   in Loop: Header=BB12_26 Depth=1
	movq	(%rbp), %rax
.Ltmp143:
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp144:
.LBB12_35:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB12_26 Depth=1
.Ltmp145:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp146:
# %bb.36:                               # %call1.i.noexc
                                        #   in Loop: Header=BB12_26 Depth=1
.Ltmp147:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp148:
# %bb.37:                               # %invoke.cont10
                                        #   in Loop: Header=BB12_26 Depth=1
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	48(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	decl	%ebx
	jne	.LBB12_26
	jmp	.LBB12_19
.LBB12_18:
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.LBB12_19:                              # %for.cond.cleanup
	leaq	88(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$600, %rsp                      # imm = 0x258
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB12_29:                              # %if.then.i.i.i24
	.cfi_def_cfa_offset 656
.Ltmp150:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp151:
# %bb.30:                               # %.noexc25
.LBB12_1:                               # %if.then.i.i.i
.Ltmp153:
	leaq	.L.str.19(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp154:
# %bb.2:                                # %.noexc
.LBB12_21:                              # %lpad2
.Ltmp136:
	movq	%rax, %rbx
	movq	56(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB12_23
# %bb.22:                               # %if.then.i.i14
	callq	_ZdlPv@PLT
	jmp	.LBB12_23
.LBB12_20:                              # %lpad
.Ltmp155:
	movq	%rax, %rbx
.LBB12_23:                              # %ehcleanup
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB12_41
# %bb.24:                               # %if.then.i.i17
	callq	_ZdlPv@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB12_39:                              # %lpad6.loopexit.split-lp
.Ltmp152:
	jmp	.LBB12_40
.LBB12_38:                              # %lpad6.loopexit
.Ltmp149:
.LBB12_40:                              # %lpad6
	movq	%rax, %rbx
	leaq	88(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.LBB12_41:                              # %ehcleanup16
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end12:
	.size	_ZN7gpumath8gpu_timeIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, .Lfunc_end12-_ZN7gpumath8gpu_timeIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath8gpu_timeIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"aG",@progbits,_ZN7gpumath8gpu_timeIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.p2align	2, 0x0
GCC_except_table12:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp132-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp155-.Lfunc_begin6         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin6         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp148-.Ltmp137              #   Call between .Ltmp137 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin6         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin6         #     jumps to .Ltmp152
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin6         #     jumps to .Ltmp155
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Lfunc_end12-.Ltmp154          #   Call between .Ltmp154 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ # -- Begin function _ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	.p2align	4, 0x90
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,@function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: # @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:                                # %invoke.cont
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	strlen@PLT
	movq	%rax, %r15
	leaq	16(%rbx), %r13
	movq	%r13, (%rbx)
	movq	$0, 8(%rbx)
	movb	$0, 16(%rbx)
	movq	8(%r14), %rax
	addq	%r15, %rax
	movq	%r13, %rbp
	cmpq	$16, %rax
	jb	.LBB13_8
# %bb.1:                                # %if.end.i
	movq	%r14, (%rsp)                    # 8-byte Spill
	testq	%rax, %rax
	js	.LBB13_2
# %bb.3:                                # %land.lhs.true.i.i
	cmpq	$31, %rax
	movl	$30, %r14d
	cmovaeq	%rax, %r14
	movq	%r14, %rdi
	incq	%rdi
	js	.LBB13_4
# %bb.6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
.Ltmp156:
	callq	_Znwm@PLT
.Ltmp157:
# %bb.7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i
	movq	%rax, %rbp
	movb	$0, (%rax)
	movq	%rax, (%rbx)
	movq	%r14, 16(%rbx)
	movq	(%rsp), %r14                    # 8-byte Reload
.LBB13_8:                               # %invoke.cont4
	leaq	.L.str.19(%rip), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	testq	%r15, %r15
	js	.LBB13_19
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
	movl	$15, %eax
	cmpq	%r13, %rbp
	je	.LBB13_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
	movq	(%r13), %rax
.LBB13_11:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
	cmpq	%rax, %r15
	jbe	.LBB13_12
# %bb.16:                               # %if.else.i.i
.Ltmp158:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp159:
# %bb.17:                               # %if.else.i.i.invoke.cont5_crit_edge
	movq	(%rbx), %rbp
	jmp	.LBB13_18
.LBB13_12:                              # %if.then.i3.i
	testq	%r15, %r15
	je	.LBB13_18
# %bb.13:                               # %if.then.i3.i
	cmpq	$1, %r15
	jne	.LBB13_15
# %bb.14:                               # %if.then.i.i.i
	movzbl	(%r12), %eax
	movb	%al, (%rbp)
	jmp	.LBB13_18
.LBB13_15:                              # %if.end.i.i.i.i
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
.LBB13_18:                              # %invoke.cont5
	movq	%r15, 8(%rbx)
	movb	$0, (%rbp,%r15)
	movq	8(%r14), %r8
	movq	8(%rbx), %rsi
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	xorq	%rsi, %rax
	cmpq	%r8, %rax
	jb	.LBB13_19
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	leaq	(%rsi,%r8), %r15
	movq	(%rbx), %rdi
	movl	$15, %eax
	cmpq	%r13, %rdi
	je	.LBB13_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	16(%rbx), %rax
.LBB13_23:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	(%r14), %rcx
	cmpq	%rax, %r15
	jbe	.LBB13_24
# %bb.27:                               # %if.else.i.i.i
.Ltmp160:
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp161:
	jmp	.LBB13_32
.LBB13_24:                              # %if.then.i3.i.i
	testq	%r8, %r8
	je	.LBB13_32
# %bb.25:                               # %if.then3.i.i.i
	addq	%rsi, %rdi
	cmpq	$1, %r8
	jne	.LBB13_31
# %bb.26:                               # %if.then.i.i.i.i
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	jmp	.LBB13_32
.LBB13_31:                              # %if.end.i.i.i.i.i19
	movq	%rcx, %rsi
	movq	%r8, %rdx
	callq	memcpy@PLT
.LBB13_32:                              # %nrvo.skipdtor
	movq	%r15, 8(%rbx)
	movq	(%rbx), %rax
	movb	$0, (%rax,%r15)
	movq	%rbx, %rax
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB13_4:                               # %if.end.i.i.i.i.i
	.cfi_def_cfa_offset 64
.Ltmp162:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp163:
# %bb.5:                                # %.noexc6
.LBB13_2:
	leaq	.L.str.6(%rip), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
.LBB13_19:                              # %if.then.i.i.i20.invoke
.Ltmp164:
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp165:
# %bb.20:                               # %if.then.i.i.i20.cont
.LBB13_28:                              # %lpad3
.Ltmp166:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	cmpq	%r13, %rdi
	je	.LBB13_30
# %bb.29:                               # %if.then.i.i24
	callq	_ZdlPv@PLT
.LBB13_30:                              # %ehcleanup
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end13:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, .Lfunc_end13-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	.cfi_endproc
	.section	.gcc_except_table._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,"aG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp156-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp159-.Ltmp156              #   Call between .Ltmp156 and .Ltmp159
	.uleb128 .Ltmp166-.Lfunc_begin7         #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp166-.Lfunc_begin7         #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp165-.Ltmp162              #   Call between .Ltmp162 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin7         #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Lfunc_end13-.Ltmp165          #   Call between .Ltmp165 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7gpumath8gpu_timeIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"axG",@progbits,_ZN7gpumath8gpu_timeIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.weak	_ZN7gpumath8gpu_timeIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi # -- Begin function _ZN7gpumath8gpu_timeIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.p2align	4, 0x90
	.type	_ZN7gpumath8gpu_timeIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,@function
_ZN7gpumath8gpu_timeIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi: # @_ZN7gpumath8gpu_timeIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$600, %rsp                      # imm = 0x258
	.cfi_def_cfa_offset 656
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	.L.str.17(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	movq	24(%rsp), %rsi
	movq	%rsi, %rax
	shrq	$2, %rax
	movabsq	$2305843009213693951, %rcx      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	je	.LBB14_1
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	leaq	4(%rsi), %r13
	movq	16(%rsp), %rax
	leaq	32(%rsp), %r12
	movl	$15, %ecx
	cmpq	%r12, %rax
	je	.LBB14_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	32(%rsp), %rcx
.LBB14_5:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	cmpq	%rcx, %r13
	jbe	.LBB14_6
# %bb.7:                                # %if.else.i.i.i
.Ltmp167:
	leaq	.L.str.18(%rip), %rcx
	leaq	16(%rsp), %rdi
	movl	$4, %r8d
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp168:
	jmp	.LBB14_8
.LBB14_6:                               # %if.end.i.i.i.i.i
	movl	$1954051118, (%rax,%rsi)        # imm = 0x7478742E
.LBB14_8:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
	movq	%r13, 24(%rsp)
	movq	16(%rsp), %rax
	movb	$0, (%rax,%r13)
	leaq	72(%rsp), %r13
	movq	%r13, 56(%rsp)
	movq	16(%rsp), %rax
	cmpq	%r12, %rax
	je	.LBB14_9
# %bb.11:                               # %if.else.i.i
	movq	%rax, 56(%rsp)
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 72(%rsp)
	jmp	.LBB14_12
.LBB14_9:                               # %if.then.i.i
	movq	24(%rsp), %rbp
	movq	%rbp, %rdx
	movq	$-1, %rax
	incq	%rdx
	je	.LBB14_12
# %bb.10:                               # %if.end.i.i.i
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	memcpy@PLT
	movq	%rbp, %rax
.LBB14_12:                              # %invoke.cont
	movq	%rax, 64(%rsp)
	movq	%r12, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
.Ltmp169:
	leaq	88(%rsp), %rdi
	leaq	56(%rsp), %rsi
	movl	$16, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.Ltmp170:
# %bb.13:                               # %invoke.cont3
	movq	56(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB14_15
# %bb.14:                               # %if.then.i.i9
	callq	_ZdlPv@PLT
.LBB14_15:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	16(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB14_17
# %bb.16:                               # %if.then.i.i11
	callq	_ZdlPv@PLT
.LBB14_17:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
	xorpd	%xmm0, %xmm0
	testl	%ebx, %ebx
	jle	.LBB14_18
# %bb.25:                               # %for.body.preheader
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	leaq	88(%rsp), %r12
	.p2align	4, 0x90
.LBB14_26:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
.Ltmp172:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	movsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp173:
# %bb.27:                               # %invoke.cont7
                                        #   in Loop: Header=BB14_26 Depth=1
.Ltmp174:
	movq	%r12, %rdi
	movsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp175:
# %bb.28:                               # %invoke.cont8
                                        #   in Loop: Header=BB14_26 Depth=1
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB14_29
# %bb.31:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB14_26 Depth=1
	cmpb	$0, 56(%rbp)
	je	.LBB14_33
# %bb.32:                               # %if.then.i2.i.i
                                        #   in Loop: Header=BB14_26 Depth=1
	movzbl	67(%rbp), %eax
	jmp	.LBB14_35
	.p2align	4, 0x90
.LBB14_33:                              # %if.end.i.i.i22
                                        #   in Loop: Header=BB14_26 Depth=1
.Ltmp176:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp177:
# %bb.34:                               # %.noexc26
                                        #   in Loop: Header=BB14_26 Depth=1
	movq	(%rbp), %rax
.Ltmp178:
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp179:
.LBB14_35:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB14_26 Depth=1
.Ltmp180:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp181:
# %bb.36:                               # %call1.i.noexc
                                        #   in Loop: Header=BB14_26 Depth=1
.Ltmp182:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp183:
# %bb.37:                               # %invoke.cont10
                                        #   in Loop: Header=BB14_26 Depth=1
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	48(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	decl	%ebx
	jne	.LBB14_26
	jmp	.LBB14_19
.LBB14_18:
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.LBB14_19:                              # %for.cond.cleanup
	leaq	88(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addq	$600, %rsp                      # imm = 0x258
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB14_29:                              # %if.then.i.i.i24
	.cfi_def_cfa_offset 656
.Ltmp185:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp186:
# %bb.30:                               # %.noexc25
.LBB14_1:                               # %if.then.i.i.i
.Ltmp188:
	leaq	.L.str.19(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp189:
# %bb.2:                                # %.noexc
.LBB14_21:                              # %lpad2
.Ltmp171:
	movq	%rax, %rbx
	movq	56(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB14_23
# %bb.22:                               # %if.then.i.i14
	callq	_ZdlPv@PLT
	jmp	.LBB14_23
.LBB14_20:                              # %lpad
.Ltmp190:
	movq	%rax, %rbx
.LBB14_23:                              # %ehcleanup
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB14_41
# %bb.24:                               # %if.then.i.i17
	callq	_ZdlPv@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB14_39:                              # %lpad6.loopexit.split-lp
.Ltmp187:
	jmp	.LBB14_40
.LBB14_38:                              # %lpad6.loopexit
.Ltmp184:
.LBB14_40:                              # %lpad6
	movq	%rax, %rbx
	leaq	88(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.LBB14_41:                              # %ehcleanup16
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end14:
	.size	_ZN7gpumath8gpu_timeIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, .Lfunc_end14-_ZN7gpumath8gpu_timeIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath8gpu_timeIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"aG",@progbits,_ZN7gpumath8gpu_timeIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp167-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp167
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp168-.Ltmp167              #   Call between .Ltmp167 and .Ltmp168
	.uleb128 .Ltmp190-.Lfunc_begin8         #     jumps to .Ltmp190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin8         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp183-.Ltmp172              #   Call between .Ltmp172 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin8         #     jumps to .Ltmp184
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp187-.Lfunc_begin8         #     jumps to .Ltmp187
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.uleb128 .Ltmp190-.Lfunc_begin8         #     jumps to .Ltmp190
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin8         # >> Call Site 8 <<
	.uleb128 .Lfunc_end14-.Ltmp189          #   Call between .Ltmp189 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,"axG",@progbits,_ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,comdat
	.weak	_ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE # -- Begin function _ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	.p2align	4, 0x90
	.type	_ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,@function
_ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE: # @_ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$168, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	16(%rdi), %r14d
	cmpl	16(%rsi), %r14d
	jne	.LBB15_2
# %bb.1:                                # %cond.end
	movslq	24(%rsi), %rbx
	movq	8(%rsi), %r15
	movq	8(%rdi), %r12
	callq	omp_get_wtime@PLT
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%r14, 40(%rsp)
	movq	%r14, 16(%rsp)
	movq	%r15, 48(%rsp)
	movq	%r15, 24(%rsp)
	movq	%r12, 56(%rsp)
	movq	%r12, 32(%rsp)
	movabsq	$12884901890, %rax              # imm = 0x300000002
	movq	%rax, 64(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	.L.offload_sizes.24(%rip), %rax
	movq	%rax, 88(%rsp)
	leaq	.L.offload_maptypes.25(%rip), %rax
	movq	%rax, 96(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 104(%rsp)
	movq	%r14, 120(%rsp)
	movupd	%xmm0, 128(%rsp)
	movupd	%xmm0, 144(%rsp)
	movl	$0, 160(%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	movq	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23.region_id@GOTPCREL(%rip), %r8
	leaq	64(%rsp), %r9
	movq	%rbx, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__tgt_target_kernel@PLT
	callq	omp_get_wtime@PLT
	subsd	8(%rsp), %xmm0                  # 8-byte Folded Reload
	addq	$168, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB15_2:                               # %cond.false
	.cfi_def_cfa_offset 208
	leaq	.L.str.20(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE(%rip), %rcx
	movl	$16, %edx
	callq	__assert_fail@PLT
.Lfunc_end15:
	.size	_ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE, .Lfunc_end15-_ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,comdat
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm # -- Begin function _ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm,@function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm: # @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r8, %rbp
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movq	8(%rdi), %r12
	movq	%r8, (%rsp)                     # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	subq	%rdx, %rbp
	leaq	16(%rdi), %rcx
	movl	$15, %eax
	cmpq	%rcx, %r14
	je	.LBB16_2
# %bb.1:                                # %entry
	movq	16(%rbx), %rax
.LBB16_2:                               # %entry
	addq	%r12, %rbp
	js	.LBB16_25
# %bb.3:                                # %if.end.i
	cmpq	%rax, %rbp
	jbe	.LBB16_6
# %bb.4:                                # %land.lhs.true.i
	addq	%rax, %rax
	cmpq	%rax, %rbp
	jae	.LBB16_6
# %bb.5:                                # %if.then4.i
	movabsq	$9223372036854775807, %rbp      # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rbp, %rax
	cmovbq	%rax, %rbp
.LBB16_6:                               # %if.end11.i
	movq	%rbp, %rdi
	incq	%rdi
	js	.LBB16_26
# %bb.7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
	movq	%rax, %r13
	testq	%r15, %r15
	je	.LBB16_11
# %bb.8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
	cmpq	$1, %r15
	jne	.LBB16_10
# %bb.9:                                # %if.then.i18
	movzbl	(%r14), %eax
	movb	%al, (%r13)
	jmp	.LBB16_11
.LBB16_10:                              # %if.end.i.i
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
.LBB16_11:                              # %if.end
	movq	%r14, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r15), %r14
	movq	32(%rsp), %rsi                  # 8-byte Reload
	testq	%rsi, %rsi
	movq	(%rsp), %rdx                    # 8-byte Reload
	je	.LBB16_17
# %bb.12:                               # %if.end
	testq	%rdx, %rdx
	je	.LBB16_17
# %bb.13:                               # %if.then10
	leaq	(%r15,%r13), %rdi
	cmpq	$1, %rdx
	jne	.LBB16_15
# %bb.14:                               # %if.then.i20
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	.LBB16_16
.LBB16_15:                              # %if.end.i.i21
	callq	memcpy@PLT
.LBB16_16:                              # %if.end11
	movq	(%rsp), %rdx                    # 8-byte Reload
.LBB16_17:                              # %if.end11
	cmpq	%r14, %r12
	je	.LBB16_22
# %bb.18:                               # %if.then13
	subq	%r14, %r12
	je	.LBB16_22
# %bb.19:                               # %if.then13
	movq	%r13, %rdi
	addq	%r15, %rdi
	addq	%rdx, %rdi
	addq	8(%rsp), %r15                   # 8-byte Folded Reload
	addq	16(%rsp), %r15                  # 8-byte Folded Reload
	cmpq	$1, %r12
	jne	.LBB16_21
# %bb.20:                               # %if.then.i24
	movzbl	(%r15), %eax
	movb	%al, (%rdi)
.LBB16_22:                              # %if.end19
	movq	8(%rsp), %rdi                   # 8-byte Reload
	cmpq	24(%rsp), %rdi                  # 8-byte Folded Reload
	je	.LBB16_24
.LBB16_23:                              # %if.then.i28
	callq	_ZdlPv@PLT
.LBB16_24:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
	movq	%r13, (%rbx)
	movq	%rbp, 16(%rbx)
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB16_21:                              # %if.end.i.i25
	.cfi_def_cfa_offset 96
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	cmpq	24(%rsp), %rdi                  # 8-byte Folded Reload
	jne	.LBB16_23
	jmp	.LBB16_24
.LBB16_26:                              # %if.end.i.i.i.i
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB16_25:                              # %if.then.i
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Lfunc_end16:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm, .Lfunc_end16-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE,"axG",@progbits,_ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE,comdat
	.weak	_ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE # -- Begin function _ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	.p2align	4, 0x90
	.type	_ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE,@function
_ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE: # @_ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r12
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$168, %rsp
	.cfi_def_cfa_offset 208
	.cfi_offset %rbx, -40
	.cfi_offset %r12, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	16(%rdi), %r14d
	cmpl	16(%rsi), %r14d
	jne	.LBB17_2
# %bb.1:                                # %cond.end
	movslq	24(%rsi), %rbx
	movq	8(%rsi), %r15
	movq	8(%rdi), %r12
	callq	omp_get_wtime@PLT
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%r14, 40(%rsp)
	movq	%r14, 16(%rsp)
	movq	%r15, 48(%rsp)
	movq	%r15, 24(%rsp)
	movq	%r12, 56(%rsp)
	movq	%r12, 32(%rsp)
	movabsq	$12884901890, %rax              # imm = 0x300000002
	movq	%rax, 64(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	.L.offload_sizes.24(%rip), %rax
	movq	%rax, 88(%rsp)
	leaq	.L.offload_maptypes.25(%rip), %rax
	movq	%rax, 96(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 104(%rsp)
	movq	%r14, 120(%rsp)
	movupd	%xmm0, 128(%rsp)
	movupd	%xmm0, 144(%rsp)
	movl	$0, 160(%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	movq	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23.region_id@GOTPCREL(%rip), %r8
	leaq	64(%rsp), %r9
	movq	%rbx, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__tgt_target_kernel@PLT
	callq	omp_get_wtime@PLT
	subsd	8(%rsp), %xmm0                  # 8-byte Folded Reload
	addq	$168, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB17_2:                               # %cond.false
	.cfi_def_cfa_offset 208
	leaq	.L.str.20(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE(%rip), %rcx
	movl	$16, %edx
	callq	__assert_fail@PLT
.Lfunc_end17:
	.size	_ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE, .Lfunc_end17-_ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath5ArrayIfE7reshapeEi,"axG",@progbits,_ZN7gpumath5ArrayIfE7reshapeEi,comdat
	.weak	_ZN7gpumath5ArrayIfE7reshapeEi  # -- Begin function _ZN7gpumath5ArrayIfE7reshapeEi
	.p2align	4, 0x90
	.type	_ZN7gpumath5ArrayIfE7reshapeEi,@function
_ZN7gpumath5ArrayIfE7reshapeEi:         # @_ZN7gpumath5ArrayIfE7reshapeEi
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	movl	%esi, 16(%rdi)
	movq	(%rdi), %rdi
	callq	free@PLT
	movslq	16(%rbx), %rdi
	shlq	$2, %rdi
	callq	malloc@PLT
	movq	%rax, (%rbx)
	testq	%rax, %rax
	jne	.LBB18_6
# %bb.1:                                # %if.then
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.11(%rip), %rsi
	movl	$31, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	20(%rbx), %esi
	movq	%r14, %rdi
	callq	_ZNSolsEi@PLT
	movq	%rax, %r14
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %r15
	testq	%r15, %r15
	je	.LBB18_13
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r15)
	je	.LBB18_4
# %bb.3:                                # %if.then.i2.i.i
	movzbl	67(%r15), %eax
	jmp	.LBB18_5
.LBB18_4:                               # %if.end.i.i.i
	movq	%r15, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	movq	%r15, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB18_5:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB18_6:                               # %if.end
	movq	8(%rbx), %rdi
	movl	24(%rbx), %esi
	callq	omp_target_free@PLT
	movslq	16(%rbx), %rdi
	shlq	$2, %rdi
	movl	24(%rbx), %esi
	callq	omp_target_alloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB18_7
# %bb.12:                               # %if.end21
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB18_7:                               # %if.then16
	.cfi_def_cfa_offset 32
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.12(%rip), %rsi
	movl	$33, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	24(%rbx), %esi
	movq	%r14, %rdi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB18_13
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12
	cmpb	$0, 56(%r14)
	je	.LBB18_10
# %bb.9:                                # %if.then.i2.i.i15
	movzbl	67(%r14), %eax
	jmp	.LBB18_11
.LBB18_10:                              # %if.end.i.i.i20
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB18_11:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT               # TAILCALL
.LBB18_13:                              # %if.then.i.i.i
	.cfi_def_cfa_offset 32
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end18:
	.size	_ZN7gpumath5ArrayIfE7reshapeEi, .Lfunc_end18-_ZN7gpumath5ArrayIfE7reshapeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,"axG",@progbits,_ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,comdat
	.weak	_ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_ # -- Begin function _ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
	.p2align	4, 0x90
	.type	_ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,@function
_ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_: # @_ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %rbp
	cmpb	$0, 28(%rdi)
	je	.LBB19_1
# %bb.2:                                # %if.end
	cmpb	$0, 28(%r13)
	je	.LBB19_3
.LBB19_4:                               # %if.end5
	cmpb	$0, 28(%rbx)
	je	.LBB19_5
.LBB19_6:                               # %if.end8
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	movq	%rbp, %rdi
	callq	_ZN7gpumath5ArrayIfE7to_hostEv
	cmpb	$0, 28(%r12)
	je	.LBB19_8
# %bb.7:                                # %if.then13
	movq	%r12, %rdi
	callq	_ZN7gpumath5ArrayIfE7to_hostEv
.LBB19_8:                               # %if.end14
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	_ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	leaq	.L__unnamed_1(%rip), %rdi
	leaq	_ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined(%rip), %rdx
	movl	$5, %esi
	movq	%r13, %rcx
	movq	%r12, %r8
	movq	%r15, %r9
	xorl	%eax, %eax
	pushq	%r14
	.cfi_adjust_cfa_offset 8
	pushq	%rbx
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_fork_call@PLT
	addq	$24, %rsp
	.cfi_adjust_cfa_offset -24
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB19_1:                               # %if.then
	.cfi_def_cfa_offset 64
	movq	%rbp, %rdi
	callq	_ZN7gpumath5ArrayIfE9to_deviceEv
	cmpb	$0, 28(%r13)
	jne	.LBB19_4
.LBB19_3:                               # %if.then4
	movq	%r13, %rdi
	callq	_ZN7gpumath5ArrayIfE9to_deviceEv
	cmpb	$0, 28(%rbx)
	jne	.LBB19_6
.LBB19_5:                               # %if.then7
	movq	%rbx, %rdi
	callq	_ZN7gpumath5ArrayIfE9to_deviceEv
	jmp	.LBB19_6
.Lfunc_end19:
	.size	_ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_, .Lfunc_end19-_ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath5ArrayIfE9to_deviceEv,"axG",@progbits,_ZN7gpumath5ArrayIfE9to_deviceEv,comdat
	.weak	_ZN7gpumath5ArrayIfE9to_deviceEv # -- Begin function _ZN7gpumath5ArrayIfE9to_deviceEv
	.p2align	4, 0x90
	.type	_ZN7gpumath5ArrayIfE9to_deviceEv,@function
_ZN7gpumath5ArrayIfE9to_deviceEv:       # @_ZN7gpumath5ArrayIfE9to_deviceEv
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rsi
	movq	8(%rdi), %rdi
	movslq	16(%rbx), %rdx
	shlq	$2, %rdx
	movl	24(%rbx), %r9d
	movl	20(%rbx), %eax
	movl	%eax, (%rsp)
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	omp_target_memcpy@PLT
	testl	%eax, %eax
	je	.LBB20_6
# %bb.1:                                # %if.then
	movl	%eax, %ebp
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.30(%rip), %rsi
	movl	$20, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	24(%rbx), %esi
	movq	%r14, %rdi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rbx
	leaq	.L.str.31(%rip), %rsi
	movl	$29, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movl	%ebp, %esi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB20_7
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r14)
	je	.LBB20_4
# %bb.3:                                # %if.then.i2.i.i
	movzbl	67(%r14), %eax
	jmp	.LBB20_5
.LBB20_6:                               # %if.else
	movb	$1, 28(%rbx)
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB20_4:                               # %if.end.i.i.i
	.cfi_def_cfa_offset 48
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB20_5:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	addq	$16, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT               # TAILCALL
.LBB20_7:                               # %if.then.i.i.i
	.cfi_def_cfa_offset 48
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end20:
	.size	_ZN7gpumath5ArrayIfE9to_deviceEv, .Lfunc_end20-_ZN7gpumath5ArrayIfE9to_deviceEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,"axG",@progbits,_ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,comdat
	.weak	_ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE # -- Begin function _ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	.p2align	4, 0x90
	.type	_ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,@function
_ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE: # @_ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	16(%rdi), %eax
	cmpl	16(%rsi), %eax
	jne	.LBB21_4
# %bb.1:                                # %cond.end
	cmpb	$0, 28(%rsi)
	jne	.LBB21_5
# %bb.2:                                # %cond.end6
	cmpb	$0, 28(%rdi)
	jne	.LBB21_6
# %bb.3:                                # %cond.end12
	movl	%eax, 12(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 32(%rsp)
	movq	(%rdi), %rax
	movq	%rax, 24(%rsp)
	callq	omp_get_wtime@PLT
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	leaq	.L__unnamed_1(%rip), %rdi
	leaq	_ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined(%rip), %rdx
	leaq	12(%rsp), %rcx
	leaq	32(%rsp), %r8
	leaq	24(%rsp), %r9
	movl	$3, %esi
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	callq	omp_get_wtime@PLT
	subsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB21_4:                               # %cond.false
	.cfi_def_cfa_offset 48
	leaq	.L.str.20(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE(%rip), %rcx
	movl	$47, %edx
	callq	__assert_fail@PLT
.LBB21_5:                               # %cond.false5
	leaq	.L.str.32(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE(%rip), %rcx
	movl	$48, %edx
	callq	__assert_fail@PLT
.LBB21_6:                               # %cond.false11
	leaq	.L.str.33(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE(%rip), %rcx
	movl	$49, %edx
	callq	__assert_fail@PLT
.Lfunc_end21:
	.size	_ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE, .Lfunc_end21-_ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined
	.type	_ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined,@function
_ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined: # @_ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, %r12
	movq	%r8, %r13
	movq	%rcx, %r15
	movq	%rdx, %rbp
	movq	64(%rsp), %r14
	movl	(%rdi), %ebx
	leaq	.L__unnamed_1(%rip), %rdi
	movl	%ebx, %esi
	callq	__kmpc_single@PLT
	testl	%eax, %eax
	je	.LBB22_1
# %bb.2:                                # %omp_if.then
	movq	%r12, (%rsp)                    # 8-byte Spill
	leaq	.L__unnamed_1(%rip), %r12
	leaq	.omp_task_entry.(%rip), %r9
	movl	$40, %ecx
	movl	$24, %r8d
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	$1, %edx
	callq	__kmpc_omp_task_alloc@PLT
	movq	(%rax), %rcx
	movq	%rbp, (%rcx)
	movq	%r15, 8(%rcx)
	movq	%r13, 16(%rcx)
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%rax, %rdx
	callq	__kmpc_omp_task@PLT
	leaq	.omp_task_entry..29(%rip), %r9
	movl	$40, %ecx
	movl	$24, %r8d
	movq	%r12, %rdi
	movl	%ebx, %esi
	movl	$1, %edx
	callq	__kmpc_omp_task_alloc@PLT
	movq	(%rax), %rcx
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	%rdx, (%rcx)
	movq	%r15, 8(%rcx)
	movq	%r14, 16(%rcx)
	movq	%r12, %rdi
	movl	%ebx, %esi
	movq	%rax, %rdx
	callq	__kmpc_omp_task@PLT
	movq	%r12, %rdi
	movl	%ebx, %esi
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	__kmpc_end_single@PLT           # TAILCALL
.LBB22_1:                               # %omp_if.end
	.cfi_def_cfa_offset 64
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end22:
	.size	_ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined, .Lfunc_end22-_ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LCPI23_0:
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.section	.text._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.weak	_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$616, %rsp                      # imm = 0x268
	.cfi_def_cfa_offset 672
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	16(%rdi), %eax
	cmpl	16(%rsi), %eax
	jne	.LBB23_44
# %bb.1:                                # %cond.end
	movq	%rdi, %rbx
	cmpb	$0, 28(%rdi)
	jne	.LBB23_45
# %bb.2:                                # %cond.end5
	cmpb	$0, 28(%rsi)
	jne	.LBB23_46
# %bb.3:                                # %cond.end10
	movq	(%rbx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	(%rsi), %rbp
	leaq	.L.str.17(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	movq	24(%rsp), %rsi
	movq	%rsi, %rax
	shrq	$2, %rax
	movabsq	$2305843009213693951, %rcx      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	je	.LBB23_4
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	leaq	4(%rsi), %r15
	movq	16(%rsp), %rax
	leaq	32(%rsp), %r14
	movl	$15, %ecx
	cmpq	%r14, %rax
	je	.LBB23_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	32(%rsp), %rcx
.LBB23_8:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	cmpq	%rcx, %r15
	jbe	.LBB23_9
# %bb.10:                               # %if.else.i.i.i
.Ltmp191:
	leaq	.L.str.18(%rip), %rcx
	leaq	16(%rsp), %rdi
	movl	$4, %r8d
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp192:
	jmp	.LBB23_11
.LBB23_9:                               # %if.end.i.i.i.i.i
	movl	$1954051118, (%rax,%rsi)        # imm = 0x7478742E
.LBB23_11:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
	movq	%r15, 24(%rsp)
	movq	16(%rsp), %rax
	movb	$0, (%rax,%r15)
	leaq	88(%rsp), %r15
	movq	%r15, 72(%rsp)
	movq	16(%rsp), %rax
	cmpq	%r14, %rax
	je	.LBB23_12
# %bb.14:                               # %if.else.i.i
	movq	%rax, 72(%rsp)
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 88(%rsp)
	jmp	.LBB23_15
.LBB23_12:                              # %if.then.i.i
	movq	24(%rsp), %r12
	movq	%r12, %rdx
	movq	$-1, %rax
	incq	%rdx
	je	.LBB23_15
# %bb.13:                               # %if.end.i.i.i
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy@PLT
	movq	%r12, %rax
.LBB23_15:                              # %invoke.cont
	movq	%rax, 80(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
.Ltmp193:
	leaq	104(%rsp), %rdi
	leaq	72(%rsp), %rsi
	movl	$16, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.Ltmp194:
# %bb.16:                               # %invoke.cont15
	movq	72(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB23_18
# %bb.17:                               # %if.then.i.i17
	callq	_ZdlPv@PLT
.LBB23_18:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	16(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB23_20
# %bb.19:                               # %if.then.i.i19
	callq	_ZdlPv@PLT
.LBB23_20:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
	cmpl	$0, 16(%rbx)
	jle	.LBB23_21
# %bb.28:                               # %for.body.preheader
	xorps	%xmm0, %xmm0
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
	xorl	%r13d, %r13d
	leaq	104(%rsp), %r14
	.p2align	4, 0x90
.LBB23_29:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax                  # 8-byte Reload
	movss	(%rax,%r13,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	subss	(%rbp,%r13,4), %xmm0
	andps	.LCPI23_0(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)                 # 16-byte Spill
	cvtss2sd	%xmm0, %xmm0
.Ltmp196:
	movq	%r14, %rdi
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp197:
# %bb.30:                               # %invoke.cont25
                                        #   in Loop: Header=BB23_29 Depth=1
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %r12
	testq	%r12, %r12
	je	.LBB23_31
# %bb.33:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB23_29 Depth=1
	cmpb	$0, 56(%r12)
	je	.LBB23_35
# %bb.34:                               # %if.then.i2.i.i
                                        #   in Loop: Header=BB23_29 Depth=1
	movzbl	67(%r12), %eax
	jmp	.LBB23_37
	.p2align	4, 0x90
.LBB23_35:                              # %if.end.i.i.i31
                                        #   in Loop: Header=BB23_29 Depth=1
.Ltmp198:
	movq	%r12, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp199:
# %bb.36:                               # %.noexc35
                                        #   in Loop: Header=BB23_29 Depth=1
	movq	(%r12), %rax
.Ltmp200:
	movq	%r12, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp201:
.LBB23_37:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB23_29 Depth=1
.Ltmp202:
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp203:
# %bb.38:                               # %call1.i.noexc
                                        #   in Loop: Header=BB23_29 Depth=1
.Ltmp204:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp205:
# %bb.39:                               # %invoke.cont27
                                        #   in Loop: Header=BB23_29 Depth=1
	movaps	48(%rsp), %xmm0                 # 16-byte Reload
	maxss	12(%rsp), %xmm0                 # 4-byte Folded Reload
	incq	%r13
	movslq	16(%rbx), %rax
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
	cmpq	%rax, %r13
	jl	.LBB23_29
	jmp	.LBB23_22
.LBB23_21:
	xorps	%xmm0, %xmm0
.LBB23_22:                              # %for.cond.cleanup
	movaps	%xmm0, 48(%rsp)                 # 16-byte Spill
	leaq	104(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
	movaps	48(%rsp), %xmm0                 # 16-byte Reload
	addq	$616, %rsp                      # imm = 0x268
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB23_31:                              # %if.then.i.i.i33
	.cfi_def_cfa_offset 672
.Ltmp207:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp208:
# %bb.32:                               # %.noexc34
.LBB23_44:                              # %cond.false
	leaq	.L.str.34(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movl	$105, %edx
	callq	__assert_fail@PLT
.LBB23_45:                              # %cond.false4
	leaq	.L.str.35(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movl	$106, %edx
	callq	__assert_fail@PLT
.LBB23_46:                              # %cond.false9
	leaq	.L.str.36(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movl	$107, %edx
	callq	__assert_fail@PLT
.LBB23_4:                               # %if.then.i.i.i
.Ltmp210:
	leaq	.L.str.19(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp211:
# %bb.5:                                # %.noexc
.LBB23_24:                              # %lpad14
.Ltmp195:
	movq	%rax, %rbx
	movq	72(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB23_26
# %bb.25:                               # %if.then.i.i23
	callq	_ZdlPv@PLT
	jmp	.LBB23_26
.LBB23_23:                              # %lpad
.Ltmp212:
	movq	%rax, %rbx
.LBB23_26:                              # %ehcleanup
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB23_43
# %bb.27:                               # %if.then.i.i26
	callq	_ZdlPv@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB23_41:                              # %lpad22.loopexit.split-lp
.Ltmp209:
	jmp	.LBB23_42
.LBB23_40:                              # %lpad22.loopexit
.Ltmp206:
.LBB23_42:                              # %lpad22
	movq	%rax, %rbx
	leaq	104(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.LBB23_43:                              # %ehcleanup35
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end23:
	.size	_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end23-_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.p2align	2, 0x0
GCC_except_table23:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp191-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp191
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp212-.Lfunc_begin9         #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.uleb128 .Ltmp195-.Lfunc_begin9         #     jumps to .Ltmp195
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp205-.Ltmp196              #   Call between .Ltmp196 and .Ltmp205
	.uleb128 .Ltmp206-.Lfunc_begin9         #     jumps to .Ltmp206
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp207-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp208-.Ltmp207              #   Call between .Ltmp207 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin9         #     jumps to .Ltmp209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin9         #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Lfunc_end23-.Ltmp211          #   Call between .Ltmp211 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .omp_task_entry.
	.type	.omp_task_entry.,@function
.omp_task_entry.:                       # @.omp_task_entry.
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rsi), %rbx
	movq	(%rbx), %r14
.Ltmp213:
	movq	%r14, %rdi
	callq	_ZN7gpumath5ArrayIfE7to_hostEv
.Ltmp214:
# %bb.1:                                # %invoke.cont.i
	movq	8(%rbx), %r15
	movq	16(%rbx), %rbx
.Ltmp215:
	leaq	.L.str.26(%rip), %rsi
	leaq	16(%rsp), %rdi
	movq	%rbx, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp216:
# %bb.2:                                # %invoke.cont1.i
.Ltmp217:
	leaq	16(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
.Ltmp218:
# %bb.3:                                # %invoke.cont2.i
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB24_5
# %bb.4:                                # %if.then.i.i.i
	callq	_ZdlPv@PLT
.LBB24_5:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
.Ltmp219:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp220:
# %bb.6:                                # %invoke.cont3.i
.Ltmp221:
	movq	%rax, %rbx
	leaq	.L.str.27(%rip), %rsi
	movl	$15, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp222:
# %bb.7:                                # %invoke.cont5.i
	movss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.Ltmp223:
	movq	%rbx, %rdi
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp224:
# %bb.8:                                # %invoke.cont7.i
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB24_9
# %bb.11:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	cmpb	$0, 56(%r14)
	je	.LBB24_13
# %bb.12:                               # %if.then.i2.i.i.i
	movzbl	67(%r14), %eax
	jmp	.LBB24_15
.LBB24_13:                              # %if.end.i.i.i.i
.Ltmp225:
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp226:
# %bb.14:                               # %.noexc6.i
	movq	(%r14), %rax
.Ltmp227:
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp228:
.LBB24_15:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
.Ltmp229:
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp230:
# %bb.16:                               # %call1.i.noexc.i
.Ltmp231:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp232:
# %bb.17:                               # %.omp_outlined..exit
	xorl	%eax, %eax
	addq	$48, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB24_9:                               # %if.then.i.i.i.i
	.cfi_def_cfa_offset 80
.Ltmp233:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp234:
# %bb.10:                               # %.noexc.i
.LBB24_18:                              # %terminate.lpad.i
.Ltmp235:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end24:
	.size	.omp_task_entry., .Lfunc_end24-.omp_task_entry.
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table24:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Ltmp213-.Lfunc_begin10        # >> Call Site 1 <<
	.uleb128 .Ltmp234-.Ltmp213              #   Call between .Ltmp213 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin10        #     jumps to .Ltmp235
	.byte	1                               #   On action: 1
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .omp_task_entry..29
	.type	.omp_task_entry..29,@function
.omp_task_entry..29:                    # @.omp_task_entry..29
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	(%rsi), %rbx
	movq	(%rbx), %r14
.Ltmp236:
	movq	%r14, %rdi
	callq	_ZN7gpumath5ArrayIfE7to_hostEv
.Ltmp237:
# %bb.1:                                # %invoke.cont.i
	movq	8(%rbx), %r15
	movq	16(%rbx), %rbx
.Ltmp238:
	leaq	.L.str.26(%rip), %rsi
	leaq	16(%rsp), %rdi
	movq	%rbx, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp239:
# %bb.2:                                # %invoke.cont1.i
.Ltmp240:
	leaq	16(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
.Ltmp241:
# %bb.3:                                # %invoke.cont2.i
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB25_5
# %bb.4:                                # %if.then.i.i.i
	callq	_ZdlPv@PLT
.LBB25_5:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
.Ltmp242:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp243:
# %bb.6:                                # %invoke.cont3.i
.Ltmp244:
	movq	%rax, %rbx
	leaq	.L.str.27(%rip), %rsi
	movl	$15, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp245:
# %bb.7:                                # %invoke.cont5.i
	movss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.Ltmp246:
	movq	%rbx, %rdi
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp247:
# %bb.8:                                # %invoke.cont7.i
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB25_9
# %bb.11:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	cmpb	$0, 56(%r14)
	je	.LBB25_13
# %bb.12:                               # %if.then.i2.i.i.i
	movzbl	67(%r14), %eax
	jmp	.LBB25_15
.LBB25_13:                              # %if.end.i.i.i.i
.Ltmp248:
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp249:
# %bb.14:                               # %.noexc6.i
	movq	(%r14), %rax
.Ltmp250:
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp251:
.LBB25_15:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
.Ltmp252:
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp253:
# %bb.16:                               # %call1.i.noexc.i
.Ltmp254:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp255:
# %bb.17:                               # %.omp_outlined..28.exit
	xorl	%eax, %eax
	addq	$48, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB25_9:                               # %if.then.i.i.i.i
	.cfi_def_cfa_offset 80
.Ltmp256:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp257:
# %bb.10:                               # %.noexc.i
.LBB25_18:                              # %terminate.lpad.i
.Ltmp258:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end25:
	.size	.omp_task_entry..29, .Lfunc_end25-.omp_task_entry..29
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table25:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Ltmp236-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp257-.Ltmp236              #   Call between .Ltmp236 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin11        #     jumps to .Ltmp258
	.byte	1                               #   On action: 1
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined
	.type	_ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined,@function
_ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined: # @_ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	(%rdx), %r15d
	testl	%r15d, %r15d
	jle	.LBB26_5
# %bb.1:                                # %omp.precond.then
	movq	%r8, %rbx
	movq	%rcx, %r14
	decl	%r15d
	movl	$0, 4(%rsp)
	movl	%r15d, (%rsp)
	movl	$1, 12(%rsp)
	movl	$0, 8(%rsp)
	movl	(%rdi), %ebp
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	20(%rsp), %rax
	leaq	.L__unnamed_2(%rip), %rdi
	leaq	16(%rsp), %rcx
	leaq	12(%rsp), %r8
	leaq	8(%rsp), %r9
	movl	%ebp, %esi
	movl	$34, %edx
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_for_static_init_4@PLT
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	(%rsp), %eax
	cmpl	%r15d, %eax
	cmovll	%eax, %r15d
	movl	%r15d, (%rsp)
	movslq	4(%rsp), %r12
	cmpl	%r15d, %r12d
	jg	.LBB26_4
# %bb.2:                                # %omp.inner.for.body.preheader
	decq	%r12
	.p2align	4, 0x90
.LBB26_3:                               # %omp.inner.for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rax
	movss	4(%rax,%r12,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	callq	sinhf@PLT
	movq	(%r14), %rax
	movss	%xmm0, 4(%rax,%r12,4)
	movslq	(%rsp), %rax
	incq	%r12
	cmpq	%rax, %r12
	jl	.LBB26_3
.LBB26_4:                               # %omp.loop.exit
	leaq	.L__unnamed_2(%rip), %rdi
	movl	%ebp, %esi
	callq	__kmpc_for_static_fini@PLT
.LBB26_5:                               # %omp.precond.end
	addq	$16, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end26:
	.size	_ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined, .Lfunc_end26-_ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_vararg.cpp
	.type	_GLOBAL__sub_I_vararg.cpp,@function
_GLOBAL__sub_I_vararg.cpp:              # @_GLOBAL__sub_I_vararg.cpp
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	leaq	_ZStL8__ioinit(%rip), %rbx
	movq	%rbx, %rdi
	callq	_ZNSt8ios_base4InitC1Ev@PLT
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
	leaq	__dso_handle(%rip), %rdx
	movq	%rbx, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 8
	jmp	__cxa_atexit@PLT                # TAILCALL
.Lfunc_end27:
	.size	_GLOBAL__sub_I_vararg.cpp, .Lfunc_end27-_GLOBAL__sub_I_vararg.cpp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp_offloading.requires_reg
	.type	.omp_offloading.requires_reg,@function
.omp_offloading.requires_reg:           # @.omp_offloading.requires_reg
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, %edi
	jmp	__tgt_register_requires@PLT     # TAILCALL
.Lfunc_end28:
	.size	.omp_offloading.requires_reg, .Lfunc_end28-.omp_offloading.requires_reg
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28.region_id,@object # @.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28.region_id
.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28.region_id:
	.byte	0                               # 0x0
	.size	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28.region_id, 1

	.type	.L__unnamed_3,@object           # @0
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__unnamed_3:
	.asciz	";unknown;unknown;0;0;;"
	.size	.L__unnamed_3, 23

	.type	.L__unnamed_1,@object           # @1
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_1:
	.long	0                               # 0x0
	.long	2                               # 0x2
	.long	0                               # 0x0
	.long	22                              # 0x16
	.quad	.L__unnamed_3
	.size	.L__unnamed_1, 24

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Initialized integer array "
	.size	.L.str, 27

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Error on device "
	.size	.L.str.1, 17

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	":omp_target_memcpy returned "
	.size	.L.str.2, 29

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"sinhf"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"__ocml_sinh_f32"
	.size	.L.str.4, 16

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"basic_string::_M_create"
	.size	.L.str.6, 24

	.type	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14.region_id,@object # @.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14.region_id
.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14.region_id:
	.byte	0                               # 0x0
	.size	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14.region_id, 1

	.type	.L.offload_sizes.7,@object      # @.offload_sizes.7
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
.L.offload_sizes.7:
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.size	.L.offload_sizes.7, 32

	.type	.L.offload_maptypes.8,@object   # @.offload_maptypes.8
	.p2align	4, 0x0
.L.offload_maptypes.8:
	.quad	37                              # 0x25
	.quad	288                             # 0x120
	.quad	37                              # 0x25
	.quad	37                              # 0x25
	.size	.L.offload_maptypes.8, 32

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"Initialized float-"
	.size	.L.str.9, 19

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	" array "
	.size	.L.str.10, 8

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Error allocating Array on host "
	.size	.L.str.11, 32

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Error allocating Array on device "
	.size	.L.str.12, 34

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"timings/"
	.size	.L.str.13, 9

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Builtin version of "
	.size	.L.str.14, 20

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	": "
	.size	.L.str.15, 3

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Vendor version of "
	.size	.L.str.16, 19

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"figures/data/"
	.size	.L.str.17, 14

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	".txt"
	.size	.L.str.18, 5

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"basic_string::append"
	.size	.L.str.19, 21

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"std::get<0>(input).length() == output.length()"
	.size	.L.str.20, 47

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"include/compare.h"
	.size	.L.str.21, 18

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,@object # @__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE:
	.asciz	"double gpumath::apply_fun_gpu(std::tuple<Array<args>...> &, Array<T> &) [T = float, F = &sinhf, args = <float>]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE, 112

	.type	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23.region_id,@object # @.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23.region_id
.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23.region_id:
	.byte	0                               # 0x0
	.size	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23.region_id, 1

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE,@object # @__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE:
	.asciz	"double gpumath::apply_fun_gpu(std::tuple<Array<args>...> &, Array<T> &) [T = float, F = &__ocml_sinh_f32, args = <float>]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE, 122

	.type	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23.region_id,@object # @.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23.region_id
.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23.region_id:
	.byte	0                               # 0x0
	.size	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23.region_id, 1

	.type	.L.offload_sizes.24,@object     # @.offload_sizes.24
	.p2align	4, 0x0
.L.offload_sizes.24:
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.size	.L.offload_sizes.24, 24

	.type	.L.offload_maptypes.25,@object  # @.offload_maptypes.25
	.p2align	4, 0x0
.L.offload_maptypes.25:
	.quad	800                             # 0x320
	.quad	288                             # 0x120
	.quad	288                             # 0x120
	.size	.L.offload_maptypes.25, 24

	.type	.L.str.26,@object               # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	"differences/"
	.size	.L.str.26, 13

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	" max abs diff: "
	.size	.L.str.27, 16

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"H2D error on device "
	.size	.L.str.30, 21

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	": omp_target_memcpy returned "
	.size	.L.str.31, 30

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,@object # @__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE:
	.asciz	"double gpumath::apply_fun_cpu(std::tuple<Array<args>...> &, Array<T> &) [T = float, F = &sinhf, args = <float>]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE, 112

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"!output.on_device()"
	.size	.L.str.32, 20

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"!std::get<0>(input).on_device()"
	.size	.L.str.33, 32

	.type	.L__unnamed_2,@object           # @2
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L__unnamed_2:
	.long	0                               # 0x0
	.long	514                             # 0x202
	.long	0                               # 0x0
	.long	22                              # 0x16
	.quad	.L__unnamed_3
	.size	.L__unnamed_2, 24

	.type	.L.str.34,@object               # @.str.34
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.34:
	.asciz	"host_array.length() == dev_array.length()"
	.size	.L.str.34, 42

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@object # @__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.asciz	"T gpumath::cpu_abs_diff(const Array<T> &, Array<T> &, std::string) [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 79

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"!host_array.on_device()"
	.size	.L.str.35, 24

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"!dev_array.on_device()"
	.size	.L.str.36, 23

	.type	.omp_offloading.entry_name,@object # @.omp_offloading.entry_name
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4, 0x0
.omp_offloading.entry_name:
	.asciz	"__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28"
	.size	.omp_offloading.entry_name, 86

	.type	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28,@object # @.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28
	.section	omp_offloading_entries,"aw",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28
.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28:
	.quad	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28.region_id
	.quad	.omp_offloading.entry_name
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28, 32

	.type	.omp_offloading.entry_name.37,@object # @.omp_offloading.entry_name.37
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4, 0x0
.omp_offloading.entry_name.37:
	.asciz	"__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14"
	.size	.omp_offloading.entry_name.37, 86

	.type	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14,@object # @.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
	.section	omp_offloading_entries,"aw",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14:
	.quad	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14.region_id
	.quad	.omp_offloading.entry_name.37
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14, 32

	.type	.omp_offloading.entry_name.38,@object # @.omp_offloading.entry_name.38
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4, 0x0
.omp_offloading.entry_name.38:
	.asciz	"__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23"
	.size	.omp_offloading.entry_name.38, 129

	.type	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23,@object # @.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
	.section	omp_offloading_entries,"aw",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23:
	.quad	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23.region_id
	.quad	.omp_offloading.entry_name.38
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23, 32

	.type	.omp_offloading.entry_name.39,@object # @.omp_offloading.entry_name.39
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4, 0x0
.omp_offloading.entry_name.39:
	.asciz	"__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23"
	.size	.omp_offloading.entry_name.39, 133

	.type	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23,@object # @.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
	.section	omp_offloading_entries,"aw",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23:
	.quad	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23.region_id
	.quad	.omp_offloading.entry_name.39
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23, 32

	.section	.init_array.0,"aw",@init_array
	.p2align	3, 0x90
	.quad	.omp_offloading.requires_reg
	.section	.init_array,"aw",@init_array
	.p2align	3, 0x90
	.quad	_GLOBAL__sub_I_vararg.cpp
	.type	.Lllvm.embedded.object,@object  # @llvm.embedded.object
	.section	.llvm.offloading,"e",@llvm_offloading
	.p2align	3, 0x0
.Lllvm.embedded.object:
	.asciz	"\020\377\020\255\001\000\000\000pH\000\000\000\000\000\000 \000\000\000\000\000\000\000(\000\000\000\000\000\000\000\002\000\001\000\000\000\000\000H\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\220\000\000\000\000\000\000\000\334G\000\000\000\000\000\000i\000\000\000\000\000\000\000\207\000\000\000\000\000\000\000n\000\000\000\000\000\000\000u\000\000\000\000\000\000\000\000arch\000triple\000amdgcn-amd-amdhsa\000gfx906\000\000\000BC\300\3365\024\000\000\005\000\000\000b\f0$MY\276f\275\373\264O\033\310$D\0012\005\000!\f\000\000\b\016\000\000\013\002!\000\002\000\000\000\026\000\000\000\007\201#\221A\310\004I\006\02029\222\001\204\f%\005\b\031\036\004\213b\200\030E\002B\222\013B\304\0202\0248\b\030K\n2b\210Hp\304!#D\022\207\214\020A\222\002d\310\b\261\024 CF\210 \311\0012b\204\030*(*\2201|\260\\\221 \306\310\000\000\000\211 \000\000)\000\000\000\"f\004\020\262B\202\211\021RB\202\211\221q\302PH\n\t&F\306\005Bb&\b\302`\262 \230#\000\003\232#@\362b8G\232\"J\230|d \232\351\237P\021\004A $\2010\002P\212C\020\004a\216 (D \f\311\034\001(L\026\024e8\026\246\004AQ\016!\b\004A\020\202\240$\207 ,\213 \bB\031\016!(\312!\004A\020\b\202\260\024!\020\312p\b\303\f@!\252\252\252\nq,\202P\220C\020\226e\021\204\"TU\031\252*(CUUe\b\202`  \r\204)\200,\020\000Q\030\000\000\331\001\000\000\033\320$\370\377\377\377\377\001\020\0008\000\244a\035\312A\036\334\241\034\330\001 \334\341\035\332\200\036\344!\034\340\001\036\322\301\035\316\241\r\332!\034\350\001\035\000z\220\207z(\007\200\230\007z\b\207qX\2076\200\007yx\007z(\207q\240\207w\220\2076\020\207z0\007s(\007yh\203yH\007}(\007\000\017\000\202\036\302A\036\316\241\034\350\241\r\306\001\036\352\0018\007s\300\207<\200\003;\000\bz\b\007y8\207r\240\20760\207r\b\007z\250\007y(\207y\000\326 \016\354\240\r\304!\035\350\241\r\322\301\035\346\201\036\346\201\r\326`\034\322\241\r\322\301\035\346\201\036\346\201\r\326\200\034\330\241\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\342\240\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\342\000\016\332 \035\334a\036\350a\036\330`\r\310\341\035\350A\016\332 \035\334a\036\350a\036\330`\r\310\341\035\350\341\016\332 \035\334a\036\350a\036\330`\r\310\001\036\340\201\r\326\340\034\314\001\037\360\240\r\322\301\035\346\201\036\346\201\r\326\340\034\314\001\037\362\240\r\322\301\035\346\201\036\346\201\r\326`\036\332\240\035\312\241\035\344\241\034\302\201\035\350!\035\332\241\034\330`\r\346\241\r\332\241\034\332\201\036\322\241\035\312\241\r\322\301\035\346\201\036\330`\r\356!\034\354\241\034\314A\036\336\301\035\350a\036\322A\037\312\301\016\350\000 \352\301\035\322\301\034\336A\036\332\241\r\356\341\035\344a\035\332\340\034\344\341\035\352\001\036\332`\036\322A\037\312\001\240\007y\250\207r\00060B\000\220\002p\006A@\004i@l \006\001 \205\r\f1\000\244\000\234A\020\020A\032\020\033\230\202\000H\0018\203  \2024 6D\306\377\377\377\377\017\200)\000\247\000\370\001\360\007\200\004\364A`\013\303\006\342\b\000>\330@ \002\260l \222\377\377\377\377\037\000i\203\210(\377\377\377\377?\000\002\000\007\200D\270\303;\264\001=\310C8\300\003<\244\203;\234C\033\264C8\320\003:\000\364 \017\365P\016\0001\017\364\020\016\343\260\016m\000\017\362\360\016\364P\016\343@\017\357 \017m \016\365`\016\346P\016\362\320\006\363\220\016\372P\016\000\036\000\004=\204\203<\234C9\320C\033\214\003<\324\003p\016\346\200\017y\000\007v\000\020\364\020\016\362p\016\345@\017m`\016\345\020\016\364P\017\362P\016\363\000\254A\034\330A\033\210C:\320C\033\244\203;\314\003=\314\003\033\254\3018\244C\033\244\203;\314\003=\314\003\033\254\0019\260C\033\244\203;\314\003=\314\003\033\254\0019\274\003=\304A\033\244\203;\314\003=\314\003\033\254\0019\274\003=\304\001\034\264A:\270\303<\320\303<\260\301\032\220\303;\320\203\034\264A:\270\303<\320\303<\260\301\032\220\303;\320\303\035\264A:\270\303<\320\303<\260\301\032\220\003<\300\003\033\254\3019\230\003>\340A\033\244\203;\314\003=\314\003\033\254\3019\230\003>\344A\033\244\203;\314\003=\314\003\033\254\301<\264A;\224C;\310C9\204\003;\320C:\264C9\260\301\032\314C\033\264C9\264\003=\244C;\224C\033\244\203;\314\003=\260\301\032\334C8\330C9\230\203<\274\203;\320\303<\244\203>\224\203\035\320\001\260AY\002 \001\026\200\024\200j\003\302\b@\002,\000\265\201h\006\200\0246\020\016\001\220\302\006\350)\200\005 \005\340\f\200*\b\210 \r\210\r\bd\000\013@\n\000\035l\200\242\003X\000R\000\316\000\250\202\200\b\322\200\330\000I\b\260\000\244\000\234\001P\005\001\021\244\001\261\201\230\376\377\377\377\177\000\204\r\023\365\377\377\377\377\003`\n\300)\000~\000\374\001 \001u\000\364A`\013\300\006\242\n\000R\330@\"\326\377\377\377\377\017\200\000\254\001\000\007\200D\270\303;\264\001=\310C8\300\003<\244\203;\234C\033\264C8\320\003:\000\364 \017\365P\016\0001\017\364\020\016\343\260\016m\000\017\362\360\016\364P\016\343@\017\357 \017m \016\365`\016\346P\016\362\320\006\363\220\016\372P\016\000\036\000\004=\204\203<\234C9\320C\033\214\003<\324\003p\016\346\200\017y\000\007v\000\020\364\020\016\362p\016\345@\017m`\016\345\020\016\364P\017\362P\016\363\000\254A\034\330A\033\210C:\320C\033\244\203;\314\003=\314\003\033\254\3018\244C\033\244\203;\314\003=\314\003\033\254\0019\260C\033\244\203;\314\003=\314\003\033\254\0019\274\003=\304A\033\244\203;\314\003=\314\003\033\254\0019\274\003=\304\001\034\264A:\270\303<\320\303<\260\301\032\220\303;\320\203\034\264A:\270\303<\320\303<\260\301\032\220\303;\320\303\035\264A:\270\303<\320\303<\260\301\032\220\003<\300\003\033\254\3019\230\003>\340A\033\244\203;\314\003=\314\003\033\254\3019\230\003>\344A\033\244\203;\314\003=\314\003\033\254\301<\264A;\224C;\310C9\204\003;\320C:\264C9\260\301\032\314C\033\264C9\264\003=\244C;\224C\033\244\203;\314\003=\260\301\032\334C8\330C9\230\203<\274\203;\320\303<\244\203>\224\203\035\320\001\260\201\270\n\200\0246 \330\001,\000)\000\325\006\020\311\376\377\377\377\177\000\326\000\220\bwx\2076\240\007y\b\007x\200\207tp\207sh\203v\b\007z@\007\200\036\344\241\036\312\001 \346\201\036\302a\034\326\241\r\340A\036\336\201\036\312a\034\350\341\035\344\241\r\304\241\036\314\301\034\312A\036\332`\036\322A\037\312\001\300\003\200\240\207p\220\207s(\007zh\203q\200\207z\000\316\301\034\360!\017\340\300\016\000\202\036\302A\036\316\241\034\350\241\r\314\241\034\302\201\036\352A\036\312a\036\2005\210\003;h\003qH\007zh\203tp\207y\240\207y`\2035\030\207th\203tp\207y\240\207y`\2035 \007vh\203tp\207y\240\207y`\2035 \207w\240\2078h\203tp\207y\240\207y`\2035 \207w\240\2078\200\2036H\007w\230\007z\230\0076X\003rx\007z\220\2036H\007w\230\007z\230\0076X\003rx\007z\270\2036H\007w\230\007z\230\0076X\003r\200\007x`\20358\007s\300\007<h\203tp\207y\240\207y`\20358\007s\300\207<h\203tp\207y\240\207y`\2035\230\2076h\207rh\007y(\207p`\007zH\207v(\0076X\203yh\203v(\207v\240\207th\207rh\203tp\207y\240\0076X\203{\b\007{(\007s\220\207wp\007z\230\207t\320\207r\260\003:\0006D\332\377\377\377\377\017\300)\000~\000\374\001 \001u\000\364A`\013\300\206c\373\377\377\377\377\001\220\002[\370\203\r\004G\000g\260\201\350\n\340\f6\020\236\001\234\301\006\342;\2003\330@\200\001\002\234\301\006#\f\376\377\377\377\177\000\326\000\2206\020b\000\000\244\000\000\000\000I\030\000\000\022\000\000\000\023\212@\030\210b\302`\034\310\204 \231\220(\013\3238\017\024I\023\202iB@M \202jh& \326\3024\316\005a\023\204\254\232\200(\013\3238\027\204M\b\264\t\3016\241H\270\316\373&\f\211\007\006\023\2060\020\203\n\023\242ph\007r8\207qp\2076\b\207v \2076\b\207v \007t\230\207p\330\000\033\345\320\006\360\240\007v@\007z`\007t\320\006\360\020\007z`\007t\240\007v@\007m\000\017r\240\007s \007z0\007r\320\006\3600\007z0\007r\240\007s \007m\000\017t\240\007v@\007z`\007t\320\006\360P\007z0\007r\240\007s \007m\000\017v\240\007s \007z0\007r\320\006\360p\007z\020\007v\000\007z \007u`\007z \007u`\007z0\007r\320\006\360\200\007z\020\007r\200\007z\020\007r\200\007m\220\016v@\007z`\007t\320\006\366\020\007v\240\007q`\007m`\017r@\007z0\007r\320\006\3660\007r\240\007s \007m`\017t\200\007z`\007t\320\006\366\220\007v\240\007q \007x\320\006\366\020\007y \007z \007u`\007m`\017rP\007v\240\007rP\007v\320\006\366P\007q \007zP\007q \007m`\017q\000\007r@\007z\020\007p \007t\320\006\366 \007p@\007x\240\007r\000\007t\200\007m\340\016s \007z`\007t\320\006\2630\007r\320\006\241P\007mp\nq\320\006\356\220\016zp\007z\200\007+\032v`\007{h\0077h\207r\240\207p \207p\240\207pPz@\210\220\f2d\244\310\220\240\021\302\344\324\231\313\307/{X\036\226\237]c8|\307\004P\301\341\006\021\000\004\200\000\000\000\020P\000\260c\242\316 8\334 \002\200\000\020\000\000\000\002\n\000vL{\220\006\301\341\006\021\000\004\200\000\000\000\020P\000\260c\"\0070\b\0167\210\000 \000\004\000\000\200\200\002\200\035\023I\230Ap\270A\004\000\001 \000\000\000\004\024\000\354\230\324\342\f\210\341\024\222\000\000\200\000\000\000 \240\000`\307\024\033gP\034\250\220\020\000\000\004\000\000\000\001\005\000;&\3748\203\342H\205\204\000\000 \000\000\000\b(\000\3301\375\310\031\024\207*$\004\000\000\001\000\000@@\001\300\216\311T~a8@\001\002\000\001\000\000\000\000\002\n\000vLe\363\013\303\001\n\020\000\b\000\000\000\000\020P\000\260c\"!\225\030\016P\200\000@\000\000\000\000\200\200\002\200\035\223K\271\304p\200\002\004\000\002\000\000\000\000\004\024\000\354\230x\f\035\206#\024 \000\000\000\001\000\000\000\240\000`\307Dr\3500\034\241\000\001\000\000\b\000\000\000\000\005\000;&\366\233\211\341\b\005\b\000\000@\000\000\000\000(\000\3301\375cp\023\303\021\n\020\000\000\200\000\000\000\000P\000@K\005\t\033\253 pH\205\246A- \273\000D\001\000\b\200\000\000\000\000\004\000\005\f\251\3725\220\024 \000\000\000\000\000\001\000\000\000\000\000\n\030R\275l`5@\000\b\000\000\000\000\000\000\000\000\000\0240\244*\333\200j\200\000\020\000\000\000\000\000\000\000\000\000(`H\225\267\001\0328@\000\f\000\000\000\002\000\000\000\000\000\0240\244\n\337\340{\200\000\030\000\000\000\004\000\000\000\000\000(`H\005\302\301;@\0000\020\000\000\000\000\000\000\000\020\000\0240\244z\347\000{\200\000\030\000\000\000\004\000\000\000\000\000(`Hu\322A\027\001\0010\000\000\000\b\000\000\000\000\000P\300\220\212\254\003I\002\002\240\000\000\000\020\000\000\000\000\000\240\200!\225]\007\330\004\004\300\000\000\000 \000\000\000\000\000@\001C*\327\016(\n\b\000\000\000\000@\000\000\000\000\000\200\002\206T\342\035\324\002\262\013@\024\000\200\000\b\000\000\000@\000P\300\220\352\316\203w\200\000` \000\000\000\000\000\000\000 \000(`He\366\001d\001\001`\000\000\000\000\000\000\000\000\000P\300\220\312\356\003\220\270v\001\210\016\000\020\000\001\000\000\000\b\000\n\030R\331\241\240\023\030\000\f\b\000\000\000\000\000\000\000\004\000\005\f\251`S(2 \000\022\000\000\000\001\000\000\000\000\000\n\030R\325\246@\022\327.\000\321\001\000\002 \000\000\000\000\001@\001C\252\\\025|\002\003\200A\001\000\000\000\000\000\000\200\000\240\200!\325\375\nM\006\004\200\001\000\000\000\000\000\000\000\000@\001C*\022\026\246\f\b\000\003\000\000\000\000\000\000\000\000\200\002\206T7,0\026\020\000\006\000\000\000\000\000\000\000\000\000\005\f\251\306X\2504 \000\f\000\000\000\000\000\000\000\000\000\n\030R\341\261\020m@\000\030\000\000\000\000\000\000\000\000\000\0240\244Je\241\311\200\0000\000\000\000\000\000\000\000\000\000(`He\313B\303\001\001\260\000\000\000\000\000\000\000\000\000P\200\304\006\201\302\006\016\000\000Y \000\000\037\000\000\0002\036\230\034\031\021L\220\214\t&G\306\004C\nF\000\212\245\b\212\020\244\b\021\3123\240\334\321m\023\027\312\245\f\212\035\3356q\2418J\240p\n\324\240\020\312\241\314\n\202\206\"\030\001\240e\004\200\004c@\301\030H0\006\030\214\201\005\"\324\332\325\335k\367\373\356\336\325\335k\367\373\356\336\301v\260\335\216\n,Z\257\226\253\200E\013\326r\025\260h\305Z\256\002\031H\b\207\304\"\000\000\261\030\000\000\306\000\000\0003\b\200\034\304\341\034f\024\001=\210C8\204\303\214B\200\007yx\007s\230q\f\346\000\017\355\020\016\364\200\0163\fB\036\302\301\035\316\241\034f0\005=\210C8\204\203\033\314\003=\310C=\214\003=\314x\214tp\007{\b\007yH\207pp\007zp\003vx\207p \207\031\314\021\016\354\220\016\3410\017n0\017\343\360\016\360P\0163\020\304\035\336!\034\330!\035\302a\036f0\211;\274\203;\320C9\264\003<\274\203<\204\003;\314\360\024v`\007{h\0077h\207rh\0077\200\207p\220\207p`\007v(\007v\370\005vx\207w\200\207_\b\207q\030\207r\230\207y\230\201,\356\360\016\356\340\016\365\300\016\3540\003b\310\241\034\344\241\034\314\241\034\344\241\034\334a\034\312!\034\304\201\035\312a\006\326\220C9\310C9\230C9\310C9\270\3038\224C8\210\003;\224\303/\274\203<\374\202;\324\003;\260\303\f\307i\207pX\207rp\203th\007x`\207t\030\207t\240\207\031\316S\017\356\000\017\362P\016\344\220\016\343@\017\341 \016\354P\0163 (\035\334\301\036\302A\036\322!\034\334\201\036\334\340\034\344\341\035\352\001\036f\030Q8\260C:\234\203;\314P$v`\007{h\0077`\207wx\007x\230QL\364\220\017\360P\0163\036j\036\312a\034\350!\035\336\301\035~\001\036\344\241\034\314!\035\360a\006T\205\2038\314\303;\260C=\320C9\374\302<\344C;\210\303;\260\303\214\305\n\207y\230\207w\030\207t\b\007z(\007r\230\201\\\343\020\016\354\300\016\345P\016\3630#\301\322A\036\344\341\027\330\341\035\336\001\036fH\031;\260\203=\264\203\033\204\3038\214C9\314\303<\270\3019\310\303;\324\003<\314H\264q\b\007v`\007q\b\207qX\207\031\333\306\016\354`\017\355\340\006\360 \017\3450\017\345 \017\366P\016n\020\016\3430\016\3450\017\363\340\006\351\340\016\344P\016\3700#\342\354a\034\302\201\035\330\341\027\354!\035\346!\035\304!\035\330!\035\350!\037f \235;\274C=\270\0039\224\2039\314X\274pp\007wx\007z\b\007zH\207wp\207\031\313\347\016\3570\017\341\340\016\351@\017\351\240\017\3450\303\001\003s\250\007w\030\207_\230\207pp\207t\240\207t\320\207r\230\201\204A9\340\3038\260C=\220C9\314@\304\240\035\312\241\035\340A\036\336\301\034f$c0\016\341\300\016\3540\017\351@\017\3450C!\203u\030\007sH\207_\240\207|\200\207r\230\261\224\001<\214\303<\224\3038\320C:\274\203;\314\303\214\305\fH!\025Ba\036\346!\035\316\301\035R\201\024f g@\016\342p\016n@\016\345`\0163\0344@\207r\b\007x\b\007v`\207w\030\207yH\007z(\207\031G\032\314\203<\214\003;\274\3038\000\000\000\000y \000\000'\001\000\000r\036H C\210\f\031\tr2H #\201\214\221\221\321D\240\020(d<12B\216\220!\2438Q{\005\343\360\013t@\007\206\246\030MrH\350P\022\303\363,\005\000_ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2_kernelamdgpu_code_object_versionwchar_sizeopenmpopenmp-devicePIC LevelThinLTOEnableSplitLTOUnitclang version 17.0.0 (https://github.com/llvm/llvm-project.git 123545e9e59f765afa6ddf3b6f07191509604e94)AMD clang version 16.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.5.0 23144 5fe166b8eac068df976282939b880a75a3a63014)intomnipotent charSimple C++ TBAAany pointerfloat\000&n\000\000\000\000\000\0000\202\020\264\301\bB \007#\b\301\034\214 \004t0\202\020\324\301\bB\360\006#\b\201\035\214 \004w0\202\020\340\301\bB\220\007#\b\2024\202 x#\bB\030\214 \bd0\202\020\350\301\bB\260\007#\b\001\037\214 \004}0\202\020\370\301\b\302\022\n3\034Te\005\027\205\315pP\225%\\T6\303AU\332\260Q\334\f\007UiDGQ3\f^\301\3150|\0057\303\000\006\0057\303\020\006\0057\303\300\031b0\303\300\035c0\303@\006H\031\3140\220AR\0063\ff\240p3\f\334B\3150p\f7\203\220Q3\004\315\f\2013C\020\3150@zp\0063\f\317\036\234\301\f\003\037\360\301\031\3140H{p\0063\f~\340\007g0\3030\355\301\031\3140\200\002(\234\301\271\001 \006b \006b \006b \006b \006b\300qb \006b \006b \006b \006z\240\007z\240\007b \006h\200\006h\200\006n\340\006h \006b\300Y\226\345\006n@\007n@\007n #\201\tJ\350\255\r\356\353\315\314\214\355-\214\314%\315\315\354m\024\342\f\320 \r\324 !7;\2736\22707\2677\2720\272\2647\267\271Q\2105`\2036p\203\214\330\330\354\332\\\332\336\310\352\330\312\\\314\330\302\316\346F9\336\000\016\342@\016\346\200\016\352 '66\2736\027\2664\267\26529\22778\272\2647\267\271Q\200\224\336\340\312\334\306\330\\\336\306\330\\\354\312\344\346\322\336\334F\t\354 \02566\2736\2274\26227\272Q\204;\300\003\000\000\000\251\030\000\000'\000\000\000\013\nr(\207w\200\007zXp\230C=\270\3038\260C9\320\303\202\346\034\306\241\r\350A\036\302\301\035\346!\035\350!\035\336\301\035\0264\343`\016\347P\017\341 \017\344@\017\341 \017\347P\016\364\260\200\201\007y(\207p`\007vx\207q\b\007z(\007rXp\234\3038\264\001;\244\203=\224\303\002k\034\330!\034\334\341\034\334 \034\344a\034\334 \034\350\201\036\302a\034\320\241\034\310a\034\302\201\035\330a\301\001\017\364 \017\341P\017\364\200\016\013\210u\030\007sH\007\000\000\000\000\321\020\000\000\032\000\000\000\007\314<\244\203;\234\003;\224\003=\240\203<\224C8\220\303\001pP\204\3039\224\203;\320\303\001\023\016\347P\016\356@\017m\360\016\356P\016m\020\016\363p`\274\203;\224C\033\204\303<\034@\367\360\016\362\260\016\347 \017\357P\017\360\320\006\357\340\016\345\320\006\3410\017\007\311=\274\203<\254\3039\310\303;\324\003<\000\000a \000\000\033\001\000\000\023\004H,\020\000\000\000\007\000\000\000\024\324@\331\006\224\002%#\000\264\024B\201\025\003\t\306\200\2011p0\002\000\000\000\0003\021A\200\007\2430\023\021\004x0\n3\021A\200\007\2430\023\021\004x0\n3\021^\200\007\2440bp\f!\b\006\312* \0373\334\020@`0\313 \004\201f\005\360\210A1\204 \030L\245\260\214\030\030\000\b\202A\343\nN\221\205\3004\004\003\203\n\004\206\033\004<0\203Y\206\341\br\0218\033\201\363\0218\033\201G\f\f\006\004\301\240\261\205+\0326 \242>\030\200\021\003c\000A0hl\341\202\206\r\b\310\030\200\021\003c\000A0hl\341z\206\r\210G\016\006`\304\300\030@\020\f\032[\270\234a\003\302\351\203\001\0301 \206\020\004\003\207\026F\f\232\006\004\301\340\241\005J\331\204\201(\346 \240(\030#\006\006\000\202`\300\201B\200\f\033\020S0\000D\005c\270!X\320`\226\2010\202\356\r\222(\334A\367\206i\024B\241{\003E\n|\320\275\241*\205;\350\336`\231\202\030\314\022\024\003\025\201CD\305@E \021U\221\302\022),\221\202\240\303\006\004\027\020@\n\202\016\033\020K@\000\303\006\204\362\006\0040l@$n@\000\303\006\004\322\006\0040l@\034l@\000#\006\215\003\202` \375\002\031d\242\260\006k \016b\200\225\001}\301 1\b\006\006\002\b\f\033\020d\020\f\000\215A00 @`\304\300\000@\020\f\270Y\b\266a\003\302\f\202\001\030n :4\230e(\214`\304\300\030@\020\f\242sP\0030\230%8F\f\214\001\004\301\240a\0077(\203\021\003c\000A0h\330\301\r\314`\304\300\030@\020\f\032vp\2033\03010\006\020\004\203\206\035\334\000\rF\f\f\000\004\301\240a\2076 \203\021\003c\000A0\240\310a\rDa\226 \b\007\002\000\000\000}\000\000\000\306f\bN3\370\210\375!\202\323\f\365\355#7 9\314\343?\021!8\315\340O\007\321\370\210\3211\276\303<>R\3714\356#\346DH\023\361\330\227C\\\204\360S\022\021\375\2023\020\326D\\\f\322\330V\343;\314\343KS\204\f\204\217\030\237\001\f\303\356#\346g\000\303\300\373\210\2015\013\321\030\323\341\033\213\023\000\213uU\002\360LTD\f\177\005D\322\017\fC$\371\210-\031\013\321\030\323aY\216\3570\217/8L\340/\201\217\230\332\324T\317t\375\r\305\374\323\021\021\300 \371\2101\031\003Q=Sd\200\001\206\300<\271\217\030\227\343;\314\343#\322\277\000\322\344#\007P\020\315\024a\226V\371\016\363\370\210\364/\2004\371\200$\000\322\344#\206V\371\016\363\370\202\303\004\376\022\370\200$\000\322\344#G\2409\314\343#MCD~\341D~\340\f\230\277D\376s\370\210\211q\002\360LTD\f\177\005D\322\017\fC$\371\200$\000\322\344#FfHT`\373\210\2651\276\303<>R\371t\355#wp\016\377\3570\317\357\024\305\342\000\003\322\030?^\3749\337\353\003p\353\377?\237\273\361P\f0\035\365M5H\341D\314\037\001\215A\210\210\347U\353\311\376\271\026E\000&\266\277\347\261\366\317\332\377\277\330\374\3570\317\357P\323\2024\304\340\023\0272YY!0\217\217\234\300CID\364\013\316@\370D3E\230i9\276\303<\276\3400\201O\005>bu\21549\021\301\020\221A\334>r\001\212\3400\214\323\370\0211\235\301\3430\217\2778\316\343\023\0272\371\210\235U\276\303<\276\3400\201O\005> \t\2004\371\210\271\035\002\363\344\266\217\\\001\3450\217\2174\r\021\371\205\023\371\2013`>bf\224\3570\217/M\0212\020> \t\2004\371\b\000\000\000\0011\000\000\030\000\000\000[\206&\340\203-\203\025\360\301\226\001\013\370`\313\240\005|\260e\340\002>\3302\204A\300\007[\0068\b\374`\313 \007\201\037l\031\346 \360\203-\003\035\004~\260e\250\203\300\017\266\fv\020\370\301\226\001\017\002>\3302\344A\300\007[\206=\b\370`\313\300\007\001\037l\031\376 \340\003\000\000\000\000\000\000\000\000a \000\000\256\000\000\000\023\004F,\020\000\000\000\004\000\000\000\024\224\020-\205@\2021\200`\f\034\000\000\000\0003\021A\200\007\2430\023\021\004x0\n3\021A\200\007\2430\023\021\004x0\n\304\004c\270!x\0033\230e\b\212 \t\201\223\0208\017\2013\021x\304\300\030@\020\f\232Vh\224\021\003c\000A0hZ\241I\222\n \251\000\206\r\bF\030\200a\003b\t\006`\304\300\030@\020\f\232Wx\224a\003BY\203\001\03010\006\020\004\203\346\025\236d\330\200H\354`\000\b\013\306\210A\323\200 \030<\253\360\004\221A\024\007\033\260\0015\301\310`\221\341\206\000\023\203Y\006B\b\310\t\306,\3010P\261\030B4d\020\000e\301\240,\030\030\f\"\200\301\000\002=\020<c\330\200\b\204\001@\304\000\201\f\026\031n\b\306@\ff\031\210!\03010\006\020\004\203\b\027\270g\304\300\030@\020\f\232^\360\260\021\003c\000A0hz\301\313F\f\214\001\004\301\240\351\005O\03310\006\020\004\203\246\027\274m\226\240\320p \000\000\000S\000\000\000\306\264\370\201C5\303?!\203oe\206\3404U\276\233X!8Mu[\332\2014C\005D\222a\035\276\303<>\025\234\000\3460\217\2174\r\021\371\205\023\371\2013`\376\022\371\317ap\205\3404UnO\306B4\306t\030\2241\020\3253E\246\305\370\016\363\370\210\364/\2004\231\327\344;\314\343#\322\277\000\322\344\003\222\000H\323\001\024D3E\230\275\021\3000\364\027\0009\314\343?\021!8\315\340O\007\321\230S\343?\021Q!\016%\371T\340\233Y\"0\217\3567\316\304[\034\"0\217\3567\316dR\2044\021\217\205\021\202\323T\346\206\000Q\004`\310pY\024q1HcK\214o,N\000,\377\204\f\376\0214\016\363\370\213\343<>q!\223uI\276\303<\2764E\310@\370\200$\000\322t\005\217\303<\376\023\021\202\323\f>\321\f\326\324\370ODT\210CI\376\022\370\206v\bNS\3455m`\216\3570\217\277\004> \t\2004Y\033\001\f\003\177\003\222\303<>\3224D\344\027N\344\007\316\200\331\227\343;\314\343S\201\017H\002 M\226\265\370\016\363\370\322\024!\003al\004C-\273q\r\002\363\330\325\341;\314\343/\001\000\0011\000\000\016\000\000\000[\006\"\340\203-\303\023\360\301\226\001\n\370`\313 \005|\260e\240\002>\3302T\001\037l\031\256\200\017\266\f[\300\007[\206/\340\203-\003\030\004|\260e \203\200\017\000\000\000\000\000a \000\000\033\001\000\000\023\004H,\020\000\000\000\007\000\000\000\024\324@\331\006\224\002%#\000\264\024B\201\025\003\t\306\200\2011p0\002\000\000\000\0003\021A\200\007\2430\023\021\004x0\n3\021A\200\007\2430\023\021\004x0\n3\021^\200\007\2440bp\f!\b\006\312* \0373\334\020@`0\313 \004\201f\005\360\210A1\204 \030L\245\260\214\030\030\000\b\202A\343\nN\221\205\3004\004\003\203\n\004\206\033\004<0\203Y\206\341\br\0218\033\201\363\0218\033\201G\f\f\006\004\301\240\261\205+\0326 \242>\030\200\021\003c\000A0hl\341\202\206\r\b\310\030\200\021\003c\000A0hl\341z\206\r\210G\016\006`\304\300\030@\020\f\032[\270\234a\003\302\351\203\001\0301 \206\020\004\003\207\026F\f\232\006\004\301\340\241\005J\331\204\201(\346 \240(\030#\006\006\000\202`\300\201B\200\f\033\020S0\000D\005c\270!X\320`\226\2010\202\356\r\222(\334A\367\206i\024B\241{\003E\n|\320\275\241*\205;\350\336`\231\202\030\314\022\024\003\025\201CD\305@E \021U\221\302\022),\221\202\240\303\006\004\027\020@\n\202\016\033\020K@\000\303\006\204\362\006\0040l@$n@\000\303\006\004\322\006\0040l@\034l@\000#\006\215\003\202` \375\002\031d\242\260\006k\260\013b\200\225\001}\301 1\b\006\006\002\b\f\033\020d\020\f\000\215A00 @`\304\300\000@\020\f\270Y\b\266a\003\302\f\202\001\030n :4\230e(\214`\304\300\030@\020\f\242sP\0030\230%8F\f\214\001\004\301\240a\0077(\203\021\003c\000A0h\330\301\r\314`\304\300\030@\020\f\032vp\2033\03010\006\020\004\203\206\035\334\000\rF\f\f\000\004\301\240a\2076 \203\021\003c\000A0\240\310a\rDa\226 \b\007\002\000\000\000}\000\000\000\306f\bN3\370\210\375!\202\323\f\365\355#7 9\314\343?\021!8\315\340O\007\321\370\210\3211\276\303<>R\3714\356#\346DH\023\361\330\227C\\\204\360S\022\021\375\2023\020\326D\\\f\322\330V\343;\314\343KS\204\f\204\217\030\237\001\f\303\356#\346g\000\303\300\373\210\2015\013\321\030\323\341\033\213\023\000\213uU\002\360LTD\f\177\005D\322\017\fC$\371\210-\031\013\321\030\323aY\216\3570\217/8L\340/\201\217\230\332\324T\317t\375\r\305\374\323\021\021\300 \371\2101\031\003Q=Sd\200\001\206\300<\271\217\030\227\343;\314\343#\322\277\000\322\344#\007P\020\315\024a\226V\371\016\363\370\210\364/\2004\371\200$\000\322\344#\206V\371\016\363\370\202\303\004\376\022\370\200$\000\322\344#G\2409\314\343#MCD~\341D~\340\f\230\277D\376s\370\210\211q\002\360LTD\f\177\005D\322\017\fC$\371\200$\000\322\344#FfHT`\373\210\2651\276\303<>R\371t\355#VV\b\314\343#wp\016\377\3570\317\357\024\305\342\000\003\322\030?^\3749\337\353\003p\353\377?\237\273\361P\f0\035\365M5H\341D\314\037\001\215A\210\205\347U\353\311\376\271\026E\000&\266\277\347\261\366\317\332\377\277\324\370\3570\317\357P\323\2024\304\340\023\0272\235\300CID\364\013\316@\370D3E\230i9\276\303<\276\3400\201O\005>bu\21549\021\301\020\221A\334>r\001\212\3400\214\323\370\0211\235\301\3430\217\2778\316\343\023\0272\371\210\235U\276\303<\276\3400\201O\005> \t\2004\371\210\271\035\002\363\344\266\217\\\001\3450\217\2174\r\021\371\205\023\371\2013`>bf\224\3570\217/M\0212\020> \t\2004\371\b\000\000\000\0011\000\000\030\000\000\000[\206&\340\203-\203\025\360\301\226\001\013\370`\313\240\005|\260e\340\002>\3302\204A\300\007[\0068\b\374`\313 \007\201\037l\031\346 \360\203-\003\035\004~\260e\250\203\300\017\266\fv\020\370\301\226\001\017\002>\3302\344A\300\007[\206=\b\370`\313\300\007\001\037l\031\376 \340\003\000\000\000\000\000\000\000\000a \000\000\256\000\000\000\023\004F,\020\000\000\000\004\000\000\000\024\224\020-\205@\2021\200`\f\034\000\000\000\0003\021A\200\007\2430\023\021\004x0\n3\021A\200\007\2430\023\021\004x0\n\304\004c\270!x\0033\230e\b\212 \t\201\223\0208\017\2013\021x\304\300\030@\020\f\232Vh\224\021\003c\000A0hZ\241I\222\n \251\000\206\r\bF\030\200a\003b\t\006`\304\300\030@\020\f\232Wx\224a\003BY\203\001\03010\006\020\004\203\346\025\236d\330\200H\354`\000\b\013\306\210A\323\200 \030<\253\360\004\221A\024\007\033\260\0015\301\310`\221\341\206\000\023\203Y\006B\b\310\t\306,\3010P\261\030B4d\020\000e\325H\2412\322\2521bp\000 \b\006V+\b\301\320+\3013\206\r\210@\030\000D\f\020\310`\221\341\206`\f\304`\226\201\030\202\021\003c\000A0\210p\201{F\f\214\001\004\301\240\351\005\017\03310\006\020\004\203\246\027\274l\304\300\030@\020\f\232^\360\264\021\003c\000A0hz\301\333f\t\n\r\007\002R\000\000\000\306\264\370\201C5\303?!\203oe\206\3404U\276\233X!8Mu[\332\2014C\005D\222a\035\276\303<>\025\234\000\3460\217\2174\r\021\371\205\023\371\2013`\376\022\371\317ap\205\3404UnO\306B4\306t\330Z!8M\265\233\026\343;\314\343#\322\277\000\322d^\223\3570\217\217H\377\002H\223\017H\002 M\007P\020\315\024a\006e\fD\365L\221\275\021\3000\364\027\0009\314\343?\021!8\315\340O\007\321\230S\343?\021Q!\016%\371T\340\233Y\"0\217\3567\316\304[\034\"0\217\3567\316dR\2044\021\217\205\021\202\323T\346\206\000Q\004`\310pY\024q1HcK\214o,N\000,\377\204\f\376\0214\016\363\370\213\343<>q!\223uI\276\303<\2764E\310@\370\200$\000\322t\005\217\303<\376\023\021\202\323\f>\321\f\326\324\370ODT\210CI\376\022\370\206v\bNS\3455m`\216\3570\217\277\004> \t\2004\335\200\3440\217\2174\r\021\371\205\023\371\2013`\366\345\370\016\363\370T\340\003\222\000H\223e-\276\303<\2764E\310@\030\327 0\217]\035\276\303<\376\022\000\000\0011\000\000\016\000\000\000[\006\"\340\203-\303\023\360\301\226\001\n\370`\313 \005|\260e\240\002>\3302T\001\037l\031\256\200\017\266\f[\300\007[\206/\000\205-C\030\004\240\260e \203\000\024\000\000\000\000\000a \000\000(\001\000\000\023\004H,\020\000\000\000\b\000\000\000\024\324@\331\006P2\002@K!\024T\371\377\377\377\177\224\002\t\306\200\2011p0\002\000\000\000\0003\021A\200\007\2430\023\021\004x0\n3\021A\200\007\2430\023\021\004x0\n3\021`\020\340\001)\214\030\034C\b\202\201\242\n\210\327\f7\004\020\030\3142\bA\240#\006\305\020\202`0\215\202rU\243#\006\006\000\202`\320\264\302Sd!p^\001`P\201\300p\203p\007f0\3130\034A.\002g#p>\002g#\360\210\201\301\200 \0304\265\200E\303\006D\304\007\0030b`\f \b\006M-`\320\260\001\001\031\0030b`\f \b\006M-`\317\260\001\361\304\301\000\214\030\030\003\b\202AS\013\2303l@8|0\000#\006\304\020\202`\340\314\302\210A\323\200 \030<\263@-\2330\020\205\034\004\024\005c\304\300\000@\020\f\270?\b\220a\003b\n\006\200\250`\f7\004\013\032\3142\020F\320\301A\n\005;\350\3400\211\002($$h\007\207\212\024\370\240\203\203U\nw0KP\fT\004\016\021\025\003\025\201DTE\nK\244\260D\n\202\016\033\020\\@\000)\b:l@,\001\001\f\033\020JB\000\303\006\004\322\006\0040l@\034l@\000#\006\215\003\202` \371\002\031h\241\260\006kp\013b\200\225\001}\301 1\b\006\006\002\b\f\033\020d\020\f\000\215A00 @`\304\300\000@\020\f8Y\b\266a\003\302\f\202\001\030n :4\230e(\214`\304\300\030@\020\f\"sP\2030\230%8F\f\214\001\004\301\240Y\2077(\203\021\003c\000A0h\326\341\r\314`\304\300\030@\020\f\232ux\2033\03010\006\020\004\203f\035\336\000\rF\f\f\000\004\301\240Y\0077 \203\021\003c\000A0\240\306a\rBa\226 \b\007\002\000\217\000\000\000\266f\bN3\370\210\225Q\276\303<\2764E\310@\370\200$\000\322\344#\346\207\bN3\324\267\217\334\200\3440\217\377D\204\3404\203?\035D\343#6\307\370\016\363\370H\345\323\270\217\230V\343;\314\343KS\204\f\204\217\230\227C\\\204\360S\022\021\375\2023\020\266g\000\303\260\373\210\365\031\3000\360>b\\\225\000<\023\025\021\303_\001\221\364\003\303\020I>bL\206CM\317\024Y\223\2014\317\024\325\266d,DcL\207a9\276\303<\276\3400\201\277\004>biSS=\323\3657\024\363OGD\000\203\344#\366g\b\314\223\373\210m9\276\303<>\"\375\013 M>r\000\005\321L\021fh\225\3570\217\217H\377\002H\223\017H\002 M>bg\225\3570\217/8L\340/\201\017H\002 M>r\004\232\303<>\3224D\344\027N\344\007\316\200\371K\344?\207\217X\030'\000\317DE\304\360W@$\375\3000D\222\017H\002 M>bc\206D\005\266\217\030\033\343;\314\343#\225O\327>bd\205\300<>r\0072\361\377\016\363\374NQ,\0160 \215\361\343\305\237\363\275>\000\367\376\377\363\271\033\017\305\000\323Q\337\300\363,\330_P\315o<\224X\304B\225~E\341\001C\371\317\271\2044G\341yc\341y\336\260\262S>Q\317B\210c\367\234\354\237kQ\004`b[\377\236\347y\353\311\342\277\330\376\236\367/\366\375;\314\363;\324\264 \r1\370\304\205L'\360P\022\021\375\2023\020>\321L\021fY\216\3570\217/8L\340S\201\217\030]#MND0Dd\020\267\217\\\200\"8\f\3434~DLg\3608\314\343/\216\363\370\304\205L>b`a\260\020\2151\035\276\000H\0231\370R\344\000>\355\323>\322HD4\371\3045\231Y\345;\314\343\013\016\023\370T\340\003\222\000H\223\217\\\001\3450\217\2174\r\021\371\205\023\371\2013`>bm\207\300<\271\355#&F\006\013\321\030\323\341\003\303\020\371R\344\000>\355\323>qM\021 L\376\024Q\215\340#\000\000\0011\000\000\025\000\000\000[\006+\340\203-\003\026\360\301\226A\013\370`\313\300\005|\260e\b\203\200\017\266\fp\020\370\301\226A\016\002?\3302\314A\340\007[\006:\b\374`\313P\007\201\037l\031\356 \340\203-\003\036\004|\260e\320\203\200\017\266\f{\020\360\301\226\301\017\002>\000\000\000\000\000\000\000a \000\000\260\000\000\000\023\004E,\020\000\000\000\004\000\000\000\024\224\020-\205@\2021\200`\f\034\000\000\000\0003\021A\200\007\2430\023\021\004x0\n3\021A\200\007\2430\023\021\004x0\n\271\0040\334\020\270\201\031\3142\004D\220\204\300I\b\234\207\300\231\b<b`\f \b\006\r+4\312\210\2011\200 \0304\254\320$9\005\220S\000\303\006\004#\f\300\260\001\261\004\0030b`\f \b\006\215+<\312\260\001\241\250\301\000\214\030\030\003\b\202A\343\nO2l@$u0\000t\005c\304\240i@\020\f\036Ux\202\310 \212c\r\326\200\232`d\260\310pCp\211\301,\303 \004\003\025K$\020\301@E\320\bH\320+\341\022(\250\306\210A\361\200 \030d\247\020\364J\330\212a\003\"\020\006\200\250```\200@\006\213\f7\004a \006\263\f\203\020\214\030\030\003\b\202Ad\013\2333b`\f \b\006\315.t\327\210\2011\200 \0304\273\320a#\006\306\000\202`\320\354B\227\215\030\030\003\b\202A\263\013\2356K@h8\020\000\000\000V\000\000\000\306\264\370\201C5\303?!\203od\206\3404U\276[X!8Mu\333\325\341;\314\343S\201\271\025\202\323T\271=\031\013\321\030\323aY\214\3570\217\217H\377\002H\223uM\276\303<>\"\375\013 M> \t\2004\035@A4S\204\231\226\030,DcL\207\017\fC\344K\221\003\370\264O\373\3045E\2000\371SD5\202\265\021\3000\364\026e \3153E\365\005@\016\363\370OD\bN3\370\323A4\346\324\370ODT\210CI>\025\370V\226\b\314\243\373\2153\361\366\206\b\314\243\373\2153\031\030!8Meh\b\020E\000\206\f\327\r4\016\363\370\213\343<>q!\323\021<\016\363\370OD\bN3\370D3\330\022\343\033\213\023\000\313?!\203o\\\222\3570\217/M\0212\020> \t\2004\331\231\342;\314\343#\225O\367\006e8\324\364L\221\251\021\002\260,\326\324\370ODT\210CI\376\022\370fv\bNS\3455m_\216\3570\217\277\004> \t\2004\235\200\3440\217\2174\r\021\371\205\023\371\2013`\346\345\370\016\363\370T\340\003\222\000H\223a-\276\303<\2764E\310@\330Z\002D\021\200!\303\305\333\326 0\217Y\035\276\303<\376\022\000\000\000\0011\000\000\f\000\000\000[\206'\340\203-\003\024\360\301\226A\n\370`\313@\005|\260e\250\002>\3302\\\001\037l\031\274\000\024\266\fa\020\200\302\226A\f\002>\000\000\000\000\000\000\000a \000\000)\001\000\000\023\004H,\020\000\000\000\b\000\000\000\024\324@\331\006P2\002@K!\024T\371\377\377\377\177\224\002\t\306\200\2011p0\002\000\000\000\0003\021A\200\007\2430\023\021\004x0\n3\021A\200\007\2430\023\021\004x0\n3\021`\020\340\001)\214\030\034C\b\202\201\242\n\210\327\f7\004\020\030\3142\bA\240#\006\305\020\202`0\215\202rU\243#\006\006\000\202`\320\264\302Sd!p^\001`P\201\300p\203p\007f0\3130\034A.\002g#p>\002g#\360\210\201\301\200 \0304\265\200E\303\006D\304\007\0030b`\f \b\006M-`\320\260\001\001\031\0030b`\f \b\006M-`\317\260\001\361\304\301\000\214\030\030\003\b\202AS\013\2303l@8|0\000#\006\304\020\202`\340\314\302\210A\323\200 \030<\263@-\2330\020\205\034\004\024\005c\304\300\000@\020\f\270?\b\220a\003b\n\006\200\250`\f7\004\013\032\3142\020F\320\301A\n\005;\350\3400\211\002($$h\007\207\212\024\370\240\203\203U\nw0KP\fT\004\016\021\025\003\025\201DTE\nK\244\260D\n\202\016\033\020\\@\000)\b:l@,\001\001\f\033\020JB\000\303\006\004\322\006\0040l@\034l@\000#\006\215\003\202` \371\002\031h\241\260\006k@\013b\200\225\001}\301 1\b\006\006\002\b\f\033\020d\020\f\000\215A00 @`\304\300\000@\020\f8Y\b\266a\003\302\f\202\001\030n :4\230e(\214`\304\300\030@\020\f\"sP\2030\230%8F\f\214\001\004\301\240Y\2077(\203\021\003c\000A0h\326\341\r\314`\304\300\030@\020\f\232ux\2033\03010\006\020\004\203f\035\336\000\rF\f\f\000\004\301\240Y\0077 \203\021\003c\000A0\240\306a\rBa\226 \b\007\002\000\220\000\000\000\266f\bN3\370\210\225Q\276\303<\2764E\310@\370\200$\000\322\344#\346\207\bN3\324\267\217\334\200\3440\217\377D\204\3404\203?\035D\343#6\307\370\016\363\370H\345\323\270\217\230V\343;\314\343KS\204\f\204\217\230\227C\\\204\360S\022\021\375\2023\020\266g\000\303\260\373\210\365\031\3000\360>b\\\225\000<\023\025\021\303_\001\221\364\003\303\020I>bL\206CM\317\024\335\201M\374\277\303<\277S\024\213\003\fHc\374x\361\347|\257\017\300\275\377\377|\356\306C1\300t\3247\360<\013\366\027T\363\033\017%\02610\224\377\\\347\377\357\b\314\362KHs\374\305m{\336Xx\2367\254\354\224O\324\263\020\342\330='\373\347Z\024\001\230\330\326\277\347y\336z\262\366/\266\277\347\375\213}\377\016\363\374\0165-HC\f>q!\2235\031H\363LQmK\306B4\306t\030\226\343;\314\343\013\016\023\370K\340#\22665\3253]\177C1\377tD\0040H>b\177\206\300<\271\217\330\226\343;\314\343#\322\277\000\322\344#\007P\020\315\024a\206V\371\016\363\370\210\364/\2004\371\200$\000\322\344#vV\371\016\363\370\202\303\004\376\022\370\200$\000\322\344#G\2409\314\343#MCD~\341D~\340\f\230\277D\376s\370\210\205q\002\360LTD\f\177\005D\322\017\fC$\371\200$\000\322\344#6fHT`\373\210\2611\276\303<>R\371t\355#FV\b\314\343#'\360P\022\021\375\2023\020>\321L\021fY\216\3570\217/8L\340S\201\217\030]#MND0Dd\020\267\217\\\200\"8\f\3434~DLg\3608\314\343/\216\363\370\304\205L>b`a\260\020\2151\035\276\000H\0231\370R\344\000>\355\323>\322HD4\371\3045\231Y\345;\314\343\013\016\023\370T\340\003\222\000H\223\217\\\001\3450\217\2174\r\021\371\205\023\371\2013`>bm\207\300<\271\355#&F\006\013\321\030\323\341\003\303\020\371R\344\000>\355\323>qM\021 L\376\024Q\215\340#\000\000\000\0011\000\000\025\000\000\000[\006+\340\203-\003\026\360\301\226A\013\370`\313\300\005|\260e\b\203\200\017\266\fp\020\370\301\226A\016\002?\3302\314A\340\007[\006:\b\374`\313P\007\201\037l\031\356 \340\203-\003\036\004|\260e\320\203\200\017\266\f{\020\360\301\226\301\017\002>\000\000\000\000\000\000\000a \000\000Q\001\000\000\023\004F,\020\000\000\000#\000\000\000\024TA\t\321R\b$\030\003\b\306\300\001Uc\004 \b\202\3707F\200\303\2748\377\302\030\001\016\363\342\374\215\021\2408^\302\330\030\301\036\253\361\376\215\021\2000/\316\2770F\000\202\357\277kc\004\363}\236\3525F \217*\272vc\004\346{\312\2407F\300\272k-{c\004\247\254\326\3427F\300\377\377\377~c\004 \b\202 \030\214\021\200 \b\342\2770F\300\237u\271\206\301\030\001\b\202 \376\007c\004 \b\2028\007\000\000\0003\021A\200\007\2430\023\021\004x0\n3\021A\200\007\2430\023\021\004x0\n\351\0050\334\020\204\202\031\3142\004E\220\204\300I\b\234\207\300\231\b<b`\f \b\006\315/|\312\210\2011\200 \0304\277\360%i\006\001\244\031\0040l@0\302\000\f\033\020K0\000#\006\306\000\202`\320\204C\030(\303\006\204\322\007\0030b`\f \b\006M8\204A2l@$\2500\000\244\006\301\0301h\032\020\004\203\247\027\302 \030\003\203(\016?\360\003j\202\221\301\"\303\r\201\032\210\301,\003!\004\344\004c\226`\030\250X\f\241?\206\f\002\350\225\260\006\002\005\325\0301(\000\020\004\203\f\027\202\013\316\000.\020\342\002!\216\b\340\0065\200\023\202\270`\r\340\216\000.@\342\206 np\003\0311(\000\020\004\203\354\027\202\021\203\003\000A0\260\326!x\203\342\210\000.\020\342\214 \256\220\0039\"\210+\202\270`\210+\0028\"\200\013\212\270!\210k\362@\216\b\342\212 .\030\342\212\000\216\b`\304\340\000@\020\f\254~\b\374\240\017F\f\016\000\004\301\300\362\007!\350\203\021\203\003\000A0\260\376a\b\372`\304\340\000@\020\f,\220 \202>\270\"\211;\202\270\340\017\344\020D*\200\021\203\003\000A0\260\374AQ\202\021\203\003\000A0\260\376a!\202#\002\270\240\210\033\202\270e\220\n`\304\340\000@\020\f\254\222(\232`\304\340\000@\020\f,\223 \234\340\210\000.(\342\206 \316\032\340\202+\256\b\342&\002.\020\340\212\000.0\342\206 n\030\007\270\300\026\340\212 \216\b\340\210\000.(\342\206 \362\016\002\03210\000\020\004\003-'\210`\304\300\000@\020\f4\235\030\204\021\203\002\000A0\310zB\270!\220\n`\304\340\000@\020\f\254\237\030\212`\304\340\000@\020\f,\260 \212\340\210\000n\036\2028z\b\342\202!\216@\342\214 n\b\342\214\000\256\t\344\240@*\200\021\203\003\000A0\260\330b\220\202\021\203\003\000A0\260\332\202\220\2023\2308$\2103\006\270\340\210+\202\270e\210c\202\270\240\210;\002\270\240\210+\002\270.\220\363\"\270\340\213\233\202\270\200\200#\002\270\240\210\033\202\03010\000\020\004\003\r4\206\233\03010\000\020\004\003-4\004\234\2704\020\342\324 \210\013\210\2705\b\340\202\"\256\b`\270a\036VB\230nX\t!\030n\250\207\225 \246\033\354A\bF\f\f\000\004\301`[\215\000\037z%\230\005?\f\033\020\2010\000\350\017\374\000\002\031,2\334\020\254\205\030\3142\020C0b`\f \b\006\021x\220EI\214\030\030\003\b\202AS\036f\341\022#\006\306\000\202`\320\224\207Y\274\304\210\2011\200 \0304\345a\02601b`\f \b\006My\230EL\314\022\024\032\016\004\000\000Z\000\000\000\306\264\370\201C5\303?!\203ow\206\3404U\276\033]!8Mu\333\336\2014C\005D\222\251\035\276\303<>\025\234\000\3460\217\2174\r\021\371\205\023\371\2013`\376\022\371\317a\370\001\205\3404UnO\306B4\306t\030\033\343;\314\343#\322\277\000\322dp\223\3570\217\217H\377\002H\223\017H\002 M\007P\020\315\024a\326&\006\013\321\030\323\341\003\303\020\371R\344\000>\355\323>qM\021 L\376\024Q\215`\367\001\0040\f\275E\031H\363LQ}\001\220\303<\376\023\021\202\323\f\376t\020\21595\376\023\021\025\342P\222O\005\276\341%\002\363\350~\343L\274\345\007 \002\363\350~\343L6G\bNS\031\037\002D\021\200!\303u\004\215\303<\376\3428\217O\\\310t\005\217\303<\376\023\021\202\323\f>\321\f\266\304\370\306\342\004\300\362O\310\340\333\233\344;\314\343KS\204\f\204\017H\002 M\006e8\324\364L\22155\376\023\021\025\342P\222\277\004\276\351\035\202\323TyM\233\234\343;\314\343/\201\017H\002 M7 9\314\343#MCD~\341D~\340\f\230\3059\276\303<>\025\370\200$\000\322dk\213\3570\217/M\0212\020f\037\220\000Q\004`\310p\361\3466\b\314ci\207\3570\217\277\004\000\000\0011\000\000\f\000\000\000[\206'\340\203-\003\024\360\301\226A\n\370`\313@\005|\260e\250\002>\3302\\\001\037l\031\266\200\017\266\f`\020\200\302\226A'\002P\000\000\000\000\000\000\000\301 \000\000E\000\000\000\243\004\311P\001\"\252\000!2\204\210\020!B\304\b\211\032@\210\f!\"D\210\0201BR\016\020\"c\204\304\274 D\206\210\021\022\362\200\020\031BRZ\020\"d\204\204\324 d\204d\3340B%QKK\3141\000\212\301\001\306\004\207\305\305\206FGa\334\002\fs\b\000\201p\220\241Q\036\265\264\304\034\003\240\030\034|LpX\\lht\324\307-\3000\207\000\020\b\007\031\032\025RKJ\3141\000\212\301\201\310\004\207\305\305\206FG\211\334\202\013s\b@\201p\2201\242Q$\265\244\304\034\003\240\030\034\224LpX\\lhtT\311-\230\0060\207\000\020\b\007\031\032\006P+A\201\005\324JP`\002\265\022\024\330@\255\004\005FP+A\201\025\340BP`\006\270 \024\024\330\001.\b\005\005\206\200\013BA\201%\320R@`\n\264\024\020\330\002-\005\004\306@K\001\2015P\001\2019P\001\201=P\001\201AP\001\201E\330A\001\220\240\260\300\000\000\000\000q \000\000\t\000\000\0002\016\020\"\204\022\313\013\210\201\336\200\036\230\017\370Q\033\201!\345\022(\362X\201$\301\026X\302\216\001\000\000\000\000\000\000\000e\f\000\000-\001\000\000\022\003\224h\031\000\000\000\003\000\000\000c\n\000\0002\000\000\000L\000\000\000\001\000\000\000X\000\000\000\000\000\000\000X\000\000\000-\000\000\000\220\004\000\000\001\000\000\000\225\n\000\000\021\000\000\000\246\n\000\000\016\000\000\000\024\000\000\000\000\000\000\000\250\004\000\000\000\000\000\000\000\000\000\000-\000\000\000\000\000\000\000(\005\000\000U\000\000\000(\005\000\000U\000\000\000\377\377\377\377\022$\000\000}\005\000\000\022\000\000\000}\005\000\000\022\000\000\000\377\377\377\377\b$\000\000\217\005\000\000\026\000\000\000\217\005\000\000\026\000\000\000\377\377\377\377\b,\000\000\245\005\000\000\024\000\000\000\245\005\000\000\024\000\000\000\377\377\377\377\b,\000\000\271\005\000\000(\000\000\000\271\005\000\000(\000\000\000\377\377\377\377\b$\000\000\341\005\000\000\037\000\000\000\341\005\000\000\037\000\000\000\377\377\377\377\b$\000\000\000\006\000\000o\000\000\000\000\006\000\000o\000\000\000\377\377\377\377\000 \000\000o\006\000\000\030\000\000\000o\006\000\000\030\000\000\000\377\377\377\377\b$\000\000\207\006\000\000\035\000\000\000\207\006\000\000\035\000\000\000\377\377\377\377\b$\000\000\244\006\000\000\022\000\000\000\244\006\000\000\022\000\000\000\377\377\377\377\b$\000\000\266\006\000\000\030\000\000\000\266\006\000\000\030\000\000\000\377\377\377\377\b$\000\000\316\006\000\000\024\000\000\000\316\006\000\000\024\000\000\000\377\377\377\377\b$\000\000\342\006\000\000U\000\000\000\342\006\000\000U\000\000\000\377\377\377\377\022$\000\0007\007\000\000o\000\000\0007\007\000\000o\000\000\000\377\377\377\377\000 \000\000\246\007\000\000\020\000\000\000\246\007\000\000\020\000\000\000\377\377\377\377\b,\000\000\266\007\000\000\200\000\000\000\266\007\000\000\200\000\000\000\377\377\377\377\022$\000\0006\b\000\000\232\000\000\0006\b\000\000\232\000\000\000\377\377\377\377\000 \000\000\320\b\000\000\005\000\000\000\320\b\000\000\005\000\000\000\377\377\377\377\b$\000\000\325\b\000\000\204\000\000\000\325\b\000\000\204\000\000\000\377\377\377\377\022$\000\000Y\t\000\000\236\000\000\000Y\t\000\000\236\000\000\000\377\377\377\377\000 \000\000\367\t\000\000\r\000\000\000\367\t\000\000\r\000\000\000\377\377\377\377\b,\000\000\004\n\000\000\023\000\000\000\004\n\000\000\023\000\000\000\377\377\377\377\b,\000\000\027\n\000\000\f\000\000\000\027\n\000\000\f\000\000\000\377\377\377\377\b,\000\000#\n\000\000\025\000\000\000#\n\000\000\025\000\000\000\377\377\377\377\b,\000\0008\n\000\000\021\000\000\0008\n\000\000\021\000\000\000\377\377\377\377\b,\000\000I\n\000\000\r\000\000\000I\n\000\000\r\000\000\000\377\377\377\377\b,\000\000V\n\000\000\r\000\000\000V\n\000\000\r\000\000\000\377\377\377\377\b,\000\000\000\000\000\000\024\000\000\000\000\000\000\000\024\000\000\000\377\377\377\377\021\004\000\000\024\000\000\000'\000\000\000\024\000\000\000'\000\000\000\377\377\377\377\021\004\000\000;\000\000\000)\000\000\000;\000\000\000)\000\000\000\377\377\377\377\021\004\000\000d\000\000\000 \000\000\000d\000\000\000 \000\000\000\377\377\377\377\021\004\000\000\204\000\000\000&\000\000\000\204\000\000\000&\000\000\000\377\377\377\377\021\004\000\000\252\000\000\000'\000\000\000\252\000\000\000'\000\000\000\377\377\377\377\000\030\000\000\321\000\000\000'\000\000\000\321\000\000\000'\000\000\000\377\377\377\377\000\030\000\000\370\000\000\000'\000\000\000\370\000\000\000'\000\000\000\377\377\377\377\000\030\000\000\037\001\000\000'\000\000\000\037\001\000\000'\000\000\000\377\377\377\377\000\030\000\000F\001\000\000_\000\000\000F\001\000\000_\000\000\000\377\377\377\377\222\004\000\000\245\001\000\000_\000\000\000\245\001\000\000_\000\000\000\377\377\377\377\222\004\000\000\004\002\000\000\212\000\000\000\004\002\000\000\212\000\000\000\377\377\377\377\222\004\000\000\216\002\000\000\216\000\000\000\216\002\000\000\216\000\000\000\377\377\377\377\222\004\000\000\034\003\000\000h\000\000\000\034\003\000\000h\000\000\000\377\377\377\377\020\004\000\000\204\003\000\000h\000\000\000\204\003\000\000h\000\000\000\377\377\377\377\020\004\000\000\354\003\000\000\223\000\000\000\354\003\000\000\223\000\000\000\377\377\377\377\020\004\000\000\177\004\000\000\227\000\000\000\177\004\000\000\227\000\000\000\377\377\377\377\020\004\000\000\026\005\000\000\022\000\000\000\026\005\000\000\022\000\000\000\377\377\377\377\004\f\000\000\000\000\000\000\000\000\000\000\024\000\000\000\000\000\000\000\264\n\000\000\r\000\000\000\000\000\000\000]\f\000\000\264\002\000\000\022\003\224\241-\000\000\000__omp_rtl_debug_kind__omp_rtl_assume_teams_oversubscription__omp_rtl_assume_threads_oversubscription__omp_rtl_assume_no_thread_state__omp_rtl_assume_no_nested_parallelismanon.d15a5ef43844a19dcb21398dac5854de.0anon.d15a5ef43844a19dcb21398dac5854de.1anon.d15a5ef43844a19dcb21398dac5854de.2anon.d15a5ef43844a19dcb21398dac5854de.3__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_exec_mode__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelismllvm.compiler.used__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28__kmpc_target_initllvm.lifetime.start.p5llvm.lifetime.end.p5__kmpc_get_hardware_num_threads_in_block__kmpc_distribute_static_init_4__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_omp_outlined_omp_outlined__kmpc_for_static_init_4__kmpc_distribute_static_fini__kmpc_parallel_51__kmpc_global_thread_num__kmpc_target_deinit__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_omp_outlined_omp_outlinedllvm.fmuladd.f32__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_omp_outlined_omp_outlinedsinhf__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_omp_outlined_omp_outlinedllvm.fabs.f32llvm.amdgcn.rcp.f32llvm.fma.f32llvm.amdgcn.ldexp.f32llvm.copysign.f32llvm.rint.f32llvm.smin.i3217.0.0git 123545e9e59f765afa6ddf3b6f07191509604e94amdgcn-amd-amdhsasrc/vararg.cppllvm.metadata\000\000\000\000\000\000\000\000\000\000"
	.size	.Lllvm.embedded.object, 18544

	.section	".linker-options","e",@llvm_linker_options
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 123545e9e59f765afa6ddf3b6f07191509604e94)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZN7gpumath16compare_accuracyIfXcvPFffEadL_Z5sinhfEEXadL_Z15__ocml_sinh_f32EEJfEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined
	.addrsig_sym .omp_task_entry.
	.addrsig_sym .omp_task_entry..29
	.addrsig_sym _ZN7gpumath13apply_fun_cpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined
	.addrsig_sym _GLOBAL__sub_I_vararg.cpp
	.addrsig_sym .omp_offloading.requires_reg
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym .__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28.region_id
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZSt4cerr
	.addrsig_sym .__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14.region_id
	.addrsig_sym .__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5sinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23.region_id
	.addrsig_sym .__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_sinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23.region_id
