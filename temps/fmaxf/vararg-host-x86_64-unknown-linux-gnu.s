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
	leaq	.L.offload_sizes(%rip), %rcx
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
	movl	$2019650918, 24(%rsp)           # imm = 0x78616D66
	movq	$4, 16(%rsp)
	movb	$0, 28(%rsp)
	leaq	56(%rsp), %r13
	movq	%r13, 40(%rsp)
	movabsq	$7376733931731640159, %rax      # imm = 0x665F6C6D636F5F5F
	movq	%rax, 56(%rsp)
	movabsq	$3762307098942205286, %rcx      # imm = 0x3436665F78616D66
	movq	%rcx, 63(%rsp)
	movq	$15, 48(%rsp)
	movb	$0, 71(%rsp)
	leaq	184(%rsp), %r14
	movq	%r14, 168(%rsp)
	movl	$2019650918, 184(%rsp)          # imm = 0x78616D66
	movq	$4, 176(%rsp)
	movb	$0, 188(%rsp)
	leaq	88(%rsp), %r15
	movq	%r15, 72(%rsp)
	movq	%rax, 88(%rsp)
	movq	%rcx, 95(%rsp)
	movq	$15, 80(%rsp)
	movb	$0, 103(%rsp)
.Ltmp0:
	leaq	168(%rsp), %rdi
	leaq	72(%rsp), %rsi
	callq	_Z7timingsIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
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
	callq	_Z11correctnessIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z7timingsIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
.LCPI3_0:
	.quad	0xc00921fb54442d18              # double -3.1415926535897931
.LCPI3_1:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
	.section	.text._Z7timingsIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,"axG",@progbits,_Z7timingsIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,comdat
	.weak	_Z7timingsIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	.p2align	4, 0x90
	.type	_Z7timingsIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,@function
_Z7timingsIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_: # @_Z7timingsIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
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
	callq	_ZNSt5tupleIJN7gpumath5ArrayIdEES2_EEC2ILb1ELb1EEEv
	leaq	168(%rsp), %rdi
.Ltmp20:
	movsd	.LCPI3_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI3_1(%rip), %xmm1           # xmm1 = mem[0],zero
	callq	_ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2_
.Ltmp21:
# %bb.1:                                # %invoke.cont
.Ltmp22:
	leaq	136(%rsp), %rdi
	movsd	.LCPI3_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI3_1(%rip), %xmm1           # xmm1 = mem[0],zero
	callq	_ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2_
.Ltmp23:
# %bb.2:                                # %invoke.cont2
.Ltmp25:
	callq	omp_get_default_device@PLT
.Ltmp26:
# %bb.3:                                # %invoke.cont4
.Ltmp27:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp28:
# %bb.4:                                # %invoke.cont6
.Ltmp29:
	leaq	104(%rsp), %rdi
	movl	$536870911, %esi                # imm = 0x1FFFFFFF
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIdEC2Eiii
.Ltmp30:
# %bb.5:                                # %invoke.cont8
.Ltmp32:
	callq	omp_get_default_device@PLT
.Ltmp33:
# %bb.6:                                # %invoke.cont10
.Ltmp34:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp35:
# %bb.7:                                # %invoke.cont12
.Ltmp36:
	leaq	72(%rsp), %rdi
	movl	$536870911, %esi                # imm = 0x1FFFFFFF
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIdEC2Eiii
.Ltmp37:
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
.Ltmp39:
	callq	_Znwm@PLT
.Ltmp40:
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
.Ltmp41:
	callq	_Znwm@PLT
.Ltmp42:
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
.Ltmp43:
	leaq	136(%rsp), %rdi
	leaq	104(%rsp), %rsi
	leaq	72(%rsp), %rdx
	leaq	40(%rsp), %rcx
	leaq	8(%rsp), %r8
	callq	_ZN7gpumath12compare_timeIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
.Ltmp44:
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
.Ltmp46:
	callq	omp_target_free@PLT
.Ltmp47:
# %bb.32:                               # %_ZN7gpumath5ArrayIdED2Ev.exit
	movq	104(%rsp), %rdi
	callq	free@PLT
	movq	$0, 104(%rsp)
	movq	112(%rsp), %rdi
	movl	128(%rsp), %esi
.Ltmp49:
	callq	omp_target_free@PLT
.Ltmp50:
# %bb.33:                               # %_ZN7gpumath5ArrayIdED2Ev.exit36
	movq	168(%rsp), %rdi
	callq	free@PLT
	movq	$0, 168(%rsp)
	movq	176(%rsp), %rdi
	movl	192(%rsp), %esi
.Ltmp52:
	callq	omp_target_free@PLT
.Ltmp53:
# %bb.34:                               # %_ZNSt10_Head_baseILm0EN7gpumath5ArrayIdEELb0EED2Ev.exit.i
	movq	$0, 176(%rsp)
	movq	136(%rsp), %rdi
	callq	free@PLT
	movq	$0, 136(%rsp)
	movq	144(%rsp), %rdi
	movl	160(%rsp), %esi
.Ltmp55:
	callq	omp_target_free@PLT
.Ltmp56:
# %bb.35:                               # %_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev.exit
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
.Ltmp63:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp64:
# %bb.37:                               # %.noexc6
.LBB3_38:                               # %if.end.i.i.i.i.i.i21
.Ltmp58:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp59:
# %bb.39:                               # %.noexc24
.LBB3_40:                               # %if.then.i.i.i
.Ltmp65:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp66:
# %bb.41:                               # %.noexc
.LBB3_42:                               # %if.then.i.i.i22
.Ltmp60:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp61:
# %bb.43:                               # %.noexc23
.LBB3_44:                               # %terminate.lpad.i.i3.i
.Ltmp57:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB3_45:                               # %terminate.lpad.i.i.i
.Ltmp54:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB3_46:                               # %terminate.lpad.i35
.Ltmp51:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB3_47:                               # %terminate.lpad.i
.Ltmp48:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB3_48:                               # %lpad20
.Ltmp45:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB3_55
# %bb.49:                               # %if.then.i.i38
	callq	_ZdlPv@PLT
	jmp	.LBB3_55
.LBB3_50:                               # %lpad
.Ltmp24:
	jmp	.LBB3_51
.LBB3_52:                               # %lpad9
.Ltmp38:
	movq	%rax, %rbx
	jmp	.LBB3_59
.LBB3_53:                               # %lpad3
.Ltmp31:
.LBB3_51:                               # %lpad
	movq	%rax, %rbx
	leaq	136(%rsp), %rdi
	callq	_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB3_54:                               # %lpad18
.Ltmp62:
	movq	%rax, %rbx
.LBB3_55:                               # %ehcleanup
	movq	40(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB3_58
# %bb.56:                               # %if.then.i.i41
	callq	_ZdlPv@PLT
	jmp	.LBB3_58
.LBB3_57:                               # %lpad15
.Ltmp67:
	movq	%rax, %rbx
.LBB3_58:                               # %ehcleanup22
	leaq	72(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdED2Ev
.LBB3_59:                               # %ehcleanup23
	leaq	104(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdED2Ev
	leaq	136(%rsp), %rdi
	callq	_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	_Z7timingsIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_, .Lfunc_end3-_Z7timingsIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	.cfi_endproc
	.section	.gcc_except_table._Z7timingsIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,"aG",@progbits,_Z7timingsIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,comdat
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
	.uleb128 .Ltmp23-.Ltmp20                #   Call between .Ltmp20 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin1          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp30-.Ltmp25                #   Call between .Ltmp25 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin1          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp37-.Ltmp32                #   Call between .Ltmp32 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin1          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp67-.Lfunc_begin1          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp62-.Lfunc_begin1          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin1          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin1          #     jumps to .Ltmp48
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp49-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin1          #     jumps to .Ltmp51
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp52-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin1          #     jumps to .Ltmp54
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp55-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin1          #     jumps to .Ltmp57
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp63-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp67-.Lfunc_begin1          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp62-.Lfunc_begin1          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin1          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin1          #     jumps to .Ltmp62
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin1          # >> Call Site 18 <<
	.uleb128 .Lfunc_end3-.Ltmp61            #   Call between .Ltmp61 and .Lfunc_end3
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
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z11correctnessIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
.LCPI4_0:
	.quad	0xc00921fb54442d18              # double -3.1415926535897931
.LCPI4_1:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
	.section	.text._Z11correctnessIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,"axG",@progbits,_Z11correctnessIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,comdat
	.weak	_Z11correctnessIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	.p2align	4, 0x90
	.type	_Z11correctnessIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,@function
_Z11correctnessIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_: # @_Z11correctnessIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
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
	callq	_ZNSt5tupleIJN7gpumath5ArrayIdEES2_EEC2ILb1ELb1EEEv
	leaq	136(%rsp), %r15
.Ltmp68:
	movq	%r15, %rdi
	movl	$2048, %esi                     # imm = 0x800
	callq	_ZN7gpumath5ArrayIdE7reshapeEi
.Ltmp69:
# %bb.1:                                # %invoke.cont
.Ltmp70:
	movsd	.LCPI4_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI4_1(%rip), %xmm1           # xmm1 = mem[0],zero
	movq	%r15, %rdi
	callq	_ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2_
.Ltmp71:
# %bb.2:                                # %invoke.cont2
.Ltmp72:
	leaq	104(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	callq	_ZN7gpumath5ArrayIdE7reshapeEi
.Ltmp73:
# %bb.3:                                # %invoke.cont4
.Ltmp74:
	leaq	104(%rsp), %rdi
	movsd	.LCPI4_0(%rip), %xmm0           # xmm0 = mem[0],zero
	movsd	.LCPI4_1(%rip), %xmm1           # xmm1 = mem[0],zero
	callq	_ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2_
.Ltmp75:
# %bb.4:                                # %invoke.cont6
.Ltmp77:
	callq	omp_get_default_device@PLT
.Ltmp78:
# %bb.5:                                # %invoke.cont8
.Ltmp79:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp80:
# %bb.6:                                # %invoke.cont10
.Ltmp81:
	leaq	72(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIdEC2Eiii
.Ltmp82:
# %bb.7:                                # %invoke.cont12
.Ltmp84:
	callq	omp_get_default_device@PLT
.Ltmp85:
# %bb.8:                                # %invoke.cont14
.Ltmp86:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp87:
# %bb.9:                                # %invoke.cont16
.Ltmp88:
	leaq	200(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIdEC2Eiii
.Ltmp89:
# %bb.10:                               # %invoke.cont18
.Ltmp91:
	callq	omp_get_default_device@PLT
.Ltmp92:
# %bb.11:                               # %invoke.cont20
.Ltmp93:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp94:
# %bb.12:                               # %invoke.cont22
.Ltmp95:
	leaq	168(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIdEC2Eiii
.Ltmp96:
# %bb.13:                               # %invoke.cont24
.Ltmp98:
	leaq	72(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdE7to_hostEv
.Ltmp99:
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
.Ltmp100:
	callq	_Znwm@PLT
.Ltmp101:
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
.Ltmp102:
	callq	_Znwm@PLT
.Ltmp103:
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
.Ltmp104:
	leaq	104(%rsp), %rdi
	leaq	72(%rsp), %rsi
	leaq	200(%rsp), %rdx
	leaq	168(%rsp), %rcx
	leaq	40(%rsp), %r8
	leaq	8(%rsp), %r9
	callq	_ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
.Ltmp105:
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
.Ltmp107:
	callq	omp_target_free@PLT
.Ltmp108:
# %bb.38:                               # %_ZN7gpumath5ArrayIdED2Ev.exit
	movq	200(%rsp), %rdi
	callq	free@PLT
	movq	$0, 200(%rsp)
	movq	208(%rsp), %rdi
	movl	224(%rsp), %esi
.Ltmp110:
	callq	omp_target_free@PLT
.Ltmp111:
# %bb.39:                               # %_ZN7gpumath5ArrayIdED2Ev.exit38
	movq	72(%rsp), %rdi
	callq	free@PLT
	movq	$0, 72(%rsp)
	movq	80(%rsp), %rdi
	movl	96(%rsp), %esi
.Ltmp113:
	callq	omp_target_free@PLT
.Ltmp114:
# %bb.40:                               # %_ZN7gpumath5ArrayIdED2Ev.exit42
	movq	136(%rsp), %rdi
	callq	free@PLT
	movq	$0, 136(%rsp)
	movq	144(%rsp), %rdi
	movl	160(%rsp), %esi
.Ltmp116:
	callq	omp_target_free@PLT
.Ltmp117:
# %bb.41:                               # %_ZNSt10_Head_baseILm0EN7gpumath5ArrayIdEELb0EED2Ev.exit.i
	movq	$0, 144(%rsp)
	movq	104(%rsp), %rdi
	callq	free@PLT
	movq	$0, 104(%rsp)
	movq	112(%rsp), %rdi
	movl	128(%rsp), %esi
.Ltmp119:
	callq	omp_target_free@PLT
.Ltmp120:
# %bb.42:                               # %_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev.exit
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
.Ltmp127:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp128:
# %bb.44:                               # %.noexc8
.LBB4_45:                               # %if.end.i.i.i.i.i.i23
.Ltmp122:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp123:
# %bb.46:                               # %.noexc26
.LBB4_47:                               # %if.then.i.i.i
.Ltmp129:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp130:
# %bb.48:                               # %.noexc
.LBB4_49:                               # %if.then.i.i.i24
.Ltmp124:
	leaq	.L.str.6(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp125:
# %bb.50:                               # %.noexc25
.LBB4_51:                               # %terminate.lpad.i.i3.i
.Ltmp121:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB4_52:                               # %terminate.lpad.i.i.i
.Ltmp118:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB4_53:                               # %terminate.lpad.i41
.Ltmp115:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB4_54:                               # %terminate.lpad.i37
.Ltmp112:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB4_55:                               # %terminate.lpad.i
.Ltmp109:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB4_56:                               # %lpad31
.Ltmp106:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB4_64
# %bb.57:                               # %if.then.i.i44
	callq	_ZdlPv@PLT
	jmp	.LBB4_64
.LBB4_58:                               # %lpad19
.Ltmp97:
	movq	%rax, %rbx
	jmp	.LBB4_68
.LBB4_59:                               # %lpad13
.Ltmp90:
	movq	%rax, %rbx
	jmp	.LBB4_69
.LBB4_60:                               # %lpad7
.Ltmp83:
	jmp	.LBB4_62
.LBB4_61:                               # %lpad
.Ltmp76:
.LBB4_62:                               # %lpad
	movq	%rax, %rbx
	leaq	104(%rsp), %rdi
	callq	_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB4_63:                               # %lpad29
.Ltmp126:
	movq	%rax, %rbx
.LBB4_64:                               # %ehcleanup
	movq	40(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB4_67
# %bb.65:                               # %if.then.i.i47
	callq	_ZdlPv@PLT
	jmp	.LBB4_67
.LBB4_66:                               # %lpad25
.Ltmp131:
	movq	%rax, %rbx
.LBB4_67:                               # %ehcleanup33
	leaq	168(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdED2Ev
.LBB4_68:                               # %ehcleanup34
	leaq	200(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdED2Ev
.LBB4_69:                               # %ehcleanup36
	leaq	72(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdED2Ev
	leaq	104(%rsp), %rdi
	callq	_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end4:
	.size	_Z11correctnessIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_, .Lfunc_end4-_Z11correctnessIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_
	.cfi_endproc
	.section	.gcc_except_table._Z11correctnessIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,"aG",@progbits,_Z11correctnessIJddEEvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_,comdat
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
	.uleb128 .Ltmp68-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp75-.Ltmp68                #   Call between .Ltmp68 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin2          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Ltmp82-.Ltmp77                #   Call between .Ltmp77 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin2          #     jumps to .Ltmp83
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin2          # >> Call Site 4 <<
	.uleb128 .Ltmp89-.Ltmp84                #   Call between .Ltmp84 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin2          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin2          # >> Call Site 5 <<
	.uleb128 .Ltmp96-.Ltmp91                #   Call between .Ltmp91 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin2          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin2          # >> Call Site 6 <<
	.uleb128 .Ltmp101-.Ltmp98               #   Call between .Ltmp98 and .Ltmp101
	.uleb128 .Ltmp131-.Lfunc_begin2         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp102-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp103-.Ltmp102              #   Call between .Ltmp102 and .Ltmp103
	.uleb128 .Ltmp126-.Lfunc_begin2         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin2         # >> Call Site 10 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin2         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin2         # >> Call Site 11 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin2         #     jumps to .Ltmp109
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp110-.Lfunc_begin2         # >> Call Site 12 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin2         #     jumps to .Ltmp112
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp113-.Lfunc_begin2         # >> Call Site 13 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin2         #     jumps to .Ltmp115
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp116-.Lfunc_begin2         # >> Call Site 14 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin2         #     jumps to .Ltmp118
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp119-.Lfunc_begin2         # >> Call Site 15 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin2         #     jumps to .Ltmp121
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp127-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp131-.Lfunc_begin2         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp126-.Lfunc_begin2         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin2         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin2         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Lfunc_end4-.Ltmp125           #   Call between .Ltmp125 and .Lfunc_end4
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
	.section	.text._ZNSt5tupleIJN7gpumath5ArrayIdEES2_EEC2ILb1ELb1EEEv,"axG",@progbits,_ZNSt5tupleIJN7gpumath5ArrayIdEES2_EEC2ILb1ELb1EEEv,comdat
	.weak	_ZNSt5tupleIJN7gpumath5ArrayIdEES2_EEC2ILb1ELb1EEEv # -- Begin function _ZNSt5tupleIJN7gpumath5ArrayIdEES2_EEC2ILb1ELb1EEEv
	.p2align	4, 0x90
	.type	_ZNSt5tupleIJN7gpumath5ArrayIdEES2_EEC2ILb1ELb1EEEv,@function
_ZNSt5tupleIJN7gpumath5ArrayIdEES2_EEC2ILb1ELb1EEEv: # @_ZNSt5tupleIJN7gpumath5ArrayIdEES2_EEC2ILb1ELb1EEEv
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
	callq	_ZN7gpumath5ArrayIdEC2Eiii
.Ltmp132:
	callq	omp_get_default_device@PLT
.Ltmp133:
# %bb.1:                                # %call.i.noexc.i
.Ltmp134:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp135:
# %bb.2:                                # %call2.i.noexc.i
.Ltmp136:
	leaq	32(%rbx), %rdi
	movl	$536870911, %esi                # imm = 0x1FFFFFFF
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIdEC2Eiii
.Ltmp137:
# %bb.3:                                # %_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EEC2Ev.exit
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB6_5:                                # %lpad.i
	.cfi_def_cfa_offset 32
.Ltmp138:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	callq	free@PLT
	movq	$0, (%rbx)
	movq	8(%rbx), %rdi
	movl	24(%rbx), %esi
.Ltmp139:
	callq	omp_target_free@PLT
.Ltmp140:
# %bb.6:                                # %_ZNSt10_Head_baseILm1EN7gpumath5ArrayIdEELb0EED2Ev.exit
	movq	$0, 8(%rbx)
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.LBB6_4:                                # %terminate.lpad.i.i
.Ltmp141:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end6:
	.size	_ZNSt5tupleIJN7gpumath5ArrayIdEES2_EEC2ILb1ELb1EEEv, .Lfunc_end6-_ZNSt5tupleIJN7gpumath5ArrayIdEES2_EEC2ILb1ELb1EEEv
	.cfi_endproc
	.section	.gcc_except_table._ZNSt5tupleIJN7gpumath5ArrayIdEES2_EEC2ILb1ELb1EEEv,"aG",@progbits,_ZNSt5tupleIJN7gpumath5ArrayIdEES2_EEC2ILb1ELb1EEEv,comdat
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
	.uleb128 .Ltmp132-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp137-.Ltmp132              #   Call between .Ltmp132 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin3         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin3         #     jumps to .Ltmp141
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp140-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Lfunc_end6-.Ltmp140           #   Call between .Ltmp140 and .Lfunc_end6
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
	.p2align	3, 0x0                          # -- Begin function _ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2_
.LCPI7_0:
	.quad	0xbff0000000000000              # double -1
	.section	.text._ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2_,"axG",@progbits,_ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2_,comdat
	.weak	_ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2_
	.p2align	4, 0x90
	.type	_ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2_,@function
_ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2_: # @_ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2_
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
	movsd	%xmm0, 16(%rsp)
	movl	16(%rdi), %eax
	movl	%eax, 4(%rsp)
	subsd	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	addsd	.LCPI7_0(%rip), %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 8(%rsp)
	movq	8(%rdi), %rcx
	leaq	4(%rsp), %rdx
	movq	%rdx, 56(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 64(%rsp)
	movq	%rcx, 32(%rsp)
	leaq	16(%rsp), %rcx
	movq	%rcx, 72(%rsp)
	movq	%rcx, 40(%rsp)
	leaq	8(%rsp), %rcx
	movq	%rcx, 80(%rsp)
	movq	%rcx, 48(%rsp)
	movabsq	$17179869186, %rcx              # imm = 0x400000002
	movq	%rcx, 88(%rsp)
	leaq	56(%rsp), %rcx
	movq	%rcx, 96(%rsp)
	leaq	24(%rsp), %rcx
	movq	%rcx, 104(%rsp)
	leaq	.L.offload_sizes.24(%rip), %rcx
	movq	%rcx, 112(%rsp)
	leaq	.L.offload_maptypes.8(%rip), %rcx
	movq	%rcx, 120(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 128(%rsp)
	movq	%rax, 144(%rsp)
	movupd	%xmm0, 152(%rsp)
	movupd	%xmm0, 168(%rsp)
	movl	$0, 184(%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	movq	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id@GOTPCREL(%rip), %r8
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
	movl	$64, %esi
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
	callq	_ZN7gpumath5ArrayIdE7to_hostEv
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
	.size	_ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2_, .Lfunc_end7-_ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath5ArrayIdEC2Eiii,"axG",@progbits,_ZN7gpumath5ArrayIdEC2Eiii,comdat
	.weak	_ZN7gpumath5ArrayIdEC2Eiii      # -- Begin function _ZN7gpumath5ArrayIdEC2Eiii
	.p2align	4, 0x90
	.type	_ZN7gpumath5ArrayIdEC2Eiii,@function
_ZN7gpumath5ArrayIdEC2Eiii:             # @_ZN7gpumath5ArrayIdEC2Eiii
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
	shlq	$3, %r14
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
	shlq	$3, %r14
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
	.size	_ZN7gpumath5ArrayIdEC2Eiii, .Lfunc_end8-_ZN7gpumath5ArrayIdEC2Eiii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath12compare_timeIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,"axG",@progbits,_ZN7gpumath12compare_timeIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,comdat
	.weak	_ZN7gpumath12compare_timeIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_ # -- Begin function _ZN7gpumath12compare_timeIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
	.p2align	4, 0x90
	.type	_ZN7gpumath12compare_timeIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,@function
_ZN7gpumath12compare_timeIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_: # @_ZN7gpumath12compare_timeIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
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
.Ltmp142:
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movl	$500, %ecx                      # imm = 0x1F4
	callq	_ZN7gpumath8gpu_timeIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Ltmp143:
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
.Ltmp145:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movl	$500, %ecx                      # imm = 0x1F4
	callq	_ZN7gpumath8gpu_timeIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Ltmp146:
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
.Ltmp147:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rax
	jmp	.LBB9_17
.LBB9_15:                               # %lpad
.Ltmp144:
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
	.size	_ZN7gpumath12compare_timeIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_, .Lfunc_end9-_ZN7gpumath12compare_timeIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath12compare_timeIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,"aG",@progbits,_ZN7gpumath12compare_timeIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp142-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp142
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp143-.Ltmp142              #   Call between .Ltmp142 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin4         #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp145-.Ltmp143              #   Call between .Ltmp143 and .Ltmp145
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin4         #     jumps to .Ltmp147
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Lfunc_end9-.Ltmp146           #   Call between .Ltmp146 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7gpumath5ArrayIdED2Ev,"axG",@progbits,_ZN7gpumath5ArrayIdED2Ev,comdat
	.weak	_ZN7gpumath5ArrayIdED2Ev        # -- Begin function _ZN7gpumath5ArrayIdED2Ev
	.p2align	4, 0x90
	.type	_ZN7gpumath5ArrayIdED2Ev,@function
_ZN7gpumath5ArrayIdED2Ev:               # @_ZN7gpumath5ArrayIdED2Ev
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
.Ltmp148:
	callq	omp_target_free@PLT
.Ltmp149:
# %bb.1:                                # %invoke.cont
	movq	$0, 8(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB10_2:                               # %terminate.lpad
	.cfi_def_cfa_offset 16
.Ltmp150:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end10:
	.size	_ZN7gpumath5ArrayIdED2Ev, .Lfunc_end10-_ZN7gpumath5ArrayIdED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath5ArrayIdED2Ev,"aG",@progbits,_ZN7gpumath5ArrayIdED2Ev,comdat
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
	.uleb128 .Ltmp148-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin5         #     jumps to .Ltmp150
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
	.section	.text._ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev,"axG",@progbits,_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev,comdat
	.weak	_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev # -- Begin function _ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev
	.p2align	4, 0x90
	.type	_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev,@function
_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev: # @_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev
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
.Ltmp151:
	callq	omp_target_free@PLT
.Ltmp152:
# %bb.1:                                # %_ZNSt10_Head_baseILm0EN7gpumath5ArrayIdEELb0EED2Ev.exit
	movq	$0, 40(%rbx)
	movq	(%rbx), %rdi
	callq	free@PLT
	movq	$0, (%rbx)
	movq	8(%rbx), %rdi
	movl	24(%rbx), %esi
.Ltmp154:
	callq	omp_target_free@PLT
.Ltmp155:
# %bb.2:                                # %_ZNSt10_Head_baseILm1EN7gpumath5ArrayIdEELb0EED2Ev.exit
	movq	$0, 8(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB11_4:                               # %terminate.lpad.i.i3
	.cfi_def_cfa_offset 16
.Ltmp156:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB11_3:                               # %terminate.lpad.i.i
.Ltmp153:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end11:
	.size	_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev, .Lfunc_end11-_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev,"aG",@progbits,_ZNSt11_Tuple_implILm0EJN7gpumath5ArrayIdEES2_EED2Ev,comdat
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
	.uleb128 .Ltmp151-.Lfunc_begin6         # >> Call Site 1 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin6         #     jumps to .Ltmp153
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp154-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin6         #     jumps to .Ltmp156
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
	.section	.text._ZN7gpumath5ArrayIdE7to_hostEv,"axG",@progbits,_ZN7gpumath5ArrayIdE7to_hostEv,comdat
	.weak	_ZN7gpumath5ArrayIdE7to_hostEv  # -- Begin function _ZN7gpumath5ArrayIdE7to_hostEv
	.p2align	4, 0x90
	.type	_ZN7gpumath5ArrayIdE7to_hostEv,@function
_ZN7gpumath5ArrayIdE7to_hostEv:         # @_ZN7gpumath5ArrayIdE7to_hostEv
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
	shlq	$3, %rdx
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
	.size	_ZN7gpumath5ArrayIdE7to_hostEv, .Lfunc_end12-_ZN7gpumath5ArrayIdE7to_hostEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath8gpu_timeIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"axG",@progbits,_ZN7gpumath8gpu_timeIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.weak	_ZN7gpumath8gpu_timeIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi # -- Begin function _ZN7gpumath8gpu_timeIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.p2align	4, 0x90
	.type	_ZN7gpumath8gpu_timeIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,@function
_ZN7gpumath8gpu_timeIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi: # @_ZN7gpumath8gpu_timeIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
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
.Ltmp157:
	leaq	.L.str.18(%rip), %rcx
	leaq	16(%rsp), %rdi
	movl	$4, %r8d
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp158:
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
.Ltmp159:
	leaq	88(%rsp), %rdi
	leaq	56(%rsp), %rsi
	movl	$16, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.Ltmp160:
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
.Ltmp162:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	movsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp163:
# %bb.27:                               # %invoke.cont7
                                        #   in Loop: Header=BB13_26 Depth=1
.Ltmp164:
	movq	%r12, %rdi
	movsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp165:
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
.Ltmp166:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp167:
# %bb.34:                               # %.noexc26
                                        #   in Loop: Header=BB13_26 Depth=1
	movq	(%rbp), %rax
.Ltmp168:
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp169:
.LBB13_35:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB13_26 Depth=1
.Ltmp170:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp171:
# %bb.36:                               # %call1.i.noexc
                                        #   in Loop: Header=BB13_26 Depth=1
.Ltmp172:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp173:
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
.Ltmp175:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp176:
# %bb.30:                               # %.noexc25
.LBB13_1:                               # %if.then.i.i.i
.Ltmp178:
	leaq	.L.str.19(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp179:
# %bb.2:                                # %.noexc
.LBB13_21:                              # %lpad2
.Ltmp161:
	movq	%rax, %rbx
	movq	56(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB13_23
# %bb.22:                               # %if.then.i.i14
	callq	_ZdlPv@PLT
	jmp	.LBB13_23
.LBB13_20:                              # %lpad
.Ltmp180:
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
.Ltmp177:
	jmp	.LBB13_40
.LBB13_38:                              # %lpad6.loopexit
.Ltmp174:
.LBB13_40:                              # %lpad6
	movq	%rax, %rbx
	leaq	88(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.LBB13_41:                              # %ehcleanup16
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end13:
	.size	_ZN7gpumath8gpu_timeIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, .Lfunc_end13-_ZN7gpumath8gpu_timeIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath8gpu_timeIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"aG",@progbits,_ZN7gpumath8gpu_timeIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp157-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp157
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp180-.Lfunc_begin7         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin7         #     jumps to .Ltmp161
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp173-.Ltmp162              #   Call between .Ltmp162 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin7         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin7         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin7         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Lfunc_end13-.Ltmp179          #   Call between .Ltmp179 and .Lfunc_end13
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
.Ltmp181:
	callq	_Znwm@PLT
.Ltmp182:
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
.Ltmp183:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp184:
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
.Ltmp185:
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp186:
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
.Ltmp187:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp188:
# %bb.5:                                # %.noexc6
.LBB14_2:
	leaq	.L.str.6(%rip), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
.LBB14_19:                              # %if.then.i.i.i20.invoke
.Ltmp189:
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp190:
# %bb.20:                               # %if.then.i.i.i20.cont
.LBB14_28:                              # %lpad3
.Ltmp191:
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
	.uleb128 .Ltmp181-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp184-.Ltmp181              #   Call between .Ltmp181 and .Ltmp184
	.uleb128 .Ltmp191-.Lfunc_begin8         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp185-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp186-.Ltmp185              #   Call between .Ltmp185 and .Ltmp186
	.uleb128 .Ltmp191-.Lfunc_begin8         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp190-.Ltmp187              #   Call between .Ltmp187 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin8         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Lfunc_end14-.Ltmp190          #   Call between .Ltmp190 and .Lfunc_end14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7gpumath8gpu_timeIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"axG",@progbits,_ZN7gpumath8gpu_timeIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.weak	_ZN7gpumath8gpu_timeIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi # -- Begin function _ZN7gpumath8gpu_timeIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.p2align	4, 0x90
	.type	_ZN7gpumath8gpu_timeIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,@function
_ZN7gpumath8gpu_timeIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi: # @_ZN7gpumath8gpu_timeIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
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
.Ltmp192:
	leaq	.L.str.18(%rip), %rcx
	leaq	16(%rsp), %rdi
	movl	$4, %r8d
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp193:
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
.Ltmp194:
	leaq	88(%rsp), %rdi
	leaq	56(%rsp), %rsi
	movl	$16, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.Ltmp195:
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
.Ltmp197:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	movsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp198:
# %bb.27:                               # %invoke.cont7
                                        #   in Loop: Header=BB15_26 Depth=1
.Ltmp199:
	movq	%r12, %rdi
	movsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp200:
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
.Ltmp201:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp202:
# %bb.34:                               # %.noexc26
                                        #   in Loop: Header=BB15_26 Depth=1
	movq	(%rbp), %rax
.Ltmp203:
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp204:
.LBB15_35:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB15_26 Depth=1
.Ltmp205:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp206:
# %bb.36:                               # %call1.i.noexc
                                        #   in Loop: Header=BB15_26 Depth=1
.Ltmp207:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp208:
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
.Ltmp210:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp211:
# %bb.30:                               # %.noexc25
.LBB15_1:                               # %if.then.i.i.i
.Ltmp213:
	leaq	.L.str.19(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp214:
# %bb.2:                                # %.noexc
.LBB15_21:                              # %lpad2
.Ltmp196:
	movq	%rax, %rbx
	movq	56(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB15_23
# %bb.22:                               # %if.then.i.i14
	callq	_ZdlPv@PLT
	jmp	.LBB15_23
.LBB15_20:                              # %lpad
.Ltmp215:
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
.Ltmp212:
	jmp	.LBB15_40
.LBB15_38:                              # %lpad6.loopexit
.Ltmp209:
.LBB15_40:                              # %lpad6
	movq	%rax, %rbx
	leaq	88(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.LBB15_41:                              # %ehcleanup16
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end15:
	.size	_ZN7gpumath8gpu_timeIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, .Lfunc_end15-_ZN7gpumath8gpu_timeIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath8gpu_timeIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"aG",@progbits,_ZN7gpumath8gpu_timeIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp192-.Lfunc_begin9         #   Call between .Lfunc_begin9 and .Ltmp192
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp215-.Lfunc_begin9         #     jumps to .Ltmp215
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin9         #     jumps to .Ltmp196
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Ltmp208-.Ltmp197              #   Call between .Ltmp197 and .Ltmp208
	.uleb128 .Ltmp209-.Lfunc_begin9         #     jumps to .Ltmp209
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp210-.Lfunc_begin9         # >> Call Site 6 <<
	.uleb128 .Ltmp211-.Ltmp210              #   Call between .Ltmp210 and .Ltmp211
	.uleb128 .Ltmp212-.Lfunc_begin9         #     jumps to .Ltmp212
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp213-.Lfunc_begin9         # >> Call Site 7 <<
	.uleb128 .Ltmp214-.Ltmp213              #   Call between .Ltmp213 and .Ltmp214
	.uleb128 .Ltmp215-.Lfunc_begin9         #     jumps to .Ltmp215
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin9         # >> Call Site 8 <<
	.uleb128 .Lfunc_end15-.Ltmp214          #   Call between .Ltmp214 and .Lfunc_end15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,"axG",@progbits,_ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,comdat
	.weak	_ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE # -- Begin function _ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	.p2align	4, 0x90
	.type	_ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,@function
_ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE: # @_ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
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
	movq	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28.region_id@GOTPCREL(%rip), %r8
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
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE(%rip), %rcx
	movl	$16, %edx
	callq	__assert_fail@PLT
.Lfunc_end16:
	.size	_ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE, .Lfunc_end16-_ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
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
	.section	.text._ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE,"axG",@progbits,_ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE,comdat
	.weak	_ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE # -- Begin function _ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	.p2align	4, 0x90
	.type	_ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE,@function
_ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE: # @_ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
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
	movq	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28.region_id@GOTPCREL(%rip), %r8
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
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE(%rip), %rcx
	movl	$16, %edx
	callq	__assert_fail@PLT
.Lfunc_end18:
	.size	_ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE, .Lfunc_end18-_ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath5ArrayIdE7reshapeEi,"axG",@progbits,_ZN7gpumath5ArrayIdE7reshapeEi,comdat
	.weak	_ZN7gpumath5ArrayIdE7reshapeEi  # -- Begin function _ZN7gpumath5ArrayIdE7reshapeEi
	.p2align	4, 0x90
	.type	_ZN7gpumath5ArrayIdE7reshapeEi,@function
_ZN7gpumath5ArrayIdE7reshapeEi:         # @_ZN7gpumath5ArrayIdE7reshapeEi
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
	shlq	$3, %rdi
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
	shlq	$3, %rdi
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
	.size	_ZN7gpumath5ArrayIdE7reshapeEi, .Lfunc_end19-_ZN7gpumath5ArrayIdE7reshapeEi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,"axG",@progbits,_ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,comdat
	.weak	_ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_ # -- Begin function _ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
	.p2align	4, 0x90
	.type	_ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_,@function
_ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_: # @_ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
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
	callq	_ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	movq	%r14, %rdi
	callq	_ZN7gpumath5ArrayIdE7to_hostEv
	movq	%rbp, %rdi
	callq	_ZN7gpumath5ArrayIdE7to_hostEv
	cmpb	$0, 28(%r12)
	je	.LBB20_10
# %bb.9:                                # %if.then19
	movq	%r12, %rdi
	callq	_ZN7gpumath5ArrayIdE7to_hostEv
.LBB20_10:                              # %if.end20
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	_ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	leaq	.L__unnamed_1(%rip), %rdi
	leaq	_ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined(%rip), %rdx
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
	callq	_ZN7gpumath5ArrayIdE9to_deviceEv
	cmpb	$0, 28(%rbp)
	jne	.LBB20_4
.LBB20_3:                               # %if.then5
	movq	%rbp, %rdi
	callq	_ZN7gpumath5ArrayIdE9to_deviceEv
	cmpb	$0, 28(%r13)
	jne	.LBB20_6
.LBB20_5:                               # %if.then9
	movq	%r13, %rdi
	callq	_ZN7gpumath5ArrayIdE9to_deviceEv
	cmpb	$0, 28(%rbx)
	jne	.LBB20_8
.LBB20_7:                               # %if.then12
	movq	%rbx, %rdi
	callq	_ZN7gpumath5ArrayIdE9to_deviceEv
	jmp	.LBB20_8
.Lfunc_end20:
	.size	_ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_, .Lfunc_end20-_ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath5ArrayIdE9to_deviceEv,"axG",@progbits,_ZN7gpumath5ArrayIdE9to_deviceEv,comdat
	.weak	_ZN7gpumath5ArrayIdE9to_deviceEv # -- Begin function _ZN7gpumath5ArrayIdE9to_deviceEv
	.p2align	4, 0x90
	.type	_ZN7gpumath5ArrayIdE9to_deviceEv,@function
_ZN7gpumath5ArrayIdE9to_deviceEv:       # @_ZN7gpumath5ArrayIdE9to_deviceEv
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
	shlq	$3, %rdx
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
	.size	_ZN7gpumath5ArrayIdE9to_deviceEv, .Lfunc_end21-_ZN7gpumath5ArrayIdE9to_deviceEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,"axG",@progbits,_ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,comdat
	.weak	_ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE # -- Begin function _ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	.p2align	4, 0x90
	.type	_ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,@function
_ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE: # @_ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
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
	leaq	_ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined(%rip), %rdx
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
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE(%rip), %rcx
	movl	$41, %edx
	callq	__assert_fail@PLT
.LBB22_6:                               # %cond.false5
	leaq	.L.str.32(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE(%rip), %rcx
	movl	$42, %edx
	callq	__assert_fail@PLT
.LBB22_7:                               # %cond.false11
	leaq	.L.str.33(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE(%rip), %rcx
	movl	$43, %edx
	callq	__assert_fail@PLT
.LBB22_8:                               # %cond.false24
	leaq	.L.str.34(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE(%rip), %rcx
	movl	$53, %edx
	callq	__assert_fail@PLT
.Lfunc_end22:
	.size	_ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE, .Lfunc_end22-_ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined
	.type	_ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined,@function
_ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined: # @_ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined
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
	.size	_ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined, .Lfunc_end23-_ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LCPI24_0:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
	.section	.text._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.weak	_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	leaq	8(%rsp), %rdi
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	movq	16(%rsp), %rsi
	movq	%rsi, %rax
	shrq	$2, %rax
	movabsq	$2305843009213693951, %rcx      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	je	.LBB24_4
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	leaq	4(%rsi), %r15
	movq	8(%rsp), %rax
	leaq	24(%rsp), %r14
	movl	$15, %ecx
	cmpq	%r14, %rax
	je	.LBB24_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	24(%rsp), %rcx
.LBB24_8:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	cmpq	%rcx, %r15
	jbe	.LBB24_9
# %bb.10:                               # %if.else.i.i.i
.Ltmp216:
	leaq	.L.str.18(%rip), %rcx
	leaq	8(%rsp), %rdi
	movl	$4, %r8d
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp217:
	jmp	.LBB24_11
.LBB24_9:                               # %if.end.i.i.i.i.i
	movl	$1954051118, (%rax,%rsi)        # imm = 0x7478742E
.LBB24_11:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
	movq	%r15, 16(%rsp)
	movq	8(%rsp), %rax
	movb	$0, (%rax,%r15)
	leaq	88(%rsp), %r15
	movq	%r15, 72(%rsp)
	movq	8(%rsp), %rax
	cmpq	%r14, %rax
	je	.LBB24_12
# %bb.14:                               # %if.else.i.i
	movq	%rax, 72(%rsp)
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, 88(%rsp)
	jmp	.LBB24_15
.LBB24_12:                              # %if.then.i.i
	movq	16(%rsp), %r12
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
	movq	%r14, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, 24(%rsp)
.Ltmp218:
	leaq	104(%rsp), %rdi
	leaq	72(%rsp), %rsi
	movl	$16, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.Ltmp219:
# %bb.16:                               # %invoke.cont15
	movq	72(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB24_18
# %bb.17:                               # %if.then.i.i17
	callq	_ZdlPv@PLT
.LBB24_18:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	8(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB24_20
# %bb.19:                               # %if.then.i.i19
	callq	_ZdlPv@PLT
.LBB24_20:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
	cmpl	$0, 16(%rbx)
	jle	.LBB24_21
# %bb.28:                               # %for.body.preheader
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	xorl	%r13d, %r13d
	leaq	104(%rsp), %r14
	.p2align	4, 0x90
.LBB24_29:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax                  # 8-byte Reload
	movsd	(%rax,%r13,8), %xmm0            # xmm0 = mem[0],zero
	subsd	(%rbp,%r13,8), %xmm0
	andpd	.LCPI24_0(%rip), %xmm0
.Ltmp221:
	movq	%r14, %rdi
	movapd	%xmm0, 48(%rsp)                 # 16-byte Spill
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp222:
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
.Ltmp223:
	movq	%r12, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp224:
# %bb.36:                               # %.noexc35
                                        #   in Loop: Header=BB24_29 Depth=1
	movq	(%r12), %rax
.Ltmp225:
	movq	%r12, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp226:
.LBB24_37:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB24_29 Depth=1
.Ltmp227:
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp228:
# %bb.38:                               # %call1.i.noexc
                                        #   in Loop: Header=BB24_29 Depth=1
.Ltmp229:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp230:
# %bb.39:                               # %invoke.cont27
                                        #   in Loop: Header=BB24_29 Depth=1
	movapd	48(%rsp), %xmm0                 # 16-byte Reload
	maxsd	40(%rsp), %xmm0                 # 8-byte Folded Reload
	incq	%r13
	movslq	16(%rbx), %rax
	movsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	cmpq	%rax, %r13
	jl	.LBB24_29
	jmp	.LBB24_22
.LBB24_21:
	xorpd	%xmm0, %xmm0
.LBB24_22:                              # %for.cond.cleanup
	movapd	%xmm0, 48(%rsp)                 # 16-byte Spill
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
.Ltmp232:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp233:
# %bb.32:                               # %.noexc34
.LBB24_44:                              # %cond.false
	leaq	.L.str.35(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movl	$89, %edx
	callq	__assert_fail@PLT
.LBB24_45:                              # %cond.false4
	leaq	.L.str.36(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movl	$90, %edx
	callq	__assert_fail@PLT
.LBB24_46:                              # %cond.false9
	leaq	.L.str.37(%rip), %rdi
	leaq	.L.str.21(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movl	$91, %edx
	callq	__assert_fail@PLT
.LBB24_4:                               # %if.then.i.i.i
.Ltmp235:
	leaq	.L.str.19(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp236:
# %bb.5:                                # %.noexc
.LBB24_24:                              # %lpad14
.Ltmp220:
	movq	%rax, %rbx
	movq	72(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB24_26
# %bb.25:                               # %if.then.i.i23
	callq	_ZdlPv@PLT
	jmp	.LBB24_26
.LBB24_23:                              # %lpad
.Ltmp237:
	movq	%rax, %rbx
.LBB24_26:                              # %ehcleanup
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB24_43
# %bb.27:                               # %if.then.i.i26
	callq	_ZdlPv@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB24_41:                              # %lpad22.loopexit.split-lp
.Ltmp234:
	jmp	.LBB24_42
.LBB24_40:                              # %lpad22.loopexit
.Ltmp231:
.LBB24_42:                              # %lpad22
	movq	%rax, %rbx
	leaq	104(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.LBB24_43:                              # %ehcleanup35
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end24:
	.size	_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end24-_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.p2align	2, 0x0
GCC_except_table24:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp216-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp216
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp216-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp217-.Ltmp216              #   Call between .Ltmp216 and .Ltmp217
	.uleb128 .Ltmp237-.Lfunc_begin10        #     jumps to .Ltmp237
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Ltmp218-.Ltmp217              #   Call between .Ltmp217 and .Ltmp218
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin10        # >> Call Site 4 <<
	.uleb128 .Ltmp219-.Ltmp218              #   Call between .Ltmp218 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin10        #     jumps to .Ltmp220
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin10        # >> Call Site 5 <<
	.uleb128 .Ltmp230-.Ltmp221              #   Call between .Ltmp221 and .Ltmp230
	.uleb128 .Ltmp231-.Lfunc_begin10        #     jumps to .Ltmp231
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin10        # >> Call Site 6 <<
	.uleb128 .Ltmp233-.Ltmp232              #   Call between .Ltmp232 and .Ltmp233
	.uleb128 .Ltmp234-.Lfunc_begin10        #     jumps to .Ltmp234
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin10        # >> Call Site 7 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.uleb128 .Ltmp237-.Lfunc_begin10        #     jumps to .Ltmp237
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin10        # >> Call Site 8 <<
	.uleb128 .Lfunc_end24-.Ltmp236          #   Call between .Ltmp236 and .Lfunc_end24
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
.Ltmp238:
	movq	%r14, %rdi
	callq	_ZN7gpumath5ArrayIdE7to_hostEv
.Ltmp239:
# %bb.1:                                # %invoke.cont.i
	movq	8(%rbx), %r15
	movq	16(%rbx), %rbx
.Ltmp240:
	leaq	.L.str.26(%rip), %rsi
	leaq	16(%rsp), %rdi
	movq	%rbx, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp241:
# %bb.2:                                # %invoke.cont1.i
.Ltmp242:
	leaq	16(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.Ltmp243:
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
.Ltmp244:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp245:
# %bb.6:                                # %invoke.cont3.i
.Ltmp246:
	movq	%rax, %rbx
	leaq	.L.str.27(%rip), %rsi
	movl	$15, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp247:
# %bb.7:                                # %invoke.cont5.i
.Ltmp248:
	movq	%rbx, %rdi
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp249:
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
.Ltmp250:
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp251:
# %bb.14:                               # %.noexc6.i
	movq	(%r14), %rax
.Ltmp252:
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp253:
.LBB25_15:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
.Ltmp254:
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp255:
# %bb.16:                               # %call1.i.noexc.i
.Ltmp256:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp257:
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
.Ltmp258:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp259:
# %bb.10:                               # %.noexc.i
.LBB25_18:                              # %terminate.lpad.i
.Ltmp260:
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
	.uleb128 .Ltmp238-.Lfunc_begin11        # >> Call Site 1 <<
	.uleb128 .Ltmp259-.Ltmp238              #   Call between .Ltmp238 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin11        #     jumps to .Ltmp260
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
.Ltmp261:
	movq	%r14, %rdi
	callq	_ZN7gpumath5ArrayIdE7to_hostEv
.Ltmp262:
# %bb.1:                                # %invoke.cont.i
	movq	8(%rbx), %r15
	movq	16(%rbx), %rbx
.Ltmp263:
	leaq	.L.str.26(%rip), %rsi
	leaq	16(%rsp), %rdi
	movq	%rbx, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp264:
# %bb.2:                                # %invoke.cont1.i
.Ltmp265:
	leaq	16(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.Ltmp266:
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
.Ltmp267:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp268:
# %bb.6:                                # %invoke.cont3.i
.Ltmp269:
	movq	%rax, %rbx
	leaq	.L.str.27(%rip), %rsi
	movl	$15, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp270:
# %bb.7:                                # %invoke.cont5.i
.Ltmp271:
	movq	%rbx, %rdi
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp272:
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
.Ltmp273:
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp274:
# %bb.14:                               # %.noexc6.i
	movq	(%r14), %rax
.Ltmp275:
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp276:
.LBB26_15:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
.Ltmp277:
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp278:
# %bb.16:                               # %call1.i.noexc.i
.Ltmp279:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp280:
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
.Ltmp281:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp282:
# %bb.10:                               # %.noexc.i
.LBB26_18:                              # %terminate.lpad.i
.Ltmp283:
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
	.uleb128 .Ltmp261-.Lfunc_begin12        # >> Call Site 1 <<
	.uleb128 .Ltmp282-.Ltmp261              #   Call between .Ltmp261 and .Ltmp282
	.uleb128 .Ltmp283-.Lfunc_begin12        #     jumps to .Ltmp283
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
	.p2align	4, 0x90                         # -- Begin function _ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined
	.type	_ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined,@function
_ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined: # @_ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined
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
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movl	(%rdx), %r13d
	testl	%r13d, %r13d
	jle	.LBB27_17
# %bb.1:                                # %omp.precond.then
	movq	%r9, %r14
	movq	%r8, %r12
	movq	%rcx, %r15
	decl	%r13d
	movl	$0, 4(%rsp)
	movl	%r13d, (%rsp)
	movl	$1, 12(%rsp)
	movl	$0, 8(%rsp)
	movl	(%rdi), %ebx
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	20(%rsp), %rax
	leaq	.L__unnamed_2(%rip), %rdi
	leaq	16(%rsp), %rcx
	leaq	12(%rsp), %r8
	leaq	8(%rsp), %r9
	movl	%ebx, %esi
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
	cmpl	%r13d, %eax
	cmovll	%eax, %r13d
	movl	%r13d, (%rsp)
	movslq	4(%rsp), %r9
	cmpl	%r9d, %r13d
	jl	.LBB27_16
# %bb.2:                                # %omp.inner.for.body.lr.ph
	movq	(%r12), %rax
	movq	(%r14), %rcx
	movq	(%r15), %rdx
	movl	%r13d, %edi
	subl	%r9d, %edi
	cmpl	$9, %edi
	jae	.LBB27_4
.LBB27_10:
	movq	%r9, %rsi
.LBB27_11:                              # %omp.inner.for.body.preheader
	movl	%r13d, %edi
	subl	%esi, %edi
	incl	%edi
	testb	$1, %dil
	jne	.LBB27_13
# %bb.12:
	movq	%rsi, %rdi
	cmpl	%esi, %r13d
	jne	.LBB27_14
	jmp	.LBB27_16
.LBB27_4:                               # %vector.memcheck
	leaq	(%rdx,%r9,8), %rsi
	leaq	(%rax,%r9,8), %r8
	movq	%rsi, %r10
	subq	%r8, %r10
	cmpq	$32, %r10
	jb	.LBB27_10
# %bb.5:                                # %vector.memcheck
	leaq	(%rcx,%r9,8), %r8
	subq	%r8, %rsi
	cmpq	$32, %rsi
	jb	.LBB27_10
# %bb.6:                                # %vector.ph
	incq	%rdi
	movq	%rdi, %r8
	andq	$-4, %r8
	leaq	(%r8,%r9), %rsi
	shlq	$3, %r9
	leaq	(%rax,%r9), %r10
	addq	$16, %r10
	leaq	(%rcx,%r9), %r11
	addq	$16, %r11
	addq	%rdx, %r9
	addq	$16, %r9
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB27_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movupd	-16(%r10,%r14,8), %xmm0
	movupd	(%r10,%r14,8), %xmm1
	movupd	-16(%r11,%r14,8), %xmm2
	movupd	(%r11,%r14,8), %xmm3
	movapd	%xmm2, %xmm4
	maxpd	%xmm0, %xmm4
	cmpunordpd	%xmm0, %xmm0
	andpd	%xmm0, %xmm2
	andnpd	%xmm4, %xmm0
	orpd	%xmm2, %xmm0
	movapd	%xmm3, %xmm2
	maxpd	%xmm1, %xmm2
	cmpunordpd	%xmm1, %xmm1
	andpd	%xmm1, %xmm3
	andnpd	%xmm2, %xmm1
	orpd	%xmm3, %xmm1
	movupd	%xmm0, -16(%r9,%r14,8)
	movupd	%xmm1, (%r9,%r14,8)
	addq	$4, %r14
	cmpq	%r14, %r8
	jne	.LBB27_7
# %bb.8:                                # %middle.block
	cmpq	%r8, %rdi
	jne	.LBB27_11
	jmp	.LBB27_16
.LBB27_13:                              # %omp.inner.for.body.prol
	movsd	(%rax,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	movsd	(%rcx,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	cmpunordsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm3
	andpd	%xmm1, %xmm3
	maxsd	%xmm0, %xmm1
	andnpd	%xmm1, %xmm2
	orpd	%xmm3, %xmm2
	movlpd	%xmm2, (%rdx,%rsi,8)
	movq	%rsi, %rdi
	incq	%rdi
	cmpl	%esi, %r13d
	je	.LBB27_16
.LBB27_14:                              # %omp.inner.for.body.preheader16
	subl	%edi, %r13d
	incl	%r13d
	leaq	(%rax,%rdi,8), %rax
	addq	$8, %rax
	leaq	(%rcx,%rdi,8), %rcx
	addq	$8, %rcx
	leaq	(%rdx,%rdi,8), %rdx
	addq	$8, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB27_15:                              # %omp.inner.for.body
                                        # =>This Inner Loop Header: Depth=1
	movsd	-8(%rax,%rsi,8), %xmm0          # xmm0 = mem[0],zero
	movsd	-8(%rcx,%rsi,8), %xmm1          # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	cmpunordsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm3
	andpd	%xmm1, %xmm3
	maxsd	%xmm0, %xmm1
	andnpd	%xmm1, %xmm2
	orpd	%xmm3, %xmm2
	movlpd	%xmm2, -8(%rdx,%rsi,8)
	movsd	(%rax,%rsi,8), %xmm0            # xmm0 = mem[0],zero
	movsd	(%rcx,%rsi,8), %xmm1            # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	cmpunordsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm3
	andpd	%xmm1, %xmm3
	maxsd	%xmm0, %xmm1
	andnpd	%xmm1, %xmm2
	orpd	%xmm3, %xmm2
	movlpd	%xmm2, (%rdx,%rsi,8)
	addq	$2, %rsi
	cmpl	%esi, %r13d
	jne	.LBB27_15
.LBB27_16:                              # %omp.loop.exit
	leaq	.L__unnamed_2(%rip), %rdi
	movl	%ebx, %esi
	callq	__kmpc_for_static_fini@PLT
.LBB27_17:                              # %omp.precond.end
	addq	$16, %rsp
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
.Lfunc_end27:
	.size	_ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined, .Lfunc_end27-_ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined
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

	.type	.L.offload_sizes,@object        # @.offload_sizes
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
.L.offload_sizes:
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	4                               # 0x4
	.quad	4                               # 0x4
	.size	.L.offload_sizes, 32

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

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"__ocml_fmax_f64"
	.size	.L.str.4, 16

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"basic_string::_M_create"
	.size	.L.str.6, 24

	.type	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id,@object # @.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id
.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id:
	.byte	0                               # 0x0
	.size	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id, 1

	.type	.L.offload_maptypes.8,@object   # @.offload_maptypes.8
	.section	.rodata.cst32,"aM",@progbits,32
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

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,@object # @__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE:
	.asciz	"double gpumath::apply_fun_gpu(std::tuple<Array<args>...> &, Array<T> &) [T = double, F = &fmax, args = <double, double>]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE, 121

	.type	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28.region_id,@object # @.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28.region_id
.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28.region_id:
	.byte	0                               # 0x0
	.size	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28.region_id, 1

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE,@object # @__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE:
	.asciz	"double gpumath::apply_fun_gpu(std::tuple<Array<args>...> &, Array<T> &) [T = double, F = &__ocml_fmax_f64, args = <double, double>]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE, 132

	.type	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28.region_id,@object # @.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28.region_id
.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28.region_id:
	.byte	0                               # 0x0
	.size	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28.region_id, 1

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

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE,@object # @__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE
.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE:
	.asciz	"double gpumath::apply_fun_cpu(std::tuple<Array<args>...> &, Array<T> &) [T = double, F = &fmax, args = <double, double>]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE, 121

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

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@object # @__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.asciz	"T gpumath::cpu_abs_diff(const Array<T> &, Array<T> &, std::string) [T = double]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 80

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
	.asciz	"__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14"
	.size	.omp_offloading.entry_name.38, 86

	.type	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14,@object # @.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
	.section	omp_offloading_entries,"aw",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14:
	.quad	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id
	.quad	.omp_offloading.entry_name.38
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14, 32

	.type	.omp_offloading.entry_name.39,@object # @.omp_offloading.entry_name.39
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4, 0x0
.omp_offloading.entry_name.39:
	.asciz	"__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28"
	.size	.omp_offloading.entry_name.39, 130

	.type	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28,@object # @.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28
	.section	omp_offloading_entries,"aw",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28
.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28:
	.quad	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28.region_id
	.quad	.omp_offloading.entry_name.39
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28, 32

	.type	.omp_offloading.entry_name.40,@object # @.omp_offloading.entry_name.40
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4, 0x0
.omp_offloading.entry_name.40:
	.asciz	"__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28"
	.size	.omp_offloading.entry_name.40, 134

	.type	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28,@object # @.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28
	.section	omp_offloading_entries,"aw",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28
.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28:
	.quad	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28.region_id
	.quad	.omp_offloading.entry_name.40
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28, 32

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
	.asciz	"\020\377\020\255\001\000\000\000\200E\000\000\000\000\000\000 \000\000\000\000\000\000\000(\000\000\000\000\000\000\000\002\000\001\000\000\000\000\000H\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\220\000\000\000\000\000\000\000\360D\000\000\000\000\000\000i\000\000\000\000\000\000\000\207\000\000\000\000\000\000\000n\000\000\000\000\000\000\000u\000\000\000\000\000\000\000\000arch\000triple\000amdgcn-amd-amdhsa\000gfx906\000\000\000BC\300\3365\024\000\000\005\000\000\000b\f0$MY\276f\275\373\264O\033\310$D\0012\005\000!\f\000\000~\r\000\000\013\002!\000\002\000\000\000\026\000\000\000\007\201#\221A\310\004I\006\02029\222\001\204\f%\005\b\031\036\004\213b\200\024E\002B\222\013B\244\0202\0248\b\030K\n2R\210Hp\304!#D\022\207\214\020A\222\002d\310\b\261\024 CF\210 \311\0012R\204\030*(*\2201|\260\\\221 \305\310\000\000\000\211 \000\000%\000\000\000\"f\004\020\262B\202I\021RB\202I\221q\302PH\n\t&E\306\005BR&\b\274\311\202`\216\000\fh\216\000\311\213q\2164E\2240\371\310@4\323?\241\"\204\020D\022\210\021\200R\034!\204\230#\b\n\021\304Hs\004\2400YP\224\341,V\202P\224#B\020B\210\020Jr\204XK\b!\312pD(\312\021!\204 \204XE\b\242\fG\214!\200B\324Zk)\316\022B\224\344\b\261\326\022B\224\241\326Z\206\020\302@@\032\210)\000\000\000\000Q\030\000\000\354\001\000\000\033\320$\370\377\377\377\377\001\020\0008\000\244a\035\312A\036\334\241\034\330\001 \334\341\035\332\200\036\344!\034\340\001\036\322\301\035\316\241\r\332!\034\350\001\035\000z\220\207z(\007\200\230\007z\b\207qX\2076\200\007yx\007z(\207q\240\207w\220\2076\020\207z0\007s(\007yh\203yH\007}(\007\000\017\000\202\036\302A\036\316\241\034\350\241\r\306\001\036\352\0018\007s\300\207<\200\003;\000\bz\b\007y8\207r\240\20760\207r\b\007z\250\007y(\207y\000\326 \016\354\240\r\304!\035\350\241\r\322\301\035\346\201\036\346\201\r\326`\034\322\241\r\322\301\035\346\201\036\346\201\r\326\200\034\330\241\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\342\240\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\342\000\016\332 \035\334a\036\350a\036\330`\r\310\341\035\350A\016\332 \035\334a\036\350a\036\330`\r\310\341\035\350\341\016\332 \035\334a\036\350a\036\330`\r\310\001\036\340\201\r\326\340\034\314\001\037\360\240\r\322\301\035\346\201\036\346\201\r\326\340\034\314\001\037\362\240\r\322\301\035\346\201\036\346\201\r\326`\036\332\240\035\312\241\035\344\241\034\302\201\035\350!\035\332\241\034\330`\r\346\241\r\332\241\034\332\201\036\322\241\035\312\241\r\322\301\035\346\201\036\330`\r\356!\034\354\241\034\314A\036\336\301\035\350a\036\322A\037\312\301\016\350\000 \352\301\035\322\301\034\336A\036\332\241\r\356\341\035\344a\035\332\340\034\344\341\035\352\001\036\332`\036\322A\037\312\001\240\007y\250\207r\00060B\000\220\002p\006A@\004i@l \006\001 \205\r\f1\000\244\000\234A\020\020A\032\020\033\230\202\000H\0018\203  \2024 6D\306\377\377\377\377\017\200)\000\247\000\370\001\360\007\200\004\364A`\013\303\006\342\b\000>\330@ \002\260l \222\377\377\377\377\037\000i\203\210(\377\377\377\377?\000\002\000\007\200D\270\303;\264\001=\310C8\300\003<\244\203;\234C\033\264C8\320\003:\000\364 \017\365P\016\0001\017\364\020\016\343\260\016m\000\017\362\360\016\364P\016\343@\017\357 \017m \016\365`\016\346P\016\362\320\006\363\220\016\372P\016\000\036\000\004=\204\203<\234C9\320C\033\214\003<\324\003p\016\346\200\017y\000\007v\000\020\364\020\016\362p\016\345@\017m`\016\345\020\016\364P\017\362P\016\363\000\254A\034\330A\033\210C:\320C\033\244\203;\314\003=\314\003\033\254\3018\244C\033\244\203;\314\003=\314\003\033\254\0019\260C\033\244\203;\314\003=\314\003\033\254\0019\274\003=\304A\033\244\203;\314\003=\314\003\033\254\0019\274\003=\304\001\034\264A:\270\303<\320\303<\260\301\032\220\303;\320\203\034\264A:\270\303<\320\303<\260\301\032\220\303;\320\303\035\264A:\270\303<\320\303<\260\301\032\220\003<\300\003\033\254\3019\230\003>\340A\033\244\203;\314\003=\314\003\033\254\3019\230\003>\344A\033\244\203;\314\003=\314\003\033\254\301<\264A;\224C;\310C9\204\003;\320C:\264C9\260\301\032\314C\033\264C9\264\003=\244C;\224C\033\244\203;\314\003=\260\301\032\334C8\330C9\230\203<\274\203;\320\303<\244\203>\224\203\035\320\001\260AY\002 \001\026\200\024\200j\003\302\b@\002,\000\265\201h\006\200\0246\020\016\001\220\302\006\350)\200\005 \005\340\f\200*\b\210 \r\210\r\bd\000\013@\n\000\035l\200\242\003X\000R\000\316\000\250\202\200\b\322\200\330\000I\b\260\000\244\000\234\001P\005\001\021\244\001\261\201\230\376\377\377\377\177\000\204\r\f5\000\244\000\234A\020 A\032 \033\230\212\000H\0018\203 @\2024@6@\326\001,\000)\000g\000TA\200\004i\200l\200.\004X\000R\000\316\000\250\202\000\t\322\000\3310a\377\377\377\377?\000\246\000\234\002\340\007\300\037\000\022P\007@\037\004\266\000l \262\000 \205\r$\242\375\377\377\377\377\000\b\300\032\000p\000H\204;\274C\033\320\203<\204\003<\300C:\270\3039\264A;\204\003=\240\003@\017\362P\017\345\000\020\363@\017\3410\016\353\320\006\360 \017\357@\017\3450\016\364\360\016\362\320\006\342P\017\346`\016\345 \017m0\017\351\240\017\345\000\340\001@\320C8\310\3039\224\003=\264\3018\300C=\000\347`\016\370\220\007p`\007\000A\017\341 \017\347P\016\364\320\006\346P\016\341@\017\365 \017\3450\017\300\032\304\201\035\264\2018\244\003=\264A:\270\303<\320\303<\260\301\032\214C:\264A:\270\303<\320\303<\260\301\032\220\003;\264A:\270\303<\320\303<\260\301\032\220\303;\320C\034\264A:\270\303<\320\303<\260\301\032\220\303;\320C\034\300A\033\244\203;\314\003=\314\003\033\254\0019\274\003=\310A\033\244\203;\314\003=\314\003\033\254\0019\274\003=\334A\033\244\203;\314\003=\314\003\033\254\0019\300\003<\260\301\032\234\2039\340\003\036\264A:\270\303<\320\303<\260\301\032\234\2039\340C\036\264A:\270\303<\320\303<\260\301\032\314C\033\264C9\264\203<\224C8\260\003=\244C;\224\003\033\254\301<\264A;\224C;\320C:\264C9\264A:\270\303<\320\003\033\254\301=\204\203=\224\2039\310\303;\270\003=\314C:\350C9\330\001\035\000\033\210\255\000Ha\003\302\035\300\002\220\002Pm@:\004X\000R\000\252\r)\342\375\377\377\377\377\000\254\001`\n\200\037\000\022\320\007\201-\000\204;\274C\033\320\203<\204\003<\300C:\270\3039\264A;\204\003=\240\003@\017\362P\017\345\000\020\363@\017\3410\016\353\320\006\360 \017\357@\017\3450\016\364\360\016\362\320\006\342P\017\346`\016\345 \017m0\017\351\240\017\345\000\340\001@\320C8\310\3039\224\003=\264\3018\300C=\000\347`\016\370\220\007p`\007\000A\017\341 \017\347P\016\364\320\006\346P\016\341@\017\365 \017\3450\017\300\032\304\201\035\264\2018\244\003=\264A:\270\303<\320\303<\260\301\032\214C:\264A:\270\303<\320\303<\260\301\032\220\003;\264A:\270\303<\320\303<\260\301\032\220\303;\320C\034\264A:\270\303<\320\303<\260\301\032\220\303;\320C\034\300A\033\244\203;\314\003=\314\003\033\254\0019\274\003=\310A\033\244\203;\314\003=\314\003\033\254\0019\274\003=\334A\033\244\203;\314\003=\314\003\033\254\0019\300\003<\260\301\032\234\2039\340\003\036\264A:\270\303<\320\303<\260\301\032\234\2039\340C\036\264A:\270\303<\320\303<\260\301\032\314C\033\264C9\264\203<\224C8\260\003=\244C;\224\003\033\254\301<\264A;\224C;\320C:\264C9\264A:\270\303<\320\003\033\254\301=\204\203=\224\2039\310\303;\270\003=\314C:\350C9\330\001\035\000\033\242\357\377\377\377\377\007\340\024\000?\000\376\000\220\200:\000\372 \260\005`\303\001\006\377\377\377\377?\000R`\013\177\260\201\b\003\0028\203\r\204\030\024\300\031l \306\300\000\316`\003A\006\007p\006\033\2102@\2003\330@\230\301\377\377\377\377\017\300\032l \316\000\000H\001I\030\000\000\030\000\000\000\023\212@\030\210b\302`\034\310\204 \231\220(\013\3238\017\024I\023\202iB\021\b\003UMH\224\205i\234\007\262\256\t\0016\241\b\262\241q&$\332\3024\316\006q\335\204\301\313\206\t\211\2620\215\263A\\7!\370&\004`0\241H\302@\f\306\200\f&\f\311\030\224\301\004\302\f\316 \033\000\000\023\242ph\007r8\207qp\2076\b\207v \2076\b\207v \007t\230\207p\330\000\033\345\320\006\360\240\007v@\007z`\007t\320\006\360\020\007z`\007t\240\007v@\007m\000\017r\240\007s \007z0\007r\320\006\3600\007z0\007r\240\007s \007m\000\017t\240\007v@\007z`\007t\320\006\360P\007z0\007r\240\007s \007m\000\017v\240\007s \007z0\007r\320\006\360p\007z\020\007v\000\007z \007u`\007z \007u`\007z0\007r\320\006\360\200\007z\020\007r\200\007z\020\007r\200\007m\220\016v@\007z`\007t\320\006\366\020\007v\240\007q`\007m`\017r@\007z0\007r\320\006\3660\007r\240\007s \007m`\017t\200\007z`\007t\320\006\366\220\007v\240\007q \007x\320\006\366\020\007y \007z \007u`\007m`\017rP\007v\240\007rP\007v\320\006\366P\007q \007zP\007q \007m`\017q\000\007r@\007z\020\007p \007t\320\006\366 \007p@\007x\240\007r\000\007t\200\007m\340\016s \007z`\007t\320\006\2630\007r\320\006\241P\007mp\nq\320\006\356\220\016zp\007z\200\007+\032v`\007{h\0077h\207r\240\207p \207p\240\207pPz@\210\220\f2d\244\310\220\240\021\302\344\324\231\313\307/{X\036\226\237]c8|\307\004P\301\221\006\021\000\004\200\000\000\000\020P\000\260c\242\316 8\322 \002\200\000\020\000\000\000\002\n\000vL{\220\006\301\221\006\021\000\004\200\000\000\000\020P\000\260c\"\0070\b\2164\210\000 \000\004\000\000\200\200\002\200\035\023I\230Ap\244A\004\000\001 \000\000\000\004\024\000\354\230\324\342\f\210!\024\222\000\000\200\000\000\000 \240\000`\307\024\033gP\034\242\220\020\000\000\004\000\000\000\001\005\000;&\3748\203\342\030\205\204\000\000 \000\000\000\b(\000\3301\375\310\031\024\007)$\004\000\000\001\000\000@@\001\300\216\311T~a8\364\000\002\000\001\000\000\000\000\002\n\000vLe\363\013\303\241\007\020\000\b\000\000\000\000\020P\000\260c\"\241\225\030\016=\200\000@\000\000\000\000\200\200\002\200\035\323K\275\304p\350\001\004\000\002\000\000\000\000\004\024\000\354\230|\f\035\206c\017 \000\000\000\001\000\000\000\240\000`\307dr\3500\034{\000\001\000\000\b\000\000\000\000\005\000;&\367\243\211\341\330\003\b\000\000@\000\000\000\000(\000\3301\211d\200\023\303\261\007\020\000\000\200\000\000\000\000P\000@M\005\t\033\245 pH\305\246A- \273\000D\001\000\b\200\000\000\000\000\004\000\005\f\251B6\220\024 \000\000\000\000\000\001\000\000\000\000\000\n\030R\315l`5@\000\b\000\000\000\000\000\000\000\000\000\0240\244J\333\200j\200\000\020\000\000\000\000\000\000\000\000\000(`H\325\267\001\0328@\000\f\000\000\000\002\000\000\000\000\000\0240\244*\337\340{\200\000\030\000\000\000\004\000\000\000\000\000(`HE\302\301;@\0000\020\000\000\000\000\000\000\000\020\000\0240\244\232\347\000{\200\000\030\000\000\000\004\000\000\000\000\000(`H\265\322A\027\001\0010\000\000\000\b\000\000\000\000\000P\300\220\n\255\003I\002\002\240\000\000\000\020\000\000\000\000\000\240\200!\225^\007\330\004\004\300\000\000\000 \000\000\000\000\000@\001C*\331\016(\n\b\000\000\000\000@\000\000\000\000\000\200\002\206T\346\035\324\002\262\013@d\000\200\000\b\000\000\000@\000P\300\220j\317\203w\200\000`8\000\000\000\000\000\000\000 \000(`H\245\366\001d\001\001\200\000\000\000\000\000\000\000\000\000P\300\220J\357\203\220\270v\001\210\022\000\020\000\001\000\000\000\b\000\n\030R\355\241\260\023\030\000\f\n\000\000\000\000\000\000\000\004\000\005\f\251lS 2 \000\026\000\000\000\001\000\000\000\000\000\n\030R\351\246P\022\327.\000Q\002\000\002 \000\000\000\000\001@\001C\252_\025~\002\003\200\201\001\000\000\000\000\000\000\200\000\240\200!\225\377\nO\006\004\000\002\000\000\000\000\000\000\000\000@\001C\252\026\026\032\r\b\200\006\000\000\000\000\000\000\000\000\200\002$6\b\024\346k\000\000\310\002\001\000\036\000\000\0002\036\230\034\031\021L\220\214\t&G\306\004C\n#\000\305R\004E\bR\204\b\345\031P\356\350\266\211\013\205S\006\305\216n\233\270P\034%P\240\006\205P\016eV\0204\212`\004\200\326\b\000\tc\240`\f\022\214\001\2031X \242\326\256\356^\273\337w\367\256\356^\273\337w\367\016\266\203\355vT\260@\251P\251\002\026\250\025*U\300\002\305B\245\nd\220\340\365|?\000\261\030\000\000\306\000\000\0003\b\200\034\304\341\034f\024\001=\210C8\204\303\214B\200\007yx\007s\230q\f\346\000\017\355\020\016\364\200\0163\fB\036\302\301\035\316\241\034f0\005=\210C8\204\203\033\314\003=\310C=\214\003=\314x\214tp\007{\b\007yH\207pp\007zp\003vx\207p \207\031\314\021\016\354\220\016\3410\017n0\017\343\360\016\360P\0163\020\304\035\336!\034\330!\035\302a\036f0\211;\274\203;\320C9\264\003<\274\203<\204\003;\314\360\024v`\007{h\0077h\207rh\0077\200\207p\220\207p`\007v(\007v\370\005vx\207w\200\207_\b\207q\030\207r\230\207y\230\201,\356\360\016\356\340\016\365\300\016\3540\003b\310\241\034\344\241\034\314\241\034\344\241\034\334a\034\312!\034\304\201\035\312a\006\326\220C9\310C9\230C9\310C9\270\3038\224C8\210\003;\224\303/\274\203<\374\202;\324\003;\260\303\f\307i\207pX\207rp\203th\007x`\207t\030\207t\240\207\031\316S\017\356\000\017\362P\016\344\220\016\343@\017\341 \016\354P\0163 (\035\334\301\036\302A\036\322!\034\334\201\036\334\340\034\344\341\035\352\001\036f\030Q8\260C:\234\203;\314P$v`\007{h\0077`\207wx\007x\230QL\364\220\017\360P\0163\036j\036\312a\034\350!\035\336\301\035~\001\036\344\241\034\314!\035\360a\006T\205\2038\314\303;\260C=\320C9\374\302<\344C;\210\303;\260\303\214\305\n\207y\230\207w\030\207t\b\007z(\007r\230\201\\\343\020\016\354\300\016\345P\016\3630#\301\322A\036\344\341\027\330\341\035\336\001\036fH\031;\260\203=\264\203\033\204\3038\214C9\314\303<\270\3019\310\303;\324\003<\314H\264q\b\007v`\007q\b\207qX\207\031\333\306\016\354`\017\355\340\006\360 \017\3450\017\345 \017\366P\016n\020\016\3430\016\3450\017\363\340\006\351\340\016\344P\016\3700#\342\354a\034\302\201\035\330\341\027\354!\035\346!\035\304!\035\330!\035\350!\037f \235;\274C=\270\0039\224\2039\314X\274pp\007wx\007z\b\007zH\207wp\207\031\313\347\016\3570\017\341\340\016\351@\017\351\240\017\3450\303\001\003s\250\007w\030\207_\230\207pp\207t\240\207t\320\207r\230\201\204A9\340\3038\260C=\220C9\314@\304\240\035\312\241\035\340A\036\336\301\034f$c0\016\341\300\016\3540\017\351@\017\3450C!\203u\030\007sH\207_\240\207|\200\207r\230\261\224\001<\214\303<\224\3038\320C:\274\203;\314\303\214\305\fH!\025Ba\036\346!\035\316\301\035R\201\024f g@\016\342p\016n@\016\345`\0163\0344@\207r\b\007x\b\007v`\207w\030\207yH\007z(\207\031G\032\314\203<\214\003;\274\3038\000\000\000\000y \000\000&\001\000\000r\036H C\210\f\031\tr2H #\201\214\221\221\321D\240\020(d<12B\216\220!\2438Q~\005\344\000\016t@\007\206\246\030MrH\350P\022\303\363,\006\000_ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2_kernelamdgpu_code_object_versionwchar_sizeopenmpopenmp-devicePIC LevelThinLTOEnableSplitLTOUnitclang version 17.0.0 (https://github.com/llvm/llvm-project.git 644a4067312448b17ec2109ccfd0dd02a2f789c8)AMD clang version 16.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.5.0 23144 5fe166b8eac068df976282939b880a75a3a63014)intomnipotent charSimple C++ TBAAany pointerdouble\000\000\246k\000\000\000\000\000\0000\202\020\240\301\bB\320\006#\b\201\033\214 \004o0\202\020\300\301\bB\240\006#\bA\034\214 \004r0\202\020\314\301\b\202 \215 \b\336\b\202\020\006#\b\002\031\214 \004t0\202\020\324\301\bB`\007#\b\301\035\214 \004x0\202\260\354\301\f\007UY\301Ea3\034Te\t\027\225\315pP\2256l\0247\303AU\032qQ\324\fCWp3\f^\301\3150|\0057\303\000\006\0057\303\300\031a0\303\300\035b0\3030\006\b\031\3140\214AB\0063\fe\240p3\f\334B\3150p\f7\203\220Q3\004\315\f\2013C\020\3150@y`\0063\f\217\036\230\301\f\303\036\354\201\031\3140Hz`\0063\f}\320\007f0\3030\351\201\031\3140\374\301\037\230\301\265\001 \006b \006b \006b \006b \006\034'\006b \006b \006b \006b\240\007z\240\007z \006b \006h\200\006h\340\006n\200\006b \006\234eYn\340\006t\340\006t\340\0062\022\230\240\204\336\332\340\276\336\314\314\330\336\302\310\\\322\334\314\336F!\314\340\f\320 \r\022r\263\263ks\tss{\243\013\243K{s\233\033\205P\2035`\2036\310\210\215\315\256\315\245\355\215\254\216\255\314\305\214-\354ln\224\303\r\336\000\016\342@\016\346\200\016rbc\263ksaKs[+\223sy\203\243K{s\233\033\005H\351\r\256\314m\214\315\345m\214\315\305\256Ln.\355\315m\224\240\016Rac\263ksI#+s\243\033E\260\203;\000\000\251\030\000\000'\000\000\000\013\nr(\207w\200\007zXp\230C=\270\3038\260C9\320\303\202\346\034\306\241\r\350A\036\302\301\035\346!\035\350!\035\336\301\035\0264\343`\016\347P\017\341 \017\344@\017\341 \017\347P\016\364\260\200\201\007y(\207p`\007vx\207q\b\007z(\007rXp\234\3038\264\001;\244\203=\224\303\002k\034\330!\034\334\341\034\334 \034\344a\034\334 \034\350\201\036\302a\034\320\241\034\310a\034\302\201\035\330a\301\001\017\364 \017\341P\017\364\200\016\013\210u\030\007sH\007\000\000\000\000\321\020\000\000\032\000\000\000\007\314<\244\203;\234\003;\224\003=\240\203<\224C8\220\303\001pP\204\3039\224\203;\320\303\001\023\016\347P\016\356@\017m\360\016\356P\016m\020\016\363p`\274\203;\224C\033\204\303<\034@\367\360\016\362\260\016\347 \017\357P\017\360\320\006\357\340\016\345\320\006\3410\017\007\311=\274\203<\254\3039\310\303;\324\003<\000\000a \000\000\032\001\000\000\023\004H,\020\000\000\000\007\000\000\000\024j\240l\003J\201\322\b\000\255B(\260b a\f\f\214\301\301\b\000\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n3\021\\0\007\2440bp\f!\b\006J) \0373\334\020@`0\313 \004\201f\005x\304\240\030B\020\f\246?XF\f\f\000\004\301\240A\005\247\310B0\ra`P\201\300p\203p\007f0\3130\034A.\202\263\021\234\217\340l\004\217\030\030\016\b\202A\003\013W4l@D|0\000#\006\306\000\202`\320\300\302\005\r\033\020\2201\000#\006\306\000\202`\320\300\302\365\f\033\020O\034\f\300\210\2011\200 \0304\260p9\303\006\204\303\007\0030b@\f!\b\006\216+\214\0304\017\b\202\301\343\n\224\262\t\003Q\310A@Q\030#\006\006\000\202`\240\375A\200\f\033\020S0\000D\2051\334\020,h0\313@\030A\347\203\024\nv\320\3710\211\002(t>P\243\260\007\235\017\025)\334A\347\203U\nb0KP\fT\004\016\021\025\003\025\201DTE\n+RX\221\202\320a\003\202\013\b \005\241\303\006\304\022\020\300\260\001\241\274\001\001\f\033\020\211\033\020\300\260\001\201\264\001\001\f\033\020\007\033\020\300\210A\003\201 \030H\271@\006Y(\254\301\032\360\202\030`e@_\030$\006a` \200\300\260\001A\006\301\000\320\030\204\201\001\001\002#\006\006\000\202`\240\311B\260\r\033\020f\020\f\300p\003\321\241\301,Ca\004#\006\306\000\202`\020\205\203\032\200\301,\3011b`\f \b\006\2159\270A\031\214\030\030\003\b\202Ac\016n`\006#\006\306\000\202`\320\230\203\033\234\301\210\2011\200 \0304\346\340\006h0b`\000 \b\006\2159\264\001\031\214\030\030\003\b\202\001\345\013k \n\263\004A8\020\000\000}\000\000\000ff\bN3\370\210\345!\202\323\f\365\355#7 9\314\343?\021!8\315\340O\007\321\370\210\2711\276\303<>R\3714\356#\206DH\023\361X\226C\\\204\360S\022\021\375\2023\020vD\\\f\322XU\343;\314\343KS\204\f\204\217\230\235\001\f\303\356#\206g\000\303\300\373\210i5\013\321\030\323\341\033\213\023\000\213]U\002\360LTD\f\177\005D\322\017\fC$\371\210\025\031\013\321\030\323aS\216\3570\217/8L\340/\201\217\030\331\324T\317t\375\r\305\374\323\021\021\300 \371\210\031\031\003Q=Sdz\206\300<\271\217\230\225\343;\314\343#\322\277\000\322\344#\007P\020\315\024a6V\371\016\363\370\210\364/\2004\371\200$\000\322\344#&V\371\016\363\370\202\303\004\376\022\370\200$\000\322\344#G\2409\314\343#MCD~\341D~\340\f\230\277D\376s\370\210qq\002\360LTD\f\177\005D\322\017\fC$\371\200$\000\322\344#\346eHT`\373\210\2351\276\303<>R\371t\355#wp\016\377\3570\317\357\024\305\342\000\003\322\030?^\3749\337\353\003p\353\377?\237\273\361P\f0\035\365M5H\341D\314\037\001\215A\210\210\347U\353\311\376\271\026E\000&\266\277\347\261\366\317\332\377\277\330\374\3570\317\357P\323\2024\304\340\023\0272\331W!0\217\217\234\300CID\364\013\316@\370D3E\230Q9\276\303<\276\3400\201O\005>bo\21549\021\301\020\221A\334>r\001\212\3400\214\323\370\0211\235\301\3430\217\2778\316\343\023\0272\371\210\205U\276\303<\276\3400\201O\005> \t\2004\371\210\241\035\002\363\344\266\217\\\001\3450\217\2174\r\021\371\205\023\371\2013`>b`\224\3570\217/M\0212\020> \t\2004\371\b\000\000\000\000\0011\000\000\030\000\000\000[\206&\330\203-\203\025\354\301\226\001\013\366`\313\240\005{\260e\340\202=\3302\204A\260\007[\0068\b\372`\313 \007A\037l\031\346 \350\203-\003\035\004}\260e\250\203\240\017\266\fv\020\364\301\226\001\017\202=\3302\344A\260\007[\206=\b\366`\313\300\007\301\036l\031\376 \330\003\000\000\000\000\000\000\000\000a \000\000\255\000\000\000\023\004F,\020\000\000\000\004\000\000\000\024J\210V!\2200\006\b\306\340\000\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n\304\2041\334\020\270\201\031\3142\004E\220\204\340$\004\347!8\023\301#\006\306\000\202`\320\234B\243\214\030\030\003\b\202As\nM\222T\200\244\002\f\033\020\2140\000\303\006\304\022\f\300\210\2011\200 \0304\251\360(\303\006\204\242\006\0030b`\f \b\006M*<\311\260\001\221\324\301\000\020\026\306\210A\363\200 \030<\245\360\004\221A\024\307\032\254\0015ad\260d\270!\300\304`\226\201\020\002r\302\230%\030\006*\026C\210\206\f\002P\026\006ea`0\210\000\006\003\b\364 x\306\260\001\021\b\003\200\210\001\002\031,\031n\b\306@\ff\031\210!\03010\006\020\004\203H\026\270g\304\300\030@\020\f\232[\360\260\021\003c\000A0hn\301\313F\f\214\001\004\301\240\271\005O\03310\006\020\004\203\346\026\274m\226\240\320p \000S\000\000\000f\264\370\201C5\303?!\203o_\206\3404U\276\033W!8Mu\333\330\2014C\005D\222I\035\276\303<>\025\234\000\3460\217\2174\r\021\371\205\023\371\2013`\376\022\371\317aj\205\3404UnI\306B4\306t\230\2221\020\3253EF\305\370\016\363\370\210\364/\2004\031\326\344;\314\343#\322\277\000\322\344\003\222\000H\323\001\024D3E\230\245\021\3000\364\027\0009\314\343?\021!8\315\340O\007\321\030R\343?\021Q!\016%\371T\340\033X\"0\217\3567\316\304\333\032\"0\217\3567\316dL\2044\021\217m\021\202\323T\206\206\000Q\004`\310p\331\022q1HcE\214o,N\000,\377\204\f\376\0214\016\363\370\213\343<>q!\223]I\276\303<\2764E\310@\370\200$\000\322t\005\217\303<\376\023\021\202\323\f>\321\fv\324\370ODT\210CI\376\022\370&v\bNS\3455mZ\216\3570\217\277\004> \t\2004\331\031\001\f\003\177\003\222\303<>\3224D\344\027N\344\007\316\200Y\226\343;\314\343S\201\017H\002 M6\265\370\016\363\370\322\024!\003af\004C-\273Y\r\002\363X\324\341;\314\343/\001\000\0011\000\000\016\000\000\000[\006\"\330\203-\303\023\354\301\226\001\n\366`\313 \005{\260e\240\202=\3302T\301\036l\031\256`\017\266\f[\260\007[\206/\330\203-\003\030\004{\260e \203`\017\000\000\000\000\000a \000\000\032\001\000\000\023\004H,\020\000\000\000\007\000\000\000\024j\240l\003J\201\322\b\000\255B(\260b a\f\f\214\301\301\b\000\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n3\021\\0\007\2440bp\f!\b\006J) \0373\334\020@`0\313 \004\201f\005x\304\240\030B\020\f\246?XF\f\f\000\004\301\240A\005\247\310B0\ra`P\201\300p\203p\007f0\3130\034A.\202\263\021\234\217\340l\004\217\030\030\016\b\202A\003\013W4l@D|0\000#\006\306\000\202`\320\300\302\005\r\033\020\2201\000#\006\306\000\202`\320\300\302\365\f\033\020O\034\f\300\210\2011\200 \0304\260p9\303\006\204\303\007\0030b@\f!\b\006\216+\214\0304\017\b\202\301\343\n\224\262\t\003Q\310A@Q\030#\006\006\000\202`\240\375A\200\f\033\020S0\000D\2051\334\020,h0\313@\030A\347\203\024\nv\320\3710\211\002(t>P\243\260\007\235\017\025)\334A\347\203U\nb0KP\fT\004\016\021\025\003\025\201DTE\n+RX\221\202\320a\003\202\013\b \005\241\303\006\304\022\020\300\260\001\241\274\001\001\f\033\020\211\033\020\300\260\001\201\264\001\001\f\033\020\007\033\020\300\210A\003\201 \030H\271@\006Y(\254\301\032\324\202\030`e@_\030$\006a` \200\300\260\001A\006\301\000\320\030\204\201\001\001\002#\006\006\000\202`\240\311B\260\r\033\020f\020\f\300p\003\321\241\301,Ca\004#\006\306\000\202`\020\205\203\032\200\301,\3011b`\f \b\006\2159\270A\031\214\030\030\003\b\202Ac\016n`\006#\006\306\000\202`\320\230\203\033\234\301\210\2011\200 \0304\346\340\006h0b`\000 \b\006\2159\264\001\031\214\030\030\003\b\202\001\345\013k \n\263\004A8\020\000\000}\000\000\000ff\bN3\370\210\345!\202\323\f\365\355#7 9\314\343?\021!8\315\340O\007\321\370\210\2711\276\303<>R\3714\356#\206DH\023\361X\226C\\\204\360S\022\021\375\2023\020vD\\\f\322XU\343;\314\343KS\204\f\204\217\230\235\001\f\303\356#\206g\000\303\300\373\210i5\013\321\030\323\341\033\213\023\000\213]U\002\360LTD\f\177\005D\322\017\fC$\371\210\025\031\013\321\030\323aS\216\3570\217/8L\340/\201\217\030\331\324T\317t\375\r\305\374\323\021\021\300 \371\210\031\031\003Q=Sdz\206\300<\271\217\230\225\343;\314\343#\322\277\000\322\344#\007P\020\315\024a6V\371\016\363\370\210\364/\2004\371\200$\000\322\344#&V\371\016\363\370\202\303\004\376\022\370\200$\000\322\344#G\2409\314\343#MCD~\341D~\340\f\230\277D\376s\370\210qq\002\360LTD\f\177\005D\322\017\fC$\371\200$\000\322\344#\346eHT`\373\210\2351\276\303<>R\371t\355#wp\016\377\3570\317\357\024\305\342\000\003\322\030?^\3749\337\353\003p\353\377?\237\273\361P\f0\035\365M5H\341D\314\037\001\215A\210\203\347U\353\311\376\271\026E\000&\266\277\347\261\366\317\332\377\277\324\370\3570\317\357P\323\2024\304\340\023\0272\331W!0\217\217\234\300CID\364\013\316@\370D3E\230Q9\276\303<\276\3400\201O\005>bo\21549\021\301\020\221A\334>r\001\212\3400\214\323\370\0211\235\301\3430\217\2778\316\343\023\0272\371\210\205U\276\303<\276\3400\201O\005> \t\2004\371\210\241\035\002\363\344\266\217\\\001\3450\217\2174\r\021\371\205\023\371\2013`>b`\224\3570\217/M\0212\020> \t\2004\371\b\000\000\000\000\0011\000\000\030\000\000\000[\206&\330\203-\203\025\354\301\226\001\013\366`\313\240\005{\260e\340\202=\3302\204A\260\007[\0068\b\372`\313 \007A\037l\031\346 \350\203-\003\035\004}\260e\250\203\240\017\266\fv\020\364\301\226\001\017\202=\3302\344A\260\007[\206=\b\366`\313\300\007\301\036l\031\376 \330\003\000\000\000\000\000\000\000\000a \000\000\256\000\000\000\023\004F,\020\000\000\000\004\000\000\000\024J\210V!\2200\006\b\306\340\000\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n\304\2041\334\020\270\201\031\3142\004E\220\204\340$\004\347!8\023\301#\006\306\000\202`\320\234B\243\214\030\030\003\b\202As\nM\222T\200\244\002\f\033\020\2140\000\303\006\304\022\f\300\210\2011\200 \0304\251\360(\303\006\204\242\006\0030b`\f \b\006M*<\311\260\001\221\324\301\000\020\026\306\210A\363\200 \030<\245\360\004\221A\024\307\032\254\0015ad\260d\270!\300\304`\226\201\020\002r\302\230%\030\006*\026C\210\206\f\002PVI\n\325H\253d\304\340\000@\020\f\254S\020\202\241W\3013\206\r\210@ \000D\f\020\310`\311pC0\006b0\313@\f\301\210\2011\200 \030D\262\300=#\006\306\000\202`\320\334\202\207\215\030\030\003\b\202As\013^6b`\f \b\006\315-x\332\210\2011\200 \0304\267\340m\263\004\205\206\003\001\000\000R\000\000\000f\264\370\201C5\303?!\203o_\206\3404U\276\033W!8Mu\333\330\2014C\005D\222I\035\276\303<>\025\234\000\3460\217\2174\r\021\371\205\023\371\2013`\376\022\371\317aj\205\3404UnI\306B4\306tXY!8M\265\033\025\343;\314\343#\322\277\000\322dX\223\3570\217\217H\377\002H\223\017H\002 M\007P\020\315\024a\246d\fD\365L\221\245\021\3000\364\027\0009\314\343?\021!8\315\340O\007\321\030R\343?\021Q!\016%\371T\340\033X\"0\217\3567\316\304\333\032\"0\217\3567\316dL\2044\021\217m\021\202\323T\206\206\000Q\004`\310p\331\022q1HcE\214o,N\000,\377\204\f\376\0214\016\363\370\213\343<>q!\223]I\276\303<\2764E\310@\370\200$\000\322t\005\217\303<\376\023\021\202\323\f>\321\fv\324\370ODT\210CI\376\022\370&v\bNS\3455mZ\216\3570\217\277\004> \t\2004\335\200\3440\217\2174\r\021\371\205\023\371\2013`\226\345\370\016\363\370T\340\003\222\000H\223M-\276\303<\2764E\310@\230\325 0\217E\035\276\303<\376\022\000\000\0011\000\000\016\000\000\000[\006\"\330\203-\303\023\354\301\226\001\n\366`\313 \005{\260e\240\202=\3302T\301\036l\031\256`\017\266\f[\260\007[\206/\370\203-C\030\004\177\260e \203\340\017\000\000\000\000\000a \000\000.\001\000\000\023\004H,\020\000\000\000\b\000\000\000\024j\240l\003J\201\322\b\000\255B(\260\362\377\377\377\377(\006\022\306\300\300\030\034\214\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n3\021\\0\007\2440bp\f!\b\006\212) `\320\f7\004\021\030\3142\bA\240#\006\305\020\202`0\375\201rW\243#\006\006\000\202`\320\244\302Sd!8\263\000\030X 0\334 \340\201\031\3142\fG\220\213\340l\004\347#8\033\301#\006\206\003\202`\320\304\002\026\r\033\020Q\037\f\300\210\2011\200 \0304\261\200A\303\006\004d\f\300\210\2011\200 \0304\261\200=\303\006\304#\007\0030b`\f \b\006M,`\316\260\001\341\364\301\000\214\030\020C\b\202\201\363\n#\006\315\003\202`\360\274\002\265p\302@\024s\020P\024\306\210\201\001\200 \030h\240\020 \303\006\304\024\f\000Qa\f7\004\013\032\3142\020F\320\371 \211\302\035t>L\243\020\n\t\t\355|\250J\241\017:\037,S\310\203\316\207\353\024\310`\226\240\030\250\b \"*\006*\002\212\250\212\024V\244\260\"\005\241\303\006D\027\020@\nB\207\r\b& \200a\003bQ\b`\330\200H\340\200\000\206\r\b\344\r\b`\330\2008\334\200\000F\f\032\b\004\301@\332\2052\330F\241\r\332\200\026\306 3\003\002\2030h\f\302\300@\000\201a\003\242\f\202\001 2\b\003\003\002\004F\f\f\000\004\301@\243\205\200\0336 \316 \030\200\341\006\302C\203Y\206\302\bF\f\214\001\004\301 \032\2075\020\203Y\202c\304\300\030@\020\f\032t\200\0033\03010\006\020\004\203\006\035\340\340\fF\f\214\001\004\301\240A\0078@\203\021\003c\000A0h\320\001\016\322`\304\300\000@\020\f\032tx\2032\03010\006\020\004\003\n\034\330\200\024f\t\202p \000\000\000\221\000\000\000\266\207\bN3\324\267\217\030\222\2014\317\024\3317 9\314\343?\021!8\315\340O\007\321\370\210\3011\276\303<>R\3714\356#f\325\370\016\363\370\322\024!\003\341#\246\345\020\027!\374\224DD\277\340\f\204\341\031\3000\354>bz\0060\f\274\217\230\027\031,DcL\207\017\fC\344K\221\003\370\264O\373\3045E\2000\371SD5\202\217\030V%\000\317DE\304\360W@$\375\3000D\222\217\230\221\341P\3233Evd \3153E\265\025\031\013\321\030\323aT\216\3570\217/8L\340/\201\217X\331\324T\317t\375\r\305\374\323\021\021\300 \371\210\361\031\002\363\344>bW\216\3570\217\217H\377\002H\223\217\034@A4S\204\031Y\345;\314\343#\322\277\000\322\344\003\222\000H\223\217\330X\345;\314\343\013\016\023\370K\340\003\222\000H\223\217\034\201\3460\217\2174\r\021\371\205\023\371\2013`\376\022\371\317\341#\326\305\t\3003Q\0211\374\025\020I?0\f\221\344\003\222\000H\223\217\330\227!Q\201\355#\206\306\370\016\363\370H\345\323\265\217\030X!0\217\217\334\301L\374\277\303<\277S\024\213\003\fHc\374x\361\347|\257\017\300\275\377\377|\356\306C1\300t\3247\360<\013\366\027T\363\033\017%\016\261P\245\3370\f\0360\224\377\214\027\fpy\3368\f\236\347\r+;\345\023\365,\2048v\317\311\376\271\026E\000&\266\365\357y\236\267\236,\376\213\355\357y\377b\363\277\303<\277CM\013\322\020\203O\\\310t\002\017%\021\321/8\003\341\023\315\024aV\345\370\016\363\370\202\303\004>\025\370\210\3055\322\344D\004CD\006q\373\310\005(\202\3030N\343G\304t\006\217\303<\376\3428\217O\\\310\344#\306\025\006\013\321\030\323\341\013\2004\021\203/E\016\340\323>\355#\215DD\223O\\\223\211U\276\303<\276\3400\201O\005> \t\2004\371\310\025P\016\363\370H\323\020\221_8\221\0378\003\346#\226v\b\314\223\333>ba\224\3570\217/M\0212\020> \t\2004\371\210\235\031\202\323\f>\002\000\000\0011\000\000\026\000\000\000[\006+\330\203-\003\026\354\301\226A\013\366`\313\300\005{\260e\b\203`\017\266\fq\020\364\301\226a\016\202>\3302\320A\320\007[\206:\b\372`\313`\007A\037l\031\356 \350\203-C\036\004{\260e\320\203`\017\266\f|\020\354\301\226\241\017\202=\3302\200B\260\007\000\000\000\000\000a \000\000\273\000\000\000\023\004F,\020\000\000\000\004\000\000\000\024J\210V!\2200\006\b\306\340\000\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n\311\004\030n\b\334\300\ff\031\202\"HBp\022\202\363\020\234\211\340\021\003c\000A0hN\241QF\f\214\001\004\301\2409\205&I*@R\001\206\r\bF\030\200a\003b\t\006`\304\300\030@\020\f\232Tx\224a\003BQ\203\001\03010\006\020\004\203&\025\236d\330\200H\352`\000\b\013c\304\240y@\020\f\236Rx\202\310 \212c\r\326\200\23202X2\334\020`b0\313@\b\0019a\314\022\f\003\025\213!LC\006\001z\0252\201\202Jz\0254\202\202JF\f\214\b\004\301 +\205!\350U\370\216a\003\"\020\b\000\223\003\0042X2\334\020\220\201\030\3142\020C0b`\f \b\006\321,t\320\210\2011\200 \0304\270\360e#\006\306\000\202`\320\340\302\247\215\030\030\003\b\202A\203\013\3376b`\f \b\006\r.|\334,A\241\341@\000\000\000_\000\000\000f\264\370\201C5\303?!\203oL\006\322<Sd\233\330!8M\225\327\265q\025\202\323T\267\215\035H3T@$\231\324\341;\314\343S\301\t`\016\363\370H\323\020\221_8\221\0378\003\346/\221\377\034\266d \3153E\265%\031\013\321\030\323aX\223\3570\217\217H\377\002H\223\017H\002 M\007P\020\315\024aF\305\370\016\363\370\210\364/\2004\331\227!8M\225\363V%\006\013\321\030\323\341\003\303\020\371R\344\000>\355\323>qM\021 L\376\024Q\215`k\205\3404Un`\211\300<\272\3378S\177\001\220\303<\376\023\021\202\323\f\376t\020\215\251\025\3000\324\265!5\376\023\021\025\342P\222O\005\276\261!\002\363\350~\343L\266E\bNS\031\031\002D\021\200!\303u\004\215\303<\376\3428\217O\\\310t\005\217\303<\376\023\021\202\323\f>\321\fV\304\370\306\342\004\300\362O\310\340\333\225\344;\314\343KS\204\f\204\017H\002 M\246d8\324\364L\221\241\021\002\260,v\324\370ODT\210CI\376\022\370\246\345\370\016\363\370K\340\003\222\000H\223\245)@\024\001\0302\\5}\003\222\303<>\3224D\344\027N\344\007\316\200Y\226\343;\314\343S\201\017H\002 M6\265\370\016\363\370\322\024!\003af\t\020E\000\206\f\027oV\203\300<\026u\370\016\363\370K\000\000\000\000\0011\000\000\r\000\000\000[\206'\330\203-\003\024\354\301\226A\n\366`\313@\005{\260e\250\202=\3302\\\301\036l\031\266`\017\266\f`\020\374\301\226A\f\202?\3302\224A\360\007\000\000\000\000\000a \000\000/\001\000\000\023\004H,\020\000\000\000\b\000\000\000\024j\240l\003J\201\322\b\000\255B(\260\362\377\377\377\377(\006\022\306\300\300\030\034\214\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n3\021\\0\007\2440bp\f!\b\006\212) `\320\f7\004\021\030\3142\bA\240#\006\305\020\202`0\375\201rW\243#\006\006\000\202`\320\244\302Sd!8\263\000\030X 0\334 \340\201\031\3142\fG\220\213\340l\004\347#8\033\301#\006\206\003\202`\320\304\002\026\r\033\020Q\037\f\300\210\2011\200 \0304\261\200A\303\006\004d\f\300\210\2011\200 \0304\261\200=\303\006\304#\007\0030b`\f \b\006M,`\316\260\001\341\364\301\000\214\030\020C\b\202\201\363\n#\006\315\003\202`\360\274\002\265p\302@\024s\020P\024\306\210\201\001\200 \030h\240\020 \303\006\304\024\f\000Qa\f7\004\013\032\3142\020F\320\371 \211\302\035t>L\243\020\n\t\t\355|\250J\241\017:\037,S\310\203\316\207\353\024\310`\226\240\030\250\b \"*\006*\002\212\250\212\024V\244\260\"\005\241\303\006D\027\020@\nB\207\r\b& \200a\003bQ\b`\330\200H\340\200\000\206\r\b\344\r\b`\330\2008\334\200\000F\f\032\b\004\301@\332\2052\330F\241\r\332 \026\306 3\003\002\2030h\f\302\300@\000\201a\003\242\f\202\001 2\b\003\003\002\004F\f\f\000\004\301@\243\205\200\0336 \316 \030\200\341\006\302C\203Y\206\302\bF\f\214\001\004\301 \032\2075\020\203Y\202c\304\300\030@\020\f\032t\200\0033\03010\006\020\004\203\006\035\340\340\fF\f\214\001\004\301\240A\0078@\203\021\003c\000A0h\320\001\016\322`\304\300\000@\020\f\032tx\2032\03010\006\020\004\003\n\034\330\200\024f\t\202p \000\000\000\222\000\000\000\266\207\bN3\324\267\217\030\222\2014\317\024\3317 9\314\343?\021!8\315\340O\007\321\370\210\3011\276\303<>R\3714\356#f\325\370\016\363\370\322\024!\003\341#\246\345\020\027!\374\224DD\277\340\f\204\341\031\3000\354>bz\0060\f\274\217\230\027\031,DcL\207\017\fC\344K\221\003\370\264O\373\3045E\2000\371SD5\202\217\030V%\000\317DE\304\360W@$\375\3000D\222\217\230\221\341P\3233Evd \3153E\265\025\031\013\321\030\323aT\216\3570\217/8L\340/\201\217X\331\324T\317t\375\r\305\374\323\021\021\300 \371\210\361\031\002\363\344>bW\216\3570\217\217H\377\002H\223\217\034@A4S\204\031Y\345;\314\343#\322\277\000\322\344\003\222\000H\223\217\330X\345;\314\343\013\016\023\370K\340\003\222\000H\223\217\034\201\3460\217\2174\r\021\371\205\023\371\2013`\376\022\371\317\341#\326\305\t\3003Q\0211\374\025\020I?0\f\221\344\003\222\000H\223\217\330\227!Q\201\355#\206\306\370\016\363\370H\345\323\265\217\030X!0\217\217\334\301M\374\277\303<\277S\024\213\003\fHc\374x\361\347|\257\017\300\275\377\377|\356\306C1\300t\3247\360<\013\366\027T\363\033\017%\01610\224\377\\\347\377\357\b\314\362\027\fp\375\205\216{\3368\f\236\347\r+;\345\023\365,\2048v\317\311\376\271\026E\000&\266\365\357y\236\267\236\254\375\213\355\357y\377b\363\277\303<\277CM\013\322\020\203O\\\310t\002\017%\021\321/8\003\341\023\315\024aV\345\370\016\363\370\202\303\004>\025\370\210\3055\322\344D\004CD\006q\373\310\005(\202\3030N\343G\304t\006\217\303<\376\3428\217O\\\310\344#\306\025\006\013\321\030\323\341\013\2004\021\203/E\016\340\323>\355#\215DD\223O\\\223\211U\276\303<\276\3400\201O\005> \t\2004\371\310\025P\016\363\370H\323\020\221_8\221\0378\003\346#\226v\b\314\223\333>ba\224\3570\217/M\0212\020> \t\2004\371\210\235\031\202\323\f>\002\000\000\000\0011\000\000\026\000\000\000[\006+\330\203-\003\026\354\301\226A\013\366`\313\300\005{\260e\b\203`\017\266\fq\020\364\301\226a\016\202>\3302\320A\320\007[\206:\b\372`\313`\007A\037l\031\356 \350\203-C\036\004{\260e\320\203`\017\266\f|\020\354\301\226\241\017\202=\3302\200B\260\007\000\000\000\000\000a \000\000\271\000\000\000\023\004F,\020\000\000\000\004\000\000\000\024J\210V!\2200\006\b\306\340\000\000\000\000\0003\021A0\007\2430\023\021\004s0\n3\021A0\007\2430\023\021\004s0\n\311\004\030n\b\334\300\ff\031\202\"HBp\022\202\363\020\234\211\340\021\003c\000A0hN\241QF\f\214\001\004\301\2409\205&I*@R\001\206\r\bF\030\200a\003b\t\006`\304\300\030@\020\f\232Tx\224a\003BQ\203\001\03010\006\020\004\203&\025\236d\330\200H\352`\000\b\013c\304\240y@\020\f\236Rx\202\310 \212c\r\326\200\23202X2\334\020`b0\313@\b\0019a\314\022\f\003\025\213!LC\006\001z\0252\201\202Jz\0254\202\202JF\f\f\000\004\301 \023\205!\350U\370\216a\003\"\020\b\000\223\003\0042X2\334\020\220\201\030\3142\020C0b`\f \b\006\321,t\320\210\2011\200 \0304\270\360e#\006\306\000\202`\320\340\302\247\215\030\030\003\b\202A\203\013\3376b`\f \b\006\r.|\334,A\241\341@\000\000\000]\000\000\000f\264\370\201C5\303?!\203oL\006\322<Sd\233\330!8M\225\327\265q\025\202\323T\267\215\035H3T@$\231\324\341;\314\343S\301\t`\016\363\370H\323\020\221_8\221\0378\003\346/\221\377\034\266d \3153E\265%\031\013\321\030\323aX\223\3570\217\217H\377\002H\223\017H\002 M\007P\020\315\024aF\305\370\016\363\370\210\364/\2004\331\227!8M\225\363V%\006\013\321\030\323\341\003\303\020\371R\344\000>\355\323>qM\021 L\376\024Q\215`k\205\3404Un`\211\300<\272\3378S\177\001\220\303<\376\023\021\202\323\f\376t\020\215\251\025\3000\324\265!5\376\023\021\025\342P\222O\005\276\261!\002\363\350~\343L\266E\bNS\031\031\002D\021\200!\303u\004\215\303<\376\3428\217O\\\310t\005\217\303<\376\023\021\202\323\f>\321\fV\304\370\306\342\004\300\362O\310\340\333\225\344;\314\343KS\204\f\204\017H\002 M\246d8\324\364L\221\0355\376\023\021\025\342P\222\277\004\276i9\276\303<\376\022\370\200$\000\322di\n\020E\000\206\fWM\337\200\3440\217\2174\r\021\371\205\023\371\2013`\226\345\370\016\363\370T\340\003\222\000H\223M-\276\303<\2764E\310@\230Y\002D\021\200!\303\305\233\325 0\217E\035\276\303<\376\022\000\0011\000\000\r\000\000\000[\206'\330\203-\003\024\354\301\226A\n\366`\313@\005{\260e\250\202=\3302\\\301\036l\031\266`\017\266\f`\020\374\301\226A\f\202?\3302\224A\360\007\000\000\000\000\000\301 \000\000D\000\000\000\243\004\311P\001\"\252\000!2\204\210\020!B\304\b\211\032@\210\f!\"D\210\0201BR\016\020\"c\204\304\274 D\206\210\021\022\362\200\020\031BRZ\020\"d\204\204\324 d\204d\3340B%QKK\3141\000\212\301\001\306\004\207\305\305\206FGa\334\002\fs\b\000\201p\220\241Q\036\265\264\304\034\003\240\030\034|LpX\\lht\324\307-\3000\207\000\020\b\007\031\032\025RKL\3141\000\212\301\201\310\004\207\305\305\206FG\211\334B\fs\b@\201p\2201\242Q$\265\304\304\034\003\240\030\034\224LpX\\lhtT\311-\3040\207\000\020\b\007\031\032\006P+A\201\005\324JP`\002\265\022\024\330@\255\004\005FP+A\201\025\340BP`\006\270 \024\024\330\001.\b\005\005\206\200\013BA\201%\320R@`\n\264\024\020\330\002-\005\004\306@K\001\2015P\001\2019P\001\201=P\001\201AP\001\201E\330A\001\220\240\260\300\000q \000\000\t\000\000\0002\016\020\"\204\022\306\013\210!\336\200\036\221\017\370\321\032\201!\335\022(\322X\201$\312\026X\262\217\001\000\000\000\000\000\000\000e\f\000\000\017\001\000\000\022\003\224p\030\000\000\000\003\000\000\000\032\n\000\0002\000\000\000L\000\000\000\001\000\000\000X\000\000\000\000\000\000\000X\000\000\000(\000\000\000\030\004\000\000\001\000\000\000L\n\000\000\021\000\000\000]\n\000\000\016\000\000\000\024\000\000\000\000\000\000\0000\004\000\000\000\000\000\000\000\000\000\000(\000\000\000\000\000\000\000,\005\000\000U\000\000\000,\005\000\000U\000\000\000\377\377\377\377\022$\000\000\201\005\000\000\022\000\000\000\201\005\000\000\022\000\000\000\377\377\377\377\b$\000\000\223\005\000\000\026\000\000\000\223\005\000\000\026\000\000\000\377\377\377\377\b,\000\000\251\005\000\000\024\000\000\000\251\005\000\000\024\000\000\000\377\377\377\377\b,\000\000\275\005\000\000(\000\000\000\275\005\000\000(\000\000\000\377\377\377\377\b$\000\000\345\005\000\000\037\000\000\000\345\005\000\000\037\000\000\000\377\377\377\377\b$\000\000\004\006\000\000o\000\000\000\004\006\000\000o\000\000\000\377\377\377\377\000 \000\000s\006\000\000\030\000\000\000s\006\000\000\030\000\000\000\377\377\377\377\b$\000\000\213\006\000\000\035\000\000\000\213\006\000\000\035\000\000\000\377\377\377\377\b$\000\000\250\006\000\000\022\000\000\000\250\006\000\000\022\000\000\000\377\377\377\377\b$\000\000\272\006\000\000\030\000\000\000\272\006\000\000\030\000\000\000\377\377\377\377\b$\000\000\322\006\000\000\024\000\000\000\322\006\000\000\024\000\000\000\377\377\377\377\b$\000\000\346\006\000\000U\000\000\000\346\006\000\000U\000\000\000\377\377\377\377\022$\000\000;\007\000\000o\000\000\000;\007\000\000o\000\000\000\377\377\377\377\000 \000\000\252\007\000\000\020\000\000\000\252\007\000\000\020\000\000\000\377\377\377\377\b,\000\000\272\007\000\000\201\000\000\000\272\007\000\000\201\000\000\000\377\377\377\377\022$\000\000;\b\000\000\233\000\000\000;\b\000\000\233\000\000\000\377\377\377\377\000 \000\000\326\b\000\000\004\000\000\000\326\b\000\000\004\000\000\000\377\377\377\377\210$\000\000\332\b\000\000\205\000\000\000\332\b\000\000\205\000\000\000\377\377\377\377\022$\000\000_\t\000\000\237\000\000\000_\t\000\000\237\000\000\000\377\377\377\377\000 \000\000\376\t\000\000\017\000\000\000\376\t\000\000\017\000\000\000\377\377\377\377\b,\000\000\r\n\000\000\r\000\000\000\r\n\000\000\r\000\000\000\377\377\377\377\b,\000\000\000\000\000\000\024\000\000\000\000\000\000\000\024\000\000\000\377\377\377\377\021\004\000\000\024\000\000\000'\000\000\000\024\000\000\000'\000\000\000\377\377\377\377\021\004\000\000;\000\000\000)\000\000\000;\000\000\000)\000\000\000\377\377\377\377\021\004\000\000d\000\000\000 \000\000\000d\000\000\000 \000\000\000\377\377\377\377\021\004\000\000\204\000\000\000&\000\000\000\204\000\000\000&\000\000\000\377\377\377\377\021\004\000\000\252\000\000\000'\000\000\000\252\000\000\000'\000\000\000\377\377\377\377\000\030\000\000\321\000\000\000'\000\000\000\321\000\000\000'\000\000\000\377\377\377\377\000\030\000\000\370\000\000\000'\000\000\000\370\000\000\000'\000\000\000\377\377\377\377\000\030\000\000\037\001\000\000'\000\000\000\037\001\000\000'\000\000\000\377\377\377\377\000\030\000\000F\001\000\000_\000\000\000F\001\000\000_\000\000\000\377\377\377\377\222\004\000\000\245\001\000\000_\000\000\000\245\001\000\000_\000\000\000\377\377\377\377\222\004\000\000\004\002\000\000\213\000\000\000\004\002\000\000\213\000\000\000\377\377\377\377\222\004\000\000\217\002\000\000\217\000\000\000\217\002\000\000\217\000\000\000\377\377\377\377\222\004\000\000\036\003\000\000h\000\000\000\036\003\000\000h\000\000\000\377\377\377\377\020\004\000\000\206\003\000\000h\000\000\000\206\003\000\000h\000\000\000\377\377\377\377\020\004\000\000\356\003\000\000\224\000\000\000\356\003\000\000\224\000\000\000\377\377\377\377\020\004\000\000\202\004\000\000\230\000\000\000\202\004\000\000\230\000\000\000\377\377\377\377\020\004\000\000\032\005\000\000\022\000\000\000\032\005\000\000\022\000\000\000\377\377\377\377\004\f\000\000\000\000\000\000\000\000\000\000\024\000\000\000\000\000\000\000k\n\000\000\r\000\000\000\000\000\000\000]\f\000\000\241\002\000\000\022\003\224\370,\000\000\000__omp_rtl_debug_kind__omp_rtl_assume_teams_oversubscription__omp_rtl_assume_threads_oversubscription__omp_rtl_assume_no_thread_state__omp_rtl_assume_no_nested_parallelismanon.0938c9572c1022ac4ad73589ec37b81f.0anon.0938c9572c1022ac4ad73589ec37b81f.1anon.0938c9572c1022ac4ad73589ec37b81f.2anon.0938c9572c1022ac4ad73589ec37b81f.3__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_exec_mode__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28_exec_mode__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28_exec_mode__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28_nested_parallelism__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28_nested_parallelismllvm.compiler.used__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28__kmpc_target_initllvm.lifetime.start.p5llvm.lifetime.end.p5__kmpc_get_hardware_num_threads_in_block__kmpc_distribute_static_init_4__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_omp_outlined_omp_outlined__kmpc_for_static_init_4__kmpc_distribute_static_fini__kmpc_parallel_51__kmpc_global_thread_num__kmpc_target_deinit__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_omp_outlined_omp_outlinedllvm.fmuladd.f64__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28_omp_outlined_omp_outlinedfmax__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28_omp_outlined_omp_outlinedllvm.maxnum.f64llvm.smin.i3217.0.0git 644a4067312448b17ec2109ccfd0dd02a2f789c8amdgcn-amd-amdhsasrc/vararg.cppllvm.metadata\000\000\000"
	.size	.Lllvm.embedded.object, 17792

	.section	".linker-options","e",@llvm_linker_options
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 644a4067312448b17ec2109ccfd0dd02a2f789c8)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZN7gpumath16compare_accuracyIdXcvPFdddEadL_Z4fmaxEEXadL_Z15__ocml_fmax_f64EEJddEEEvRSt5tupleIJDpNS_5ArrayIT2_EEEERNS4_IT_EESC_SC_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESI_.omp_outlined
	.addrsig_sym .omp_task_entry.
	.addrsig_sym .omp_task_entry..29
	.addrsig_sym _ZN7gpumath13apply_fun_cpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE.omp_outlined
	.addrsig_sym _GLOBAL__sub_I_vararg.cpp
	.addrsig_sym .omp_offloading.requires_reg
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym .__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28.region_id
	.addrsig_sym _ZSt4cout
	.addrsig_sym _ZSt4cerr
	.addrsig_sym .__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id
	.addrsig_sym .__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmaxEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l28.region_id
	.addrsig_sym .__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmax_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l28.region_id
