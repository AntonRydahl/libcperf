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
	leaq	24(%rsp), %r13
	movq	%r13, 8(%rsp)
	movabsq	$7310580663881065838, %r14      # imm = 0x657466617478656E
	movq	%r14, 24(%rsp)
	movw	$26226, 32(%rsp)                # imm = 0x6672
	movq	$10, 16(%rsp)
	movb	$0, 34(%rsp)
.Ltmp0:
	movl	$21, %edi
	callq	_Znwm@PLT
.Ltmp1:
# %bb.1:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i58
	movq	%rax, %rbx
	movups	.L.str.4(%rip), %xmm0
	movups	%xmm0, (%rax)
	movl	$842229343, 16(%rax)            # imm = 0x3233665F
	movb	$0, 20(%rax)
	leaq	56(%rsp), %r15
	movq	%r15, 40(%rsp)
	movq	%r14, 56(%rsp)
	movw	$26226, 64(%rsp)                # imm = 0x6672
	movq	$10, 48(%rsp)
	movb	$0, 66(%rsp)
	leaq	152(%rsp), %r12
	movq	%r12, 136(%rsp)
.Ltmp3:
	movl	$21, %edi
	callq	_Znwm@PLT
.Ltmp4:
# %bb.2:                                # %invoke.cont8
	movq	%rax, 136(%rsp)
	movq	$20, 152(%rsp)
	movups	.L.str.4(%rip), %xmm0
	movups	%xmm0, (%rax)
	movl	$842229343, 16(%rax)            # imm = 0x3233665F
	movq	$20, 144(%rsp)
	movb	$0, 20(%rax)
.Ltmp6:
	leaq	40(%rsp), %rdi
	leaq	136(%rsp), %rsi
	callq	_Z7timingsIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
.Ltmp7:
# %bb.3:                                # %invoke.cont10
	movq	136(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB2_5
# %bb.4:                                # %if.then.i.i67
	callq	_ZdlPv@PLT
.LBB2_5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	40(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB2_7
# %bb.6:                                # %if.then.i.i69
	callq	_ZdlPv@PLT
.LBB2_7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
	leaq	120(%rsp), %rbp
	movq	%rbp, 104(%rsp)
	movq	8(%rsp), %r15
	movq	16(%rsp), %r14
	movq	%rbp, %r12
	cmpq	$16, %r14
	jb	.LBB2_16
# %bb.8:                                # %if.then.i.i78
	testq	%r14, %r14
	js	.LBB2_9
# %bb.11:                               # %if.end11.i.i.i80
	movq	%r14, %rdi
	incq	%rdi
	js	.LBB2_12
# %bb.14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i83
.Ltmp9:
	callq	_Znwm@PLT
.Ltmp10:
# %bb.15:                               # %call5.i.i.i.i.i5.i.noexc88
	movq	%rax, %r12
	movq	%rax, 104(%rsp)
	movq	%r14, 120(%rsp)
.LBB2_16:                               # %if.end.i.i73
	testq	%r14, %r14
	je	.LBB2_20
# %bb.17:                               # %if.end.i.i73
	cmpq	$1, %r14
	jne	.LBB2_19
# %bb.18:                               # %if.then.i.i.i.i76
	movzbl	(%r15), %eax
	movb	%al, (%r12)
	jmp	.LBB2_20
.LBB2_19:                               # %if.end.i.i.i.i.i77
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB2_20:                               # %invoke.cont12
	movq	%r14, 112(%rsp)
	movb	$0, (%r12,%r14)
	leaq	88(%rsp), %r15
	movq	%r15, 72(%rsp)
.Ltmp11:
	movl	$21, %edi
	callq	_Znwm@PLT
.Ltmp12:
# %bb.21:                               # %call5.i.i.i.i.i5.i.noexc108
	movq	%rax, 72(%rsp)
	movq	$20, 88(%rsp)
	movl	16(%rbx), %ecx
	movl	%ecx, 16(%rax)
	movups	(%rbx), %xmm0
	movups	%xmm0, (%rax)
	movq	$20, 80(%rsp)
	movb	$0, 20(%rax)
.Ltmp14:
	leaq	104(%rsp), %rdi
	leaq	72(%rsp), %rsi
	callq	_Z11correctnessIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
.Ltmp15:
# %bb.22:                               # %invoke.cont17
	movq	72(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB2_24
# %bb.23:                               # %if.then.i.i112
	callq	_ZdlPv@PLT
.LBB2_24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
	movq	104(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.LBB2_26
# %bb.25:                               # %if.then.i.i115
	callq	_ZdlPv@PLT
.LBB2_26:                               # %if.then.i.i118
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
	movq	8(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB2_28
# %bb.27:                               # %if.then.i.i121
	callq	_ZdlPv@PLT
.LBB2_28:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit122
	xorl	%eax, %eax
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
.LBB2_12:                               # %if.end.i.i.i.i.i.i84
	.cfi_def_cfa_offset 224
.Ltmp17:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp18:
# %bb.13:                               # %.noexc87
.LBB2_9:                                # %if.then.i.i.i85
.Ltmp19:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp20:
# %bb.10:                               # %.noexc86
.LBB2_36:                               # %lpad16
.Ltmp16:
	movq	%rax, %r14
	movq	72(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB2_38
# %bb.37:                               # %if.then.i.i130
	callq	_ZdlPv@PLT
	jmp	.LBB2_38
.LBB2_35:                               # %lpad14
.Ltmp13:
	movq	%rax, %r14
.LBB2_38:                               # %ehcleanup19
	movq	104(%rsp), %rdi
	cmpq	%rbp, %rdi
	jne	.LBB2_39
	jmp	.LBB2_40
.LBB2_32:                               # %lpad9
.Ltmp8:
	movq	%rax, %r14
	movq	136(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB2_34
# %bb.33:                               # %if.then.i.i124
	callq	_ZdlPv@PLT
	jmp	.LBB2_34
.LBB2_31:                               # %lpad7
.Ltmp5:
	movq	%rax, %r14
.LBB2_34:                               # %ehcleanup
	movq	40(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB2_40
.LBB2_39:                               # %if.then.i.i133
	callq	_ZdlPv@PLT
	jmp	.LBB2_40
.LBB2_29:                               # %lpad2
.Ltmp2:
	movq	%rax, %r14
	jmp	.LBB2_41
.LBB2_30:                               # %lpad4
.Ltmp21:
	movq	%rax, %r14
.LBB2_40:                               # %if.then.i.i136
	movq	%rbx, %rdi
	callq	_ZdlPv@PLT
.LBB2_41:                               # %ehcleanup21
	movq	8(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB2_43
# %bb.42:                               # %if.then.i.i139
	callq	_ZdlPv@PLT
.LBB2_43:                               # %ehcleanup23
	movq	%r14, %rdi
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
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp11-.Ltmp10                #   Call between .Ltmp10 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp20-.Ltmp17                #   Call between .Ltmp17 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin0          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Lfunc_end2-.Ltmp20            #   Call between .Ltmp20 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0                          # -- Begin function _Z7timingsIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
.LCPI3_0:
	.long	0xc0490fdb                      # float -3.14159274
.LCPI3_1:
	.long	0x40490fdb                      # float 3.14159274
	.section	.text._Z7timingsIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,"axG",@progbits,_Z7timingsIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,comdat
	.weak	_Z7timingsIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	.p2align	4, 0x90
	.type	_Z7timingsIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,@function
_Z7timingsIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_: # @_Z7timingsIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
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
	leaq	136(%rsp), %rdi
	callq	_ZNSt5tupleIJN7gpumath5ArrayIfEES2_EEC2ILb1ELb1EEEv
	leaq	168(%rsp), %rdi
.Ltmp22:
	movss	.LCPI3_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	callq	_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_
.Ltmp23:
# %bb.1:                                # %invoke.cont
.Ltmp24:
	leaq	136(%rsp), %rdi
	movss	.LCPI3_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI3_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	callq	_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_
.Ltmp25:
# %bb.2:                                # %invoke.cont2
.Ltmp27:
	callq	omp_get_default_device@PLT
.Ltmp28:
# %bb.3:                                # %invoke.cont4
.Ltmp29:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp30:
# %bb.4:                                # %invoke.cont6
.Ltmp31:
	leaq	104(%rsp), %rdi
	movl	$536870911, %esi                # imm = 0x1FFFFFFF
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIfEC2Eiii
.Ltmp32:
# %bb.5:                                # %invoke.cont8
.Ltmp34:
	callq	omp_get_default_device@PLT
.Ltmp35:
# %bb.6:                                # %invoke.cont10
.Ltmp36:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp37:
# %bb.7:                                # %invoke.cont12
.Ltmp38:
	leaq	72(%rsp), %rdi
	movl	$536870911, %esi                # imm = 0x1FFFFFFF
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIfEC2Eiii
.Ltmp39:
# %bb.8:                                # %invoke.cont14
	leaq	56(%rsp), %r13
	movq	%r13, 40(%rsp)
	movq	(%r14), %r15
	movq	8(%r14), %r14
	movq	%r13, %r12
	cmpq	$16, %r14
	jb	.LBB3_13
# %bb.9:                                # %if.then.i.i
	testq	%r14, %r14
	js	.LBB3_40
# %bb.10:                               # %if.end11.i.i.i
	movq	%r14, %rdi
	incq	%rdi
	js	.LBB3_36
# %bb.11:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
.Ltmp41:
	callq	_Znwm@PLT
.Ltmp42:
# %bb.12:                               # %call5.i.i.i.i.i5.i.noexc
	movq	%rax, %r12
	movq	%rax, 40(%rsp)
	movq	%r14, 56(%rsp)
.LBB3_13:                               # %if.end.i.i
	testq	%r14, %r14
	je	.LBB3_17
# %bb.14:                               # %if.end.i.i
	cmpq	$1, %r14
	jne	.LBB3_16
# %bb.15:                               # %if.then.i.i.i.i
	movzbl	(%r15), %eax
	movb	%al, (%r12)
	jmp	.LBB3_17
.LBB3_16:                               # %if.end.i.i.i.i.i
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB3_17:                               # %invoke.cont16
	movq	%r14, 48(%rsp)
	movb	$0, (%r12,%r14)
	leaq	24(%rsp), %r12
	movq	%r12, 8(%rsp)
	movq	(%rbx), %r14
	movq	8(%rbx), %rbx
	movq	%r12, %r15
	cmpq	$16, %rbx
	jb	.LBB3_22
# %bb.18:                               # %if.then.i.i15
	testq	%rbx, %rbx
	js	.LBB3_42
# %bb.19:                               # %if.end11.i.i.i17
	movq	%rbx, %rdi
	incq	%rdi
	js	.LBB3_38
# %bb.20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i20
.Ltmp43:
	callq	_Znwm@PLT
.Ltmp44:
# %bb.21:                               # %call5.i.i.i.i.i5.i.noexc25
	movq	%rax, %r15
	movq	%rax, 8(%rsp)
	movq	%rbx, 24(%rsp)
.LBB3_22:                               # %if.end.i.i10
	testq	%rbx, %rbx
	je	.LBB3_26
# %bb.23:                               # %if.end.i.i10
	cmpq	$1, %rbx
	jne	.LBB3_25
# %bb.24:                               # %if.then.i.i.i.i13
	movzbl	(%r14), %eax
	movb	%al, (%r15)
	jmp	.LBB3_26
.LBB3_25:                               # %if.end.i.i.i.i.i14
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.LBB3_26:                               # %invoke.cont19
	movq	%rbx, 16(%rsp)
	movb	$0, (%r15,%rbx)
.Ltmp45:
	leaq	136(%rsp), %rdi
	leaq	104(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	40(%rsp), %rcx
	leaq	8(%rsp), %r8
	callq	_ZN7gpumath12compare_timeIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
.Ltmp46:
# %bb.27:                               # %invoke.cont21
	movq	8(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB3_29
# %bb.28:                               # %if.then.i.i29
	callq	_ZdlPv@PLT
.LBB3_29:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	40(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB3_31
# %bb.30:                               # %if.then.i.i31
	callq	_ZdlPv@PLT
.LBB3_31:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
	movq	72(%rsp), %rdi
	callq	free@PLT
	movq	$0, 72(%rsp)
	movq	80(%rsp), %rdi
	movl	96(%rsp), %esi
.Ltmp48:
	callq	omp_target_free@PLT
.Ltmp49:
# %bb.32:                               # %_ZN7gpumath5ArrayIfED2Ev.exit
	movq	104(%rsp), %rdi
	callq	free@PLT
	movq	$0, 104(%rsp)
	movq	112(%rsp), %rdi
	movl	128(%rsp), %esi
.Ltmp51:
	callq	omp_target_free@PLT
.Ltmp52:
# %bb.33:                               # %_ZN7gpumath5ArrayIfED2Ev.exit36
	movq	168(%rsp), %rdi
	callq	free@PLT
	movq	$0, 168(%rsp)
	movq	176(%rsp), %rdi
	movl	192(%rsp), %esi
.Ltmp54:
	callq	omp_target_free@PLT
.Ltmp55:
# %bb.34:                               # %_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev.exit.i
	movq	$0, 176(%rsp)
	movq	136(%rsp), %rdi
	callq	free@PLT
	movq	$0, 136(%rsp)
	movq	144(%rsp), %rdi
	movl	160(%rsp), %esi
.Ltmp57:
	callq	omp_target_free@PLT
.Ltmp58:
# %bb.35:                               # %_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev.exit
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
.LBB3_36:                               # %if.end.i.i.i.i.i.i
	.cfi_def_cfa_offset 256
.Ltmp65:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp66:
# %bb.37:                               # %.noexc6
.LBB3_38:                               # %if.end.i.i.i.i.i.i21
.Ltmp60:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp61:
# %bb.39:                               # %.noexc24
.LBB3_40:                               # %if.then.i.i.i
.Ltmp67:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp68:
# %bb.41:                               # %.noexc
.LBB3_42:                               # %if.then.i.i.i22
.Ltmp62:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp63:
# %bb.43:                               # %.noexc23
.LBB3_44:                               # %terminate.lpad.i.i3.i
.Ltmp59:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB3_45:                               # %terminate.lpad.i.i.i
.Ltmp56:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB3_46:                               # %terminate.lpad.i35
.Ltmp53:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB3_47:                               # %terminate.lpad.i
.Ltmp50:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB3_48:                               # %lpad20
.Ltmp47:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB3_55
# %bb.49:                               # %if.then.i.i38
	callq	_ZdlPv@PLT
	jmp	.LBB3_55
.LBB3_50:                               # %lpad
.Ltmp26:
	jmp	.LBB3_51
.LBB3_52:                               # %lpad9
.Ltmp40:
	movq	%rax, %rbx
	jmp	.LBB3_59
.LBB3_53:                               # %lpad3
.Ltmp33:
.LBB3_51:                               # %lpad
	movq	%rax, %rbx
	leaq	136(%rsp), %rdi
	callq	_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB3_54:                               # %lpad18
.Ltmp64:
	movq	%rax, %rbx
.LBB3_55:                               # %ehcleanup
	movq	40(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB3_58
# %bb.56:                               # %if.then.i.i41
	callq	_ZdlPv@PLT
	jmp	.LBB3_58
.LBB3_57:                               # %lpad15
.Ltmp69:
	movq	%rax, %rbx
.LBB3_58:                               # %ehcleanup22
	leaq	72(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIfED2Ev
.LBB3_59:                               # %ehcleanup23
	leaq	104(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIfED2Ev
	leaq	136(%rsp), %rdi
	callq	_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	_Z7timingsIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_, .Lfunc_end3-_Z7timingsIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	.cfi_endproc
	.section	.gcc_except_table._Z7timingsIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,"aG",@progbits,_Z7timingsIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,comdat
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
	.uleb128 .Ltmp22-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp25-.Ltmp22                #   Call between .Ltmp22 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin1          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp32-.Ltmp27                #   Call between .Ltmp27 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin1          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp39-.Ltmp34                #   Call between .Ltmp34 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin1          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp69-.Lfunc_begin1          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp64-.Lfunc_begin1          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin1          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp50-.Lfunc_begin1          #     jumps to .Ltmp50
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp51-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp52-.Ltmp51                #   Call between .Ltmp51 and .Ltmp52
	.uleb128 .Ltmp53-.Lfunc_begin1          #     jumps to .Ltmp53
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp54-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin1          #     jumps to .Ltmp56
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp57-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin1          #     jumps to .Ltmp59
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp65-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp69-.Lfunc_begin1          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp64-.Lfunc_begin1          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.uleb128 .Ltmp69-.Lfunc_begin1          #     jumps to .Ltmp69
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin1          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin1          # >> Call Site 18 <<
	.uleb128 .Lfunc_end3-.Ltmp63            #   Call between .Ltmp63 and .Lfunc_end3
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
	.p2align	2, 0x0                          # -- Begin function _Z11correctnessIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
.LCPI4_0:
	.long	0xc0490fdb                      # float -3.14159274
.LCPI4_1:
	.long	0x40490fdb                      # float 3.14159274
	.section	.text._Z11correctnessIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,"axG",@progbits,_Z11correctnessIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,comdat
	.weak	_Z11correctnessIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	.p2align	4, 0x90
	.type	_Z11correctnessIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,@function
_Z11correctnessIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_: # @_Z11correctnessIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	104(%rsp), %rdi
	callq	_ZNSt5tupleIJN7gpumath5ArrayIfEES2_EEC2ILb1ELb1EEEv
	leaq	136(%rsp), %r15
.Ltmp70:
	movq	%r15, %rdi
	movl	$2048, %esi                     # imm = 0x800
	callq	_ZN7gpumath5ArrayIfE7reshapeEi
.Ltmp71:
# %bb.1:                                # %invoke.cont
.Ltmp72:
	movss	.LCPI4_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	movq	%r15, %rdi
	callq	_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_
.Ltmp73:
# %bb.2:                                # %invoke.cont2
.Ltmp74:
	leaq	104(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	callq	_ZN7gpumath5ArrayIfE7reshapeEi
.Ltmp75:
# %bb.3:                                # %invoke.cont4
.Ltmp76:
	leaq	104(%rsp), %rdi
	movss	.LCPI4_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	.LCPI4_1(%rip), %xmm1           # xmm1 = mem[0],zero,zero,zero
	callq	_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_
.Ltmp77:
# %bb.4:                                # %invoke.cont6
.Ltmp79:
	callq	omp_get_default_device@PLT
.Ltmp80:
# %bb.5:                                # %invoke.cont8
.Ltmp81:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp82:
# %bb.6:                                # %invoke.cont10
.Ltmp83:
	leaq	72(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIfEC2Eiii
.Ltmp84:
# %bb.7:                                # %invoke.cont12
.Ltmp86:
	callq	omp_get_default_device@PLT
.Ltmp87:
# %bb.8:                                # %invoke.cont14
.Ltmp88:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp89:
# %bb.9:                                # %invoke.cont16
.Ltmp90:
	leaq	200(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIfEC2Eiii
.Ltmp91:
# %bb.10:                               # %invoke.cont18
.Ltmp93:
	callq	omp_get_default_device@PLT
.Ltmp94:
# %bb.11:                               # %invoke.cont20
.Ltmp95:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp96:
# %bb.12:                               # %invoke.cont22
.Ltmp97:
	leaq	168(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIfEC2Eiii
.Ltmp98:
# %bb.13:                               # %invoke.cont24
.Ltmp100:
	leaq	72(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIfE7to_hostEv
.Ltmp101:
# %bb.14:                               # %invoke.cont26
	leaq	56(%rsp), %r13
	movq	%r13, 40(%rsp)
	movq	(%r14), %r15
	movq	8(%r14), %r14
	movq	%r13, %r12
	cmpq	$16, %r14
	jb	.LBB4_19
# %bb.15:                               # %if.then.i.i
	testq	%r14, %r14
	js	.LBB4_47
# %bb.16:                               # %if.end11.i.i.i
	movq	%r14, %rdi
	incq	%rdi
	js	.LBB4_43
# %bb.17:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
.Ltmp102:
	callq	_Znwm@PLT
.Ltmp103:
# %bb.18:                               # %call5.i.i.i.i.i5.i.noexc
	movq	%rax, %r12
	movq	%rax, 40(%rsp)
	movq	%r14, 56(%rsp)
.LBB4_19:                               # %if.end.i.i
	testq	%r14, %r14
	je	.LBB4_23
# %bb.20:                               # %if.end.i.i
	cmpq	$1, %r14
	jne	.LBB4_22
# %bb.21:                               # %if.then.i.i.i.i
	movzbl	(%r15), %eax
	movb	%al, (%r12)
	jmp	.LBB4_23
.LBB4_22:                               # %if.end.i.i.i.i.i
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB4_23:                               # %invoke.cont27
	movq	%r14, 48(%rsp)
	movb	$0, (%r12,%r14)
	leaq	24(%rsp), %r12
	movq	%r12, 8(%rsp)
	movq	(%rbx), %r14
	movq	8(%rbx), %rbx
	movq	%r12, %r15
	cmpq	$16, %rbx
	jb	.LBB4_28
# %bb.24:                               # %if.then.i.i17
	testq	%rbx, %rbx
	js	.LBB4_49
# %bb.25:                               # %if.end11.i.i.i19
	movq	%rbx, %rdi
	incq	%rdi
	js	.LBB4_45
# %bb.26:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i22
.Ltmp104:
	callq	_Znwm@PLT
.Ltmp105:
# %bb.27:                               # %call5.i.i.i.i.i5.i.noexc27
	movq	%rax, %r15
	movq	%rax, 8(%rsp)
	movq	%rbx, 24(%rsp)
.LBB4_28:                               # %if.end.i.i12
	testq	%rbx, %rbx
	je	.LBB4_32
# %bb.29:                               # %if.end.i.i12
	cmpq	$1, %rbx
	jne	.LBB4_31
# %bb.30:                               # %if.then.i.i.i.i15
	movzbl	(%r14), %eax
	movb	%al, (%r15)
	jmp	.LBB4_32
.LBB4_31:                               # %if.end.i.i.i.i.i16
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy@PLT
.LBB4_32:                               # %invoke.cont30
	movq	%rbx, 16(%rsp)
	movb	$0, (%r15,%rbx)
.Ltmp106:
	leaq	104(%rsp), %rdi
	leaq	72(%rsp), %rsi
	leaq	200(%rsp), %rdx
	leaq	168(%rsp), %rcx
	leaq	40(%rsp), %r8
	leaq	8(%rsp), %r9
	callq	_ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
.Ltmp107:
# %bb.33:                               # %invoke.cont32
	movq	8(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB4_35
# %bb.34:                               # %if.then.i.i31
	callq	_ZdlPv@PLT
.LBB4_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	40(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB4_37
# %bb.36:                               # %if.then.i.i33
	callq	_ZdlPv@PLT
.LBB4_37:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
	movq	168(%rsp), %rdi
	callq	free@PLT
	movq	$0, 168(%rsp)
	movq	176(%rsp), %rdi
	movl	192(%rsp), %esi
.Ltmp109:
	callq	omp_target_free@PLT
.Ltmp110:
# %bb.38:                               # %_ZN7gpumath5ArrayIfED2Ev.exit
	movq	200(%rsp), %rdi
	callq	free@PLT
	movq	$0, 200(%rsp)
	movq	208(%rsp), %rdi
	movl	224(%rsp), %esi
.Ltmp112:
	callq	omp_target_free@PLT
.Ltmp113:
# %bb.39:                               # %_ZN7gpumath5ArrayIfED2Ev.exit38
	movq	72(%rsp), %rdi
	callq	free@PLT
	movq	$0, 72(%rsp)
	movq	80(%rsp), %rdi
	movl	96(%rsp), %esi
.Ltmp115:
	callq	omp_target_free@PLT
.Ltmp116:
# %bb.40:                               # %_ZN7gpumath5ArrayIfED2Ev.exit42
	movq	136(%rsp), %rdi
	callq	free@PLT
	movq	$0, 136(%rsp)
	movq	144(%rsp), %rdi
	movl	160(%rsp), %esi
.Ltmp118:
	callq	omp_target_free@PLT
.Ltmp119:
# %bb.41:                               # %_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev.exit.i
	movq	$0, 144(%rsp)
	movq	104(%rsp), %rdi
	callq	free@PLT
	movq	$0, 104(%rsp)
	movq	112(%rsp), %rdi
	movl	128(%rsp), %esi
.Ltmp121:
	callq	omp_target_free@PLT
.Ltmp122:
# %bb.42:                               # %_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev.exit
	addq	$232, %rsp
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
.LBB4_43:                               # %if.end.i.i.i.i.i.i
	.cfi_def_cfa_offset 288
.Ltmp129:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp130:
# %bb.44:                               # %.noexc8
.LBB4_45:                               # %if.end.i.i.i.i.i.i23
.Ltmp124:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp125:
# %bb.46:                               # %.noexc26
.LBB4_47:                               # %if.then.i.i.i
.Ltmp131:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp132:
# %bb.48:                               # %.noexc
.LBB4_49:                               # %if.then.i.i.i24
.Ltmp126:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp127:
# %bb.50:                               # %.noexc25
.LBB4_51:                               # %terminate.lpad.i.i3.i
.Ltmp123:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB4_52:                               # %terminate.lpad.i.i.i
.Ltmp120:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB4_53:                               # %terminate.lpad.i41
.Ltmp117:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB4_54:                               # %terminate.lpad.i37
.Ltmp114:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB4_55:                               # %terminate.lpad.i
.Ltmp111:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB4_56:                               # %lpad31
.Ltmp108:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB4_64
# %bb.57:                               # %if.then.i.i44
	callq	_ZdlPv@PLT
	jmp	.LBB4_64
.LBB4_58:                               # %lpad19
.Ltmp99:
	movq	%rax, %rbx
	jmp	.LBB4_68
.LBB4_59:                               # %lpad13
.Ltmp92:
	movq	%rax, %rbx
	jmp	.LBB4_69
.LBB4_60:                               # %lpad7
.Ltmp85:
	jmp	.LBB4_62
.LBB4_61:                               # %lpad
.Ltmp78:
.LBB4_62:                               # %lpad
	movq	%rax, %rbx
	leaq	104(%rsp), %rdi
	callq	_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB4_63:                               # %lpad29
.Ltmp128:
	movq	%rax, %rbx
.LBB4_64:                               # %ehcleanup
	movq	40(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB4_67
# %bb.65:                               # %if.then.i.i47
	callq	_ZdlPv@PLT
	jmp	.LBB4_67
.LBB4_66:                               # %lpad25
.Ltmp133:
	movq	%rax, %rbx
.LBB4_67:                               # %ehcleanup33
	leaq	168(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIfED2Ev
.LBB4_68:                               # %ehcleanup34
	leaq	200(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIfED2Ev
.LBB4_69:                               # %ehcleanup36
	leaq	72(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIfED2Ev
	leaq	104(%rsp), %rdi
	callq	_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end4:
	.size	_Z11correctnessIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_, .Lfunc_end4-_Z11correctnessIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	.cfi_endproc
	.section	.gcc_except_table._Z11correctnessIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,"aG",@progbits,_Z11correctnessIJffEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,comdat
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
	.uleb128 .Ltmp70-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp77-.Ltmp70                #   Call between .Ltmp70 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin2          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp84-.Ltmp79                #   Call between .Ltmp79 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin2          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp91-.Ltmp86                #   Call between .Ltmp86 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin2          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp98-.Ltmp93                #   Call between .Ltmp93 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin2          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp103-.Ltmp100              #   Call between .Ltmp100 and .Ltmp103
	.uleb128 .Ltmp133-.Lfunc_begin2         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp128-.Lfunc_begin2         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin2         # >> Call Site 10 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin2         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin2         # >> Call Site 11 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin2         #     jumps to .Ltmp111
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp112-.Lfunc_begin2         # >> Call Site 12 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin2         #     jumps to .Ltmp114
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp115-.Lfunc_begin2         # >> Call Site 13 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin2         #     jumps to .Ltmp117
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp118-.Lfunc_begin2         # >> Call Site 14 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin2         #     jumps to .Ltmp120
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp121-.Lfunc_begin2         # >> Call Site 15 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin2         #     jumps to .Ltmp123
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp129-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp133-.Lfunc_begin2         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp128-.Lfunc_begin2         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin2         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Ltmp127-.Ltmp126              #   Call between .Ltmp126 and .Ltmp127
	.uleb128 .Ltmp128-.Lfunc_begin2         #     jumps to .Ltmp128
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Lfunc_end4-.Ltmp127           #   Call between .Ltmp127 and .Lfunc_end4
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
	.section	.text._ZNSt5tupleIJN7gpumath5ArrayIfEES2_EEC2ILb1ELb1EEEv,"axG",@progbits,_ZNSt5tupleIJN7gpumath5ArrayIfEES2_EEC2ILb1ELb1EEEv,comdat
	.weak	_ZNSt5tupleIJN7gpumath5ArrayIfEES2_EEC2ILb1ELb1EEEv # -- Begin function _ZNSt5tupleIJN7gpumath5ArrayIfEES2_EEC2ILb1ELb1EEEv
	.p2align	4, 0x90
	.type	_ZNSt5tupleIJN7gpumath5ArrayIfEES2_EEC2ILb1ELb1EEEv,@function
_ZNSt5tupleIJN7gpumath5ArrayIfEES2_EEC2ILb1ELb1EEEv: # @_ZNSt5tupleIJN7gpumath5ArrayIfEES2_EEC2ILb1ELb1EEEv
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	callq	omp_get_default_device@PLT
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
	movq	%rbx, %rdi
	movl	$536870911, %esi                # imm = 0x1FFFFFFF
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIfEC2Eiii
.Ltmp134:
	callq	omp_get_default_device@PLT
.Ltmp135:
# %bb.1:                                # %call.i.noexc.i
.Ltmp136:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp137:
# %bb.2:                                # %call2.i.noexc.i
.Ltmp138:
	leaq	32(%rbx), %rdi
	movl	$536870911, %esi                # imm = 0x1FFFFFFF
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIfEC2Eiii
.Ltmp139:
# %bb.3:                                # %_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EEC2Ev.exit
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB6_5:                                # %lpad.i
	.cfi_def_cfa_offset 32
.Ltmp140:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	callq	free@PLT
	movq	$0, (%rbx)
	movq	8(%rbx), %rdi
	movl	24(%rbx), %esi
.Ltmp141:
	callq	omp_target_free@PLT
.Ltmp142:
# %bb.6:                                # %_ZNSt10_Head_baseILm1EN7gpumath5ArrayIfEELb0EED2Ev.exit
	movq	$0, 8(%rbx)
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.LBB6_4:                                # %terminate.lpad.i.i
.Ltmp143:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end6:
	.size	_ZNSt5tupleIJN7gpumath5ArrayIfEES2_EEC2ILb1ELb1EEEv, .Lfunc_end6-_ZNSt5tupleIJN7gpumath5ArrayIfEES2_EEC2ILb1ELb1EEEv
	.cfi_endproc
	.section	.gcc_except_table._ZNSt5tupleIJN7gpumath5ArrayIfEES2_EEC2ILb1ELb1EEEv,"aG",@progbits,_ZNSt5tupleIJN7gpumath5ArrayIfEES2_EEC2ILb1ELb1EEEv,comdat
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp134-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp134
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp139-.Ltmp134              #   Call between .Ltmp134 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin3         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp142-.Ltmp141              #   Call between .Ltmp141 and .Ltmp142
	.uleb128 .Ltmp143-.Lfunc_begin3         #     jumps to .Ltmp143
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp142-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Lfunc_end6-.Ltmp142           #   Call between .Ltmp142 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_
.LCPI7_0:
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
	addsd	.LCPI7_0(%rip), %xmm0
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
	je	.LBB7_7
# %bb.1:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r15)
	je	.LBB7_3
# %bb.2:                                # %if.then.i2.i.i
	movzbl	67(%r15), %eax
	jmp	.LBB7_4
.LBB7_3:                                # %if.end.i.i.i
	movq	%r15, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	movq	%r15, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB7_4:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	cmpb	$0, 28(%rbx)
	jne	.LBB7_6
# %bb.5:                                # %if.then
	movq	%rbx, %rdi
	callq	_ZN7gpumath5ArrayIfE7to_hostEv
.LBB7_6:                                # %if.end
	addq	$192, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB7_7:                                # %if.then.i.i.i
	.cfi_def_cfa_offset 224
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end7:
	.size	_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_, .Lfunc_end7-_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2_
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
	jne	.LBB8_6
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
	je	.LBB8_13
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r15)
	je	.LBB8_4
# %bb.3:                                # %if.then.i2.i.i
	movzbl	67(%r15), %eax
	jmp	.LBB8_5
.LBB8_4:                                # %if.end.i.i.i
	movq	%r15, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	movq	%r15, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB8_5:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movslq	16(%rbx), %r14
	movl	24(%rbx), %ebp
	shlq	$2, %r14
.LBB8_6:                                # %if.end
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	omp_target_alloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB8_7
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
.LBB8_7:                                # %if.then15
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
	je	.LBB8_13
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12
	cmpb	$0, 56(%r14)
	je	.LBB8_10
# %bb.9:                                # %if.then.i2.i.i15
	movzbl	67(%r14), %eax
	jmp	.LBB8_11
.LBB8_10:                               # %if.end.i.i.i20
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB8_11:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25
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
.LBB8_13:                               # %if.then.i.i.i
	.cfi_def_cfa_offset 48
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end8:
	.size	_ZN7gpumath5ArrayIfEC2Eiii, .Lfunc_end8-_ZN7gpumath5ArrayIfEC2Eiii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath12compare_timeIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,"axG",@progbits,_ZN7gpumath12compare_timeIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,comdat
	.weak	_ZN7gpumath12compare_timeIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_ # -- Begin function _ZN7gpumath12compare_timeIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
	.p2align	4, 0x90
	.type	_ZN7gpumath12compare_timeIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,@function
_ZN7gpumath12compare_timeIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_: # @_ZN7gpumath12compare_timeIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
.Ltmp144:
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movl	$500, %ecx                      # imm = 0x1F4
	callq	_ZN7gpumath8gpu_timeIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Ltmp145:
# %bb.1:                                # %invoke.cont
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	movq	40(%rsp), %rdi
	leaq	56(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB9_3
# %bb.2:                                # %if.then.i.i
	callq	_ZdlPv@PLT
.LBB9_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
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
	je	.LBB9_20
# %bb.4:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r13)
	je	.LBB9_6
# %bb.5:                                # %if.then.i2.i.i
	movzbl	67(%r13), %eax
	jmp	.LBB9_7
.LBB9_6:                                # %if.end.i.i.i
	movq	%r13, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r13), %rax
	movq	%r13, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB9_7:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
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
.Ltmp147:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movl	$500, %ecx                      # imm = 0x1F4
	callq	_ZN7gpumath8gpu_timeIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Ltmp148:
# %bb.8:                                # %invoke.cont8
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB9_10
# %bb.9:                                # %if.then.i.i7
	callq	_ZdlPv@PLT
.LBB9_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
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
	je	.LBB9_20
# %bb.11:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
	cmpb	$0, 56(%r14)
	je	.LBB9_13
# %bb.12:                               # %if.then.i2.i.i34
	movzbl	67(%r14), %eax
	jmp	.LBB9_14
.LBB9_13:                               # %if.end.i.i.i39
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB9_14:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44
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
.LBB9_20:                               # %if.then.i.i.i
	.cfi_def_cfa_offset 128
	callq	_ZSt16__throw_bad_castv@PLT
.LBB9_16:                               # %lpad7
.Ltmp149:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rax
	jmp	.LBB9_17
.LBB9_15:                               # %lpad
.Ltmp146:
	movq	%rax, %rbx
	movq	40(%rsp), %rdi
	leaq	56(%rsp), %rax
.LBB9_17:                               # %lpad7
	cmpq	%rax, %rdi
	je	.LBB9_19
# %bb.18:                               # %ehcleanup.sink.split
	callq	_ZdlPv@PLT
.LBB9_19:                               # %ehcleanup
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end9:
	.size	_ZN7gpumath12compare_timeIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_, .Lfunc_end9-_ZN7gpumath12compare_timeIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath12compare_timeIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,"aG",@progbits,_ZN7gpumath12compare_timeIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp144-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp144
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.uleb128 .Ltmp146-.Lfunc_begin4         #     jumps to .Ltmp146
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp147-.Ltmp145              #   Call between .Ltmp145 and .Ltmp147
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp148-.Ltmp147              #   Call between .Ltmp147 and .Ltmp148
	.uleb128 .Ltmp149-.Lfunc_begin4         #     jumps to .Ltmp149
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Lfunc_end9-.Ltmp148           #   Call between .Ltmp148 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7gpumath5ArrayIfED2Ev,"axG",@progbits,_ZN7gpumath5ArrayIfED2Ev,comdat
	.weak	_ZN7gpumath5ArrayIfED2Ev        # -- Begin function _ZN7gpumath5ArrayIfED2Ev
	.p2align	4, 0x90
	.type	_ZN7gpumath5ArrayIfED2Ev,@function
_ZN7gpumath5ArrayIfED2Ev:               # @_ZN7gpumath5ArrayIfED2Ev
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
.Ltmp150:
	callq	omp_target_free@PLT
.Ltmp151:
# %bb.1:                                # %invoke.cont
	movq	$0, 8(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB10_2:                               # %terminate.lpad
	.cfi_def_cfa_offset 16
.Ltmp152:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end10:
	.size	_ZN7gpumath5ArrayIfED2Ev, .Lfunc_end10-_ZN7gpumath5ArrayIfED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath5ArrayIfED2Ev,"aG",@progbits,_ZN7gpumath5ArrayIfED2Ev,comdat
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
	.uleb128 .Ltmp150-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp151-.Ltmp150              #   Call between .Ltmp150 and .Ltmp151
	.uleb128 .Ltmp152-.Lfunc_begin5         #     jumps to .Ltmp152
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
	.section	.text._ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev,comdat
	.weak	_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev # -- Begin function _ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev,@function
_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev: # @_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	32(%rdi), %rdi
	callq	free@PLT
	movq	$0, 32(%rbx)
	movq	40(%rbx), %rdi
	movl	56(%rbx), %esi
.Ltmp153:
	callq	omp_target_free@PLT
.Ltmp154:
# %bb.1:                                # %_ZNSt10_Head_baseILm0EN7gpumath5ArrayIfEELb0EED2Ev.exit
	movq	$0, 40(%rbx)
	movq	(%rbx), %rdi
	callq	free@PLT
	movq	$0, (%rbx)
	movq	8(%rbx), %rdi
	movl	24(%rbx), %esi
.Ltmp156:
	callq	omp_target_free@PLT
.Ltmp157:
# %bb.2:                                # %_ZNSt10_Head_baseILm1EN7gpumath5ArrayIfEELb0EED2Ev.exit
	movq	$0, 8(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB11_4:                               # %terminate.lpad.i.i3
	.cfi_def_cfa_offset 16
.Ltmp158:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB11_3:                               # %terminate.lpad.i.i
.Ltmp155:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end11:
	.size	_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev, .Lfunc_end11-_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev,"aG",@progbits,_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIfEES2_EED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table11:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Ltmp153-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.uleb128 .Ltmp155-.Lfunc_begin6         #     jumps to .Ltmp155
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp156-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin6         #     jumps to .Ltmp158
	.byte	1                               #   On action: 1
.Lcst_end6:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase4:
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
	je	.LBB12_6
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
	je	.LBB12_7
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r14)
	je	.LBB12_4
# %bb.3:                                # %if.then.i2.i.i
	movzbl	67(%r14), %eax
	jmp	.LBB12_5
.LBB12_6:                               # %if.else
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
.LBB12_4:                               # %if.end.i.i.i
	.cfi_def_cfa_offset 48
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB12_5:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
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
.LBB12_7:                               # %if.then.i.i.i
	.cfi_def_cfa_offset 48
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end12:
	.size	_ZN7gpumath5ArrayIfE7to_hostEv, .Lfunc_end12-_ZN7gpumath5ArrayIfE7to_hostEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath8gpu_timeIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"axG",@progbits,_ZN7gpumath8gpu_timeIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.weak	_ZN7gpumath8gpu_timeIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi # -- Begin function _ZN7gpumath8gpu_timeIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.p2align	4, 0x90
	.type	_ZN7gpumath8gpu_timeIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,@function
_ZN7gpumath8gpu_timeIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi: # @_ZN7gpumath8gpu_timeIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
	je	.LBB13_1
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	leaq	4(%rsi), %r13
	movq	16(%rsp), %rax
	leaq	32(%rsp), %r12
	movl	$15, %ecx
	cmpq	%r12, %rax
	je	.LBB13_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	32(%rsp), %rcx
.LBB13_5:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	cmpq	%rcx, %r13
	jbe	.LBB13_6
# %bb.7:                                # %if.else.i.i.i
.Ltmp159:
	leaq	.L.str.18(%rip), %rcx
	leaq	16(%rsp), %rdi
	movl	$4, %r8d
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp160:
	jmp	.LBB13_8
.LBB13_6:                               # %if.end.i.i.i.i.i
	movl	$1954051118, (%rax,%rsi)        # imm = 0x7478742E
.LBB13_8:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
	movq	%r13, 24(%rsp)
	movq	16(%rsp), %rax
	movb	$0, (%rax,%r13)
	leaq	72(%rsp), %r13
	movq	%r13, 56(%rsp)
	movq	16(%rsp), %rax
	cmpq	%r12, %rax
	je	.LBB13_9
# %bb.11:                               # %if.else.i.i
	movq	%rax, 56(%rsp)
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 72(%rsp)
	jmp	.LBB13_12
.LBB13_9:                               # %if.then.i.i
	movq	24(%rsp), %rbp
	movq	%rbp, %rdx
	movq	$-1, %rax
	incq	%rdx
	je	.LBB13_12
# %bb.10:                               # %if.end.i.i.i
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	memcpy@PLT
	movq	%rbp, %rax
.LBB13_12:                              # %invoke.cont
	movq	%rax, 64(%rsp)
	movq	%r12, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
.Ltmp161:
	leaq	88(%rsp), %rdi
	leaq	56(%rsp), %rsi
	movl	$16, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.Ltmp162:
# %bb.13:                               # %invoke.cont3
	movq	56(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB13_15
# %bb.14:                               # %if.then.i.i9
	callq	_ZdlPv@PLT
.LBB13_15:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	16(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB13_17
# %bb.16:                               # %if.then.i.i11
	callq	_ZdlPv@PLT
.LBB13_17:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
	xorpd	%xmm0, %xmm0
	testl	%ebx, %ebx
	jle	.LBB13_18
# %bb.25:                               # %for.body.preheader
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	leaq	88(%rsp), %r12
	.p2align	4, 0x90
.LBB13_26:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
.Ltmp164:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	movsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp165:
# %bb.27:                               # %invoke.cont7
                                        #   in Loop: Header=BB13_26 Depth=1
.Ltmp166:
	movq	%r12, %rdi
	movsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp167:
# %bb.28:                               # %invoke.cont8
                                        #   in Loop: Header=BB13_26 Depth=1
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB13_29
# %bb.31:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB13_26 Depth=1
	cmpb	$0, 56(%rbp)
	je	.LBB13_33
# %bb.32:                               # %if.then.i2.i.i
                                        #   in Loop: Header=BB13_26 Depth=1
	movzbl	67(%rbp), %eax
	jmp	.LBB13_35
	.p2align	4, 0x90
.LBB13_33:                              # %if.end.i.i.i22
                                        #   in Loop: Header=BB13_26 Depth=1
.Ltmp168:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp169:
# %bb.34:                               # %.noexc26
                                        #   in Loop: Header=BB13_26 Depth=1
	movq	(%rbp), %rax
.Ltmp170:
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp171:
.LBB13_35:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB13_26 Depth=1
.Ltmp172:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp173:
# %bb.36:                               # %call1.i.noexc
                                        #   in Loop: Header=BB13_26 Depth=1
.Ltmp174:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp175:
# %bb.37:                               # %invoke.cont10
                                        #   in Loop: Header=BB13_26 Depth=1
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	48(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	decl	%ebx
	jne	.LBB13_26
	jmp	.LBB13_19
.LBB13_18:
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.LBB13_19:                              # %for.cond.cleanup
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
.LBB13_29:                              # %if.then.i.i.i24
	.cfi_def_cfa_offset 656
.Ltmp177:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp178:
# %bb.30:                               # %.noexc25
.LBB13_1:                               # %if.then.i.i.i
.Ltmp180:
	leaq	.L.str.19(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp181:
# %bb.2:                                # %.noexc
.LBB13_21:                              # %lpad2
.Ltmp163:
	movq	%rax, %rbx
	movq	56(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB13_23
# %bb.22:                               # %if.then.i.i14
	callq	_ZdlPv@PLT
	jmp	.LBB13_23
.LBB13_20:                              # %lpad
.Ltmp182:
	movq	%rax, %rbx
.LBB13_23:                              # %ehcleanup
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB13_41
# %bb.24:                               # %if.then.i.i17
	callq	_ZdlPv@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB13_39:                              # %lpad6.loopexit.split-lp
.Ltmp179:
	jmp	.LBB13_40
.LBB13_38:                              # %lpad6.loopexit
.Ltmp176:
.LBB13_40:                              # %lpad6
	movq	%rax, %rbx
	leaq	88(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.LBB13_41:                              # %ehcleanup16
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end13:
	.size	_ZN7gpumath8gpu_timeIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, .Lfunc_end13-_ZN7gpumath8gpu_timeIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath8gpu_timeIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"aG",@progbits,_ZN7gpumath8gpu_timeIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp159-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp159
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp182-.Lfunc_begin7         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin7         #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp175-.Ltmp164              #   Call between .Ltmp164 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin7         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin7         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin7         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Lfunc_end13-.Ltmp181          #   Call between .Ltmp181 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ # -- Begin function _ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	.p2align	4, 0x90
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,@function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: # @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
	jb	.LBB14_8
# %bb.1:                                # %if.end.i
	movq	%r14, (%rsp)                    # 8-byte Spill
	testq	%rax, %rax
	js	.LBB14_2
# %bb.3:                                # %land.lhs.true.i.i
	cmpq	$31, %rax
	movl	$30, %r14d
	cmovaeq	%rax, %r14
	movq	%r14, %rdi
	incq	%rdi
	js	.LBB14_4
# %bb.6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
.Ltmp183:
	callq	_Znwm@PLT
.Ltmp184:
# %bb.7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i
	movq	%rax, %rbp
	movb	$0, (%rax)
	movq	%rax, (%rbx)
	movq	%r14, 16(%rbx)
	movq	(%rsp), %r14                    # 8-byte Reload
.LBB14_8:                               # %invoke.cont4
	leaq	.L.str.19(%rip), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	testq	%r15, %r15
	js	.LBB14_19
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
	movl	$15, %eax
	cmpq	%r13, %rbp
	je	.LBB14_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
	movq	(%r13), %rax
.LBB14_11:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
	cmpq	%rax, %r15
	jbe	.LBB14_12
# %bb.16:                               # %if.else.i.i
.Ltmp185:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp186:
# %bb.17:                               # %if.else.i.i.invoke.cont5_crit_edge
	movq	(%rbx), %rbp
	jmp	.LBB14_18
.LBB14_12:                              # %if.then.i3.i
	testq	%r15, %r15
	je	.LBB14_18
# %bb.13:                               # %if.then.i3.i
	cmpq	$1, %r15
	jne	.LBB14_15
# %bb.14:                               # %if.then.i.i.i
	movzbl	(%r12), %eax
	movb	%al, (%rbp)
	jmp	.LBB14_18
.LBB14_15:                              # %if.end.i.i.i.i
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
.LBB14_18:                              # %invoke.cont5
	movq	%r15, 8(%rbx)
	movb	$0, (%rbp,%r15)
	movq	8(%r14), %r8
	movq	8(%rbx), %rsi
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	xorq	%rsi, %rax
	cmpq	%r8, %rax
	jb	.LBB14_19
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	leaq	(%rsi,%r8), %r15
	movq	(%rbx), %rdi
	movl	$15, %eax
	cmpq	%r13, %rdi
	je	.LBB14_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	16(%rbx), %rax
.LBB14_23:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	(%r14), %rcx
	cmpq	%rax, %r15
	jbe	.LBB14_24
# %bb.27:                               # %if.else.i.i.i
.Ltmp187:
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp188:
	jmp	.LBB14_32
.LBB14_24:                              # %if.then.i3.i.i
	testq	%r8, %r8
	je	.LBB14_32
# %bb.25:                               # %if.then3.i.i.i
	addq	%rsi, %rdi
	cmpq	$1, %r8
	jne	.LBB14_31
# %bb.26:                               # %if.then.i.i.i.i
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	jmp	.LBB14_32
.LBB14_31:                              # %if.end.i.i.i.i.i19
	movq	%rcx, %rsi
	movq	%r8, %rdx
	callq	memcpy@PLT
.LBB14_32:                              # %nrvo.skipdtor
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
.LBB14_4:                               # %if.end.i.i.i.i.i
	.cfi_def_cfa_offset 64
.Ltmp189:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp190:
# %bb.5:                                # %.noexc6
.LBB14_2:
	leaq	.L.str.6(%rip), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
.LBB14_19:                              # %if.then.i.i.i20.invoke
.Ltmp191:
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp192:
# %bb.20:                               # %if.then.i.i.i20.cont
.LBB14_28:                              # %lpad3
.Ltmp193:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	cmpq	%r13, %rdi
	je	.LBB14_30
# %bb.29:                               # %if.then.i.i24
	callq	_ZdlPv@PLT
.LBB14_30:                              # %ehcleanup
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end14:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, .Lfunc_end14-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	.cfi_endproc
	.section	.gcc_except_table._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,"aG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,comdat
	.p2align	2, 0x0
GCC_except_table14:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp183-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp186-.Ltmp183              #   Call between .Ltmp183 and .Ltmp186
	.uleb128 .Ltmp193-.Lfunc_begin8         #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp188-.Ltmp187              #   Call between .Ltmp187 and .Ltmp188
	.uleb128 .Ltmp193-.Lfunc_begin8         #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp189-.Ltmp188              #   Call between .Ltmp188 and .Ltmp189
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp192-.Ltmp189              #   Call between .Ltmp189 and .Ltmp192
	.uleb128 .Ltmp193-.Lfunc_begin8         #     jumps to .Ltmp193
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Lfunc_end14-.Ltmp192          #   Call between .Ltmp192 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7gpumath8gpu_timeIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"axG",@progbits,_ZN7gpumath8gpu_timeIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.weak	_ZN7gpumath8gpu_timeIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi # -- Begin function _ZN7gpumath8gpu_timeIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.p2align	4, 0x90
	.type	_ZN7gpumath8gpu_timeIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,@function
_ZN7gpumath8gpu_timeIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi: # @_ZN7gpumath8gpu_timeIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
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
	je	.LBB15_1
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	leaq	4(%rsi), %r13
	movq	16(%rsp), %rax
	leaq	32(%rsp), %r12
	movl	$15, %ecx
	cmpq	%r12, %rax
	je	.LBB15_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	32(%rsp), %rcx
.LBB15_5:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	cmpq	%rcx, %r13
	jbe	.LBB15_6
# %bb.7:                                # %if.else.i.i.i
.Ltmp194:
	leaq	.L.str.18(%rip), %rcx
	leaq	16(%rsp), %rdi
	movl	$4, %r8d
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp195:
	jmp	.LBB15_8
.LBB15_6:                               # %if.end.i.i.i.i.i
	movl	$1954051118, (%rax,%rsi)        # imm = 0x7478742E
.LBB15_8:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
	movq	%r13, 24(%rsp)
	movq	16(%rsp), %rax
	movb	$0, (%rax,%r13)
	leaq	72(%rsp), %r13
	movq	%r13, 56(%rsp)
	movq	16(%rsp), %rax
	cmpq	%r12, %rax
	je	.LBB15_9
# %bb.11:                               # %if.else.i.i
	movq	%rax, 56(%rsp)
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 72(%rsp)
	jmp	.LBB15_12
.LBB15_9:                               # %if.then.i.i
	movq	24(%rsp), %rbp
	movq	%rbp, %rdx
	movq	$-1, %rax
	incq	%rdx
	je	.LBB15_12
# %bb.10:                               # %if.end.i.i.i
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	memcpy@PLT
	movq	%rbp, %rax
.LBB15_12:                              # %invoke.cont
	movq	%rax, 64(%rsp)
	movq	%r12, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
.Ltmp196:
	leaq	88(%rsp), %rdi
	leaq	56(%rsp), %rsi
	movl	$16, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.Ltmp197:
# %bb.13:                               # %invoke.cont3
	movq	56(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB15_15
# %bb.14:                               # %if.then.i.i9
	callq	_ZdlPv@PLT
.LBB15_15:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	16(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB15_17
# %bb.16:                               # %if.then.i.i11
	callq	_ZdlPv@PLT
.LBB15_17:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
	xorpd	%xmm0, %xmm0
	testl	%ebx, %ebx
	jle	.LBB15_18
# %bb.25:                               # %for.body.preheader
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	leaq	88(%rsp), %r12
	.p2align	4, 0x90
.LBB15_26:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
.Ltmp199:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	movsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp200:
# %bb.27:                               # %invoke.cont7
                                        #   in Loop: Header=BB15_26 Depth=1
.Ltmp201:
	movq	%r12, %rdi
	movsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp202:
# %bb.28:                               # %invoke.cont8
                                        #   in Loop: Header=BB15_26 Depth=1
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB15_29
# %bb.31:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB15_26 Depth=1
	cmpb	$0, 56(%rbp)
	je	.LBB15_33
# %bb.32:                               # %if.then.i2.i.i
                                        #   in Loop: Header=BB15_26 Depth=1
	movzbl	67(%rbp), %eax
	jmp	.LBB15_35
	.p2align	4, 0x90
.LBB15_33:                              # %if.end.i.i.i22
                                        #   in Loop: Header=BB15_26 Depth=1
.Ltmp203:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp204:
# %bb.34:                               # %.noexc26
                                        #   in Loop: Header=BB15_26 Depth=1
	movq	(%rbp), %rax
.Ltmp205:
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp206:
.LBB15_35:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB15_26 Depth=1
.Ltmp207:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp208:
# %bb.36:                               # %call1.i.noexc
                                        #   in Loop: Header=BB15_26 Depth=1
.Ltmp209:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp210:
# %bb.37:                               # %invoke.cont10
                                        #   in Loop: Header=BB15_26 Depth=1
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	48(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	decl	%ebx
	jne	.LBB15_26
	jmp	.LBB15_19
.LBB15_18:
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.LBB15_19:                              # %for.cond.cleanup
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
.LBB15_29:                              # %if.then.i.i.i24
	.cfi_def_cfa_offset 656
.Ltmp212:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp213:
# %bb.30:                               # %.noexc25
.LBB15_1:                               # %if.then.i.i.i
.Ltmp215:
	leaq	.L.str.19(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp216:
# %bb.2:                                # %.noexc
.LBB15_21:                              # %lpad2
.Ltmp198:
	movq	%rax, %rbx
	movq	56(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB15_23
# %bb.22:                               # %if.then.i.i14
	callq	_ZdlPv@PLT
	jmp	.LBB15_23
.LBB15_20:                              # %lpad
.Ltmp217:
	movq	%rax, %rbx
.LBB15_23:                              # %ehcleanup
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB15_41
# %bb.24:                               # %if.then.i.i17
	callq	_ZdlPv@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB15_39:                              # %lpad6.loopexit.split-lp
.Ltmp214:
	jmp	.LBB15_40
.LBB15_38:                              # %lpad6.loopexit
.Ltmp211:
.LBB15_40:                              # %lpad6
	movq	%rax, %rbx
	leaq	88(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.LBB15_41:                              # %ehcleanup16
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end15:
	.size	_ZN7gpumath8gpu_timeIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, .Lfunc_end15-_ZN7gpumath8gpu_timeIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath8gpu_timeIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"aG",@progbits,_ZN7gpumath8gpu_timeIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp194-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp194
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp217-.Lfunc_begin9         #     jumps to .Ltmp217
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin9         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp210-.Ltmp199              #   Call between .Ltmp199 and .Ltmp210
	.uleb128 .Ltmp211-.Lfunc_begin9         #     jumps to .Ltmp211
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp213-.Ltmp212              #   Call between .Ltmp212 and .Ltmp213
	.uleb128 .Ltmp214-.Lfunc_begin9         #     jumps to .Ltmp214
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp216-.Ltmp215              #   Call between .Ltmp215 and .Ltmp216
	.uleb128 .Ltmp217-.Lfunc_begin9         #     jumps to .Ltmp217
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Lfunc_end15-.Ltmp216          #   Call between .Ltmp216 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,"axG",@progbits,_ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,comdat
	.weak	_ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE # -- Begin function _ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	.p2align	4, 0x90
	.type	_ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,@function
_ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE: # @_ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$176, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	48(%rdi), %r15d
	cmpl	16(%rsi), %r15d
	jne	.LBB16_2
# %bb.1:                                # %cond.end
	movq	%rdi, %r14
	movslq	24(%rsi), %rbx
	movq	8(%rsi), %r12
	movq	40(%rdi), %r13
	callq	omp_get_wtime@PLT
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	movq	8(%r14), %rax
	movq	%r15, 40(%rsp)
	movq	%r15, 8(%rsp)
	movq	%r12, 48(%rsp)
	movq	%r12, 16(%rsp)
	movq	%r13, 56(%rsp)
	movq	%r13, 24(%rsp)
	movq	%rax, 64(%rsp)
	movq	%rax, 32(%rsp)
	movabsq	$17179869186, %rax              # imm = 0x400000002
	movq	%rax, 72(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	.L.offload_sizes.24(%rip), %rax
	movq	%rax, 96(%rsp)
	leaq	.L.offload_maptypes.25(%rip), %rax
	movq	%rax, 104(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 112(%rsp)
	movq	%r15, 128(%rsp)
	movupd	%xmm0, 152(%rsp)
	movupd	%xmm0, 136(%rsp)
	movl	$0, 168(%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	movq	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30.region_id@GOTPCREL(%rip), %r8
	leaq	72(%rsp), %r9
	movq	%rbx, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__tgt_target_kernel@PLT
	callq	omp_get_wtime@PLT
	subsd	(%rsp), %xmm0                   # 8-byte Folded Reload
	addq	$176, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB16_2:                               # %cond.false
	.cfi_def_cfa_offset 224
	leaq	.L.str.20(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE(%rip), %rcx
	movl	$16, %edx
	callq	__assert_fail@PLT
.Lfunc_end16:
	.size	_ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE, .Lfunc_end16-_ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
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
	je	.LBB17_2
# %bb.1:                                # %entry
	movq	16(%rbx), %rax
.LBB17_2:                               # %entry
	addq	%r12, %rbp
	js	.LBB17_25
# %bb.3:                                # %if.end.i
	cmpq	%rax, %rbp
	jbe	.LBB17_6
# %bb.4:                                # %land.lhs.true.i
	addq	%rax, %rax
	cmpq	%rax, %rbp
	jae	.LBB17_6
# %bb.5:                                # %if.then4.i
	movabsq	$9223372036854775807, %rbp      # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rbp, %rax
	cmovbq	%rax, %rbp
.LBB17_6:                               # %if.end11.i
	movq	%rbp, %rdi
	incq	%rdi
	js	.LBB17_26
# %bb.7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
	movq	%rax, %r13
	testq	%r15, %r15
	je	.LBB17_11
# %bb.8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
	cmpq	$1, %r15
	jne	.LBB17_10
# %bb.9:                                # %if.then.i18
	movzbl	(%r14), %eax
	movb	%al, (%r13)
	jmp	.LBB17_11
.LBB17_10:                              # %if.end.i.i
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
.LBB17_11:                              # %if.end
	movq	%r14, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r15), %r14
	movq	32(%rsp), %rsi                  # 8-byte Reload
	testq	%rsi, %rsi
	movq	(%rsp), %rdx                    # 8-byte Reload
	je	.LBB17_17
# %bb.12:                               # %if.end
	testq	%rdx, %rdx
	je	.LBB17_17
# %bb.13:                               # %if.then10
	leaq	(%r15,%r13), %rdi
	cmpq	$1, %rdx
	jne	.LBB17_15
# %bb.14:                               # %if.then.i20
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	.LBB17_16
.LBB17_15:                              # %if.end.i.i21
	callq	memcpy@PLT
.LBB17_16:                              # %if.end11
	movq	(%rsp), %rdx                    # 8-byte Reload
.LBB17_17:                              # %if.end11
	cmpq	%r14, %r12
	je	.LBB17_22
# %bb.18:                               # %if.then13
	subq	%r14, %r12
	je	.LBB17_22
# %bb.19:                               # %if.then13
	movq	%r13, %rdi
	addq	%r15, %rdi
	addq	%rdx, %rdi
	addq	8(%rsp), %r15                   # 8-byte Folded Reload
	addq	16(%rsp), %r15                  # 8-byte Folded Reload
	cmpq	$1, %r12
	jne	.LBB17_21
# %bb.20:                               # %if.then.i24
	movzbl	(%r15), %eax
	movb	%al, (%rdi)
.LBB17_22:                              # %if.end19
	movq	8(%rsp), %rdi                   # 8-byte Reload
	cmpq	24(%rsp), %rdi                  # 8-byte Folded Reload
	je	.LBB17_24
.LBB17_23:                              # %if.then.i28
	callq	_ZdlPv@PLT
.LBB17_24:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
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
.LBB17_21:                              # %if.end.i.i25
	.cfi_def_cfa_offset 96
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	cmpq	24(%rsp), %rdi                  # 8-byte Folded Reload
	jne	.LBB17_23
	jmp	.LBB17_24
.LBB17_26:                              # %if.end.i.i.i.i
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB17_25:                              # %if.then.i
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Lfunc_end17:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm, .Lfunc_end17-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE,"axG",@progbits,_ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE,comdat
	.weak	_ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE # -- Begin function _ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	.p2align	4, 0x90
	.type	_ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE,@function
_ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE: # @_ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	subq	$176, %rsp
	.cfi_def_cfa_offset 224
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	48(%rdi), %r15d
	cmpl	16(%rsi), %r15d
	jne	.LBB18_2
# %bb.1:                                # %cond.end
	movq	%rdi, %r14
	movslq	24(%rsi), %rbx
	movq	8(%rsi), %r12
	movq	40(%rdi), %r13
	callq	omp_get_wtime@PLT
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	movq	8(%r14), %rax
	movq	%r15, 40(%rsp)
	movq	%r15, 8(%rsp)
	movq	%r12, 48(%rsp)
	movq	%r12, 16(%rsp)
	movq	%r13, 56(%rsp)
	movq	%r13, 24(%rsp)
	movq	%rax, 64(%rsp)
	movq	%rax, 32(%rsp)
	movabsq	$17179869186, %rax              # imm = 0x400000002
	movq	%rax, 72(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 88(%rsp)
	leaq	.L.offload_sizes.24(%rip), %rax
	movq	%rax, 96(%rsp)
	leaq	.L.offload_maptypes.25(%rip), %rax
	movq	%rax, 104(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 112(%rsp)
	movq	%r15, 128(%rsp)
	movupd	%xmm0, 152(%rsp)
	movupd	%xmm0, 136(%rsp)
	movl	$0, 168(%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	movq	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30.region_id@GOTPCREL(%rip), %r8
	leaq	72(%rsp), %r9
	movq	%rbx, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__tgt_target_kernel@PLT
	callq	omp_get_wtime@PLT
	subsd	(%rsp), %xmm0                   # 8-byte Folded Reload
	addq	$176, %rsp
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB18_2:                               # %cond.false
	.cfi_def_cfa_offset 224
	leaq	.L.str.20(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE(%rip), %rcx
	movl	$16, %edx
	callq	__assert_fail@PLT
.Lfunc_end18:
	.size	_ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE, .Lfunc_end18-_ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
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
	jne	.LBB19_6
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
	je	.LBB19_13
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r15)
	je	.LBB19_4
# %bb.3:                                # %if.then.i2.i.i
	movzbl	67(%r15), %eax
	jmp	.LBB19_5
.LBB19_4:                               # %if.end.i.i.i
	movq	%r15, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	movq	%r15, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB19_5:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.LBB19_6:                               # %if.end
	movq	8(%rbx), %rdi
	movl	24(%rbx), %esi
	callq	omp_target_free@PLT
	movslq	16(%rbx), %rdi
	shlq	$2, %rdi
	movl	24(%rbx), %esi
	callq	omp_target_alloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB19_7
# %bb.12:                               # %if.end21
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB19_7:                               # %if.then16
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
	je	.LBB19_13
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12
	cmpb	$0, 56(%r14)
	je	.LBB19_10
# %bb.9:                                # %if.then.i2.i.i15
	movzbl	67(%r14), %eax
	jmp	.LBB19_11
.LBB19_10:                              # %if.end.i.i.i20
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB19_11:                              # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25
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
.LBB19_13:                              # %if.then.i.i.i
	.cfi_def_cfa_offset 32
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end19:
	.size	_ZN7gpumath5ArrayIfE7reshapeEi, .Lfunc_end19-_ZN7gpumath5ArrayIfE7reshapeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,"axG",@progbits,_ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,comdat
	.weak	_ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_ # -- Begin function _ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
	.p2align	4, 0x90
	.type	_ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,@function
_ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_: # @_ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
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
	movq	%r9, (%rsp)                     # 8-byte Spill
	movq	%r8, %r15
	movq	%rcx, %rbx
	movq	%rdx, %r13
	movq	%rsi, %r12
	movq	%rdi, %rbp
	leaq	32(%rdi), %r14
	cmpb	$0, 60(%rdi)
	je	.LBB20_1
# %bb.2:                                # %if.end
	cmpb	$0, 28(%rbp)
	je	.LBB20_3
.LBB20_4:                               # %if.end7
	cmpb	$0, 28(%r13)
	je	.LBB20_5
.LBB20_6:                               # %if.end10
	cmpb	$0, 28(%rbx)
	je	.LBB20_7
.LBB20_8:                               # %if.end13
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	movq	%r14, %rdi
	callq	_ZN7gpumath5ArrayIfE7to_hostEv
	movq	%rbp, %rdi
	callq	_ZN7gpumath5ArrayIfE7to_hostEv
	cmpb	$0, 28(%r12)
	je	.LBB20_10
# %bb.9:                                # %if.then19
	movq	%r12, %rdi
	callq	_ZN7gpumath5ArrayIfE7to_hostEv
.LBB20_10:                              # %if.end20
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	_ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	leaq	.L__unnamed_1(%rip), %rdi
	leaq	_ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined(%rip), %rdx
	movl	$5, %esi
	movq	%r13, %rcx
	movq	%r12, %r8
	movq	%r15, %r9
	xorl	%eax, %eax
	pushq	(%rsp)                          # 8-byte Folded Reload
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
.LBB20_1:                               # %if.then
	.cfi_def_cfa_offset 64
	movq	%r14, %rdi
	callq	_ZN7gpumath5ArrayIfE9to_deviceEv
	cmpb	$0, 28(%rbp)
	jne	.LBB20_4
.LBB20_3:                               # %if.then5
	movq	%rbp, %rdi
	callq	_ZN7gpumath5ArrayIfE9to_deviceEv
	cmpb	$0, 28(%r13)
	jne	.LBB20_6
.LBB20_5:                               # %if.then9
	movq	%r13, %rdi
	callq	_ZN7gpumath5ArrayIfE9to_deviceEv
	cmpb	$0, 28(%rbx)
	jne	.LBB20_8
.LBB20_7:                               # %if.then12
	movq	%rbx, %rdi
	callq	_ZN7gpumath5ArrayIfE9to_deviceEv
	jmp	.LBB20_8
.Lfunc_end20:
	.size	_ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_, .Lfunc_end20-_ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
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
	je	.LBB21_6
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
	je	.LBB21_7
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r14)
	je	.LBB21_4
# %bb.3:                                # %if.then.i2.i.i
	movzbl	67(%r14), %eax
	jmp	.LBB21_5
.LBB21_6:                               # %if.else
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
.LBB21_4:                               # %if.end.i.i.i
	.cfi_def_cfa_offset 48
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB21_5:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
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
.LBB21_7:                               # %if.then.i.i.i
	.cfi_def_cfa_offset 48
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end21:
	.size	_ZN7gpumath5ArrayIfE9to_deviceEv, .Lfunc_end21-_ZN7gpumath5ArrayIfE9to_deviceEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,"axG",@progbits,_ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,comdat
	.weak	_ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE # -- Begin function _ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	.p2align	4, 0x90
	.type	_ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,@function
_ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE: # @_ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -16
	movl	48(%rdi), %eax
	cmpl	16(%rsi), %eax
	jne	.LBB22_5
# %bb.1:                                # %cond.end
	cmpb	$0, 28(%rsi)
	jne	.LBB22_6
# %bb.2:                                # %cond.end6
	movq	%rdi, %rbx
	cmpb	$0, 60(%rdi)
	jne	.LBB22_7
# %bb.3:                                # %cond.end12
	movl	%eax, 12(%rsp)
	movq	(%rsi), %rax
	movq	%rax, 40(%rsp)
	movq	32(%rbx), %rax
	movq	%rax, 32(%rsp)
	callq	omp_get_wtime@PLT
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	movq	(%rbx), %rax
	movq	%rax, 24(%rsp)
	cmpb	$0, 28(%rbx)
	jne	.LBB22_8
# %bb.4:                                # %cond.end25
	leaq	24(%rsp), %rax
	movq	%rax, (%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	leaq	_ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined(%rip), %rdx
	leaq	12(%rsp), %rcx
	leaq	40(%rsp), %r8
	leaq	32(%rsp), %r9
	movl	$4, %esi
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	callq	omp_get_wtime@PLT
	subsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB22_5:                               # %cond.false
	.cfi_def_cfa_offset 64
	leaq	.L.str.20(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE(%rip), %rcx
	movl	$47, %edx
	callq	__assert_fail@PLT
.LBB22_6:                               # %cond.false5
	leaq	.L.str.32(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE(%rip), %rcx
	movl	$48, %edx
	callq	__assert_fail@PLT
.LBB22_7:                               # %cond.false11
	leaq	.L.str.33(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE(%rip), %rcx
	movl	$49, %edx
	callq	__assert_fail@PLT
.LBB22_8:                               # %cond.false24
	leaq	.L.str.34(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE(%rip), %rcx
	movl	$60, %edx
	callq	__assert_fail@PLT
.Lfunc_end22:
	.size	_ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE, .Lfunc_end22-_ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined
	.type	_ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined,@function
_ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined: # @_ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined
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
	je	.LBB23_1
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
.LBB23_1:                               # %omp_if.end
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
.Lfunc_end23:
	.size	_ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined, .Lfunc_end23-_ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LCPI24_0:
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.long	0x7fffffff                      # float NaN
	.section	.text._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.weak	_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
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
	jne	.LBB24_44
# %bb.1:                                # %cond.end
	movq	%rdi, %rbx
	cmpb	$0, 28(%rdi)
	jne	.LBB24_45
# %bb.2:                                # %cond.end5
	cmpb	$0, 28(%rsi)
	jne	.LBB24_46
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
	je	.LBB24_4
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	leaq	4(%rsi), %r15
	movq	16(%rsp), %rax
	leaq	32(%rsp), %r14
	movl	$15, %ecx
	cmpq	%r14, %rax
	je	.LBB24_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	32(%rsp), %rcx
.LBB24_8:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	cmpq	%rcx, %r15
	jbe	.LBB24_9
# %bb.10:                               # %if.else.i.i.i
.Ltmp218:
	leaq	.L.str.18(%rip), %rcx
	leaq	16(%rsp), %rdi
	movl	$4, %r8d
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp219:
	jmp	.LBB24_11
.LBB24_9:                               # %if.end.i.i.i.i.i
	movl	$1954051118, (%rax,%rsi)        # imm = 0x7478742E
.LBB24_11:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
	movq	%r15, 24(%rsp)
	movq	16(%rsp), %rax
	movb	$0, (%rax,%r15)
	leaq	88(%rsp), %r15
	movq	%r15, 72(%rsp)
	movq	16(%rsp), %rax
	cmpq	%r14, %rax
	je	.LBB24_12
# %bb.14:                               # %if.else.i.i
	movq	%rax, 72(%rsp)
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 88(%rsp)
	jmp	.LBB24_15
.LBB24_12:                              # %if.then.i.i
	movq	24(%rsp), %r12
	movq	%r12, %rdx
	movq	$-1, %rax
	incq	%rdx
	je	.LBB24_15
# %bb.13:                               # %if.end.i.i.i
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy@PLT
	movq	%r12, %rax
.LBB24_15:                              # %invoke.cont
	movq	%rax, 80(%rsp)
	movq	%r14, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
.Ltmp220:
	leaq	104(%rsp), %rdi
	leaq	72(%rsp), %rsi
	movl	$16, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.Ltmp221:
# %bb.16:                               # %invoke.cont15
	movq	72(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB24_18
# %bb.17:                               # %if.then.i.i17
	callq	_ZdlPv@PLT
.LBB24_18:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	16(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB24_20
# %bb.19:                               # %if.then.i.i19
	callq	_ZdlPv@PLT
.LBB24_20:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
	cmpl	$0, 16(%rbx)
	jle	.LBB24_21
# %bb.28:                               # %for.body.preheader
	xorps	%xmm0, %xmm0
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
	xorl	%r13d, %r13d
	leaq	104(%rsp), %r14
	.p2align	4, 0x90
.LBB24_29:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax                  # 8-byte Reload
	movss	(%rax,%r13,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	subss	(%rbp,%r13,4), %xmm0
	andps	.LCPI24_0(%rip), %xmm0
	movaps	%xmm0, 48(%rsp)                 # 16-byte Spill
	cvtss2sd	%xmm0, %xmm0
.Ltmp223:
	movq	%r14, %rdi
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp224:
# %bb.30:                               # %invoke.cont25
                                        #   in Loop: Header=BB24_29 Depth=1
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %r12
	testq	%r12, %r12
	je	.LBB24_31
# %bb.33:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB24_29 Depth=1
	cmpb	$0, 56(%r12)
	je	.LBB24_35
# %bb.34:                               # %if.then.i2.i.i
                                        #   in Loop: Header=BB24_29 Depth=1
	movzbl	67(%r12), %eax
	jmp	.LBB24_37
	.p2align	4, 0x90
.LBB24_35:                              # %if.end.i.i.i31
                                        #   in Loop: Header=BB24_29 Depth=1
.Ltmp225:
	movq	%r12, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp226:
# %bb.36:                               # %.noexc35
                                        #   in Loop: Header=BB24_29 Depth=1
	movq	(%r12), %rax
.Ltmp227:
	movq	%r12, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp228:
.LBB24_37:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB24_29 Depth=1
.Ltmp229:
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp230:
# %bb.38:                               # %call1.i.noexc
                                        #   in Loop: Header=BB24_29 Depth=1
.Ltmp231:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp232:
# %bb.39:                               # %invoke.cont27
                                        #   in Loop: Header=BB24_29 Depth=1
	movaps	48(%rsp), %xmm0                 # 16-byte Reload
	maxss	12(%rsp), %xmm0                 # 4-byte Folded Reload
	incq	%r13
	movslq	16(%rbx), %rax
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
	cmpq	%rax, %r13
	jl	.LBB24_29
	jmp	.LBB24_22
.LBB24_21:
	xorps	%xmm0, %xmm0
.LBB24_22:                              # %for.cond.cleanup
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
.LBB24_31:                              # %if.then.i.i.i33
	.cfi_def_cfa_offset 672
.Ltmp234:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp235:
# %bb.32:                               # %.noexc34
.LBB24_44:                              # %cond.false
	leaq	.L.str.35(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movl	$105, %edx
	callq	__assert_fail@PLT
.LBB24_45:                              # %cond.false4
	leaq	.L.str.36(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movl	$106, %edx
	callq	__assert_fail@PLT
.LBB24_46:                              # %cond.false9
	leaq	.L.str.37(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movl	$107, %edx
	callq	__assert_fail@PLT
.LBB24_4:                               # %if.then.i.i.i
.Ltmp237:
	leaq	.L.str.19(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp238:
# %bb.5:                                # %.noexc
.LBB24_24:                              # %lpad14
.Ltmp222:
	movq	%rax, %rbx
	movq	72(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB24_26
# %bb.25:                               # %if.then.i.i23
	callq	_ZdlPv@PLT
	jmp	.LBB24_26
.LBB24_23:                              # %lpad
.Ltmp239:
	movq	%rax, %rbx
.LBB24_26:                              # %ehcleanup
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB24_43
# %bb.27:                               # %if.then.i.i26
	callq	_ZdlPv@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB24_41:                              # %lpad22.loopexit.split-lp
.Ltmp236:
	jmp	.LBB24_42
.LBB24_40:                              # %lpad22.loopexit
.Ltmp233:
.LBB24_42:                              # %lpad22
	movq	%rax, %rbx
	leaq	104(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.LBB24_43:                              # %ehcleanup35
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end24:
	.size	_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end24-_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.p2align	2, 0x0
GCC_except_table24:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp218-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp218
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp219-.Ltmp218              #   Call between .Ltmp218 and .Ltmp219
	.uleb128 .Ltmp239-.Lfunc_begin10        #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp220-.Ltmp219              #   Call between .Ltmp219 and .Ltmp220
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp221-.Ltmp220              #   Call between .Ltmp220 and .Ltmp221
	.uleb128 .Ltmp222-.Lfunc_begin10        #     jumps to .Ltmp222
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp232-.Ltmp223              #   Call between .Ltmp223 and .Ltmp232
	.uleb128 .Ltmp233-.Lfunc_begin10        #     jumps to .Ltmp233
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin10        #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin10        #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Lfunc_end24-.Ltmp238          #   Call between .Ltmp238 and .Lfunc_end24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .omp_task_entry.
	.type	.omp_task_entry.,@function
.omp_task_entry.:                       # @.omp_task_entry.
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
.Ltmp240:
	movq	%r14, %rdi
	callq	_ZN7gpumath5ArrayIfE7to_hostEv
.Ltmp241:
# %bb.1:                                # %invoke.cont.i
	movq	8(%rbx), %r15
	movq	16(%rbx), %rbx
.Ltmp242:
	leaq	.L.str.26(%rip), %rsi
	leaq	16(%rsp), %rdi
	movq	%rbx, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp243:
# %bb.2:                                # %invoke.cont1.i
.Ltmp244:
	leaq	16(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
.Ltmp245:
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
.Ltmp246:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp247:
# %bb.6:                                # %invoke.cont3.i
.Ltmp248:
	movq	%rax, %rbx
	leaq	.L.str.27(%rip), %rsi
	movl	$15, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp249:
# %bb.7:                                # %invoke.cont5.i
	movss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.Ltmp250:
	movq	%rbx, %rdi
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp251:
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
.Ltmp252:
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp253:
# %bb.14:                               # %.noexc6.i
	movq	(%r14), %rax
.Ltmp254:
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp255:
.LBB25_15:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
.Ltmp256:
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp257:
# %bb.16:                               # %call1.i.noexc.i
.Ltmp258:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp259:
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
.LBB25_9:                               # %if.then.i.i.i.i
	.cfi_def_cfa_offset 80
.Ltmp260:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp261:
# %bb.10:                               # %.noexc.i
.LBB25_18:                              # %terminate.lpad.i
.Ltmp262:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end25:
	.size	.omp_task_entry., .Lfunc_end25-.omp_task_entry.
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
	.uleb128 .Ltmp240-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp261-.Ltmp240              #   Call between .Ltmp240 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin11        #     jumps to .Ltmp262
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
	.p2align	4, 0x90                         # -- Begin function .omp_task_entry..29
	.type	.omp_task_entry..29,@function
.omp_task_entry..29:                    # @.omp_task_entry..29
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
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
.Ltmp263:
	movq	%r14, %rdi
	callq	_ZN7gpumath5ArrayIfE7to_hostEv
.Ltmp264:
# %bb.1:                                # %invoke.cont.i
	movq	8(%rbx), %r15
	movq	16(%rbx), %rbx
.Ltmp265:
	leaq	.L.str.26(%rip), %rsi
	leaq	16(%rsp), %rdi
	movq	%rbx, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp266:
# %bb.2:                                # %invoke.cont1.i
.Ltmp267:
	leaq	16(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
.Ltmp268:
# %bb.3:                                # %invoke.cont2.i
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB26_5
# %bb.4:                                # %if.then.i.i.i
	callq	_ZdlPv@PLT
.LBB26_5:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
.Ltmp269:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp270:
# %bb.6:                                # %invoke.cont3.i
.Ltmp271:
	movq	%rax, %rbx
	leaq	.L.str.27(%rip), %rsi
	movl	$15, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp272:
# %bb.7:                                # %invoke.cont5.i
	movss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
.Ltmp273:
	movq	%rbx, %rdi
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp274:
# %bb.8:                                # %invoke.cont7.i
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB26_9
# %bb.11:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	cmpb	$0, 56(%r14)
	je	.LBB26_13
# %bb.12:                               # %if.then.i2.i.i.i
	movzbl	67(%r14), %eax
	jmp	.LBB26_15
.LBB26_13:                              # %if.end.i.i.i.i
.Ltmp275:
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp276:
# %bb.14:                               # %.noexc6.i
	movq	(%r14), %rax
.Ltmp277:
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp278:
.LBB26_15:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
.Ltmp279:
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp280:
# %bb.16:                               # %call1.i.noexc.i
.Ltmp281:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp282:
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
.LBB26_9:                               # %if.then.i.i.i.i
	.cfi_def_cfa_offset 80
.Ltmp283:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp284:
# %bb.10:                               # %.noexc.i
.LBB26_18:                              # %terminate.lpad.i
.Ltmp285:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end26:
	.size	.omp_task_entry..29, .Lfunc_end26-.omp_task_entry..29
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table26:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Ltmp263-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp284-.Ltmp263              #   Call between .Ltmp263 and .Ltmp284
	.uleb128 .Ltmp285-.Lfunc_begin12        #     jumps to .Ltmp285
	.byte	1                               #   On action: 1
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined
	.type	_ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined,@function
_ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined: # @_ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	(%rdx), %r12d
	testl	%r12d, %r12d
	jle	.LBB27_5
# %bb.1:                                # %omp.precond.then
	movq	%r9, %rbx
	movq	%r8, %r14
	movq	%rcx, %r15
	decl	%r12d
	movl	$0, 12(%rsp)
	movl	%r12d, 8(%rsp)
	movl	$1, 20(%rsp)
	movl	$0, 16(%rsp)
	movl	(%rdi), %ebp
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	28(%rsp), %rax
	leaq	.L__unnamed_2(%rip), %rdi
	leaq	24(%rsp), %rcx
	leaq	20(%rsp), %r8
	leaq	16(%rsp), %r9
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
	movl	8(%rsp), %eax
	cmpl	%r12d, %eax
	cmovll	%eax, %r12d
	movl	%r12d, 8(%rsp)
	movslq	12(%rsp), %r13
	cmpl	%r12d, %r13d
	jg	.LBB27_4
# %bb.2:                                # %omp.inner.for.body.preheader
	decq	%r13
	.p2align	4, 0x90
.LBB27_3:                               # %omp.inner.for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movss	4(%rax,%r13,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movq	(%rbx), %rax
	movss	4(%rax,%r13,4), %xmm1           # xmm1 = mem[0],zero,zero,zero
	callq	nextafterf@PLT
	movq	(%r15), %rax
	movss	%xmm0, 4(%rax,%r13,4)
	movslq	8(%rsp), %rax
	incq	%r13
	cmpq	%rax, %r13
	jl	.LBB27_3
.LBB27_4:                               # %omp.loop.exit
	leaq	.L__unnamed_2(%rip), %rdi
	movl	%ebp, %esi
	callq	__kmpc_for_static_fini@PLT
.LBB27_5:                               # %omp.precond.end
	addq	$24, %rsp
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
.Lfunc_end27:
	.size	_ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined, .Lfunc_end27-_ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined
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
.Lfunc_end28:
	.size	_GLOBAL__sub_I_vararg.cpp, .Lfunc_end28-_GLOBAL__sub_I_vararg.cpp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp_offloading.requires_reg
	.type	.omp_offloading.requires_reg,@function
.omp_offloading.requires_reg:           # @.omp_offloading.requires_reg
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, %edi
	jmp	__tgt_register_requires@PLT     # TAILCALL
.Lfunc_end29:
	.size	.omp_offloading.requires_reg, .Lfunc_end29-.omp_offloading.requires_reg
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
	.asciz	"nextafterf"
	.size	.L.str.3, 11

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"__ocml_nextafter_f32"
	.size	.L.str.4, 21

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

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,@object # @__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE:
	.asciz	"double gpumath::apply_fun_gpu(std::tuple<Array<args>...> &, Array<T> &) [T = float, F = &nextafterf, args = <float, float>]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE, 124

	.type	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30.region_id,@object # @.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30.region_id
.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30.region_id:
	.byte	0                               # 0x0
	.size	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30.region_id, 1

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE,@object # @__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE:
	.asciz	"double gpumath::apply_fun_gpu(std::tuple<Array<args>...> &, Array<T> &) [T = float, F = &__ocml_nextafter_f32, args = <float, float>]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE, 134

	.type	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30.region_id,@object # @.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30.region_id
.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30.region_id:
	.byte	0                               # 0x0
	.size	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30.region_id, 1

	.type	.L.offload_sizes.24,@object     # @.offload_sizes.24
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
.L.offload_sizes.24:
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.size	.L.offload_sizes.24, 32

	.type	.L.offload_maptypes.25,@object  # @.offload_maptypes.25
	.p2align	4, 0x0
.L.offload_maptypes.25:
	.quad	800                             # 0x320
	.quad	288                             # 0x120
	.quad	288                             # 0x120
	.quad	288                             # 0x120
	.size	.L.offload_maptypes.25, 32

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

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,@object # @__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE:
	.asciz	"double gpumath::apply_fun_cpu(std::tuple<Array<args>...> &, Array<T> &) [T = float, F = &nextafterf, args = <float, float>]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE, 124

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"!output.on_device()"
	.size	.L.str.32, 20

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"!std::get<0>(input).on_device()"
	.size	.L.str.33, 32

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"!std::get<1>(input).on_device()"
	.size	.L.str.34, 32

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

	.type	.L.str.35,@object               # @.str.35
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.35:
	.asciz	"host_array.length() == dev_array.length()"
	.size	.L.str.35, 42

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@object # @__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.asciz	"T gpumath::cpu_abs_diff(const Array<T> &, Array<T> &, std::string) [T = float]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIfEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 79

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"!host_array.on_device()"
	.size	.L.str.36, 24

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"!dev_array.on_device()"
	.size	.L.str.37, 23

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

	.type	.omp_offloading.entry_name.38,@object # @.omp_offloading.entry_name.38
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4, 0x0
.omp_offloading.entry_name.38:
	.asciz	"__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14"
	.size	.omp_offloading.entry_name.38, 86

	.type	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14,@object # @.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
	.section	omp_offloading_entries,"aw",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14:
	.quad	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14.region_id
	.quad	.omp_offloading.entry_name.38
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14, 32

	.type	.omp_offloading.entry_name.39,@object # @.omp_offloading.entry_name.39
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4, 0x0
.omp_offloading.entry_name.39:
	.asciz	"__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30"
	.size	.omp_offloading.entry_name.39, 137

	.type	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30,@object # @.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
	.section	omp_offloading_entries,"aw",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30:
	.quad	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30.region_id
	.quad	.omp_offloading.entry_name.39
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30, 32

	.type	.omp_offloading.entry_name.40,@object # @.omp_offloading.entry_name.40
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4, 0x0
.omp_offloading.entry_name.40:
	.asciz	"__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30"
	.size	.omp_offloading.entry_name.40, 139

	.type	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30,@object # @.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
	.section	omp_offloading_entries,"aw",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30:
	.quad	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30.region_id
	.quad	.omp_offloading.entry_name.40
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30, 32

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
	.asciz	"\020\377\020\255\001\000\000\000\bF\000\000\000\000\000\000 \000\000\000\000\000\000\000(\000\000\000\000\000\000\000\002\000\001\000\000\000\000\000H\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\220\000\000\000\000\000\000\000tE\000\000\000\000\000\000i\000\000\000\000\000\000\000\207\000\000\000\000\000\000\000n\000\000\000\000\000\000\000u\000\000\000\000\000\000\000\000arch\000triple\000amdgcn-amd-amdhsa\000gfx906\000\000\000BC\300\3365\024\000\000\005\000\000\000b\f0$MY\276f\275\373\264O\033\310$D\0012\005\000!\f\000\000\222\r\000\000\013\002!\000\002\000\000\000\026\000\000\000\007\201#\221A\310\004I\006\02029\222\001\204\f%\005\b\031\036\004\213b\200\024E\002B\222\013B\244\0202\0248\b\030K\n2R\210Hp\304!#D\022\207\214\020A\222\002d\310\b\261\024 CF\210 \311\0012R\204\030*(*\2201|\260\\\221 \305\310\000\000\000\211 \000\000%\000\000\000\"f\004\020\262B\202I\021RB\202I\221q\302PH\n\t&E\306\005BR&\b\276\311\202`\216\000\fh\216\000\311\213q\2164E\2240\371\310@4\323?\241\"\204\020D\022\210\021\200R\034!\204\230#\b\n\021\304Hs\004\2400YP\224\341,V\202P\224#B\020B\210\020Jr\204XK\b!\312pD(\312\021!\204 \204XE\b\242\fG\214\031\200B\324Zk)\316\022B\224\344\b\261\326\022B\224\241\326Z\204Z\313\020B\030\bH\0031\005\000Q\030\000\000\333\001\000\000\033\320$\370\377\377\377\377\001\020\0008\000\244a\035\312A\036\334\241\034\330\001 \334\341\035\332\200\036\344!\034\340\001\036\322\301\035\316\241\r\332!\034\350\001\035\000z\220\207z(\007\200\230\007z\b\207qX\2076\200\007yx\007z(\207q\240\207w\220\2076\020\207z0\007s(\007yh\203yH\007}(\007\000\017\000\202\036\302A\036\316\241\034\350\241\r\306\001\036\352\0018\007s\300\207<\200\003;\000\bz\b\007y8\207r\240\20760\207r\b\007z\250\007y(\207y\000\326 \016\354\240\r\304!\035\350\241\r\322\301\035\346\201\036\346\201\r\326`\034\322\241\r\322\301\035\346\201\036\346\201\r\326\200\034\330\241\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\342\240\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\342\000\016\332 \035\334a\036\350a\036\330`\r\310\341\035\350A\016\332 \035\334a\036\350a\036\330`\r\310\341\035\350\341\016\332 \035\334a\036\350a\036\330`\r\310\001\036\340\201\r\326\340\034\314\001\037\360\240\r\322\301\035\346\201\036\346\201\r\326\340\034\314\001\037\362\240\r\322\301\035\346\201\036\346\201\r\326`\036\332\240\035\312\241\035\344\241\034\302\201\035\350!\035\332\241\034\330`\r\346\241\r\332\241\034\332\201\036\322\241\035\312\241\r\322\301\035\346\201\036\330`\r\356!\034\354\241\034\314A\036\336\301\035\350a\036\322A\037\312\301\016\350\000 \352\301\035\322\301\034\336A\036\332\241\r\356\341\035\344a\035\332\340\034\344\341\035\352\001\036\332`\036\322A\037\312\001\240\007y\250\207r\00060B\000\220\002p\006A@\004i@l \006\001 \205\r\f1\000\244\000\234A\020\020A\032\020\033\230\202\000H\0018\203  \2024 6D\306\377\377\377\377\017\200)\000\247\000\370\001\360\007\200\004\364A`\013\303\006\342\b\000>\330@ \002\260l \222\377\377\377\377\037\000i\203\210(\377\377\377\377?\000\002\000\007\200D\270\303;\264\001=\310C8\300\003<\244\203;\234C\033\264C8\320\003:\000\364 \017\365P\016\0001\017\364\020\016\343\260\016m\000\017\362\360\016\364P\016\343@\017\357 \017m \016\365`\016\346P\016\362\320\006\363\220\016\372P\016\000\036\000\004=\204\203<\234C9\320C\033\214\003<\324\003p\016\346\200\017y\000\007v\000\020\364\020\016\362p\016\345@\017m`\016\345\020\016\364P\017\362P\016\363\000\254A\034\330A\033\210C:\320C\033\244\203;\314\003=\314\003\033\254\3018\244C\033\244\203;\314\003=\314\003\033\254\0019\260C\033\244\203;\314\003=\314\003\033\254\0019\274\003=\304A\033\244\203;\314\003=\314\003\033\254\0019\274\003=\304\001\034\264A:\270\303<\320\303<\260\301\032\220\303;\320\203\034\264A:\270\303<\320\303<\260\301\032\220\303;\320\303\035\264A:\270\303<\320\303<\260\301\032\220\003<\300\003\033\254\3019\230\003>\340A\033\244\203;\314\003=\314\003\033\254\3019\230\003>\344A\033\244\203;\314\003=\314\003\033\254\301<\264A;\224C;\310C9\204\003;\320C:\264C9\260\301\032\314C\033\264C9\264\003=\244C;\224C\033\244\203;\314\003=\260\301\032\334C8\330C9\230\203<\274\203;\320\303<\244\203>\224\203\035\320\001\260AY\002 \001\026\200\024\200j\003\302\b@\002,\000\265\201h\006\200\0246\020\016\001\220\302\006\350)\200\005 \005\340\f\200*\b\210 \r\210\r\bd\000\013@\n\000\035l\200\242\003X\000R\000\316\000\250\202\200\b\322\200\330\000I\b\260\000\244\000\234\001P\005\001\021\244\001\261\201\230\376\377\377\377\177\000\204\r\023\365\377\377\377\377\003`\n\300)\000~\000\374\001 \001u\000\364A`\013\300\006\242\n\000R\330@\"\326\377\377\377\377\017\200\000\254\001\000\007\200D\270\303;\264\001=\310C8\300\003<\244\203;\234C\033\264C8\320\003:\000\364 \017\365P\016\0001\017\364\020\016\343\260\016m\000\017\362\360\016\364P\016\343@\017\357 \017m \016\365`\016\346P\016\362\320\006\363\220\016\372P\016\000\036\000\004=\204\203<\234C9\320C\033\214\003<\324\003p\016\346\200\017y\000\007v\000\020\364\020\016\362p\016\345@\017m`\016\345\020\016\364P\017\362P\016\363\000\254A\034\330A\033\210C:\320C\033\244\203;\314\003=\314\003\033\254\3018\244C\033\244\203;\314\003=\314\003\033\254\0019\260C\033\244\203;\314\003=\314\003\033\254\0019\274\003=\304A\033\244\203;\314\003=\314\003\033\254\0019\274\003=\304\001\034\264A:\270\303<\320\303<\260\301\032\220\303;\320\203\034\264A:\270\303<\320\303<\260\301\032\220\303;\320\303\035\264A:\270\303<\320\303<\260\301\032\220\003<\300\003\033\254\3019\230\003>\340A\033\244\203;\314\003=\314\003\033\254\3019\230\003>\344A\033\244\203;\314\003=\314\003\033\254\301<\264A;\224C;\310C9\204\003;\320C:\264C9\260\301\032\314C\033\264C9\264\003=\244C;\224C\033\244\203;\314\003=\260\301\032\334C8\330C9\230\203<\274\203;\320\303<\244\203>\224\203\035\320\001\260\201\270\n\200\0246 \330\001,\000)\000\325\006$C\200\005 \005\240\332\000\"\332\377\377\377\377\017\300\032\000\022\341\016\357\320\006\364 \017\341\000\017\360\220\016\356p\016m\320\016\341@\017\350\000\320\203<\324C9\000\304<\320C8\214\303:\264\001<\310\303;\320C9\214\003=\274\203<\264\2018\324\2039\230C9\310C\033\314C:\350C9\000x\000\020\364\020\016\362p\016\345@\017m0\016\360P\017\3009\230\003>\344\001\034\330\001@\320C8\310\3039\224\003=\264\2019\224C8\320C=\310C9\314\003\260\006q`\007m \016\351@\017m\220\016\3560\017\3640\017l\260\006\343\220\016m\220\016\3560\017\3640\017l\260\006\344\300\016m\220\016\3560\017\3640\017l\260\006\344\360\016\364\020\007m\220\016\3560\017\3640\017l\260\006\344\360\016\364\020\007p\320\006\351\340\016\363@\017\363\300\006k@\016\357@\017r\320\006\351\340\016\363@\017\363\300\006k@\016\357@\017w\320\006\351\340\016\363@\017\363\300\006k@\016\360\000\017l\260\006\347`\016\370\200\007m\220\016\3560\017\3640\017l\260\006\347`\016\370\220\007m\220\016\3560\017\3640\017l\260\006\363\320\006\355P\016\355 \017\345\020\016\354@\017\351\320\016\345\300\006k0\017m\320\016\345\320\016\364\220\016\355P\016m\220\016\3560\017\364\300\006kp\017\341`\017\345`\016\362\360\016\356@\017\363\220\016\372P\016v@\007\300\206h\373\377\377\377\377\0018\005\300\017\200?\000$\240\016\200>\bl\001\330pp\377\377\377\377?\000R`\013\177\260\201\350\b\340\f6\020^\001\234\301\006\3423\2003\330@\200\301\001\234\301\006\"\f\020\340\f6\030b\360\377\377\377\377\003\260\006\200\264\201\030\003\000 \005\000\000I\030\000\000\024\000\000\000\023\212@\030\210b\302`\034\310\204 \231\220(\013\3238\017\024I\023\202iB@M(\202jh\234\t\211\2650\215sAX6a\320\252aB\242,L\343\\\020\226M\b\266\t\0017\241H:\357\003\203\tC\362\205\301\004B\f\306\240\032\000\000\000\000\023\242ph\007r8\207qp\2076\b\207v \2076\b\207v \007t\230\207p\330\000\033\345\320\006\360\240\007v@\007z`\007t\320\006\360\020\007z`\007t\240\007v@\007m\000\017r\240\007s \007z0\007r\320\006\3600\007z0\007r\240\007s \007m\000\017t\240\007v@\007z`\007t\320\006\360P\007z0\007r\240\007s \007m\000\017v\240\007s \007z0\007r\320\006\360p\007z\020\007v\000\007z \007u`\007z \007u`\007z0\007r\320\006\360\200\007z\020\007r\200\007z\020\007r\200\007m\220\016v@\007z`\007t\320\006\366\020\007v\240\007q`\007m`\017r@\007z0\007r\320\006\3660\007r\240\007s \007m`\017t\200\007z`\007t\320\006\366\220\007v\240\007q \007x\320\006\366\020\007y \007z \007u`\007m`\017rP\007v\240\007rP\007v\320\006\366P\007q \007zP\007q \007m`\017q\000\007r@\007z\020\007p \007t\320\006\366 \007p@\007x\240\007r\000\007t\200\007m\340\016s \007z`\007t\320\006\2630\007r\320\006\241P\007mp\nq\320\006\356\220\016zp\007z\200\007+\032v`\007{h\0077h\207r\240\207p \207p\240\207pPz@\210\220\f2d\244\310\220\240\021\302\344\324\231\313\307/{X\036\226\237]c8|\307\004P\301\221\006\021\000\004\200\000\000\000\020P\000\260c\242\316 8\322 \002\200\000\020\000\000\000\002\n\000vL{\220\006\301\221\006\021\000\004\200\000\000\000\020P\000\260c\"\0070\b\2164\210\000 \000\004\000\000\200\200\002\200\035\023I\230Ap\244A\004\000\001 \000\000\000\004\024\000\354\230\324\342\f\210A\024\222\000\000\200\000\000\000 \240\000`\307\024\033gP\034\243\220\020\000\000\004\000\000\000\001\005\000;&\3748\203\342 \205\204\000\000 \000\000\000\b(\000\3301\375\310\031\024G)$\004\000\000\001\000\000@@\001\300\216\311T~a8\366\000\002\000\001\000\000\000\000\002\n\000vLe\363\013\303\261\007\020\000\b\000\000\000\000\020P\000\260c\"!\231\030\216=\200\000@\000\000\000\000\200\200\002\200\035\223M\321\304p\354\001\004\000\002\000\000\000\000\004\024\000\354\230\324\f\035\206\203\017 \000\000\000\001\000\000\000\240\000`\307$s\3500\034|\000\001\000\000\b\000\000\000\000\005\000;&\375\333\211\341\340\003\b\000\000@\000\000\000\000(\000\3301\325d\320\023\303\301\007\020\000\000\200\000\000\000\000P\000@Y\005\t\033\246 pHE\252A- \273\000D\001\000\b\200\000\000\000\000\004\000\005\f\251r6\220\024 \000\000\000\000\000\001\000\000\000\000\000\n\030R\255m`5@\000\b\000\000\000\000\000\000\000\000\000\0240\244\n\335\200j\200\000\020\000\000\000\000\000\000\000\000\000(`HU\273\001\0328@\000\f\000\000\000\002\000\000\000\000\000\0240\244\352\337\340{\200\000\030\000\000\000\004\000\000\000\000\000(`H\305\303\301;@\0000\020\000\000\000\000\000\000\000\020\000\0240\244Z\351\000{\200\000\030\000\000\000\004\000\000\000\000\000(`H5\326A\027\001\0010\000\000\000\b\000\000\000\000\000P\300\220\n\264\003I\002\002\240\000\000\000\020\000\000\000\000\000\240\200!\225l\007\330\004\004\300\000\000\000 \000\000\000\000\000@\001C*\365\016(\n\b\000\000\000\000@\000\000\000\000\000\200\002\206T\376\035\324\002\262\013@\024\000\200\000\b\000\000\000@\000P\300\220j\326\203w\200\000` \000\000\000\000\000\000\000 \000(`H%\372\001d\001\001`\000\000\000\000\000\000\000\000\000P\300\220J\366\003\224\270v\001\210\016\000\020\000\001\000\000\000\b\000\n\030R\351\242 \026\030\000\f\b\000\000\000\000\000\000\000\004\000\005\f\251\370SP2 \000\022\000\000\000\001\000\000\000\000\000\n\030R\231\250\240\022\327.\000\321\001\000\002 \000\000\000\000\001@\001C*\230\025\310\002\003\200A\001\000\000\000\000\000\000\200\000\240\200!\025\035\013\215\006\004\200\001\000\000\000\000\000\000\000\000@\001C\252P\026\232\r\b\200\005\000\000\000\000\000\000\000\000\200\002$6\b\024\206l\000\000\310\002\001\000\037\000\000\0002\036\230\034\031\021L\220\214\t&G\306\004C\n#\000\305R\004E\bR\204\b\345\031P\356\350\266\211\013\305S\006\305\216n\233\270P\034%P8\005jP\b\345Pf\005A\243\bF\000h\215\000\2200\006\n\306 \301\0300\030\203\005\"j\355\352\356\265\373}w\357\352\356\265\373}w\357`;\330nG\005\013\224\n\225*`\201Z\241R\005,P,T\252@\006\211\236\357\007\004\000\000\000\261\030\000\000\306\000\000\0003\b\200\034\304\341\034f\024\001=\210C8\204\303\214B\200\007yx\007s\230q\f\346\000\017\355\020\016\364\200\0163\fB\036\302\301\035\316\241\034f0\005=\210C8\204\203\033\314\003=\310C=\214\003=\314x\214tp\007{\b\007yH\207pp\007zp\003vx\207p \207\031\314\021\016\354\220\016\3410\017n0\017\343\360\016\360P\0163\020\304\035\336!\034\330!\035\302a\036f0\211;\274\203;\320C9\264\003<\274\203<\204\003;\314\360\024v`\007{h\0077h\207rh\0077\200\207p\220\207p`\007v(\007v\370\005vx\207w\200\207_\b\207q\030\207r\230\207y\230\201,\356\360\016\356\340\016\365\300\016\3540\003b\310\241\034\344\241\034\314\241\034\344\241\034\334a\034\312!\034\304\201\035\312a\006\326\220C9\310C9\230C9\310C9\270\3038\224C8\210\003;\224\303/\274\203<\374\202;\324\003;\260\303\f\307i\207pX\207rp\203th\007x`\207t\030\207t\240\207\031\316S\017\356\000\017\362P\016\344\220\016\343@\017\341 \016\354P\0163 (\035\334\301\036\302A\036\322!\034\334\201\036\334\340\034\344\341\035\352\001\036f\030Q8\260C:\234\203;\314P$v`\007{h\0077`\207wx\007x\230QL\364\220\017\360P\0163\036j\036\312a\034\350!\035\336\301\035~\001\036\344\241\034\314!\035\360a\006T\205\2038\314\303;\260C=\320C9\374\302<\344C;\210\303;\260\303\214\305\n\207y\230\207w\030\207t\b\007z(\007r\230\201\\\343\020\016\354\300\016\345P\016\3630#\301\322A\036\344\341\027\330\341\035\336\001\036fH\031;\260\203=\264\203\033\204\3038\214C9\314\303<\270\3019\310\303;\324\003<\314H\264q\b\007v`\007q\b\207qX\207\031\333\306\016\354`\017\355\340\006\360 \017\3450\017\345 \017\366P\016n\020\016\3430\016\3450\017\363\340\006\351\340\016\344P\016\3700#\342\354a\034\302\201\035\330\341\027\354!\035\346!\035\304!\035\330!\035\350!\037f \235;\274C=\270\0039\224\2039\314X\274pp\007wx\007z\b\007zH\207wp\207\031\313\347\016\3570\017\341\340\016\351@\017\351\240\017\3450\303\001\003s\250\007w\030\207_\230\207pp\207t\240\207t\320\207r\230\201\204A9\340\3038\260C=\220C9\314@\304\240\035\312\241\035\340A\036\336\301\034f$c0\016\341\300\016\3540\017\351@\017\3450C!\203u\030\007sH\207_\240\207|\200\207r\230\261\224\001<\214\303<\224\3038\320C:\274\203;\314\303\214\305\fH!\025Ba\036\346!\035\316\301\035R\201\024f g@\016\342p\016n@\016\345`\0163\0344@\207r\b\007x\b\007v`\207w\030\207yH\007z(\207\031G\032\314\203<\214\003;\274\3038\000\000\000\000y \000\000+\001\000\000r\036H C\210\f\031\tr2H #\201\214\221\221\321D\240\020(d<12B\216\220!\2438Q\251\005\351p\016t@\007\206\246\030MrH\350P\022\303\363,\005\000_ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2_kernelamdgpu_code_object_versionwchar_sizeopenmpopenmp-devicePIC LevelThinLTOEnableSplitLTOUnitclang version 17.0.0 (https://github.com/llvm/llvm-project.git 123545e9e59f765afa6ddf3b6f07191509604e94)AMD clang version 16.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.5.0 23144 5fe166b8eac068df976282939b880a75a3a63014)intomnipotent charSimple C++ TBAAany pointerfloat\000\000\000&n\000\000\000\000\000\0000\202\020\240\301\bB\320\006#\b\201\033\214 \004o0\202\020\300\301\bB\240\006#\bA\034\214 \004r0\202\020\314\301\bB@\007#\b\2024\202 x#\bB\030\214 \bd0\202\020\324\301\bB`\007#\b\301\035\214 \004x0\202\020\344\301\b\302\302\0073\034Te\005\027\205\315pP\225%\\T6\303AU\332\260Q\334\f\007UiDGQ3\f^\301\3150|\0057\303\000\006\0057\303\020\006\0057\303\300\031b0\303\300\035c0\303@\006H\031\3140\220AR\0063\ff\240p3\f\334B\3150p\f7\203\220Q3\004\315\f\2013C\020\3150@zp\0063\f\317\036\234\301\f\003\037\360\301\031\3140H{p\0063\f~\340\007g0\3030\355\301\031\3140\200\002(\234\301\271\001 \006b \006b \006b \006b \006b\300qb \006b \006b \006b \006z\240\007z\240\007b \006h\200\006h\200\006n\340\006h \006b\300Y\226\345\006n@\007n@\007n #\201\tJ\350\255\r\356\353\315\314\214\355-\214\314%\315\315\354m\024\342\f\320 \r\324 !7;\2736\22707\2677\2720\272\2647\267\271Q\2105`\2036p\203\214\330\330\354\332\\\332\336\310\352\330\312\\\314\330\302\316\346F9\336\000\016\342@\016\346\200\016\352 '66\2736\027\2664\267\26529\22778\272\2647\267\271Q\200\224\336\340\312\334\306\330\\\336\306\330\\\354\312\344\346\322\336\334F\t\354 \02566\2736\2274\26227\272Q\204;\300\003\000\000\000\251\030\000\000'\000\000\000\013\nr(\207w\200\007zXp\230C=\270\3038\260C9\320\303\202\346\034\306\241\r\350A\036\302\301\035\346!\035\350!\035\336\301\035\0264\343`\016\347P\017\341 \017\344@\017\341 \017\347P\016\364\260\200\201\007y(\207p`\007vx\207q\b\007z(\007rXp\234\3038\264\001;\244\203=\224\303\002k\034\330!\034\334\341\034\334 \034\344a\034\334 \034\350\201\036\302a\034\320\241\034\310a\034\302\201\035\330a\301\001\017\364 \017\341P\017\364\200\016\013\210u\030\007sH\007\000\000\000\000\321\020\000\000\032\000\000\000\007\314<\244\203;\234\003;\224\003=\240\203<\224C8\220\303\001pP\204\3039\224\203;\320\303\001\023\016\347P\016\356@\017m\360\016\356P\016m\020\016\363p`\274\203;\224C\033\204\303<\034@\367\360\016\362\260\016\347 \017\357P\017\360\320\006\357\340\016\345\320\006\3410\017\007\311=\274\203<\254\3039\310\303;\324\003<\000\000a \000\000\032\001\000\000\023\004H,\020\000\000\000\007\000\000\000\024j\240l\003J\201\322\b\000\255B(\260b a\f\f\214\301\301\b\000\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n3\021]0\007\2440bp\f!\b\006\212) \0373\334\020@`0\313 \004\201f\005x\304\240\030B\020\f&PXF\f\f\000\004\301\240I\005\247\310B0\ra`P\201\300p\203\200\007f0\3130\034A.\202\263\021\234\217\340l\004\217\030\030\f\b\202A\023\013W4l@D}0\000#\006\306\000\202`\320\304\302\005\r\033\020\2201\000#\006\306\000\202`\320\304\302\365\f\033\020\217\034\f\300\210\2011\200 \0304\261p9\303\006\204\323\007\0030b@\f!\b\006\316+\214\0304\r\b\202\301\363\n\224\262\t\003Q\314A@Q\030#\006\006\000\202`\260\201B\200\f\033\020S0\000D\2051\334\020,h0\313@\030A\357\203$\nw\320\3730\215B(\364>P\244\300\007\275\017U)\334A\357\203e\nb0KP\fT\004\016\021\025\003\025\201DTE\n+RX\221\202\320a\003\202\013\b \005\241\303\006\304\022\020\300\260\001\241\274\001\001\f\033\020\211\033\020\300\260\001\201\264\001\001\f\033\020\007\033\020\300\210A\343\200 \030H\272@\006\231(\254\301\032\364\202\030`e@_\030$\006a` \200\300\260\001A\006\301\000\320\030\204\201\001\001\002#\006\006\000\202`\260\315B\260\r\033\020f\020\f\300p\003\321\241\301,Ca\004#\006\306\000\202`\020\211\203\032\200\301,\3011b`\f \b\006\3159\270A\031\214\030\030\003\b\202As\016n`\006#\006\306\000\202`\320\234\203\033\234\301\210\2011\200 \0304\347\340\006h0b`\000 \b\006\3159\264\001\031\214\030\030\003\b\202\001\365\013k \n\263\004A8\020\000\000}\000\000\000vf\bN3\370\210\351!\202\323\f\365\355#7 9\314\343?\021!8\315\340O\007\321\370\210\2751\276\303<>R\3714\356#\226DH\023\361\230\226C\\\204\360S\022\021\375\2023\020\206D\\\f\322\230U\343;\314\343KS\204\f\204\217\330\235\001\f\303\356#\226g\000\303\300\373\210m5\013\321\030\323\341\033\213\023\000\213aU\002\360LTD\f\177\005D\322\017\fC$\371\210\031\031\013\321\030\323aT\216\3570\217/8L\340/\201\217X\331\324T\317t\375\r\305\374\323\021\021\300 \371\210\035\031\003Q=Sd{\206\300<\271\217\330\225\343;\314\343#\322\277\000\322\344#\007P\020\315\024aFV\371\016\363\370\210\364/\2004\371\200$\000\322\344#6V\371\016\363\370\202\303\004\376\022\370\200$\000\322\344#G\2409\314\343#MCD~\341D~\340\f\230\277D\376s\370\210uq\002\360LTD\f\177\005D\322\017\fC$\371\200$\000\322\344#\366eHT`\373\210\2411\276\303<>R\371t\355#wp\016\377\3570\317\357\024\305\342\000\003\322\030?^\3749\337\353\003p\353\377?\237\273\361P\f0\035\365M5H\341D\314\037\001\215A\210\210\347U\353\311\376\271\026E\000&\266\277\347\261\366\317\332\377\277\330\374\3570\317\357P\323\2024\304\340\023\0272\031X!0\217\217\234\300CID\364\013\316@\370D3E\230U9\276\303<\276\3400\201O\005>bp\21549\021\301\020\221A\334>r\001\212\3400\214\323\370\0211\235\301\3430\217\2778\316\343\023\0272\371\210\211U\276\303<\276\3400\201O\005> \t\2004\371\210\245\035\002\363\344\266\217\\\001\3450\217\2174\r\021\371\205\023\371\2013`>ba\224\3570\217/M\0212\020> \t\2004\371\b\000\000\000\000\0011\000\000\030\000\000\000[\206&\340\203-\203\025\360\301\226\001\013\370`\313\240\005|\260e\340\002>\3302\204A\300\007[\0068\b\374`\313 \007\201\037l\031\346 \360\203-\003\035\004~\260e\250\203\300\017\266\fv\020\370\301\226\001\017\002>\3302\344A\300\007[\206=\b\370`\313\300\007\001\037l\031\376 \340\003\000\000\000\000\000\000\000\000a \000\000\255\000\000\000\023\004F,\020\000\000\000\004\000\000\000\024J\210V!\2200\006\b\306\340\000\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n\304\2041\334\020\274\201\031\3142\004E\220\204\340$\004\347!8\023\301#\006\306\000\202`\320\240B\243\214\030\030\003\b\202A\203\nM\222T\200\244\002\f\033\020\2140\000\303\006\304\022\f\300\210\2011\200 \0304\252\360(\303\006\204\262\006\0030b`\f \b\006\215*<\311\260\001\221\330\301\000\020\026\306\210A\323\200 \030<\246\360\004\221A\024\007\033\260\0015ad\260d\270!\300\304`\226\201\020\002r\302\230%\030\006*\026C\210\206\f\002P\026\006ea`0\210\000\006\003\b\364 x\306\260\001\021\b\003\200\210\001\002\031,\031n\b\306@\ff\031\210!\03010\006\020\004\203h\026\270g\304\300\030@\020\f\032\\\360\260\021\003c\000A0hp\301\313F\f\214\001\004\301\240\301\005O\03310\006\020\004\203\006\027\274m\226\240\320p \000S\000\000\000v\264\370\201C5\303?!\203o`\206\3404U\276[W!8Mu\033\331\2014C\005D\222M\035\276\303<>\025\234\000\3460\217\2174\r\021\371\205\023\371\2013`\376\022\371\317ak\205\3404UnJ\306B4\306t\330\2221\020\3253EV\305\370\016\363\370\210\364/\2004Y\326\344;\314\343#\322\277\000\322\344\003\222\000H\323\001\024D3E\230\251\021\3000\364\027\0009\314\343?\021!8\315\340O\007\321XR\343?\021Q!\016%\371T\340[X\"0\217\3567\316\304\033\033\"0\217\3567\316dM\2044\021\217q\021\202\323T\226\206\000Q\004`\310p\031\023q1HcF\214o,N\000,\377\204\f\376\0214\016\363\370\213\343<>q!\223aI\276\303<\2764E\310@\370\200$\000\322t\005\217\303<\376\023\021\202\323\f>\321\f\206\324\370ODT\210CI\376\022\3706v\bNS\3455m[\216\3570\217\277\004> \t\2004\031\032\001\f\003\177\003\222\303<>\3224D\344\027N\344\007\316\200\231\226\343;\314\343S\201\017H\002 MF\265\370\016\363\370\322\024!\003ag\004C-\273]\r\002\363\230\324\341;\314\343/\001\000\0011\000\000\016\000\000\000[\006\"\340\203-\303\023\360\301\226\001\n\370`\313 \005|\260e\240\002>\3302T\001\037l\031\256\200\017\266\f[\300\007[\206/\340\203-\003\030\004|\260e \203\200\017\000\000\000\000\000a \000\000\032\001\000\000\023\004H,\020\000\000\000\007\000\000\000\024j\240l\003J\201\322\b\000\255B(\260b a\f\f\214\301\301\b\000\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n3\021]0\007\2440bp\f!\b\006\212) \0373\334\020@`0\313 \004\201f\005x\304\240\030B\020\f&PXF\f\f\000\004\301\240I\005\247\310B0\ra`P\201\300p\203\200\007f0\3130\034A.\202\263\021\234\217\340l\004\217\030\030\f\b\202A\023\013W4l@D}0\000#\006\306\000\202`\320\304\302\005\r\033\020\2201\000#\006\306\000\202`\320\304\302\365\f\033\020\217\034\f\300\210\2011\200 \0304\261p9\303\006\204\323\007\0030b@\f!\b\006\316+\214\0304\r\b\202\301\363\n\224\262\t\003Q\314A@Q\030#\006\006\000\202`\260\201B\200\f\033\020S0\000D\2051\334\020,h0\313@\030A\357\203$\nw\320\3730\215B(\364>P\244\300\007\275\017U)\334A\357\203e\nb0KP\fT\004\016\021\025\003\025\201DTE\n+RX\221\202\320a\003\202\013\b \005\241\303\006\304\022\020\300\260\001\241\274\001\001\f\033\020\211\033\020\300\260\001\201\264\001\001\f\033\020\007\033\020\300\210A\343\200 \030H\272@\006\231(\254\301\032\330\202\030`e@_\030$\006a` \200\300\260\001A\006\301\000\320\030\204\201\001\001\002#\006\006\000\202`\260\315B\260\r\033\020f\020\f\300p\003\321\241\301,Ca\004#\006\306\000\202`\020\211\203\032\200\301,\3011b`\f \b\006\3159\270A\031\214\030\030\003\b\202As\016n`\006#\006\306\000\202`\320\234\203\033\234\301\210\2011\200 \0304\347\340\006h0b`\000 \b\006\3159\264\001\031\214\030\030\003\b\202\001\365\013k \n\263\004A8\020\000\000}\000\000\000vf\bN3\370\210\351!\202\323\f\365\355#7 9\314\343?\021!8\315\340O\007\321\370\210\2751\276\303<>R\3714\356#\226DH\023\361\230\226C\\\204\360S\022\021\375\2023\020\206D\\\f\322\230U\343;\314\343KS\204\f\204\217\330\235\001\f\303\356#\226g\000\303\300\373\210m5\013\321\030\323\341\033\213\023\000\213aU\002\360LTD\f\177\005D\322\017\fC$\371\210\031\031\013\321\030\323aT\216\3570\217/8L\340/\201\217X\331\324T\317t\375\r\305\374\323\021\021\300 \371\210\035\031\003Q=Sd{\206\300<\271\217\330\225\343;\314\343#\322\277\000\322\344#\007P\020\315\024aFV\371\016\363\370\210\364/\2004\371\200$\000\322\344#6V\371\016\363\370\202\303\004\376\022\370\200$\000\322\344#G\2409\314\343#MCD~\341D~\340\f\230\277D\376s\370\210uq\002\360LTD\f\177\005D\322\017\fC$\371\200$\000\322\344#\366eHT`\373\210\2411\276\303<>R\371t\355#\006V\b\314\343#wp\016\377\3570\317\357\024\305\342\000\003\322\030?^\3749\337\353\003p\353\377?\237\273\361P\f0\035\365M5H\341D\314\037\001\215A\210\205\347U\353\311\376\271\026E\000&\266\277\347\261\366\317\332\377\277\324\370\3570\317\357P\323\2024\304\340\023\0272\235\300CID\364\013\316@\370D3E\230U9\276\303<\276\3400\201O\005>bp\21549\021\301\020\221A\334>r\001\212\3400\214\323\370\0211\235\301\3430\217\2778\316\343\023\0272\371\210\211U\276\303<\276\3400\201O\005> \t\2004\371\210\245\035\002\363\344\266\217\\\001\3450\217\2174\r\021\371\205\023\371\2013`>ba\224\3570\217/M\0212\020> \t\2004\371\b\000\000\000\000\0011\000\000\030\000\000\000[\206&\340\203-\203\025\360\301\226\001\013\370`\313\240\005|\260e\340\002>\3302\204A\300\007[\0068\b\374`\313 \007\201\037l\031\346 \360\203-\003\035\004~\260e\250\203\300\017\266\fv\020\370\301\226\001\017\002>\3302\344A\300\007[\206=\b\370`\313\300\007\001\037l\031\376 \340\003\000\000\000\000\000\000\000\000a \000\000\256\000\000\000\023\004F,\020\000\000\000\004\000\000\000\024J\210V!\2200\006\b\306\340\000\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n\304\2041\334\020\274\201\031\3142\004E\220\204\340$\004\347!8\023\301#\006\306\000\202`\320\240B\243\214\030\030\003\b\202A\203\nM\222T\200\244\002\f\033\020\2140\000\303\006\304\022\f\300\210\2011\200 \0304\252\360(\303\006\204\262\006\0030b`\f \b\006\215*<\311\260\001\221\330\301\000\020\026\306\210A\323\200 \030<\246\360\004\221A\024\007\033\260\0015ad\260d\270!\300\304`\226\201\020\002r\302\230%\030\006*\026C\210\206\f\002PVG\n\325H\253c\304\340\000@\020\f,T\020\202\241W\3013\206\r\210@\030\000D\f\020\310`\311pC0\006b0\313@\f\301\210\2011\200 \030D\263\300=#\006\306\000\202`\320\340\202\207\215\030\030\003\b\202A\203\013^6b`\f \b\006\r.x\332\210\2011\200 \0304\270\340m\263\004\205\206\003\001\000\000R\000\000\000v\264\370\201C5\303?!\203o`\206\3404U\276[W!8Mu\033\331\2014C\005D\222M\035\276\303<>\025\234\000\3460\217\2174\r\021\371\205\023\371\2013`\376\022\371\317ak\205\3404UnJ\306B4\306t\230Y!8M\265[\025\343;\314\343#\322\277\000\322dY\223\3570\217\217H\377\002H\223\017H\002 M\007P\020\315\024a\266d\fD\365L\221\251\021\3000\364\027\0009\314\343?\021!8\315\340O\007\321XR\343?\021Q!\016%\371T\340[X\"0\217\3567\316\304\033\033\"0\217\3567\316dM\2044\021\217q\021\202\323T\226\206\000Q\004`\310p\031\023q1HcF\214o,N\000,\377\204\f\376\0214\016\363\370\213\343<>q!\223aI\276\303<\2764E\310@\370\200$\000\322t\005\217\303<\376\023\021\202\323\f>\321\f\206\324\370ODT\210CI\376\022\3706v\bNS\3455m[\216\3570\217\277\004> \t\2004\335\200\3440\217\2174\r\021\371\205\023\371\2013`\246\345\370\016\363\370T\340\003\222\000H\223Q-\276\303<\2764E\310@\330\325 0\217I\035\276\303<\376\022\000\000\0011\000\000\016\000\000\000[\006\"\340\203-\303\023\360\301\226\001\n\370`\313 \005|\260e\240\002>\3302T\001\037l\031\256\200\017\266\f[\300\007[\206/\000\205-C\030\004\240\260e \203\000\024\000\000\000\000\000a \000\000/\001\000\000\023\004H,\020\000\000\000\b\000\000\000\024j\240l\003J\201\322\b\000\255B(\260\362\377\377\377\377(\006\022\306\300\300\030\034\214\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n3\021]0\007\2440bp\f!\b\006\312) `\320\f7\004\021\030\3142\bA\240#\006\305\020\202`0\201\202rW\243#\006\006\000\202`\320\250\302Sd!8\263\000\030X 0\334 \344\201\031\3142\fG\220\213\340l\004\347#8\033\301#\006\006\003\202`\320\310\002\026\r\033\020\221\037\f\300\210\2011\200 \0304\262\200A\303\006\004d\f\300\210\2011\200 \0304\262\200=\303\006\3043\007\0030b`\f \b\006\215,`\316\260\001\341\370\301\000\214\030\020C\b\202\201\003\013#\006M\003\202`\360\300\002\265p\302@\024t\020P\024\306\210\201\001\200 \030l\241\020 \303\006\304\024\f\000Qa\f7\004\013\032\3142\020F\320\373 \215\002\036\364>L\244 \n\t\t\355}\250L\301\017z\037\254S\310\203\336\207\013\025\310`\226\240\030\250\b \"*\006*\002\212\250\212\024V\244\260\"\005\241\303\006D\027\020@\nB\207\r\b& \200a\003bQ\b`\330\200H\340\200\000\206\r\b\344\r\b`\330\2008\334\200\000F\f\032\007\004\301@\342\2052\330H\241\r\332\240\026\306 3\003\002\2030h\f\302\300@\000\201a\003\242\f\202\001 2\b\003\003\002\004F\f\f\000\004\301`\253\205\200\0336 \316 \030\200\341\006\302C\203Y\206\302\bF\f\214\001\004\301 \"\2075\020\203Y\202c\304\300\030@\020\f\232t\200\0033\03010\006\020\004\203&\035\340\340\fF\f\214\001\004\301\240I\0078@\203\021\003c\000A0h\322\001\016\322`\304\300\000@\020\f\232tx\2032\03010\006\020\004\003*\034\330\200\024f\t\202p \000\000\000\222\000\000\000\306\207\bN3\324\267\217X\222\2014\317\024\3317 9\314\343?\021!8\315\340O\007\321\370\210\3051\276\303<>R\3714\356#v\325\370\016\363\370\322\024!\003\341#\266\345\020\027!\374\224DD\277\340\f\204\345\031\3000\354>b{\0060\f\274\217\330\027\031,DcL\207\017\fC\344K\221\003\370\264O\373\3045E\2000\371SD5\202\217XV%\000\317DE\304\360W@$\375\3000D\222\217\330\221\341P\3233Ew\240\023\377\3570\317\357\024\305\342\000\003\322\030?^\3749\337\353\003p\357\377?\237\273\361P\f0\035\365\r<\317\202\375\005\325\374\306C\211E,T\351W\024\205\007\f\345?\327tC\\\023PLDTx\336X\024\236\347\r+;\345\023\365,\2048v\317\311\376\271\026E\000&\266\365\357y\236\267\236,\376\213\355\357y\377r\323\277\303<\277CM\013\322\020\203O\\\310dH\006\322<ST\233\221\261\020\2151\035V\345\370\016\363\370\202\303\004\376\022\370\210\231MM\365L\327\337P\314?\035\021\001\f\222\217X\237!0O\356#\206\345\370\016\363\370\210\364/\2004\371\310\001\024D3E\230\225U\276\303<>\"\375\013 M> \t\2004\371\210\221U\276\303<\276\3400\201\277\004> \t\2004\371\310\021h\016\363\370H\323\020\221_8\221\0378\003\346/\221\377\034>b^\234\000<\023\025\021\303_\001\221\364\003\303\020I> \t\2004\371\210\201\031\022\025\330>bi\214\3570\217\217T>]\373\210\205\025\002\363\370\310\t<\224DD\277\340\f\204O4S\204\231\225\343;\314\343\013\016\023\370T\340#&\327H\223\023\021\f\021\031\304\355#\027\240\b\016\3038\215\037\021\323\031<\016\363\370\213\343<>q!\223\217XW\030,DcL\207/\000\322D\f\276\0249\200O\373\264\2174\022\021M>qM6V\371\016\363\370\202\303\004>\025\370\200$\000\322\344#W@9\314\343#MCD~\341D~\340\f\230\217\230\332!0On\373\210\211Q\276\303<\2764E\310@\370\200$\000\322\344#\206f\bN3\370\b\000\0011\000\000\026\000\000\000[\006+\340\203-\003\026\360\301\226A\013\370`\313\300\005|\260e\b\203\200\017\266\fq\020\370\301\226a\016\002?\3302\320A\340\007[\206:\b\374`\313`\007\201\037l\031\356 \360\203-C\036\004|\260e\320\203\200\017\266\f|\020\360\301\226\241\017\002>\3302\200B\300\007\000\000\000\000\000a \000\000\266\000\000\000\023\004E,\020\000\000\000\004\000\000\000\024J\210V!\2200\006\b\306\340\000\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n\311\004\030n\b\336\300\ff\031\002\"HBp\022\202\363\020\234\211\340\021\003c\000A0hP\241QF\f\214\001\004\301\240A\205&I*@R\001\206\r\bF\030\200a\003b\t\006`\304\300\030@\020\f\032Ux\224a\003BY\203\001\03010\006\020\004\203F\025\236d\330\200H\354`\000\b\013c\304\240i@\020\f\036Sx\202\310 \212\203\r\330\200\23202X2\334\020`b0\3130\b\301@\305R\tD0P\021D\002\022\364*`\002\005u\364*d\004\005u\214\030\030\017\b\202AV\nC\320\253\340\035\303\006D \f\000Ya`\200\200@\006K\206\033\0022\020\203Y\206A\bF\f\214\001\004\301 \242\205\016\03210\006\020\004\203&\027\276l\304\300\030@\020\f\232\\\370\264\021\003c\000A0hr\341\333F\f\214\001\004\301\240\311\205\217\233% 4\034\b\000\000Z\000\000\000v\264\370\201C5\303?!\203oM\006\322<Sd\233\330!8M\225\327\265u\025\202\323T\267M\035\276\303<>\025\030\223\2014\317\024\325\246d,DcL\207\215-\276\303<>R\371tM[\326\344;\314\343#\322\277\000\322\344\003\222\000H\323\001\024D3E\230U1\276\303<>\"\375\013 M\006f\bNS\345\274Y\211\301B4\306t\370\3000D\276\0249\200O\373\264O\\S\004\b\223?ET#\030[!8M\225[X\"0\217\3567\316\324_\000\3440\217\377D\204\3404\203?\035Dck\0050\fumI\215\377DD\2058\224\344S\201om\210\300<\272\3378\223q\021\202\323TF\206\000Q\004`\310p\335@\3430\217\2778\316\343\023\0272\035\301\3430\217\377D\204\3404\203O4\203\0311\276\2618\001\260\374\0232\370\206%\371\016\363\370\322\024!\003\341\003\222\000H\223-\031\0165=Sdh\204\000,\213!5\376\023\021\025\342P\222\277\004\276m9\276\303<\376\022\370\200$\000\322di\n\020E\000\206\fWM\237\200\3440\217\2174\r\021\371\205\023\371\2013`\246\345\370\016\363\370T\340\003\222\000H\223Q-\276\303<\2764E\310@\230Y\002D\021\200!\303\305\333\325 0\217I\035\276\303<\376\022\000\0011\000\000\r\000\000\000[\206'\340\203-\003\024\360\301\226A\n\370`\313@\005|\260e\250\002>\3302\\\001\037l\031\274\000\024\266\f`\020\200\302\226a\f\002P\3302\220A\300\007\000\000\000\000\000a \000\0000\001\000\000\023\004H,\020\000\000\000\b\000\000\000\024j\240l\003J\201\322\b\000\255B(\260\362\377\377\377\377(\006\022\306\300\300\030\034\214\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n3\021]0\007\2440bp\f!\b\006\312) `\320\f7\004\021\030\3142\bA\240#\006\305\020\202`0\201\202rW\243#\006\006\000\202`\320\250\302Sd!8\263\000\030X 0\334 \344\201\031\3142\fG\220\213\340l\004\347#8\033\301#\006\006\003\202`\320\310\002\026\r\033\020\221\037\f\300\210\2011\200 \0304\262\200A\303\006\004d\f\300\210\2011\200 \0304\262\200=\303\006\3043\007\0030b`\f \b\006\215,`\316\260\001\341\370\301\000\214\030\020C\b\202\201\003\013#\006M\003\202`\360\300\002\265p\302@\024t\020P\024\306\210\201\001\200 \030l\241\020 \303\006\304\024\f\000Qa\f7\004\013\032\3142\020F\320\373 \215\002\036\364>L\244 \n\t\t\355}\250L\301\017z\037\254S\310\203\336\207\013\025\310`\226\240\030\250\b \"*\006*\002\212\250\212\024V\244\260\"\005\241\303\006D\027\020@\nB\207\r\b& \200a\003bQ\b`\330\200H\340\200\000\206\r\b\344\r\b`\330\2008\334\200\000F\f\032\007\004\301@\342\2052\330H\241\r\332@\026\306 3\003\002\2030h\f\302\300@\000\201a\003\242\f\202\001 2\b\003\003\002\004F\f\f\000\004\301`\253\205\200\0336 \316 \030\200\341\006\302C\203Y\206\302\bF\f\214\001\004\301 \"\2075\020\203Y\202c\304\300\030@\020\f\232t\200\0033\03010\006\020\004\203&\035\340\340\fF\f\214\001\004\301\240I\0078@\203\021\003c\000A0h\322\001\016\322`\304\300\000@\020\f\232tx\2032\03010\006\020\004\003*\034\330\200\024f\t\202p \000\000\000\223\000\000\000\306\207\bN3\324\267\217X\222\2014\317\024\3317 9\314\343?\021!8\315\340O\007\321\370\210\3051\276\303<>R\3714\356#v\325\370\016\363\370\322\024!\003\341#\266\345\020\027!\374\224DD\277\340\f\204\345\031\3000\354>b{\0060\f\274\217\330\027\031,DcL\207\017\fC\344K\221\003\370\264O\373\3045E\2000\371SD5\202\217XV%\000\317DE\304\360W@$\375\3000D\222\217\330\221\341P\3233E\206d \3153E\265\031\031\013\321\030\323aU\216\3570\217/8L\340/\201\217\230\331\324T\317t\375\r\305\374\323\021\021\300 \371\210\365\031\002\363\344>bX\216\3570\217\217H\377\002H\223\217\034@A4S\204YY\345;\314\343#\322\277\000\322\344\003\222\000H\223\217\030Y\345;\314\343\013\016\023\370K\340\003\222\000H\223\217\034\201\3460\217\2174\r\021\371\205\023\371\2013`\376\022\371\317\341#\346\305\t\3003Q\0211\374\025\020I?0\f\221\344\003\222\000H\223\217\030\230!Q\201\355#\226\306\370\016\363\370H\345\323\265\217\334\001O\374\277\303<\277S\024\213\003\fHc\374x\361\347|\257\017\300\275\377\377|\356\306C1\300t\3247\360<\013\366\027T\363\033\017%\02610\224\377l\323\377\357\b\314\3627\3045\001\305DD\177q\333\2367\026\205\347y\303\312N\371D=\013!\216\335s\262\177\256E\021\200\211m\375{\236\347\255'k\377b\373{\336\277\334\364\3570\317\357P\323\2024\304\340\023\0272YX!0\217\217\234\300CID\364\013\316@\370D3E\230Y9\276\303<\276\3400\201O\005>br\21549\021\301\020\221A\334>r\001\212\3400\214\323\370\0211\235\301\3430\217\2778\316\343\023\0272\371\210u\205\301B4\306t\370\002 M\304\340K\221\003\370\264O\373H#\021\321\344\023\327dc\225\3570\217/8L\340S\201\017H\002 M>r\005\224\303<>\3224D\344\027N\344\007\316\200\371\210\251\035\002\363\344\266\217\230\030\345;\314\343KS\204\f\204\017H\002 M>bh\206\3404\203\217\000\000\000\000\0011\000\000\026\000\000\000[\006+\340\203-\003\026\360\301\226A\013\370`\313\300\005|\260e\b\203\200\017\266\fq\020\370\301\226a\016\002?\3302\320A\340\007[\206:\b\374`\313`\007\201\037l\031\356 \360\203-C\036\004|\260e\320\203\200\017\266\f|\020\360\301\226\241\017\002>\3302\200B\300\007\000\000\000\000\000a \000\000\337\000\000\000\023\004F,\020\000\000\000\007\000\000\000\024*\020\020\020\020\242\006J\210R\r\320*\004\022\306\000\301\030\034P\035\001\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n\t\005\030n\b\346\300\ff\031\202\"HBp\022\202\363\020\234\211\340\021\003c\000A0hX\301QF\f\214\001\004\301\240a\005'I,@b\001\206\r\bF\030\200a\003b\t\006`\304\300\030@\020\f\032W\200\224a\003By\203\001\03010\006\020\004\203\306\025\240d\330\200H\364`\000\210\013c\304\240i@\020\f\036U\200\202\311 \212\003\016\340\200\23202X2\334\020pb0\313@\b\0019a\314\022\f\003\025\213!\264\302\220A\200^\205N\240\240\216^\005\217\240\240\216\034\302\"\030\004!0\334 \234\002\032L7\bC\220EX$\203 \004\206\033\204U@\203\351\006a\b\206\033\212\340\f\246\033\316`\024\002\f\016\020@5\bB`\270A\210\0054\230n\020\206`\270aa\2030\230nX\203#\230n\030\336 \030n\240\322\000\231n\220\204`\270\201Z\003d\270\201\202\300`\304\240\000@\020\f4^\3002\b;bP\000 \b\006\232/`\031\204\275`\330\341\206\340\027\300\340\216`/\tv\272![\202^\005P \203a\003\"\020\006\000\315\200\f@ \203%\303\rA)\210\301,\0031\004#\006\306\000\202`\020\325\303\036\264\301\210\2011\200 \0304\372\320\007v0b`\f \b\006\215>\364\301\035\214\030\030\003\b\202A\243\017}\200\007#\006\306\000\202`\320\350C\037\344\301,A\241\341@^\000\000\000v\264\370\201C5\303?!\203oM\006\322<Sd\333\331!8M\225\327\265\205\025\202\323T\267\241\035H3T@$\331\325\341;\314\343S\301\t`\016\363\370H\323\020\221_8\221\0378\003\346/\221\377\034\306d \3153E\265)\031\013\321\030\323a]\223\3570\217\217H\377\002H\223\017H\002 M\007P\020\315\024a\226\305\370\016\363\370\210\364/\2004\031\231!8M\225\363\246%\006\013\321\030\323\341\003\303\020\371R\344\000>\355\323>qM\021 L\376\024Q\215`\215\001\205\3404Une\211\300<\272\3378S\177\001\220\303<\376\023\021\202\323\f\376t\020\2151\006\024\3000\324\265%5\376\023\021\025\342P\222O\005\2769\006 \002\363\350~\343L\006F\bNSY\032\002D\021\200!\303u\004\215\303<\376\3428\217O\\\310t\005\217\303<\376\023\021\202\323\f>\321\ff\304\370\306\342\004\300\362O\310\340\033\227\344;\314\343KS\204\f\204\017H\002 M\266d8\324\364L\221!5\376\023\021\025\342P\222\277\004\276}9\276\303<\376\022\370\200$\000\322d\213\001\n\020E\000\206\fWM\337\200\3440\217\2174\r\021\371\205\023\371\2013`\346\345\370\016\363\370T\340\003\222\000H\223a-\276\303<\2764E\310@\330Z\002D\021\200!\303\305\333\326 0\217Y\035\276\303<\376\022\000\0011\000\000\r\000\000\000[\206'\340\203-\003\024\360\301\226A\n\370`\313@\005|\260e\250\002>\3302\\\001\037l\031\266\200\017\266\f`\020\200\302\226A\f\002P\3302\210B\000\n\000\000\000\000\000\301 \000\000D\000\000\000\243\004\311P\001\"\252\000!2\204\210\020!B\304\b\211\032@\210\f!\"D\210\0201BR\016\020\"c\204\304\274 D\206\210\021\022\362\200\020\031BRZ\020\"d\204\204\324 d\204d\3340B%QKK\3141\000\212\301\001\306\004\207\305\305\206FGa\334\002\fs\b\000\201p\220\241Q\036\265\264\304\034\003\240\030\034|LpX\\lht\324\307-\3000\207\000\020\b\007\031\032\025RKL\3141\000\212\301\201\310\004\207\305\305\206FG\211\334\002\fs\b@\201p\2201\242Q$\265\304\304\034\003\240\030\034\224LpX\\lhtT\311-81\207\000\020\b\007\031\032\006P+A\201\005\324JP`\002\265\022\024\330@\255\004\005FP+A\201\025\340BP`\006\270 \024\024\330\001.\b\005\005\206\200\013BA\201%\320R@`\n\264\024\020\330\002-\005\004\306@K\001\2015P\001\2019P\001\201=P\001\201AP\001\201E\330A\001\220\240\260\300\000q \000\000\t\000\000\0002\016\020\"\204\022\267\013\2101\335\200\036\202\017\370\341\031\201!\316\022(\362O\201$\267\026X\222\216\001\000\000\000\000\000\000\000e\f\000\000\017\001\000\000\022\003\224p\030\000\000\000\003\000\000\000N\n\000\0002\000\000\000L\000\000\000\001\000\000\000X\000\000\000\000\000\000\000X\000\000\000(\000\000\000\030\004\000\000\001\000\000\000\200\n\000\000\021\000\000\000\221\n\000\000\016\000\000\000\024\000\000\000\000\000\000\0000\004\000\000\000\000\000\000\000\000\000\000(\000\000\000\000\000\000\000D\005\000\000U\000\000\000D\005\000\000U\000\000\000\377\377\377\377\022$\000\000\231\005\000\000\022\000\000\000\231\005\000\000\022\000\000\000\377\377\377\377\b$\000\000\253\005\000\000\026\000\000\000\253\005\000\000\026\000\000\000\377\377\377\377\b,\000\000\301\005\000\000\024\000\000\000\301\005\000\000\024\000\000\000\377\377\377\377\b,\000\000\325\005\000\000(\000\000\000\325\005\000\000(\000\000\000\377\377\377\377\b$\000\000\375\005\000\000\037\000\000\000\375\005\000\000\037\000\000\000\377\377\377\377\b$\000\000\034\006\000\000o\000\000\000\034\006\000\000o\000\000\000\377\377\377\377\000 \000\000\213\006\000\000\030\000\000\000\213\006\000\000\030\000\000\000\377\377\377\377\b$\000\000\243\006\000\000\035\000\000\000\243\006\000\000\035\000\000\000\377\377\377\377\b$\000\000\300\006\000\000\022\000\000\000\300\006\000\000\022\000\000\000\377\377\377\377\b$\000\000\322\006\000\000\030\000\000\000\322\006\000\000\030\000\000\000\377\377\377\377\b$\000\000\352\006\000\000\024\000\000\000\352\006\000\000\024\000\000\000\377\377\377\377\b$\000\000\376\006\000\000U\000\000\000\376\006\000\000U\000\000\000\377\377\377\377\022$\000\000S\007\000\000o\000\000\000S\007\000\000o\000\000\000\377\377\377\377\000 \000\000\302\007\000\000\020\000\000\000\302\007\000\000\020\000\000\000\377\377\377\377\b,\000\000\322\007\000\000\210\000\000\000\322\007\000\000\210\000\000\000\377\377\377\377\022$\000\000Z\b\000\000\242\000\000\000Z\b\000\000\242\000\000\000\377\377\377\377\000 \000\000\374\b\000\000\n\000\000\000\374\b\000\000\n\000\000\000\377\377\377\377\b$\000\000\006\t\000\000\212\000\000\000\006\t\000\000\212\000\000\000\377\377\377\377\022$\000\000\220\t\000\000\244\000\000\000\220\t\000\000\244\000\000\000\377\377\377\377\000 \000\0004\n\000\000\r\000\000\0004\n\000\000\r\000\000\000\377\377\377\377\b,\000\000A\n\000\000\r\000\000\000A\n\000\000\r\000\000\000\377\377\377\377\b,\000\000\000\000\000\000\024\000\000\000\000\000\000\000\024\000\000\000\377\377\377\377\021\004\000\000\024\000\000\000'\000\000\000\024\000\000\000'\000\000\000\377\377\377\377\021\004\000\000;\000\000\000)\000\000\000;\000\000\000)\000\000\000\377\377\377\377\021\004\000\000d\000\000\000 \000\000\000d\000\000\000 \000\000\000\377\377\377\377\021\004\000\000\204\000\000\000&\000\000\000\204\000\000\000&\000\000\000\377\377\377\377\021\004\000\000\252\000\000\000'\000\000\000\252\000\000\000'\000\000\000\377\377\377\377\000\030\000\000\321\000\000\000'\000\000\000\321\000\000\000'\000\000\000\377\377\377\377\000\030\000\000\370\000\000\000'\000\000\000\370\000\000\000'\000\000\000\377\377\377\377\000\030\000\000\037\001\000\000'\000\000\000\037\001\000\000'\000\000\000\377\377\377\377\000\030\000\000F\001\000\000_\000\000\000F\001\000\000_\000\000\000\377\377\377\377\222\004\000\000\245\001\000\000_\000\000\000\245\001\000\000_\000\000\000\377\377\377\377\222\004\000\000\004\002\000\000\222\000\000\000\004\002\000\000\222\000\000\000\377\377\377\377\222\004\000\000\226\002\000\000\224\000\000\000\226\002\000\000\224\000\000\000\377\377\377\377\222\004\000\000*\003\000\000h\000\000\000*\003\000\000h\000\000\000\377\377\377\377\020\004\000\000\222\003\000\000h\000\000\000\222\003\000\000h\000\000\000\377\377\377\377\020\004\000\000\372\003\000\000\233\000\000\000\372\003\000\000\233\000\000\000\377\377\377\377\020\004\000\000\225\004\000\000\235\000\000\000\225\004\000\000\235\000\000\000\377\377\377\377\020\004\000\0002\005\000\000\022\000\000\0002\005\000\000\022\000\000\000\377\377\377\377\004\f\000\000\000\000\000\000\000\000\000\000\024\000\000\000\000\000\000\000\237\n\000\000\r\000\000\000\000\000\000\000]\f\000\000\256\002\000\000\022\003\224l-\000\000\000__omp_rtl_debug_kind__omp_rtl_assume_teams_oversubscription__omp_rtl_assume_threads_oversubscription__omp_rtl_assume_no_thread_state__omp_rtl_assume_no_nested_parallelismanon.d7cde77b931eaf89f899e4a08f5d8f08.0anon.d7cde77b931eaf89f899e4a08f5d8f08.1anon.d7cde77b931eaf89f899e4a08f5d8f08.2anon.d7cde77b931eaf89f899e4a08f5d8f08.3__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_exec_mode__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelismllvm.compiler.used__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28__kmpc_target_initllvm.lifetime.start.p5llvm.lifetime.end.p5__kmpc_get_hardware_num_threads_in_block__kmpc_distribute_static_init_4__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_omp_outlined_omp_outlined__kmpc_for_static_init_4__kmpc_distribute_static_fini__kmpc_parallel_51__kmpc_global_thread_num__kmpc_target_deinit__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_omp_outlined_omp_outlinedllvm.fmuladd.f32__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_omp_outlined_omp_outlinednextafterf__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_omp_outlined_omp_outlinedllvm.fabs.f32llvm.smin.i3217.0.0git 123545e9e59f765afa6ddf3b6f07191509604e94amdgcn-amd-amdhsasrc/vararg.cppllvm.metadata\000\000\000\000\000\000\000"
	.size	.Lllvm.embedded.object, 17928

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
	.addrsig_sym _ZN7gpumath16compare_accuracyIfXcvPFfffEadL_Z10nextafterfEEXadL_Z20__ocml_nextafter_f32EEJffEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined
	.addrsig_sym .omp_task_entry.
	.addrsig_sym .omp_task_entry..29
	.addrsig_sym _ZN7gpumath13apply_fun_cpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined
	.addrsig_sym _GLOBAL__sub_I_vararg.cpp
	.addrsig_sym .omp_offloading.requires_reg
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym .__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28.region_id
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZSt4cerr
	.addrsig_sym .__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14.region_id
	.addrsig_sym .__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10nextafterfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30.region_id
	.addrsig_sym .__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_nextafter_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30.region_id
