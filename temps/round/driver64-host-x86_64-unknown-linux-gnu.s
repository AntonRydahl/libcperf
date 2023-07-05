	.text
	.file	"driver64.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function main
.LCPI0_0:
	.quad	0xbff0000000000000              # double -1
.LCPI0_1:
	.quad	0x401921fb54442d18              # double 6.2831853071795862
	.text
	.globl	main
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
	subq	$488, %rsp                      # imm = 0x1E8
	.cfi_def_cfa_offset 544
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	leaq	56(%rsp), %rbx
	movq	%rbx, 40(%rsp)
	movl	$1853190002, 56(%rsp)           # imm = 0x6E756F72
	movw	$100, 60(%rsp)
	movq	$5, 48(%rsp)
.Ltmp0:
	movl	$17, %edi
	callq	_Znwm@PLT
.Ltmp1:
# %bb.1:                                # %call5.i.i.i.i.i6.i.noexc36
	movupd	.L.str.1(%rip), %xmm0
	movupd	%xmm0, (%rax)
	movq	%rax, (%rsp)                    # 8-byte Spill
	movb	$0, 16(%rax)
.Ltmp3:
	callq	omp_get_default_device@PLT
.Ltmp4:
# %bb.2:                                # %invoke.cont5
.Ltmp5:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp6:
# %bb.3:                                # %invoke.cont6
.Ltmp7:
	leaq	8(%rsp), %rdi
	movl	$536870911, %esi                # imm = 0x1FFFFFFF
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIdEC2Eiii
.Ltmp8:
# %bb.4:                                # %invoke.cont8
.Ltmp10:
	callq	omp_get_default_device@PLT
.Ltmp11:
# %bb.5:                                # %invoke.cont10
.Ltmp12:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp13:
# %bb.6:                                # %invoke.cont12
.Ltmp14:
	leaq	72(%rsp), %rdi
	movl	$536870911, %esi                # imm = 0x1FFFFFFF
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIdEC2Eiii
.Ltmp15:
# %bb.7:                                # %invoke.cont14
.Ltmp17:
	callq	omp_get_default_device@PLT
.Ltmp18:
# %bb.8:                                # %invoke.cont16
.Ltmp19:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp20:
# %bb.9:                                # %invoke.cont18
.Ltmp21:
	leaq	112(%rsp), %rdi
	movl	$536870911, %esi                # imm = 0x1FFFFFFF
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIdEC2Eiii
.Ltmp22:
# %bb.10:                               # %invoke.cont20
	movabsq	$-4609115380302729960, %rax     # imm = 0xC00921FB54442D18
	movq	%rax, 224(%rsp)
	movl	24(%rsp), %eax
	movl	%eax, 144(%rsp)
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	addsd	.LCPI0_0(%rip), %xmm0
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 152(%rsp)
	movq	16(%rsp), %rcx
	leaq	144(%rsp), %r13
	movq	%r13, 192(%rsp)
	movq	%r13, 160(%rsp)
	movq	%rcx, 200(%rsp)
	movq	%rcx, 168(%rsp)
	leaq	224(%rsp), %rcx
	movq	%rcx, 208(%rsp)
	movq	%rcx, 176(%rsp)
	leaq	152(%rsp), %rbx
	movq	%rbx, 216(%rsp)
	movq	%rbx, 184(%rsp)
	movabsq	$17179869186, %rcx              # imm = 0x400000002
	movq	%rcx, 384(%rsp)
	leaq	192(%rsp), %rcx
	movq	%rcx, 392(%rsp)
	leaq	160(%rsp), %rcx
	movq	%rcx, 400(%rsp)
	leaq	.L.offload_sizes(%rip), %rcx
	movq	%rcx, 408(%rsp)
	leaq	.L.offload_maptypes(%rip), %rcx
	movq	%rcx, 416(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 424(%rsp)
	movq	%rax, 440(%rsp)
	movupd	%xmm0, 464(%rsp)
	movupd	%xmm0, 448(%rsp)
	movl	$0, 480(%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	movq	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id@GOTPCREL(%rip), %r8
	leaq	384(%rsp), %r9
	movq	$-1, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__tgt_target_kernel@PLT
	cmpb	$0, 36(%rsp)
	jne	.LBB0_12
# %bb.11:                               # %if.then.i
.Ltmp24:
	leaq	8(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdE7to_hostEv
.Ltmp25:
.LBB0_12:                               # %invoke.cont22
	leaq	368(%rsp), %rbp
	movq	%rbp, 352(%rsp)
	movq	40(%rsp), %r15
	movq	48(%rsp), %r14
	movq	%rbp, %r12
	cmpq	$16, %r14
	jb	.LBB0_21
# %bb.13:                               # %if.then.i.i46
	testq	%r14, %r14
	js	.LBB0_14
# %bb.16:                               # %if.end11.i.i.i48
	movq	%r14, %rdi
	incq	%rdi
	js	.LBB0_17
# %bb.19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i51
.Ltmp26:
	callq	_Znwm@PLT
.Ltmp27:
# %bb.20:                               # %call5.i.i.i.i.i5.i.noexc
	movq	%rax, %r12
	movq	%rax, 352(%rsp)
	movq	%r14, 368(%rsp)
.LBB0_21:                               # %if.end.i.i41
	testq	%r14, %r14
	je	.LBB0_25
# %bb.22:                               # %if.end.i.i41
	cmpq	$1, %r14
	jne	.LBB0_24
# %bb.23:                               # %if.then.i.i.i.i44
	movzbl	(%r15), %eax
	movb	%al, (%r12)
	jmp	.LBB0_25
.LBB0_24:                               # %if.end.i.i.i.i.i45
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB0_25:                               # %invoke.cont23
	movq	%r14, 360(%rsp)
	movb	$0, (%r12,%r14)
	leaq	336(%rsp), %r15
	movq	%r15, 320(%rsp)
.Ltmp28:
	movl	$17, %edi
	callq	_Znwm@PLT
.Ltmp29:
# %bb.26:                               # %call5.i.i.i.i.i5.i.noexc74
	movq	%rax, 320(%rsp)
	movq	$16, 336(%rsp)
	movq	(%rsp), %rcx                    # 8-byte Reload
	movupd	(%rcx), %xmm0
	movupd	%xmm0, (%rax)
	movq	$16, 328(%rsp)
	movb	$0, 16(%rax)
.Ltmp31:
	leaq	8(%rsp), %rdi
	leaq	72(%rsp), %rsi
	leaq	112(%rsp), %rdx
	leaq	352(%rsp), %rcx
	leaq	320(%rsp), %r8
	callq	_ZN7gpumath12compare_timeIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_
.Ltmp32:
# %bb.27:                               # %invoke.cont28
	movq	320(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB0_29
# %bb.28:                               # %if.then.i.i78
	callq	_ZdlPv@PLT
.LBB0_29:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	352(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.LBB0_31
# %bb.30:                               # %if.then.i.i80
	callq	_ZdlPv@PLT
.LBB0_31:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit81
	movq	112(%rsp), %rdi
	callq	free@PLT
	movq	$0, 112(%rsp)
	movq	120(%rsp), %rdi
	movl	136(%rsp), %esi
.Ltmp34:
	callq	omp_target_free@PLT
.Ltmp35:
# %bb.32:                               # %_ZN7gpumath5ArrayIdED2Ev.exit
	movq	72(%rsp), %rdi
	callq	free@PLT
	movq	$0, 72(%rsp)
	movq	80(%rsp), %rdi
	movl	96(%rsp), %esi
.Ltmp37:
	callq	omp_target_free@PLT
.Ltmp38:
# %bb.33:                               # %_ZN7gpumath5ArrayIdED2Ev.exit85
	movq	8(%rsp), %rdi
	callq	free@PLT
	movq	$0, 8(%rsp)
	movq	16(%rsp), %rdi
	movl	32(%rsp), %esi
.Ltmp40:
	callq	omp_target_free@PLT
.Ltmp41:
# %bb.34:                               # %_ZN7gpumath5ArrayIdED2Ev.exit89
.Ltmp43:
	callq	omp_get_default_device@PLT
.Ltmp44:
# %bb.35:                               # %invoke.cont37
.Ltmp45:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp46:
# %bb.36:                               # %invoke.cont39
.Ltmp47:
	leaq	8(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIdEC2Eiii
.Ltmp48:
# %bb.37:                               # %invoke.cont41
.Ltmp50:
	callq	omp_get_default_device@PLT
.Ltmp51:
# %bb.38:                               # %invoke.cont43
.Ltmp52:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp53:
# %bb.39:                               # %invoke.cont45
.Ltmp54:
	leaq	72(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIdEC2Eiii
.Ltmp55:
# %bb.40:                               # %invoke.cont47
.Ltmp57:
	leaq	72(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdE7to_hostEv
.Ltmp58:
# %bb.41:                               # %invoke.cont49
.Ltmp60:
	callq	omp_get_default_device@PLT
.Ltmp61:
# %bb.42:                               # %invoke.cont52
.Ltmp62:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp63:
# %bb.43:                               # %invoke.cont54
.Ltmp64:
	leaq	112(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIdEC2Eiii
.Ltmp65:
# %bb.44:                               # %invoke.cont56
.Ltmp67:
	callq	omp_get_default_device@PLT
.Ltmp68:
# %bb.45:                               # %invoke.cont59
.Ltmp69:
	movl	%eax, %ebp
	callq	omp_get_initial_device@PLT
.Ltmp70:
# %bb.46:                               # %invoke.cont61
.Ltmp71:
	leaq	224(%rsp), %rdi
	movl	$2048, %esi                     # imm = 0x800
	movl	%ebp, %edx
	movl	%eax, %ecx
	callq	_ZN7gpumath5ArrayIdEC2Eiii
.Ltmp72:
# %bb.47:                               # %invoke.cont63
	movabsq	$-4609115380302729960, %rax     # imm = 0xC00921FB54442D18
	movq	%rax, 152(%rsp)
	movl	24(%rsp), %eax
	cvtsi2sd	%eax, %xmm0
	addsd	.LCPI0_0(%rip), %xmm0
	movl	%eax, 108(%rsp)
	movsd	.LCPI0_1(%rip), %xmm1           # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movsd	%xmm1, 144(%rsp)
	movq	16(%rsp), %rcx
	leaq	108(%rsp), %rdx
	movq	%rdx, 192(%rsp)
	movq	%rdx, 160(%rsp)
	movq	%rcx, 200(%rsp)
	movq	%rcx, 168(%rsp)
	movq	%rbx, 208(%rsp)
	movq	%rbx, 176(%rsp)
	movq	%r13, 216(%rsp)
	movq	%r13, 184(%rsp)
	movabsq	$17179869186, %rcx              # imm = 0x400000002
	movq	%rcx, 384(%rsp)
	leaq	192(%rsp), %rcx
	movq	%rcx, 392(%rsp)
	leaq	160(%rsp), %rcx
	movq	%rcx, 400(%rsp)
	leaq	.L.offload_sizes(%rip), %rcx
	movq	%rcx, 408(%rsp)
	leaq	.L.offload_maptypes(%rip), %rcx
	movq	%rcx, 416(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 424(%rsp)
	movq	%rax, 440(%rsp)
	movupd	%xmm0, 464(%rsp)
	movupd	%xmm0, 448(%rsp)
	movl	$0, 480(%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	movq	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id@GOTPCREL(%rip), %r8
	leaq	384(%rsp), %r9
	movq	$-1, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__tgt_target_kernel@PLT
	cmpb	$0, 36(%rsp)
	jne	.LBB0_49
# %bb.48:                               # %if.then.i104
.Ltmp74:
	leaq	8(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdE7to_hostEv
.Ltmp75:
.LBB0_49:                               # %invoke.cont65
.Ltmp76:
	leaq	72(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdE7to_hostEv
.Ltmp77:
# %bb.50:                               # %invoke.cont66
	leaq	304(%rsp), %rbx
	movq	%rbx, 288(%rsp)
	movq	40(%rsp), %r15
	movq	48(%rsp), %r14
	movq	%rbx, %r12
	cmpq	$16, %r14
	jb	.LBB0_59
# %bb.51:                               # %if.then.i.i114
	testq	%r14, %r14
	js	.LBB0_52
# %bb.54:                               # %if.end11.i.i.i116
	movq	%r14, %rdi
	incq	%rdi
	js	.LBB0_55
# %bb.57:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i119
.Ltmp78:
	callq	_Znwm@PLT
.Ltmp79:
# %bb.58:                               # %call5.i.i.i.i.i5.i.noexc124
	movq	%rax, %r12
	movq	%rax, 288(%rsp)
	movq	%r14, 304(%rsp)
.LBB0_59:                               # %if.end.i.i109
	testq	%r14, %r14
	leaq	56(%rsp), %r13
	je	.LBB0_63
# %bb.60:                               # %if.end.i.i109
	cmpq	$1, %r14
	jne	.LBB0_62
# %bb.61:                               # %if.then.i.i.i.i112
	movzbl	(%r15), %eax
	movb	%al, (%r12)
	jmp	.LBB0_63
.LBB0_62:                               # %if.end.i.i.i.i.i113
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy@PLT
.LBB0_63:                               # %invoke.cont68
	movq	%r14, 296(%rsp)
	movb	$0, (%r12,%r14)
	leaq	272(%rsp), %r15
	movq	%r15, 256(%rsp)
.Ltmp80:
	movl	$17, %edi
	callq	_Znwm@PLT
.Ltmp81:
# %bb.64:                               # %call5.i.i.i.i.i5.i.noexc144
	movq	%rax, 256(%rsp)
	movq	$16, 272(%rsp)
	movq	(%rsp), %rcx                    # 8-byte Reload
	movupd	(%rcx), %xmm0
	movupd	%xmm0, (%rax)
	movq	$16, 264(%rsp)
	movb	$0, 16(%rax)
.Ltmp83:
	leaq	8(%rsp), %rdi
	leaq	72(%rsp), %rsi
	leaq	112(%rsp), %rdx
	leaq	224(%rsp), %rcx
	leaq	288(%rsp), %r8
	leaq	256(%rsp), %r9
	callq	_ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_
.Ltmp84:
# %bb.65:                               # %invoke.cont73
	movq	256(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB0_67
# %bb.66:                               # %if.then.i.i148
	callq	_ZdlPv@PLT
.LBB0_67:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149
	movq	288(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.LBB0_69
# %bb.68:                               # %if.then.i.i151
	callq	_ZdlPv@PLT
.LBB0_69:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152
	movq	224(%rsp), %rdi
	callq	free@PLT
	movq	$0, 224(%rsp)
	movq	232(%rsp), %rdi
	movl	248(%rsp), %esi
.Ltmp86:
	callq	omp_target_free@PLT
.Ltmp87:
# %bb.70:                               # %_ZN7gpumath5ArrayIdED2Ev.exit156
	movq	112(%rsp), %rdi
	callq	free@PLT
	movq	$0, 112(%rsp)
	movq	120(%rsp), %rdi
	movl	136(%rsp), %esi
.Ltmp89:
	callq	omp_target_free@PLT
.Ltmp90:
# %bb.71:                               # %_ZN7gpumath5ArrayIdED2Ev.exit160
	movq	72(%rsp), %rdi
	callq	free@PLT
	movq	$0, 72(%rsp)
	movq	80(%rsp), %rdi
	movl	96(%rsp), %esi
.Ltmp92:
	callq	omp_target_free@PLT
.Ltmp93:
# %bb.72:                               # %_ZN7gpumath5ArrayIdED2Ev.exit164
	movq	8(%rsp), %rdi
	callq	free@PLT
	movq	$0, 8(%rsp)
	movq	16(%rsp), %rdi
	movl	32(%rsp), %esi
.Ltmp95:
	callq	omp_target_free@PLT
.Ltmp96:
# %bb.73:                               # %_ZN7gpumath5ArrayIdED2Ev.exit168
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZdlPv@PLT
	movq	40(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB0_75
# %bb.74:                               # %if.then.i.i173
	callq	_ZdlPv@PLT
.LBB0_75:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174
	xorl	%eax, %eax
	addq	$488, %rsp                      # imm = 0x1E8
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
.LBB0_17:                               # %if.end.i.i.i.i.i.i52
	.cfi_def_cfa_offset 544
.Ltmp103:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp104:
# %bb.18:                               # %.noexc55
.LBB0_55:                               # %if.end.i.i.i.i.i.i120
.Ltmp98:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp99:
# %bb.56:                               # %.noexc123
.LBB0_14:                               # %if.then.i.i.i53
.Ltmp105:
	leaq	.L.str.3(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp106:
# %bb.15:                               # %.noexc54
.LBB0_52:                               # %if.then.i.i.i121
.Ltmp100:
	leaq	.L.str.3(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp101:
# %bb.53:                               # %.noexc122
.LBB0_114:                              # %terminate.lpad.i167
.Ltmp97:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_113:                              # %terminate.lpad.i163
.Ltmp94:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_112:                              # %terminate.lpad.i159
.Ltmp91:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_111:                              # %terminate.lpad.i155
.Ltmp88:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_96:                               # %lpad72
.Ltmp85:
	movq	%rax, %r14
	movq	256(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB0_98
# %bb.97:                               # %if.then.i.i182
	callq	_ZdlPv@PLT
	jmp	.LBB0_98
.LBB0_95:                               # %lpad70
.Ltmp82:
	movq	%rax, %r14
.LBB0_98:                               # %ehcleanup75
	movq	288(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.LBB0_100
# %bb.99:                               # %if.then.i.i185
	callq	_ZdlPv@PLT
	jmp	.LBB0_100
.LBB0_90:                               # %lpad48
.Ltmp59:
	jmp	.LBB0_91
.LBB0_110:                              # %terminate.lpad.i88
.Ltmp42:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_109:                              # %terminate.lpad.i84
.Ltmp39:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_108:                              # %terminate.lpad.i
.Ltmp36:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.LBB0_82:                               # %lpad27
.Ltmp33:
	movq	%rax, %r14
	movq	320(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB0_84
# %bb.83:                               # %if.then.i.i176
	callq	_ZdlPv@PLT
	jmp	.LBB0_84
.LBB0_81:                               # %lpad25
.Ltmp30:
	movq	%rax, %r14
.LBB0_84:                               # %ehcleanup
	movq	352(%rsp), %rdi
	cmpq	%rbp, %rdi
	je	.LBB0_86
# %bb.85:                               # %if.then.i.i179
	callq	_ZdlPv@PLT
	jmp	.LBB0_86
.LBB0_76:                               # %lpad2
.Ltmp2:
	movq	%rax, %r14
	jmp	.LBB0_105
.LBB0_93:                               # %lpad58
.Ltmp73:
	movq	%rax, %r14
	jmp	.LBB0_101
.LBB0_92:                               # %lpad51
.Ltmp66:
.LBB0_91:                               # %ehcleanup80
	movq	%rax, %r14
	leaq	56(%rsp), %rbx
	jmp	.LBB0_102
.LBB0_89:                               # %lpad42
.Ltmp56:
	movq	%rax, %r14
	leaq	56(%rsp), %rbx
	jmp	.LBB0_103
.LBB0_88:                               # %lpad36
.Ltmp49:
	movq	%rax, %r14
	leaq	56(%rsp), %rbx
	jmp	.LBB0_104
.LBB0_79:                               # %lpad15
.Ltmp23:
	movq	%rax, %r14
	leaq	56(%rsp), %rbx
	jmp	.LBB0_102
.LBB0_78:                               # %lpad9
.Ltmp16:
	movq	%rax, %r14
	jmp	.LBB0_103
.LBB0_77:                               # %lpad4
.Ltmp9:
	movq	%rax, %r14
	jmp	.LBB0_104
.LBB0_80:                               # %lpad21
.Ltmp107:
	movq	%rax, %r14
.LBB0_86:                               # %ehcleanup29
	leaq	112(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdED2Ev
	leaq	56(%rsp), %rbx
	jmp	.LBB0_102
.LBB0_94:                               # %lpad64
.Ltmp102:
	movq	%rax, %r14
.LBB0_100:                              # %ehcleanup76
	leaq	224(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdED2Ev
.LBB0_101:                              # %ehcleanup77
	leaq	56(%rsp), %rbx
	leaq	112(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdED2Ev
.LBB0_102:                              # %ehcleanup80
	leaq	72(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdED2Ev
.LBB0_103:                              # %ehcleanup81
	leaq	8(%rsp), %rdi
	callq	_ZN7gpumath5ArrayIdED2Ev
.LBB0_104:                              # %ehcleanup83
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZdlPv@PLT
.LBB0_105:                              # %ehcleanup85
	movq	40(%rsp), %rdi
	cmpq	%rbx, %rdi
	je	.LBB0_107
# %bb.106:                              # %if.then.i.i191
	callq	_ZdlPv@PLT
.LBB0_107:                              # %ehcleanup87
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp8-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp8
	.uleb128 .Ltmp9-.Lfunc_begin0           #     jumps to .Ltmp9
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp15-.Ltmp10                #   Call between .Ltmp10 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin0          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp22-.Ltmp17                #   Call between .Ltmp17 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp27-.Ltmp24                #   Call between .Ltmp24 and .Ltmp27
	.uleb128 .Ltmp107-.Lfunc_begin0         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin0          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin0          #     jumps to .Ltmp36
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin0          #     jumps to .Ltmp39
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin0          #     jumps to .Ltmp42
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp48-.Ltmp43                #   Call between .Ltmp43 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp55-.Ltmp50                #   Call between .Ltmp50 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin0          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin0          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp65-.Ltmp60                #   Call between .Ltmp60 and .Ltmp65
	.uleb128 .Ltmp66-.Lfunc_begin0          #     jumps to .Ltmp66
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp72-.Ltmp67                #   Call between .Ltmp67 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin0          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp79-.Ltmp74                #   Call between .Ltmp74 and .Ltmp79
	.uleb128 .Ltmp102-.Lfunc_begin0         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin0          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin0          #     jumps to .Ltmp88
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp89-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin0          #     jumps to .Ltmp91
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp92-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin0          #     jumps to .Ltmp94
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp95-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin0          #     jumps to .Ltmp97
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp103-.Lfunc_begin0         # >> Call Site 25 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp107-.Lfunc_begin0         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp102-.Lfunc_begin0         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp105-.Lfunc_begin0         # >> Call Site 27 <<
	.uleb128 .Ltmp106-.Ltmp105              #   Call between .Ltmp105 and .Ltmp106
	.uleb128 .Ltmp107-.Lfunc_begin0         #     jumps to .Ltmp107
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin0         # >> Call Site 28 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin0         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin0         # >> Call Site 29 <<
	.uleb128 .Lfunc_end0-.Ltmp101           #   Call between .Ltmp101 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
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
	jne	.LBB1_6
# %bb.1:                                # %if.then
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.4(%rip), %rsi
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
	je	.LBB1_13
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r15)
	je	.LBB1_4
# %bb.3:                                # %if.then.i2.i.i
	movzbl	67(%r15), %eax
	jmp	.LBB1_5
.LBB1_4:                                # %if.end.i.i.i
	movq	%r15, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r15), %rax
	movq	%r15, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB1_5:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	movslq	16(%rbx), %r14
	movl	24(%rbx), %ebp
	shlq	$3, %r14
.LBB1_6:                                # %if.end
	movq	%r14, %rdi
	movl	%ebp, %esi
	callq	omp_target_alloc@PLT
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB1_7
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
.LBB1_7:                                # %if.then15
	.cfi_def_cfa_offset 48
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.5(%rip), %rsi
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
	je	.LBB1_13
# %bb.8:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12
	cmpb	$0, 56(%r14)
	je	.LBB1_10
# %bb.9:                                # %if.then.i2.i.i15
	movzbl	67(%r14), %eax
	jmp	.LBB1_11
.LBB1_10:                               # %if.end.i.i.i20
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB1_11:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit25
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
.LBB1_13:                               # %if.then.i.i.i
	.cfi_def_cfa_offset 48
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end1:
	.size	_ZN7gpumath5ArrayIdEC2Eiii, .Lfunc_end1-_ZN7gpumath5ArrayIdEC2Eiii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath12compare_timeIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_,"axG",@progbits,_ZN7gpumath12compare_timeIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_,comdat
	.weak	_ZN7gpumath12compare_timeIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ # -- Begin function _ZN7gpumath12compare_timeIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_
	.p2align	4, 0x90
	.type	_ZN7gpumath12compare_timeIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_,@function
_ZN7gpumath12compare_timeIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_: # @_ZN7gpumath12compare_timeIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_
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
	leaq	.L.str.6(%rip), %rsi
	leaq	40(%rsp), %rbp
	movq	%rbp, %rdi
	movq	%rcx, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp108:
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbp, %rdx
	movl	$500, %ecx                      # imm = 0x1F4
	callq	_ZN7gpumath8gpu_timeIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Ltmp109:
# %bb.1:                                # %invoke.cont
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	movq	40(%rsp), %rdi
	leaq	56(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB2_3
# %bb.2:                                # %if.then.i.i
	callq	_ZdlPv@PLT
.LBB2_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	_ZSt4cout@GOTPCREL(%rip), %r13
	leaq	.L.str.7(%rip), %rsi
	movl	$19, %edx
	movq	%r13, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%r12), %rsi
	movq	8(%r12), %rdx
	movq	%r13, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %r12
	leaq	.L.str.8(%rip), %rsi
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
	je	.LBB2_20
# %bb.4:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r13)
	je	.LBB2_6
# %bb.5:                                # %if.then.i2.i.i
	movzbl	67(%r13), %eax
	jmp	.LBB2_7
.LBB2_6:                                # %if.end.i.i.i
	movq	%r13, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r13), %rax
	movq	%r13, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB2_7:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	movsbl	%al, %esi
	movq	%r12, %rdi
	callq	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
	leaq	.L.str.6(%rip), %rsi
	leaq	8(%rsp), %r12
	movq	%r12, %rdi
	movq	%rbx, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp111:
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movl	$500, %ecx                      # imm = 0x1F4
	callq	_ZN7gpumath8gpu_timeIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Ltmp112:
# %bb.8:                                # %invoke.cont8
	movsd	%xmm0, (%rsp)                   # 8-byte Spill
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB2_10
# %bb.9:                                # %if.then.i.i7
	callq	_ZdlPv@PLT
.LBB2_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8
	movq	_ZSt4cout@GOTPCREL(%rip), %r14
	leaq	.L.str.9(%rip), %rsi
	movl	$18, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rbx
	leaq	.L.str.8(%rip), %rsi
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
	je	.LBB2_20
# %bb.11:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i31
	cmpb	$0, 56(%r14)
	je	.LBB2_13
# %bb.12:                               # %if.then.i2.i.i34
	movzbl	67(%r14), %eax
	jmp	.LBB2_14
.LBB2_13:                               # %if.end.i.i.i39
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB2_14:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit44
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
.LBB2_20:                               # %if.then.i.i.i
	.cfi_def_cfa_offset 128
	callq	_ZSt16__throw_bad_castv@PLT
.LBB2_16:                               # %lpad7
.Ltmp113:
	movq	%rax, %rbx
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rax
	jmp	.LBB2_17
.LBB2_15:                               # %lpad
.Ltmp110:
	movq	%rax, %rbx
	movq	40(%rsp), %rdi
	leaq	56(%rsp), %rax
.LBB2_17:                               # %lpad7
	cmpq	%rax, %rdi
	je	.LBB2_19
# %bb.18:                               # %ehcleanup.sink.split
	callq	_ZdlPv@PLT
.LBB2_19:                               # %ehcleanup
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end2:
	.size	_ZN7gpumath12compare_timeIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_, .Lfunc_end2-_ZN7gpumath12compare_timeIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath12compare_timeIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_,"aG",@progbits,_ZN7gpumath12compare_timeIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_,comdat
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp108-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp108
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp108-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp109-.Ltmp108              #   Call between .Ltmp108 and .Ltmp109
	.uleb128 .Ltmp110-.Lfunc_begin1         #     jumps to .Ltmp110
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Ltmp111-.Ltmp109              #   Call between .Ltmp109 and .Ltmp111
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp111-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp112-.Ltmp111              #   Call between .Ltmp111 and .Ltmp112
	.uleb128 .Ltmp113-.Lfunc_begin1         #     jumps to .Ltmp113
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Lfunc_end2-.Ltmp112           #   Call between .Ltmp112 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7gpumath5ArrayIdED2Ev,"axG",@progbits,_ZN7gpumath5ArrayIdED2Ev,comdat
	.weak	_ZN7gpumath5ArrayIdED2Ev        # -- Begin function _ZN7gpumath5ArrayIdED2Ev
	.p2align	4, 0x90
	.type	_ZN7gpumath5ArrayIdED2Ev,@function
_ZN7gpumath5ArrayIdED2Ev:               # @_ZN7gpumath5ArrayIdED2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
.Ltmp114:
	callq	omp_target_free@PLT
.Ltmp115:
# %bb.1:                                # %invoke.cont
	movq	$0, 8(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.LBB3_2:                                # %terminate.lpad
	.cfi_def_cfa_offset 16
.Ltmp116:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end3:
	.size	_ZN7gpumath5ArrayIdED2Ev, .Lfunc_end3-_ZN7gpumath5ArrayIdED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath5ArrayIdED2Ev,"aG",@progbits,_ZN7gpumath5ArrayIdED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table3:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp114-.Lfunc_begin2         # >> Call Site 1 <<
	.uleb128 .Ltmp115-.Ltmp114              #   Call between .Ltmp114 and .Ltmp115
	.uleb128 .Ltmp116-.Lfunc_begin2         #     jumps to .Ltmp116
	.byte	1                               #   On action: 1
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
	je	.LBB4_6
# %bb.1:                                # %if.then
	movl	%eax, %ebp
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.19(%rip), %rsi
	movl	$16, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	24(%rbx), %esi
	movq	%r14, %rdi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rbx
	leaq	.L.str.20(%rip), %rsi
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
	je	.LBB4_7
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r14)
	je	.LBB4_4
# %bb.3:                                # %if.then.i2.i.i
	movzbl	67(%r14), %eax
	jmp	.LBB4_5
.LBB4_6:                                # %if.else
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
.LBB4_4:                                # %if.end.i.i.i
	.cfi_def_cfa_offset 48
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB4_5:                                # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
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
.LBB4_7:                                # %if.then.i.i.i
	.cfi_def_cfa_offset 48
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end4:
	.size	_ZN7gpumath5ArrayIdE7to_hostEv, .Lfunc_end4-_ZN7gpumath5ArrayIdE7to_hostEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_,"axG",@progbits,_ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_,comdat
	.weak	_ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_ # -- Begin function _ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_
	.p2align	4, 0x90
	.type	_ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_,@function
_ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_: # @_ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_
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
	je	.LBB5_1
# %bb.2:                                # %if.end
	cmpb	$0, 28(%r13)
	je	.LBB5_3
.LBB5_4:                                # %if.end3
	cmpb	$0, 28(%rbx)
	je	.LBB5_5
.LBB5_6:                                # %if.end6
	movq	%rbp, %rdi
	movq	%r13, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_
	movq	%rbp, %rdi
	callq	_ZN7gpumath5ArrayIdE7to_hostEv
	cmpb	$0, 28(%r12)
	je	.LBB5_8
# %bb.7:                                # %if.then10
	movq	%r12, %rdi
	callq	_ZN7gpumath5ArrayIdE9to_deviceEv
.LBB5_8:                                # %if.end11
	movq	%rbp, %rdi
	movq	%r12, %rsi
	callq	_ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_
	leaq	.L__unnamed_1(%rip), %rdi
	leaq	_ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.omp_outlined(%rip), %rdx
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
.LBB5_1:                                # %if.then
	.cfi_def_cfa_offset 64
	movq	%rbp, %rdi
	callq	_ZN7gpumath5ArrayIdE9to_deviceEv
	cmpb	$0, 28(%r13)
	jne	.LBB5_4
.LBB5_3:                                # %if.then2
	movq	%r13, %rdi
	callq	_ZN7gpumath5ArrayIdE9to_deviceEv
	cmpb	$0, 28(%rbx)
	jne	.LBB5_6
.LBB5_5:                                # %if.then5
	movq	%rbx, %rdi
	callq	_ZN7gpumath5ArrayIdE9to_deviceEv
	jmp	.LBB5_6
.Lfunc_end5:
	.size	_ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_, .Lfunc_end5-_ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_
	.cfi_endproc
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
.Lfunc_end6:
	.size	__clang_call_terminate, .Lfunc_end6-__clang_call_terminate
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath8gpu_timeIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"axG",@progbits,_ZN7gpumath8gpu_timeIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.weak	_ZN7gpumath8gpu_timeIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi # -- Begin function _ZN7gpumath8gpu_timeIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.p2align	4, 0x90
	.type	_ZN7gpumath8gpu_timeIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,@function
_ZN7gpumath8gpu_timeIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi: # @_ZN7gpumath8gpu_timeIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
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
	leaq	.L.str.10(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	movq	24(%rsp), %rsi
	movq	%rsi, %rax
	shrq	$2, %rax
	movabsq	$2305843009213693951, %rcx      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	je	.LBB7_1
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	leaq	4(%rsi), %r13
	movq	16(%rsp), %rax
	leaq	32(%rsp), %r12
	movl	$15, %ecx
	cmpq	%r12, %rax
	je	.LBB7_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	32(%rsp), %rcx
.LBB7_5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	cmpq	%rcx, %r13
	jbe	.LBB7_6
# %bb.7:                                # %if.else.i.i.i
.Ltmp117:
	leaq	.L.str.11(%rip), %rcx
	leaq	16(%rsp), %rdi
	movl	$4, %r8d
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp118:
	jmp	.LBB7_8
.LBB7_6:                                # %if.end.i.i.i.i.i
	movl	$1954051118, (%rax,%rsi)        # imm = 0x7478742E
.LBB7_8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
	movq	%r13, 24(%rsp)
	movq	16(%rsp), %rax
	movb	$0, (%rax,%r13)
	leaq	72(%rsp), %r13
	movq	%r13, 56(%rsp)
	movq	16(%rsp), %rax
	cmpq	%r12, %rax
	je	.LBB7_9
# %bb.11:                               # %if.else.i.i
	movq	%rax, 56(%rsp)
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 72(%rsp)
	jmp	.LBB7_12
.LBB7_9:                                # %if.then.i.i
	movq	24(%rsp), %rbp
	movq	%rbp, %rdx
	movq	$-1, %rax
	incq	%rdx
	je	.LBB7_12
# %bb.10:                               # %if.end.i.i.i
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	memcpy@PLT
	movq	%rbp, %rax
.LBB7_12:                               # %invoke.cont
	movq	%rax, 64(%rsp)
	movq	%r12, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
.Ltmp119:
	leaq	88(%rsp), %rdi
	leaq	56(%rsp), %rsi
	movl	$16, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.Ltmp120:
# %bb.13:                               # %invoke.cont3
	movq	56(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB7_15
# %bb.14:                               # %if.then.i.i9
	callq	_ZdlPv@PLT
.LBB7_15:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	16(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB7_17
# %bb.16:                               # %if.then.i.i11
	callq	_ZdlPv@PLT
.LBB7_17:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
	xorpd	%xmm0, %xmm0
	testl	%ebx, %ebx
	jle	.LBB7_18
# %bb.25:                               # %for.body.preheader
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	leaq	88(%rsp), %r12
	.p2align	4, 0x90
.LBB7_26:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
.Ltmp122:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_
	movsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp123:
# %bb.27:                               # %invoke.cont7
                                        #   in Loop: Header=BB7_26 Depth=1
.Ltmp124:
	movq	%r12, %rdi
	movsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp125:
# %bb.28:                               # %invoke.cont8
                                        #   in Loop: Header=BB7_26 Depth=1
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB7_29
# %bb.31:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB7_26 Depth=1
	cmpb	$0, 56(%rbp)
	je	.LBB7_33
# %bb.32:                               # %if.then.i2.i.i
                                        #   in Loop: Header=BB7_26 Depth=1
	movzbl	67(%rbp), %eax
	jmp	.LBB7_35
	.p2align	4, 0x90
.LBB7_33:                               # %if.end.i.i.i22
                                        #   in Loop: Header=BB7_26 Depth=1
.Ltmp126:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp127:
# %bb.34:                               # %.noexc26
                                        #   in Loop: Header=BB7_26 Depth=1
	movq	(%rbp), %rax
.Ltmp128:
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp129:
.LBB7_35:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB7_26 Depth=1
.Ltmp130:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp131:
# %bb.36:                               # %call1.i.noexc
                                        #   in Loop: Header=BB7_26 Depth=1
.Ltmp132:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp133:
# %bb.37:                               # %invoke.cont10
                                        #   in Loop: Header=BB7_26 Depth=1
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	48(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	decl	%ebx
	jne	.LBB7_26
	jmp	.LBB7_19
.LBB7_18:
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.LBB7_19:                               # %for.cond.cleanup
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
.LBB7_29:                               # %if.then.i.i.i24
	.cfi_def_cfa_offset 656
.Ltmp135:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp136:
# %bb.30:                               # %.noexc25
.LBB7_1:                                # %if.then.i.i.i
.Ltmp138:
	leaq	.L.str.12(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp139:
# %bb.2:                                # %.noexc
.LBB7_21:                               # %lpad2
.Ltmp121:
	movq	%rax, %rbx
	movq	56(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB7_23
# %bb.22:                               # %if.then.i.i14
	callq	_ZdlPv@PLT
	jmp	.LBB7_23
.LBB7_20:                               # %lpad
.Ltmp140:
	movq	%rax, %rbx
.LBB7_23:                               # %ehcleanup
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB7_41
# %bb.24:                               # %if.then.i.i17
	callq	_ZdlPv@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB7_39:                               # %lpad6.loopexit.split-lp
.Ltmp137:
	jmp	.LBB7_40
.LBB7_38:                               # %lpad6.loopexit
.Ltmp134:
.LBB7_40:                               # %lpad6
	movq	%rax, %rbx
	leaq	88(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.LBB7_41:                               # %ehcleanup16
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end7:
	.size	_ZN7gpumath8gpu_timeIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, .Lfunc_end7-_ZN7gpumath8gpu_timeIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath8gpu_timeIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"aG",@progbits,_ZN7gpumath8gpu_timeIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp117-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp117
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp117-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp118-.Ltmp117              #   Call between .Ltmp117 and .Ltmp118
	.uleb128 .Ltmp140-.Lfunc_begin3         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin3         #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp133-.Ltmp122              #   Call between .Ltmp122 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin3         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp136-.Ltmp135              #   Call between .Ltmp135 and .Ltmp136
	.uleb128 .Ltmp137-.Lfunc_begin3         #     jumps to .Ltmp137
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp139-.Ltmp138              #   Call between .Ltmp138 and .Ltmp139
	.uleb128 .Ltmp140-.Lfunc_begin3         #     jumps to .Ltmp140
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Lfunc_end7-.Ltmp139           #   Call between .Ltmp139 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_ # -- Begin function _ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	.p2align	4, 0x90
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,@function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_: # @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	jb	.LBB8_8
# %bb.1:                                # %if.end.i
	movq	%r14, (%rsp)                    # 8-byte Spill
	testq	%rax, %rax
	js	.LBB8_2
# %bb.3:                                # %land.lhs.true.i.i
	cmpq	$31, %rax
	movl	$30, %r14d
	cmovaeq	%rax, %r14
	movq	%r14, %rdi
	incq	%rdi
	js	.LBB8_4
# %bb.6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
.Ltmp141:
	callq	_Znwm@PLT
.Ltmp142:
# %bb.7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit.i
	movq	%rax, %rbp
	movb	$0, (%rax)
	movq	%rax, (%rbx)
	movq	%r14, 16(%rbx)
	movq	(%rsp), %r14                    # 8-byte Reload
.LBB8_8:                                # %invoke.cont4
	leaq	.L.str.12(%rip), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	testq	%r15, %r15
	js	.LBB8_19
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
	movl	$15, %eax
	cmpq	%r13, %rbp
	je	.LBB8_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
	movq	(%r13), %rax
.LBB8_11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i
	cmpq	%rax, %r15
	jbe	.LBB8_12
# %bb.16:                               # %if.else.i.i
.Ltmp143:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r12, %rcx
	movq	%r15, %r8
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp144:
# %bb.17:                               # %if.else.i.i.invoke.cont5_crit_edge
	movq	(%rbx), %rbp
	jmp	.LBB8_18
.LBB8_12:                               # %if.then.i3.i
	testq	%r15, %r15
	je	.LBB8_18
# %bb.13:                               # %if.then.i3.i
	cmpq	$1, %r15
	jne	.LBB8_15
# %bb.14:                               # %if.then.i.i.i
	movzbl	(%r12), %eax
	movb	%al, (%rbp)
	jmp	.LBB8_18
.LBB8_15:                               # %if.end.i.i.i.i
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
.LBB8_18:                               # %invoke.cont5
	movq	%r15, 8(%rbx)
	movb	$0, (%rbp,%r15)
	movq	8(%r14), %r8
	movq	8(%rbx), %rsi
	movabsq	$9223372036854775807, %rax      # imm = 0x7FFFFFFFFFFFFFFF
	xorq	%rsi, %rax
	cmpq	%r8, %rax
	jb	.LBB8_19
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	leaq	(%rsi,%r8), %r15
	movq	(%rbx), %rdi
	movl	$15, %eax
	cmpq	%r13, %rdi
	je	.LBB8_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	16(%rbx), %rax
.LBB8_23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	(%r14), %rcx
	cmpq	%rax, %r15
	jbe	.LBB8_24
# %bb.27:                               # %if.else.i.i.i
.Ltmp145:
	movq	%rbx, %rdi
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp146:
	jmp	.LBB8_32
.LBB8_24:                               # %if.then.i3.i.i
	testq	%r8, %r8
	je	.LBB8_32
# %bb.25:                               # %if.then3.i.i.i
	addq	%rsi, %rdi
	cmpq	$1, %r8
	jne	.LBB8_31
# %bb.26:                               # %if.then.i.i.i.i
	movzbl	(%rcx), %eax
	movb	%al, (%rdi)
	jmp	.LBB8_32
.LBB8_31:                               # %if.end.i.i.i.i.i19
	movq	%rcx, %rsi
	movq	%r8, %rdx
	callq	memcpy@PLT
.LBB8_32:                               # %nrvo.skipdtor
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
.LBB8_4:                                # %if.end.i.i.i.i.i
	.cfi_def_cfa_offset 64
.Ltmp147:
	callq	_ZSt17__throw_bad_allocv@PLT
.Ltmp148:
# %bb.5:                                # %.noexc6
.LBB8_2:
	leaq	.L.str.3(%rip), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
.LBB8_19:                               # %if.then.i.i.i20.invoke
.Ltmp149:
	movq	(%rsp), %rdi                    # 8-byte Reload
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp150:
# %bb.20:                               # %if.then.i.i.i20.cont
.LBB8_28:                               # %lpad3
.Ltmp151:
	movq	%rax, %r14
	movq	(%rbx), %rdi
	cmpq	%r13, %rdi
	je	.LBB8_30
# %bb.29:                               # %if.then.i.i24
	callq	_ZdlPv@PLT
.LBB8_30:                               # %ehcleanup
	movq	%r14, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end8:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_, .Lfunc_end8-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	.cfi_endproc
	.section	.gcc_except_table._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,"aG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp141-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp144-.Ltmp141              #   Call between .Ltmp141 and .Ltmp144
	.uleb128 .Ltmp151-.Lfunc_begin4         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp145-.Ltmp144              #   Call between .Ltmp144 and .Ltmp145
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp151-.Lfunc_begin4         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin4         # >> Call Site 4 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin4         # >> Call Site 5 <<
	.uleb128 .Ltmp150-.Ltmp147              #   Call between .Ltmp147 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin4         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin4         # >> Call Site 6 <<
	.uleb128 .Lfunc_end8-.Ltmp150           #   Call between .Ltmp150 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7gpumath8gpu_timeIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"axG",@progbits,_ZN7gpumath8gpu_timeIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.weak	_ZN7gpumath8gpu_timeIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi # -- Begin function _ZN7gpumath8gpu_timeIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.p2align	4, 0x90
	.type	_ZN7gpumath8gpu_timeIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,@function
_ZN7gpumath8gpu_timeIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi: # @_ZN7gpumath8gpu_timeIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	leaq	.L.str.10(%rip), %rsi
	leaq	16(%rsp), %rdi
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	movq	24(%rsp), %rsi
	movq	%rsi, %rax
	shrq	$2, %rax
	movabsq	$2305843009213693951, %rcx      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	je	.LBB9_1
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	leaq	4(%rsi), %r13
	movq	16(%rsp), %rax
	leaq	32(%rsp), %r12
	movl	$15, %ecx
	cmpq	%r12, %rax
	je	.LBB9_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	32(%rsp), %rcx
.LBB9_5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	cmpq	%rcx, %r13
	jbe	.LBB9_6
# %bb.7:                                # %if.else.i.i.i
.Ltmp152:
	leaq	.L.str.11(%rip), %rcx
	leaq	16(%rsp), %rdi
	movl	$4, %r8d
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp153:
	jmp	.LBB9_8
.LBB9_6:                                # %if.end.i.i.i.i.i
	movl	$1954051118, (%rax,%rsi)        # imm = 0x7478742E
.LBB9_8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
	movq	%r13, 24(%rsp)
	movq	16(%rsp), %rax
	movb	$0, (%rax,%r13)
	leaq	72(%rsp), %r13
	movq	%r13, 56(%rsp)
	movq	16(%rsp), %rax
	cmpq	%r12, %rax
	je	.LBB9_9
# %bb.11:                               # %if.else.i.i
	movq	%rax, 56(%rsp)
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	%rcx, 72(%rsp)
	jmp	.LBB9_12
.LBB9_9:                                # %if.then.i.i
	movq	24(%rsp), %rbp
	movq	%rbp, %rdx
	movq	$-1, %rax
	incq	%rdx
	je	.LBB9_12
# %bb.10:                               # %if.end.i.i.i
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	memcpy@PLT
	movq	%rbp, %rax
.LBB9_12:                               # %invoke.cont
	movq	%rax, 64(%rsp)
	movq	%r12, 16(%rsp)
	movq	$0, 24(%rsp)
	movb	$0, 32(%rsp)
.Ltmp154:
	leaq	88(%rsp), %rdi
	leaq	56(%rsp), %rsi
	movl	$16, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.Ltmp155:
# %bb.13:                               # %invoke.cont3
	movq	56(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB9_15
# %bb.14:                               # %if.then.i.i9
	callq	_ZdlPv@PLT
.LBB9_15:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	16(%rsp), %rdi
	cmpq	%r12, %rdi
	je	.LBB9_17
# %bb.16:                               # %if.then.i.i11
	callq	_ZdlPv@PLT
.LBB9_17:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
	xorpd	%xmm0, %xmm0
	testl	%ebx, %ebx
	jle	.LBB9_18
# %bb.25:                               # %for.body.preheader
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	leaq	88(%rsp), %r12
	.p2align	4, 0x90
.LBB9_26:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
.Ltmp157:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_
	movsd	%xmm0, 48(%rsp)                 # 8-byte Spill
.Ltmp158:
# %bb.27:                               # %invoke.cont7
                                        #   in Loop: Header=BB9_26 Depth=1
.Ltmp159:
	movq	%r12, %rdi
	movsd	48(%rsp), %xmm0                 # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp160:
# %bb.28:                               # %invoke.cont8
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	%rax, %r13
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r13,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB9_29
# %bb.31:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB9_26 Depth=1
	cmpb	$0, 56(%rbp)
	je	.LBB9_33
# %bb.32:                               # %if.then.i2.i.i
                                        #   in Loop: Header=BB9_26 Depth=1
	movzbl	67(%rbp), %eax
	jmp	.LBB9_35
	.p2align	4, 0x90
.LBB9_33:                               # %if.end.i.i.i22
                                        #   in Loop: Header=BB9_26 Depth=1
.Ltmp161:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp162:
# %bb.34:                               # %.noexc26
                                        #   in Loop: Header=BB9_26 Depth=1
	movq	(%rbp), %rax
.Ltmp163:
	movq	%rbp, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp164:
.LBB9_35:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB9_26 Depth=1
.Ltmp165:
	movsbl	%al, %esi
	movq	%r13, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp166:
# %bb.36:                               # %call1.i.noexc
                                        #   in Loop: Header=BB9_26 Depth=1
.Ltmp167:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp168:
# %bb.37:                               # %invoke.cont10
                                        #   in Loop: Header=BB9_26 Depth=1
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	addsd	48(%rsp), %xmm0                 # 8-byte Folded Reload
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	decl	%ebx
	jne	.LBB9_26
	jmp	.LBB9_19
.LBB9_18:
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.LBB9_19:                               # %for.cond.cleanup
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
.LBB9_29:                               # %if.then.i.i.i24
	.cfi_def_cfa_offset 656
.Ltmp170:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp171:
# %bb.30:                               # %.noexc25
.LBB9_1:                                # %if.then.i.i.i
.Ltmp173:
	leaq	.L.str.12(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp174:
# %bb.2:                                # %.noexc
.LBB9_21:                               # %lpad2
.Ltmp156:
	movq	%rax, %rbx
	movq	56(%rsp), %rdi
	cmpq	%r13, %rdi
	je	.LBB9_23
# %bb.22:                               # %if.then.i.i14
	callq	_ZdlPv@PLT
	jmp	.LBB9_23
.LBB9_20:                               # %lpad
.Ltmp175:
	movq	%rax, %rbx
.LBB9_23:                               # %ehcleanup
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB9_41
# %bb.24:                               # %if.then.i.i17
	callq	_ZdlPv@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB9_39:                               # %lpad6.loopexit.split-lp
.Ltmp172:
	jmp	.LBB9_40
.LBB9_38:                               # %lpad6.loopexit
.Ltmp169:
.LBB9_40:                               # %lpad6
	movq	%rax, %rbx
	leaq	88(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.LBB9_41:                               # %ehcleanup16
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end9:
	.size	_ZN7gpumath8gpu_timeIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi, .Lfunc_end9-_ZN7gpumath8gpu_timeIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath8gpu_timeIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,"aG",@progbits,_ZN7gpumath8gpu_timeIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp152-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp152
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp175-.Lfunc_begin5         #     jumps to .Ltmp175
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Ltmp154-.Ltmp153              #   Call between .Ltmp153 and .Ltmp154
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin5         # >> Call Site 4 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin5         #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin5         # >> Call Site 5 <<
	.uleb128 .Ltmp168-.Ltmp157              #   Call between .Ltmp157 and .Ltmp168
	.uleb128 .Ltmp169-.Lfunc_begin5         #     jumps to .Ltmp169
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin5         # >> Call Site 6 <<
	.uleb128 .Ltmp171-.Ltmp170              #   Call between .Ltmp170 and .Ltmp171
	.uleb128 .Ltmp172-.Lfunc_begin5         #     jumps to .Ltmp172
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp173-.Lfunc_begin5         # >> Call Site 7 <<
	.uleb128 .Ltmp174-.Ltmp173              #   Call between .Ltmp173 and .Ltmp174
	.uleb128 .Ltmp175-.Lfunc_begin5         #     jumps to .Ltmp175
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin5         # >> Call Site 8 <<
	.uleb128 .Lfunc_end9-.Ltmp174           #   Call between .Ltmp174 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_,"axG",@progbits,_ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_,comdat
	.weak	_ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_ # -- Begin function _ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_
	.p2align	4, 0x90
	.type	_ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_,@function
_ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_: # @_ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_
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
	jne	.LBB10_2
# %bb.1:                                # %cond.end
	movq	8(%rdi), %r15
	movq	8(%rsi), %r12
	movslq	24(%rdi), %rbx
	callq	omp_get_wtime@PLT
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%r14, 40(%rsp)
	movq	%r14, 16(%rsp)
	movq	%r12, 48(%rsp)
	movq	%r12, 24(%rsp)
	movq	%r15, 56(%rsp)
	movq	%r15, 32(%rsp)
	movabsq	$12884901890, %rax              # imm = 0x300000002
	movq	%rax, 64(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	.L.offload_sizes.17(%rip), %rax
	movq	%rax, 88(%rsp)
	leaq	.L.offload_maptypes.18(%rip), %rax
	movq	%rax, 96(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 104(%rsp)
	movq	%r14, 120(%rsp)
	movupd	%xmm0, 128(%rsp)
	movupd	%xmm0, 144(%rsp)
	movl	$0, 160(%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	movq	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21.region_id@GOTPCREL(%rip), %r8
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
.LBB10_2:                               # %cond.false
	.cfi_def_cfa_offset 208
	leaq	.L.str.13(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_(%rip), %rcx
	movl	$15, %edx
	callq	__assert_fail@PLT
.Lfunc_end10:
	.size	_ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_, .Lfunc_end10-_ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_
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
	je	.LBB11_2
# %bb.1:                                # %entry
	movq	16(%rbx), %rax
.LBB11_2:                               # %entry
	addq	%r12, %rbp
	js	.LBB11_25
# %bb.3:                                # %if.end.i
	cmpq	%rax, %rbp
	jbe	.LBB11_6
# %bb.4:                                # %land.lhs.true.i
	addq	%rax, %rax
	cmpq	%rax, %rbp
	jae	.LBB11_6
# %bb.5:                                # %if.then4.i
	movabsq	$9223372036854775807, %rbp      # imm = 0x7FFFFFFFFFFFFFFF
	cmpq	%rbp, %rax
	cmovbq	%rax, %rbp
.LBB11_6:                               # %if.end11.i
	movq	%rbp, %rdi
	incq	%rdi
	js	.LBB11_26
# %bb.7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	callq	_Znwm@PLT
	movq	%rax, %r13
	testq	%r15, %r15
	je	.LBB11_11
# %bb.8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
	cmpq	$1, %r15
	jne	.LBB11_10
# %bb.9:                                # %if.then.i18
	movzbl	(%r14), %eax
	movb	%al, (%r13)
	jmp	.LBB11_11
.LBB11_10:                              # %if.end.i.i
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	memcpy@PLT
.LBB11_11:                              # %if.end
	movq	%r14, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	leaq	(%rax,%r15), %r14
	movq	32(%rsp), %rsi                  # 8-byte Reload
	testq	%rsi, %rsi
	movq	(%rsp), %rdx                    # 8-byte Reload
	je	.LBB11_17
# %bb.12:                               # %if.end
	testq	%rdx, %rdx
	je	.LBB11_17
# %bb.13:                               # %if.then10
	leaq	(%r15,%r13), %rdi
	cmpq	$1, %rdx
	jne	.LBB11_15
# %bb.14:                               # %if.then.i20
	movzbl	(%rsi), %eax
	movb	%al, (%rdi)
	jmp	.LBB11_16
.LBB11_15:                              # %if.end.i.i21
	callq	memcpy@PLT
.LBB11_16:                              # %if.end11
	movq	(%rsp), %rdx                    # 8-byte Reload
.LBB11_17:                              # %if.end11
	cmpq	%r14, %r12
	je	.LBB11_22
# %bb.18:                               # %if.then13
	subq	%r14, %r12
	je	.LBB11_22
# %bb.19:                               # %if.then13
	movq	%r13, %rdi
	addq	%r15, %rdi
	addq	%rdx, %rdi
	addq	8(%rsp), %r15                   # 8-byte Folded Reload
	addq	16(%rsp), %r15                  # 8-byte Folded Reload
	cmpq	$1, %r12
	jne	.LBB11_21
# %bb.20:                               # %if.then.i24
	movzbl	(%r15), %eax
	movb	%al, (%rdi)
.LBB11_22:                              # %if.end19
	movq	8(%rsp), %rdi                   # 8-byte Reload
	cmpq	24(%rsp), %rdi                  # 8-byte Folded Reload
	je	.LBB11_24
.LBB11_23:                              # %if.then.i28
	callq	_ZdlPv@PLT
.LBB11_24:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit
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
.LBB11_21:                              # %if.end.i.i25
	.cfi_def_cfa_offset 96
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	cmpq	24(%rsp), %rdi                  # 8-byte Folded Reload
	jne	.LBB11_23
	jmp	.LBB11_24
.LBB11_26:                              # %if.end.i.i.i.i
	callq	_ZSt17__throw_bad_allocv@PLT
.LBB11_25:                              # %if.then.i
	leaq	.L.str.3(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Lfunc_end11:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm, .Lfunc_end11-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_,"axG",@progbits,_ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_,comdat
	.weak	_ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_ # -- Begin function _ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_
	.p2align	4, 0x90
	.type	_ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_,@function
_ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_: # @_ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_
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
	jne	.LBB12_2
# %bb.1:                                # %cond.end
	movq	8(%rdi), %r15
	movq	8(%rsi), %r12
	movslq	24(%rdi), %rbx
	callq	omp_get_wtime@PLT
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
	movq	%r14, 40(%rsp)
	movq	%r14, 16(%rsp)
	movq	%r12, 48(%rsp)
	movq	%r12, 24(%rsp)
	movq	%r15, 56(%rsp)
	movq	%r15, 32(%rsp)
	movabsq	$12884901890, %rax              # imm = 0x300000002
	movq	%rax, 64(%rsp)
	leaq	40(%rsp), %rax
	movq	%rax, 72(%rsp)
	leaq	16(%rsp), %rax
	movq	%rax, 80(%rsp)
	leaq	.L.offload_sizes.17(%rip), %rax
	movq	%rax, 88(%rsp)
	leaq	.L.offload_maptypes.18(%rip), %rax
	movq	%rax, 96(%rsp)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, 104(%rsp)
	movq	%r14, 120(%rsp)
	movupd	%xmm0, 128(%rsp)
	movupd	%xmm0, 144(%rsp)
	movl	$0, 160(%rsp)
	leaq	.L__unnamed_1(%rip), %rdi
	movq	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21.region_id@GOTPCREL(%rip), %r8
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
.LBB12_2:                               # %cond.false
	.cfi_def_cfa_offset 208
	leaq	.L.str.13(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_(%rip), %rcx
	movl	$15, %edx
	callq	__assert_fail@PLT
.Lfunc_end12:
	.size	_ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_, .Lfunc_end12-_ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_
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
	je	.LBB13_6
# %bb.1:                                # %if.then
	movl	%eax, %ebp
	movq	_ZSt4cerr@GOTPCREL(%rip), %r14
	leaq	.L.str.25(%rip), %rsi
	movl	$20, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movl	24(%rbx), %esi
	movq	%r14, %rdi
	callq	_ZNSolsEi@PLT
	movq	%rax, %rbx
	leaq	.L.str.26(%rip), %rsi
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
	je	.LBB13_7
# %bb.2:                                # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	cmpb	$0, 56(%r14)
	je	.LBB13_4
# %bb.3:                                # %if.then.i2.i.i
	movzbl	67(%r14), %eax
	jmp	.LBB13_5
.LBB13_6:                               # %if.else
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
.LBB13_4:                               # %if.end.i.i.i
	.cfi_def_cfa_offset 48
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	(%r14), %rax
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.LBB13_5:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
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
.LBB13_7:                               # %if.then.i.i.i
	.cfi_def_cfa_offset 48
	callq	_ZSt16__throw_bad_castv@PLT
.Lfunc_end13:
	.size	_ZN7gpumath5ArrayIdE9to_deviceEv, .Lfunc_end13-_ZN7gpumath5ArrayIdE9to_deviceEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_,"axG",@progbits,_ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_,comdat
	.weak	_ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_ # -- Begin function _ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_
	.p2align	4, 0x90
	.type	_ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_,@function
_ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_: # @_ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
	movl	16(%rdi), %eax
	cmpl	16(%rsi), %eax
	jne	.LBB14_4
# %bb.1:                                # %cond.end
	cmpb	$0, 28(%rdi)
	jne	.LBB14_5
# %bb.2:                                # %cond.end5
	cmpb	$0, 28(%rsi)
	jne	.LBB14_6
# %bb.3:                                # %cond.end10
	movq	(%rdi), %rcx
	movq	%rcx, 32(%rsp)
	movq	(%rsi), %rcx
	movq	%rcx, 24(%rsp)
	movl	%eax, 12(%rsp)
	callq	omp_get_wtime@PLT
	movsd	%xmm0, 16(%rsp)                 # 8-byte Spill
	leaq	.L__unnamed_1(%rip), %rdi
	leaq	_ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_.omp_outlined(%rip), %rdx
	leaq	12(%rsp), %rcx
	leaq	24(%rsp), %r8
	leaq	32(%rsp), %r9
	movl	$3, %esi
	xorl	%eax, %eax
	callq	__kmpc_fork_call@PLT
	callq	omp_get_wtime@PLT
	subsd	16(%rsp), %xmm0                 # 8-byte Folded Reload
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	retq
.LBB14_4:                               # %cond.false
	.cfi_def_cfa_offset 48
	leaq	.L.str.13(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_(%rip), %rcx
	movl	$30, %edx
	callq	__assert_fail@PLT
.LBB14_5:                               # %cond.false4
	leaq	.L.str.27(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_(%rip), %rcx
	movl	$31, %edx
	callq	__assert_fail@PLT
.LBB14_6:                               # %cond.false9
	leaq	.L.str.28(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_(%rip), %rcx
	movl	$32, %edx
	callq	__assert_fail@PLT
.Lfunc_end14:
	.size	_ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_, .Lfunc_end14-_ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.omp_outlined
	.type	_ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.omp_outlined,@function
_ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.omp_outlined: # @_ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.omp_outlined
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
	je	.LBB15_1
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
	leaq	.omp_task_entry..24(%rip), %r9
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
.LBB15_1:                               # %omp_if.end
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
.Lfunc_end15:
	.size	_ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.omp_outlined, .Lfunc_end15-_ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.omp_outlined
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LCPI16_0:
	.quad	0x7fffffffffffffff              # double NaN
	.quad	0x7fffffffffffffff              # double NaN
	.section	.text._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.weak	_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	4, 0x90
	.type	_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
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
	jne	.LBB16_44
# %bb.1:                                # %cond.end
	movq	%rdi, %rbx
	cmpb	$0, 28(%rdi)
	jne	.LBB16_45
# %bb.2:                                # %cond.end5
	cmpb	$0, 28(%rsi)
	jne	.LBB16_46
# %bb.3:                                # %cond.end10
	movq	(%rbx), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	(%rsi), %rbp
	leaq	.L.str.10(%rip), %rsi
	leaq	8(%rsp), %rdi
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
	movq	16(%rsp), %rsi
	movq	%rsi, %rax
	shrq	$2, %rax
	movabsq	$2305843009213693951, %rcx      # imm = 0x1FFFFFFFFFFFFFFF
	cmpq	%rcx, %rax
	je	.LBB16_4
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	leaq	4(%rsi), %r15
	movq	8(%rsp), %rax
	leaq	24(%rsp), %r14
	movl	$15, %ecx
	cmpq	%r14, %rax
	je	.LBB16_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	movq	24(%rsp), %rcx
.LBB16_8:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
	cmpq	%rcx, %r15
	jbe	.LBB16_9
# %bb.10:                               # %if.else.i.i.i
.Ltmp176:
	leaq	.L.str.11(%rip), %rcx
	leaq	8(%rsp), %rdi
	movl	$4, %r8d
	xorl	%edx, %edx
	callq	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm
.Ltmp177:
	jmp	.LBB16_11
.LBB16_9:                               # %if.end.i.i.i.i.i
	movl	$1954051118, (%rax,%rsi)        # imm = 0x7478742E
.LBB16_11:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
	movq	%r15, 16(%rsp)
	movq	8(%rsp), %rax
	movb	$0, (%rax,%r15)
	leaq	88(%rsp), %r15
	movq	%r15, 72(%rsp)
	movq	8(%rsp), %rax
	cmpq	%r14, %rax
	je	.LBB16_12
# %bb.14:                               # %if.else.i.i
	movq	%rax, 72(%rsp)
	movq	16(%rsp), %rax
	movq	24(%rsp), %rcx
	movq	%rcx, 88(%rsp)
	jmp	.LBB16_15
.LBB16_12:                              # %if.then.i.i
	movq	16(%rsp), %r12
	movq	%r12, %rdx
	movq	$-1, %rax
	incq	%rdx
	je	.LBB16_15
# %bb.13:                               # %if.end.i.i.i
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	memcpy@PLT
	movq	%r12, %rax
.LBB16_15:                              # %invoke.cont
	movq	%rax, 80(%rsp)
	movq	%r14, 8(%rsp)
	movq	$0, 16(%rsp)
	movb	$0, 24(%rsp)
.Ltmp178:
	leaq	104(%rsp), %rdi
	leaq	72(%rsp), %rsi
	movl	$16, %edx
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1ERKNSt7__cxx1112basic_stringIcS1_SaIcEEESt13_Ios_Openmode@PLT
.Ltmp179:
# %bb.16:                               # %invoke.cont15
	movq	72(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB16_18
# %bb.17:                               # %if.then.i.i17
	callq	_ZdlPv@PLT
.LBB16_18:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	movq	8(%rsp), %rdi
	cmpq	%r14, %rdi
	je	.LBB16_20
# %bb.19:                               # %if.then.i.i19
	callq	_ZdlPv@PLT
.LBB16_20:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
	cmpl	$0, 16(%rbx)
	jle	.LBB16_21
# %bb.28:                               # %for.body.preheader
	xorpd	%xmm0, %xmm0
	movsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	xorl	%r13d, %r13d
	leaq	104(%rsp), %r14
	.p2align	4, 0x90
.LBB16_29:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	64(%rsp), %rax                  # 8-byte Reload
	movsd	(%rax,%r13,8), %xmm0            # xmm0 = mem[0],zero
	subsd	(%rbp,%r13,8), %xmm0
	andpd	.LCPI16_0(%rip), %xmm0
.Ltmp181:
	movq	%r14, %rdi
	movapd	%xmm0, 48(%rsp)                 # 16-byte Spill
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp182:
# %bb.30:                               # %invoke.cont25
                                        #   in Loop: Header=BB16_29 Depth=1
	movq	%rax, %r15
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%r15,%rax), %r12
	testq	%r12, %r12
	je	.LBB16_31
# %bb.33:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB16_29 Depth=1
	cmpb	$0, 56(%r12)
	je	.LBB16_35
# %bb.34:                               # %if.then.i2.i.i
                                        #   in Loop: Header=BB16_29 Depth=1
	movzbl	67(%r12), %eax
	jmp	.LBB16_37
	.p2align	4, 0x90
.LBB16_35:                              # %if.end.i.i.i31
                                        #   in Loop: Header=BB16_29 Depth=1
.Ltmp183:
	movq	%r12, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp184:
# %bb.36:                               # %.noexc35
                                        #   in Loop: Header=BB16_29 Depth=1
	movq	(%r12), %rax
.Ltmp185:
	movq	%r12, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp186:
.LBB16_37:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB16_29 Depth=1
.Ltmp187:
	movsbl	%al, %esi
	movq	%r15, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp188:
# %bb.38:                               # %call1.i.noexc
                                        #   in Loop: Header=BB16_29 Depth=1
.Ltmp189:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp190:
# %bb.39:                               # %invoke.cont27
                                        #   in Loop: Header=BB16_29 Depth=1
	movapd	48(%rsp), %xmm0                 # 16-byte Reload
	maxsd	40(%rsp), %xmm0                 # 8-byte Folded Reload
	incq	%r13
	movslq	16(%rbx), %rax
	movsd	%xmm0, 40(%rsp)                 # 8-byte Spill
	cmpq	%rax, %r13
	jl	.LBB16_29
	jmp	.LBB16_22
.LBB16_21:
	xorpd	%xmm0, %xmm0
.LBB16_22:                              # %for.cond.cleanup
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
.LBB16_31:                              # %if.then.i.i.i33
	.cfi_def_cfa_offset 672
.Ltmp192:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp193:
# %bb.32:                               # %.noexc34
.LBB16_44:                              # %cond.false
	leaq	.L.str.29(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movl	$66, %edx
	callq	__assert_fail@PLT
.LBB16_45:                              # %cond.false4
	leaq	.L.str.30(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movl	$67, %edx
	callq	__assert_fail@PLT
.LBB16_46:                              # %cond.false9
	leaq	.L.str.31(%rip), %rdi
	leaq	.L.str.14(%rip), %rsi
	leaq	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%rip), %rcx
	movl	$68, %edx
	callq	__assert_fail@PLT
.LBB16_4:                               # %if.then.i.i.i
.Ltmp195:
	leaq	.L.str.12(%rip), %rdi
	callq	_ZSt20__throw_length_errorPKc@PLT
.Ltmp196:
# %bb.5:                                # %.noexc
.LBB16_24:                              # %lpad14
.Ltmp180:
	movq	%rax, %rbx
	movq	72(%rsp), %rdi
	cmpq	%r15, %rdi
	je	.LBB16_26
# %bb.25:                               # %if.then.i.i23
	callq	_ZdlPv@PLT
	jmp	.LBB16_26
.LBB16_23:                              # %lpad
.Ltmp197:
	movq	%rax, %rbx
.LBB16_26:                              # %ehcleanup
	movq	8(%rsp), %rdi
	leaq	24(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB16_43
# %bb.27:                               # %if.then.i.i26
	callq	_ZdlPv@PLT
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.LBB16_41:                              # %lpad22.loopexit.split-lp
.Ltmp194:
	jmp	.LBB16_42
.LBB16_40:                              # %lpad22.loopexit
.Ltmp191:
.LBB16_42:                              # %lpad22
	movq	%rax, %rbx
	leaq	104(%rsp), %rdi
	callq	_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev@PLT
.LBB16_43:                              # %ehcleanup35
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
.Lfunc_end16:
	.size	_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end16-_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"aG",@progbits,_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.p2align	2, 0x0
GCC_except_table16:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp176-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp176
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp177-.Ltmp176              #   Call between .Ltmp176 and .Ltmp177
	.uleb128 .Ltmp197-.Lfunc_begin6         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin6         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp190-.Ltmp181              #   Call between .Ltmp181 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin6         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp194-.Lfunc_begin6         #     jumps to .Ltmp194
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp196-.Ltmp195              #   Call between .Ltmp195 and .Ltmp196
	.uleb128 .Ltmp197-.Lfunc_begin6         #     jumps to .Ltmp197
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Lfunc_end16-.Ltmp196          #   Call between .Ltmp196 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .omp_task_entry.
	.type	.omp_task_entry.,@function
.omp_task_entry.:                       # @.omp_task_entry.
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
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
.Ltmp198:
	movq	%r14, %rdi
	callq	_ZN7gpumath5ArrayIdE7to_hostEv
.Ltmp199:
# %bb.1:                                # %invoke.cont.i
	movq	8(%rbx), %r15
	movq	16(%rbx), %rbx
.Ltmp200:
	leaq	.L.str.21(%rip), %rsi
	leaq	16(%rsp), %rdi
	movq	%rbx, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp201:
# %bb.2:                                # %invoke.cont1.i
.Ltmp202:
	leaq	16(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.Ltmp203:
# %bb.3:                                # %invoke.cont2.i
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB17_5
# %bb.4:                                # %if.then.i.i.i
	callq	_ZdlPv@PLT
.LBB17_5:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
.Ltmp204:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp205:
# %bb.6:                                # %invoke.cont3.i
.Ltmp206:
	movq	%rax, %rbx
	leaq	.L.str.22(%rip), %rsi
	movl	$15, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp207:
# %bb.7:                                # %invoke.cont5.i
.Ltmp208:
	movq	%rbx, %rdi
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp209:
# %bb.8:                                # %invoke.cont7.i
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB17_9
# %bb.11:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	cmpb	$0, 56(%r14)
	je	.LBB17_13
# %bb.12:                               # %if.then.i2.i.i.i
	movzbl	67(%r14), %eax
	jmp	.LBB17_15
.LBB17_13:                              # %if.end.i.i.i.i
.Ltmp210:
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp211:
# %bb.14:                               # %.noexc6.i
	movq	(%r14), %rax
.Ltmp212:
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp213:
.LBB17_15:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
.Ltmp214:
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp215:
# %bb.16:                               # %call1.i.noexc.i
.Ltmp216:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp217:
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
.LBB17_9:                               # %if.then.i.i.i.i
	.cfi_def_cfa_offset 80
.Ltmp218:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp219:
# %bb.10:                               # %.noexc.i
.LBB17_18:                              # %terminate.lpad.i
.Ltmp220:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end17:
	.size	.omp_task_entry., .Lfunc_end17-.omp_task_entry.
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table17:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Ltmp198-.Lfunc_begin7         # >> Call Site 1 <<
	.uleb128 .Ltmp219-.Ltmp198              #   Call between .Ltmp198 and .Ltmp219
	.uleb128 .Ltmp220-.Lfunc_begin7         #     jumps to .Ltmp220
	.byte	1                               #   On action: 1
.Lcst_end7:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function .omp_task_entry..24
	.type	.omp_task_entry..24,@function
.omp_task_entry..24:                    # @.omp_task_entry..24
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
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
.Ltmp221:
	movq	%r14, %rdi
	callq	_ZN7gpumath5ArrayIdE7to_hostEv
.Ltmp222:
# %bb.1:                                # %invoke.cont.i
	movq	8(%rbx), %r15
	movq	16(%rbx), %rbx
.Ltmp223:
	leaq	.L.str.21(%rip), %rsi
	leaq	16(%rsp), %rdi
	movq	%rbx, %rdx
	callq	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_
.Ltmp224:
# %bb.2:                                # %invoke.cont1.i
.Ltmp225:
	leaq	16(%rsp), %rdx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movsd	%xmm0, 8(%rsp)                  # 8-byte Spill
.Ltmp226:
# %bb.3:                                # %invoke.cont2.i
	movq	16(%rsp), %rdi
	leaq	32(%rsp), %rax
	cmpq	%rax, %rdi
	je	.LBB18_5
# %bb.4:                                # %if.then.i.i.i
	callq	_ZdlPv@PLT
.LBB18_5:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	movq	(%rbx), %rsi
	movq	8(%rbx), %rdx
.Ltmp227:
	movq	_ZSt4cout@GOTPCREL(%rip), %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp228:
# %bb.6:                                # %invoke.cont3.i
.Ltmp229:
	movq	%rax, %rbx
	leaq	.L.str.22(%rip), %rsi
	movl	$15, %edx
	movq	%rax, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
.Ltmp230:
# %bb.7:                                # %invoke.cont5.i
.Ltmp231:
	movq	%rbx, %rdi
	movsd	8(%rsp), %xmm0                  # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_@PLT
.Ltmp232:
# %bb.8:                                # %invoke.cont7.i
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %r14
	testq	%r14, %r14
	je	.LBB18_9
# %bb.11:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i
	cmpb	$0, 56(%r14)
	je	.LBB18_13
# %bb.12:                               # %if.then.i2.i.i.i
	movzbl	67(%r14), %eax
	jmp	.LBB18_15
.LBB18_13:                              # %if.end.i.i.i.i
.Ltmp233:
	movq	%r14, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
.Ltmp234:
# %bb.14:                               # %.noexc6.i
	movq	(%r14), %rax
.Ltmp235:
	movq	%r14, %rdi
	movl	$10, %esi
	callq	*48(%rax)
.Ltmp236:
.LBB18_15:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i
.Ltmp237:
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc@PLT
.Ltmp238:
# %bb.16:                               # %call1.i.noexc.i
.Ltmp239:
	movq	%rax, %rdi
	callq	_ZNSo5flushEv@PLT
.Ltmp240:
# %bb.17:                               # %.omp_outlined..23.exit
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
.LBB18_9:                               # %if.then.i.i.i.i
	.cfi_def_cfa_offset 80
.Ltmp241:
	callq	_ZSt16__throw_bad_castv@PLT
.Ltmp242:
# %bb.10:                               # %.noexc.i
.LBB18_18:                              # %terminate.lpad.i
.Ltmp243:
	movq	%rax, %rdi
	callq	__clang_call_terminate
.Lfunc_end18:
	.size	.omp_task_entry..24, .Lfunc_end18-.omp_task_entry..24
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Ltmp221-.Lfunc_begin8         # >> Call Site 1 <<
	.uleb128 .Ltmp242-.Ltmp221              #   Call between .Ltmp221 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin8         #     jumps to .Ltmp243
	.byte	1                               #   On action: 1
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	4, 0x90                         # -- Begin function _ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_.omp_outlined
	.type	_ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_.omp_outlined,@function
_ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_.omp_outlined: # @_ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_.omp_outlined
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 144
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	(%rdx), %r12d
	testl	%r12d, %r12d
	jle	.LBB19_15
# %bb.1:                                # %omp.precond.then
	movq	%r8, %r15
	movq	%rcx, %r14
	decl	%r12d
	movl	$0, 8(%rsp)
	movl	%r12d, 4(%rsp)
	movl	$1, 20(%rsp)
	movl	$0, 16(%rsp)
	movl	(%rdi), %esi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	28(%rsp), %rax
	leaq	.L__unnamed_2(%rip), %rdi
	leaq	24(%rsp), %rcx
	leaq	16(%rsp), %r8
	leaq	12(%rsp), %r9
	movl	%esi, 20(%rsp)                  # 4-byte Spill
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
	movl	4(%rsp), %eax
	cmpl	%r12d, %eax
	cmovll	%eax, %r12d
	movl	%r12d, 4(%rsp)
	movslq	8(%rsp), %rbp
	cmpl	%ebp, %r12d
	jl	.LBB19_14
# %bb.2:                                # %omp.inner.for.body.lr.ph
	movq	(%r15), %r15
	movq	(%r14), %r14
	movl	%r12d, %ebx
	subl	%ebp, %ebx
	cmpl	$5, %ebx
	jb	.LBB19_3
# %bb.4:                                # %vector.memcheck
	leaq	(%r14,%rbp,8), %rax
	leaq	(%r15,%rbp,8), %rcx
	subq	%rcx, %rax
	cmpq	$16, %rax
	jae	.LBB19_6
.LBB19_3:
	movq	%rbp, %r13
.LBB19_9:                               # %omp.inner.for.body.preheader
	movl	%r12d, %ebx
	subl	%r13d, %ebx
	leal	1(%rbx), %ebp
	andl	$3, %ebp
	je	.LBB19_11
	.p2align	4, 0x90
.LBB19_10:                              # %omp.inner.for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movsd	(%r15,%r13,8), %xmm0            # xmm0 = mem[0],zero
	callq	round@PLT
	movsd	%xmm0, (%r14,%r13,8)
	incq	%r13
	decl	%ebp
	jne	.LBB19_10
.LBB19_11:                              # %omp.inner.for.body.prol.loopexit
	cmpl	$3, %ebx
	jb	.LBB19_14
# %bb.12:                               # %omp.inner.for.body.preheader11
	subl	%r13d, %r12d
	incl	%r12d
	leaq	(%r14,%r13,8), %rbx
	addq	$24, %rbx
	leaq	(%r15,%r13,8), %r14
	addq	$24, %r14
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB19_13:                              # %omp.inner.for.body
                                        # =>This Inner Loop Header: Depth=1
	movsd	-24(%r14,%r15,8), %xmm0         # xmm0 = mem[0],zero
	callq	round@PLT
	movsd	%xmm0, -24(%rbx,%r15,8)
	movsd	-16(%r14,%r15,8), %xmm0         # xmm0 = mem[0],zero
	callq	round@PLT
	movsd	%xmm0, -16(%rbx,%r15,8)
	movsd	-8(%r14,%r15,8), %xmm0          # xmm0 = mem[0],zero
	callq	round@PLT
	movsd	%xmm0, -8(%rbx,%r15,8)
	movsd	(%r14,%r15,8), %xmm0            # xmm0 = mem[0],zero
	callq	round@PLT
	movsd	%xmm0, (%rbx,%r15,8)
	addq	$4, %r15
	cmpl	%r15d, %r12d
	jne	.LBB19_13
	jmp	.LBB19_14
.LBB19_6:                               # %vector.ph
	incq	%rbx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	andq	$-2, %rbx
	leaq	(%rbx,%rbp), %r13
	shlq	$3, %rbp
	movq	%r15, 32(%rsp)                  # 8-byte Spill
	leaq	(%r15,%rbp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	addq	%r14, %rbp
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB19_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	40(%rsp), %rax                  # 8-byte Reload
	movups	(%rax,%r15,8), %xmm0
	movaps	%xmm0, 48(%rsp)                 # 16-byte Spill
	callq	round@PLT
	movaps	%xmm0, 64(%rsp)                 # 16-byte Spill
	movaps	48(%rsp), %xmm0                 # 16-byte Reload
	movhlps	%xmm0, %xmm0                    # xmm0 = xmm0[1,1]
	callq	round@PLT
	movaps	64(%rsp), %xmm1                 # 16-byte Reload
	movlhps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0]
	movups	%xmm1, (%rbp,%r15,8)
	addq	$2, %r15
	cmpq	%r15, %rbx
	jne	.LBB19_7
# %bb.8:                                # %middle.block
	cmpq	%rbx, 24(%rsp)                  # 8-byte Folded Reload
	movq	32(%rsp), %r15                  # 8-byte Reload
	jne	.LBB19_9
.LBB19_14:                              # %omp.loop.exit
	leaq	.L__unnamed_2(%rip), %rdi
	movl	12(%rsp), %esi                  # 4-byte Reload
	callq	__kmpc_for_static_fini@PLT
.LBB19_15:                              # %omp.precond.end
	addq	$88, %rsp
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
.Lfunc_end19:
	.size	_ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_.omp_outlined, .Lfunc_end19-_ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_.omp_outlined
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_driver64.cpp
	.type	_GLOBAL__sub_I_driver64.cpp,@function
_GLOBAL__sub_I_driver64.cpp:            # @_GLOBAL__sub_I_driver64.cpp
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
.Lfunc_end20:
	.size	_GLOBAL__sub_I_driver64.cpp, .Lfunc_end20-_GLOBAL__sub_I_driver64.cpp
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function .omp_offloading.requires_reg
	.type	.omp_offloading.requires_reg,@function
.omp_offloading.requires_reg:           # @.omp_offloading.requires_reg
	.cfi_startproc
# %bb.0:                                # %entry
	movl	$1, %edi
	jmp	__tgt_register_requires@PLT     # TAILCALL
.Lfunc_end21:
	.size	.omp_offloading.requires_reg, .Lfunc_end21-.omp_offloading.requires_reg
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"round"
	.size	.L.str, 6

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"__ocml_round_f64"
	.size	.L.str.1, 17

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"basic_string::_M_create"
	.size	.L.str.3, 24

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Error allocating Array on host "
	.size	.L.str.4, 32

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Error allocating Array on device "
	.size	.L.str.5, 34

	.type	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id,@object # @.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id
.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id:
	.byte	0                               # 0x0
	.size	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id, 1

	.type	.L.offload_sizes,@object        # @.offload_sizes
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	4, 0x0
.L.offload_sizes:
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.size	.L.offload_sizes, 32

	.type	.L.offload_maptypes,@object     # @.offload_maptypes
	.p2align	4, 0x0
.L.offload_maptypes:
	.quad	37                              # 0x25
	.quad	288                             # 0x120
	.quad	37                              # 0x25
	.quad	37                              # 0x25
	.size	.L.offload_maptypes, 32

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

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"timings/"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Builtin version of "
	.size	.L.str.7, 20

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	": "
	.size	.L.str.8, 3

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Vendor version of "
	.size	.L.str.9, 19

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"figures/data/"
	.size	.L.str.10, 14

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	".txt"
	.size	.L.str.11, 5

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"basic_string::append"
	.size	.L.str.12, 21

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"input.length() == output.length()"
	.size	.L.str.13, 34

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"include/compare.h"
	.size	.L.str.14, 18

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_,@object # @__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_
.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_:
	.asciz	"double gpumath::apply_fun_gpu(const Array<T> &, Array<T> &) [T = double, F = &round]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_, 85

	.type	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21.region_id,@object # @.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21.region_id
.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21.region_id:
	.byte	0                               # 0x0
	.size	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21.region_id, 1

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_,@object # @__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_:
	.asciz	"double gpumath::apply_fun_gpu(const Array<T> &, Array<T> &) [T = double, F = &__ocml_round_f64]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3_, 96

	.type	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21.region_id,@object # @.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21.region_id
	.section	.rodata,"a",@progbits
	.weak	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21.region_id
.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21.region_id:
	.byte	0                               # 0x0
	.size	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21.region_id, 1

	.type	.L.offload_sizes.17,@object     # @.offload_sizes.17
	.p2align	4, 0x0
.L.offload_sizes.17:
	.quad	4                               # 0x4
	.quad	8                               # 0x8
	.quad	8                               # 0x8
	.size	.L.offload_sizes.17, 24

	.type	.L.offload_maptypes.18,@object  # @.offload_maptypes.18
	.p2align	4, 0x0
.L.offload_maptypes.18:
	.quad	800                             # 0x320
	.quad	288                             # 0x120
	.quad	288                             # 0x120
	.size	.L.offload_maptypes.18, 24

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"Error on device "
	.size	.L.str.19, 17

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	":omp_target_memcpy returned "
	.size	.L.str.20, 29

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"differences/"
	.size	.L.str.21, 13

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	" max abs diff: "
	.size	.L.str.22, 16

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"H2D error on device "
	.size	.L.str.25, 21

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	": omp_target_memcpy returned "
	.size	.L.str.26, 30

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_,@object # @__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_
.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_:
	.asciz	"double gpumath::apply_fun_cpu(const Array<T> &, Array<T> &) [T = double, F = &round]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_, 85

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"!input.on_device()"
	.size	.L.str.27, 19

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"!output.on_device()"
	.size	.L.str.28, 20

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

	.type	.L.str.29,@object               # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"host_array.length() == dev_array.length()"
	.size	.L.str.29, 42

	.type	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@object # @__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
	.asciz	"T gpumath::cpu_abs_diff(const Array<T> &, Array<T> &, std::string) [T = double]"
	.size	.L__PRETTY_FUNCTION__._ZN7gpumath12cpu_abs_diffIdEET_RKNS_5ArrayIS1_EERS3_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, 80

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"!host_array.on_device()"
	.size	.L.str.30, 24

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"!dev_array.on_device()"
	.size	.L.str.31, 23

	.type	.omp_offloading.entry_name,@object # @.omp_offloading.entry_name
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4, 0x0
.omp_offloading.entry_name:
	.asciz	"__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14"
	.size	.omp_offloading.entry_name, 86

	.type	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14,@object # @.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
	.section	omp_offloading_entries,"aw",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14:
	.quad	.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id
	.quad	.omp_offloading.entry_name
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.omp_offloading.entry.__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14, 32

	.type	.omp_offloading.entry_name.32,@object # @.omp_offloading.entry_name.32
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4, 0x0
.omp_offloading.entry_name.32:
	.asciz	"__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21"
	.size	.omp_offloading.entry_name.32, 106

	.type	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21,@object # @.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21
	.section	omp_offloading_entries,"aw",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21
.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21:
	.quad	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21.region_id
	.quad	.omp_offloading.entry_name.32
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21, 32

	.type	.omp_offloading.entry_name.33,@object # @.omp_offloading.entry_name.33
	.section	.rodata.str1.16,"aMS",@progbits,1
	.p2align	4, 0x0
.omp_offloading.entry_name.33:
	.asciz	"__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21"
	.size	.omp_offloading.entry_name.33, 111

	.type	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21,@object # @.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21
	.section	omp_offloading_entries,"aw",@progbits
	.weak	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21
.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21:
	.quad	.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21.region_id
	.quad	.omp_offloading.entry_name.33
	.quad	0                               # 0x0
	.long	0                               # 0x0
	.long	0                               # 0x0
	.size	.omp_offloading.entry.__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21, 32

	.section	.init_array.0,"aw",@init_array
	.p2align	3, 0x90
	.quad	.omp_offloading.requires_reg
	.section	.init_array,"aw",@init_array
	.p2align	3, 0x90
	.quad	_GLOBAL__sub_I_driver64.cpp
	.type	.Lllvm.embedded.object,@object  # @llvm.embedded.object
	.section	.llvm.offloading,"e",@llvm_offloading
	.p2align	3, 0x0
.Lllvm.embedded.object:
	.asciz	"\020\377\020\255\001\000\000\000\3009\000\000\000\000\000\000 \000\000\000\000\000\000\000(\000\000\000\000\000\000\000\002\000\001\000\000\000\000\000H\000\000\000\000\000\000\000\002\000\000\000\000\000\000\000\220\000\000\000\000\000\000\00009\000\000\000\000\000\000i\000\000\000\000\000\000\000\207\000\000\000\000\000\000\000n\000\000\000\000\000\000\000u\000\000\000\000\000\000\000\000arch\000triple\000amdgcn-amd-amdhsa\000gfx906\000\000\000BC\300\3365\024\000\000\005\000\000\000b\f0$MY\276f\275\373\264O\033\310$D\0012\005\000!\f\000\0007\013\000\000\013\002!\000\002\000\000\000\026\000\000\000\007\201#\221A\310\004I\006\02029\222\001\204\f%\005\b\031\036\004\213b\200\024E\002B\222\013B\244\0202\0248\b\030K\n2R\210Hp\304!#D\022\207\214\020A\222\002d\310\b\261\024 CF\210 \311\0012R\204\030*(*\2201|\260\\\221 \305\310\000\000\000\211 \000\000%\000\000\000\"f\004\020\262B\202I\021RB\202I\221q\302PH\n\t&E\306\005BR&\b\276\311\202`\216\000\fh\216\000\311\213q\2164E\2240\371\310@4\323?\241\"\204\020D\016\210\021\200R\034!\204\230#\b\n\021\304Hs\004\2400YP\224\341,V\202P\224#B\020B\210\020Jr\204XK\b!\206\000\n\021c\214e8\"\024\345\210\020B\020B\254\"\004Q\206#F!\316\022\242 G\210\265\226\020E\210\261\f!\204\201\2004\020S\000Y \000\000\000Q\030\000\000\333\001\000\000\033\320$\370\377\377\377\377\001\020\0008\000\244a\035\312A\036\334\241\034\330\001 \334\341\035\332\200\036\344!\034\340\001\036\322\301\035\316\241\r\332!\034\350\001\035\000z\220\207z(\007\200\230\007z\b\207qX\2076\200\007yx\007z(\207q\240\207w\220\2076\020\207z0\007s(\007yh\203yH\007}(\007\000\017\000\202\036\302A\036\316\241\034\350\241\r\306\001\036\352\0018\007s\300\207<\200\003;\000\bz\b\007y8\207r\240\20760\207r\b\007z\250\007y(\207y\000\326 \016\354\240\r\304!\035\350\241\r\322\301\035\346\201\036\346\201\r\326`\034\322\241\r\322\301\035\346\201\036\346\201\r\326\200\034\330\241\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\342\240\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\342\000\016\332 \035\334a\036\350a\036\330`\r\310\341\035\350A\016\332 \035\334a\036\350a\036\330`\r\310\341\035\350\341\016\332 \035\334a\036\350a\036\330`\r\310\001\036\340\201\r\326\340\034\314\001\037\360\240\r\322\301\035\346\201\036\346\201\r\326\340\034\314\001\037\362\240\r\322\301\035\346\201\036\346\201\r\326`\036\332\240\035\312\241\035\344\241\034\302\201\035\350!\035\332\241\034\330`\r\346\241\r\332\241\034\332\201\036\322\241\035\312\241\r\322\301\035\346\201\036\330`\r\356!\034\354\241\034\314A\036\336\301\035\350a\036\322A\037\312\301\016\350\000 \352\301\035\322\301\034\336A\036\332\241\r\356\341\035\344a\035\332\340\034\344\341\035\352\001\036\332`\036\322A\037\312\001\240\007y\250\207r\00060B\000\220\002p\006A@\004i@l \006\001 \205\r\f1\000\244\000\234A\020 A\032 \033\230\202\000H\0018\203 @\2024@6D\306\377\377\377\377\017\200)\000\247\000\370\001\360\007\200\004\364A`\013\303\006\342\b\000>\330@ \002\260l \222\377\377\377\377\037\000i\203\210(\377\377\377\377?\000\002\000\007\200D\270\303;\264\001=\310C8\300\003<\244\203;\234C\033\264C8\320\003:\000\364 \017\365P\016\0001\017\364\020\016\343\260\016m\000\017\362\360\016\364P\016\343@\017\357 \017m \016\365`\016\346P\016\362\320\006\363\220\016\372P\016\000\036\000\004=\204\203<\234C9\320C\033\214\003<\324\003p\016\346\200\017y\000\007v\000\020\364\020\016\362p\016\345@\017m`\016\345\020\016\364P\017\362P\016\363\000\254A\034\330A\033\210C:\320C\033\244\203;\314\003=\314\003\033\254\3018\244C\033\244\203;\314\003=\314\003\033\254\0019\260C\033\244\203;\314\003=\314\003\033\254\0019\274\003=\304A\033\244\203;\314\003=\314\003\033\254\0019\274\003=\304\001\034\264A:\270\303<\320\303<\260\301\032\220\303;\320\203\034\264A:\270\303<\320\303<\260\301\032\220\303;\320\303\035\264A:\270\303<\320\303<\260\301\032\220\003<\300\003\033\254\3019\230\003>\340A\033\244\203;\314\003=\314\003\033\254\3019\230\003>\344A\033\244\203;\314\003=\314\003\033\254\301<\264A;\224C;\310C9\204\003;\320C:\264C9\260\301\032\314C\033\264C9\264\003=\244C;\224C\033\244\203;\314\003=\260\301\032\334C8\330C9\230\203<\274\203;\320\303<\244\203>\224\203\035\320\001\260AY\002 \001\026\200\024\200j\003\302\b@\002,\000\265\201h\006\200\0246\020\016\001\220\302\006\350)\200\005 \005\340\f\200*\b\210 \r\210\r\bd\000\013@\n\000\035l\200\242\003X\000R\000\316\000\250\202\000\t\322\000\331\000I\b\260\000\244\000\234\001P\005\001\022\244\001\262a\232\376\377\377\377\177\000L\0018\005\300\017\200?\000$\240\016\200>\bl\001\330@P\377\377\377\377?\000\302\006\242\n\000R\330@\"\326\377\377\377\377\017\200\000\254\001\000\007\200D\270\303;\264\001=\310C8\300\003<\244\203;\234C\033\264C8\320\003:\000\364 \017\365P\016\0001\017\364\020\016\343\260\016m\000\017\362\360\016\364P\016\343@\017\357 \017m \016\365`\016\346P\016\362\320\006\363\220\016\372P\016\000\036\000\004=\204\203<\234C9\320C\033\214\003<\324\003p\016\346\200\017y\000\007v\000\020\364\020\016\362p\016\345@\017m`\016\345\020\016\364P\017\362P\016\363\000\254A\034\330A\033\210C:\320C\033\244\203;\314\003=\314\003\033\254\3018\244C\033\244\203;\314\003=\314\003\033\254\0019\260C\033\244\203;\314\003=\314\003\033\254\0019\274\003=\304A\033\244\203;\314\003=\314\003\033\254\0019\274\003=\304\001\034\264A:\270\303<\320\303<\260\301\032\220\303;\320\203\034\264A:\270\303<\320\303<\260\301\032\220\303;\320\303\035\264A:\270\303<\320\303<\260\301\032\220\003<\300\003\033\254\3019\230\003>\340A\033\244\203;\314\003=\314\003\033\254\3019\230\003>\344A\033\244\203;\314\003=\314\003\033\254\301<\264A;\224C;\310C9\204\003;\320C:\264C9\260\301\032\314C\033\264C9\264\003=\244C;\224C\033\244\203;\314\003=\260\301\032\334C8\330C9\230\203<\274\203;\320\303<\244\203>\224\203\035\320\001\260\201\270\n\200\0246 \330\001,\000)\000\325\206\024\311\376\377\377\377\177\000\326\0000\005\300\017\000\t\350\203\300\026\000\302\035\336\241\r\350A\036\302\001\036\340!\035\334\341\034\332\240\035\302\201\036\320\001\240\007y\250\207r\000\210y\240\207p\030\207uh\003x\220\207w\240\207r\030\007zx\007yh\003q\250\007s0\207r\220\2076\230\207t\320\207r\000\360\000 \350!\034\344\341\034\312\201\036\332`\034\340\241\036\200s0\007|\310\0038\260\003\200\240\207p\220\207s(\007zh\003s(\207p\240\207z\220\207r\230\007`\r\342\300\016\332@\034\322\201\036\332 \035\334a\036\350a\036\330`\r\306!\035\332 \035\334a\036\350a\036\330`\r\310\201\035\332 \035\334a\036\350a\036\330`\r\310\341\035\350!\016\332 \035\334a\036\350a\036\330`\r\310\341\035\350!\016\340\240\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\344\240\r\322\301\035\346\201\036\346\201\r\326\200\034\336\201\036\356\240\r\322\301\035\346\201\036\346\201\r\326\200\034\340\001\036\330`\r\316\301\034\360\001\017\332 \035\334a\036\350a\036\330`\r\316\301\034\360!\017\332 \035\334a\036\350a\036\330`\r\346\241\r\332\241\034\332A\036\312!\034\330\201\036\322\241\035\312\201\r\326`\036\332\240\035\312\241\035\350!\035\332\241\034\332 \035\334a\036\350\201\r\326\340\036\302\301\036\312\301\034\344\341\035\334\201\036\346!\035\364\241\034\354\200\016\200\r\221\366\377\377\377\377\003p\n\200\037\000\177\000H@\035\000}\020\330\002\260\341\330\376\377\377\377\177\000\244\300\026\376`\003\301\021\300\031l \272\0028\203\r\204g\000g\260\201\370\016\340\f6\020`\200\000g\260\201\b\203\377\377\377\377\037\2005\330@\210\001\000\220\002\000\000\000I\030\000\000\022\000\000\000\023\212@\030\210b\302`\034\310\204 \231\220(\013\3238\017\024I\023\202iB@M \202jh& \326\3024\316\005a\023\204\254\232\200(\013\3238\027\204M\b\264\t\3016\241H\270\316\373&\f\211\007\006\023\2060\020\203\n\023\242ph\007r8\207qp\2076\b\207v \2076\b\207v \007t\230\207p\330\000\033\345\320\006\360\240\007v@\007z`\007t\320\006\360\020\007z`\007t\240\007v@\007m\000\017r\240\007s \007z0\007r\320\006\3600\007z0\007r\240\007s \007m\000\017t\240\007v@\007z`\007t\320\006\360P\007z0\007r\240\007s \007m\000\017v\240\007s \007z0\007r\320\006\360p\007z\020\007v\000\007z \007u`\007z \007u`\007z0\007r\320\006\360\200\007z\020\007r\200\007z\020\007r\200\007m\220\016v@\007z`\007t\320\006\366\020\007v\240\007q`\007m`\017r@\007z0\007r\320\006\3660\007r\240\007s \007m`\017t\200\007z`\007t\320\006\366\220\007v\240\007q \007x\320\006\366\020\007y \007z \007u`\007m`\017rP\007v\240\007rP\007v\320\006\366P\007q \007zP\007q \007m`\017q\000\007r@\007z\020\007p \007t\320\006\366 \007p@\007x\240\007r\000\007t\200\007m\340\016s \007z`\007t\320\006\2630\007r\320\006\241P\007mp\nq\320\006\356\220\016zp\007z\200\007+\032v`\007{h\0077h\207r\240\207p \207p\240\207pPz@\210\220\f2d\244\310\220\240\021\302\344\024\232\313\307/\262<m/\313m4\327\030\016\3371\001Tp\224A\004\000\001 \000\000\000\004\024\000\354\230\2503\b\2162\210\000 \000\004\000\000\200\200\002\200\035\323\036\244Ap\224A\004\000\001 \000\000\000\004\024\000\354\230\310\001\f\202\243\f\"\000\b\000\001\000\000 \240\000`\307D\022f\020\034e\020\001@\000\b\000\000\000\001\005\000;&\2658\003b\330\203$\000\000 \000\000\000\b(\000\3301\305\306\031\024\007\037$\004\000\000\001\000\000@@\001\300\216\t?\316\2408\372 !\000\000\b\000\000\000\002\n\000vL?r\006\305\341\007\t\001\000@\000\000\000\020P\000\260c2\225_\030\216:\200\000@\000\000\000\000\200\200\002\200\035S\331\314\303p\324\001\004\000\002\000\000\000\000\004\024\000\354\230p\b\037\206\243\016 \000\020\000\000\000\000 \240\000`\307\004S\3500\034v\000\001\000\000\b\000\000\000\000\005\000;&\374\342\207\341\260\003\b\000\000@\000\000\000\000(\000\3301\321[H\f\207\035@\000\000\000\002\000\000\000@\001\000\353\017$l\374\201\300!\325\t\006\265\200\354\002\020\005\000 \000\002\000\000\000\020\000\0240\244\342\305@R\200\000\000\000\000\000\004\000\000\000\000\000(`H\345\216\201\325\000\001 \000\000\000\000\000\000\000\000\000P\300\220\212$\003\252\001\002@\000\000\000\000\000\000\000\000\000\240\200!\025N\006h\340\000\0010\000\000\000\b\000\000\000\000\000P\300\220\n4\203\357\001\002`\000\000\000\020\000\000\000\000\000\240\200!\325o\006\357\000\001\300@\000\000\000\000\000\000\000@\000P\300\220\312U\003\354\001\002`\000\000\000\020\000\000\000\000\000\240\200!\225\271\006\220\004\004@\001\000\000\000\000\000\000\000\000@\001C*{\r\272\t\b\200\001\000\000@\000\000\000\000\000\200\002\206T3\033H\024\020\000\006\000\000\200\000\000\000\000\000\000\005\f\251\3126\300* \000\006\000\000\000\001\000\000\000\000\000\n\030R\365m@Y@\000\000\000\000\000\002\000\000\000\000\000\0240\244\212\335 \035\256]\000\242\003\000\004@\000\000\000\000\002\200\002\206Tz\034\214\004\006\000\003\002\000\000\000\000\000\000\000\001@\001C\252\276\016\212\f\b\200\004\000\000@\000\000\000\000\000\200\002\206T\242\035\270\303\265\013@t\000\200\000\b\000\000\000@\000P\300\220\n\316\003\224\300\000`P\000\000\000\000\000\000\000 \000(`H\205\367\201\223\001\001P\000\000\000\000\000\000\000\000\000P\300\220\312\364\203F\003\002`\001\000\000\000\000\000\000\000\000\240\000\211\r\002\205o\026\000\000\262@\000\000\035\000\000\0002\036\230\030\031\021L\220\214\t&G\306\004C\n#\000\305R\004E\bR\204\b\345\031P\356\350\266\211\013\245R\002\305\216n\233\270P\034\005jP\b\345Pf\005A\243\bF\000h\215\000\2200\006\t\306`\301\030(\020QkWw\257\335\357\273{Ww\257\335\357\273{\007\333\301v;*X\220&Y\026X\220'Y\026X\220(Y\026dp\270\361\034\000\000\000\000\261\030\000\000\306\000\000\0003\b\200\034\304\341\034f\024\001=\210C8\204\303\214B\200\007yx\007s\230q\f\346\000\017\355\020\016\364\200\0163\fB\036\302\301\035\316\241\034f0\005=\210C8\204\203\033\314\003=\310C=\214\003=\314x\214tp\007{\b\007yH\207pp\007zp\003vx\207p \207\031\314\021\016\354\220\016\3410\017n0\017\343\360\016\360P\0163\020\304\035\336!\034\330!\035\302a\036f0\211;\274\203;\320C9\264\003<\274\203<\204\003;\314\360\024v`\007{h\0077h\207rh\0077\200\207p\220\207p`\007v(\007v\370\005vx\207w\200\207_\b\207q\030\207r\230\207y\230\201,\356\360\016\356\340\016\365\300\016\3540\003b\310\241\034\344\241\034\314\241\034\344\241\034\334a\034\312!\034\304\201\035\312a\006\326\220C9\310C9\230C9\310C9\270\3038\224C8\210\003;\224\303/\274\203<\374\202;\324\003;\260\303\f\307i\207pX\207rp\203th\007x`\207t\030\207t\240\207\031\316S\017\356\000\017\362P\016\344\220\016\343@\017\341 \016\354P\0163 (\035\334\301\036\302A\036\322!\034\334\201\036\334\340\034\344\341\035\352\001\036f\030Q8\260C:\234\203;\314P$v`\007{h\0077`\207wx\007x\230QL\364\220\017\360P\0163\036j\036\312a\034\350!\035\336\301\035~\001\036\344\241\034\314!\035\360a\006T\205\2038\314\303;\260C=\320C9\374\302<\344C;\210\303;\260\303\214\305\n\207y\230\207w\030\207t\b\007z(\007r\230\201\\\343\020\016\354\300\016\345P\016\3630#\301\322A\036\344\341\027\330\341\035\336\001\036fH\031;\260\203=\264\203\033\204\3038\214C9\314\303<\270\3019\310\303;\324\003<\314H\264q\b\007v`\007q\b\207qX\207\031\333\306\016\354`\017\355\340\006\360 \017\3450\017\345 \017\366P\016n\020\016\3430\016\3450\017\363\340\006\351\340\016\344P\016\3700#\342\354a\034\302\201\035\330\341\027\354!\035\346!\035\304!\035\330!\035\350!\037f \235;\274C=\270\0039\224\2039\314X\274pp\007wx\007z\b\007zH\207wp\207\031\313\347\016\3570\017\341\340\016\351@\017\351\240\017\3450\303\001\003s\250\007w\030\207_\230\207pp\207t\240\207t\320\207r\230\201\204A9\340\3038\260C=\220C9\314@\304\240\035\312\241\035\340A\036\336\301\034f$c0\016\341\300\016\3540\017\351@\017\3450C!\203u\030\007sH\207_\240\207|\200\207r\230\261\224\001<\214\303<\224\3038\320C:\274\203;\314\303\214\305\fH!\025Ba\036\346!\035\316\301\035R\201\024f g@\016\342p\016n@\016\345`\0163\0344@\207r\b\007x\b\007v`\207w\030\207yH\007z(\207\031G\032\314\203<\214\003;\274\3038\000\000\000\000y \000\000\005\001\000\000r\036H C\210\f\031\tr2H #\201\214\221\221\321D\240\020(d<12B\216\220!\243(Q\273\004\255\200\nt`h\212\321$\207\204\016%1<\317b\000\000\000_ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2_kernelamdgpu_code_object_versionwchar_sizeopenmpopenmp-devicePIC LevelThinLTOEnableSplitLTOUnitclang version 17.0.0 (https://github.com/llvm/llvm-project.git 644a4067312448b17ec2109ccfd0dd02a2f789c8)AMD clang version 16.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.5.0 23144 5fe166b8eac068df976282939b880a75a3a63014)intomnipotent charSimple C++ TBAAany pointerdouble\000\206`\000\000\000\000\000\0000\202\020\220\301\bB\220\006#\b\201\032\214 \004k0\202\020\230\301\bB\300\006#\bA\033\214 \004n0\202 @#\bB7\202 \200\301\bB\360\006#\b\001\034\214 \004q0\202\020\310\301\bB0\007#\b\213\035\314pLT\025X\3235\3031Q\225`M\330\f\307De\2036M3\f\033\201\3150p\0046\303\320\021\330\f\003Vx3\f\230\361\3150\200\301\021\0063\f`\200\204\301\f\203\030$\330\f\003\246L3\f\330\202\315 \\\323\f\0013C\320\314\020@3\f\017\035\214\301\f\203S\007c0\303`\007v0\0063\fQ\035\214\301\f\003\036\340\301\030\3140Hu0\0063\fz\240\007cpi\000\210\201\030\210\201\030\210\201\030\210\201\030p\234\030\210\201\030\210\201\030\210\201\030\350\201\036\350\201\030\210\201\030\210\201\030\270\201\033\240\201\030\210\001gY\226\033\270\001\035\270\001\035\270\201\214\004&(\241\2676\270\257733\266\26702\22747\263\267Q\2061 \2032H\310\315\316\256\315%\314\315\355\215.\214.\355\315mn\224\301\f\316\000\r2bc\263ksi{#\253c+s1c\013;\233\033\345H\0035X\0036h\0037x\203\234\330\330\354\332\\\330\322\334\326\312\344\\\336\340\350\322\336\334\346F\001Rz\203+s\033csy\033cs\261+\223\233K{s\033%\200\203T\330\330\354\332\\\322\310\312\334\350F\021\342@\016\000\251\030\000\000'\000\000\000\013\nr(\207w\200\007zXp\230C=\270\3038\260C9\320\303\202\346\034\306\241\r\350A\036\302\301\035\346!\035\350!\035\336\301\035\0264\343`\016\347P\017\341 \017\344@\017\341 \017\347P\016\364\260\200\201\007y(\207p`\007vx\207q\b\007z(\007rXp\234\3038\264\001;\244\203=\224\303\002k\034\330!\034\334\341\034\334 \034\344a\034\334 \034\350\201\036\302a\034\320\241\034\310a\034\302\201\035\330a\301\001\017\364 \017\341P\017\364\200\016\013\210u\030\007sH\007\000\000\000\000\321\020\000\000\032\000\000\000\007\314<\244\203;\234\003;\224\003=\240\203<\224C8\220\303\001pP\204\3039\224\203;\320\303\001\023\016\347P\016\356@\017m\360\016\356P\016m\020\016\363p`\274\203;\224C\033\204\303<\034@\367\360\016\362\260\016\347 \017\357P\017\360\320\006\357\340\016\345\320\006\3410\017\007\311=\274\203<\254\3039\310\303;\324\003<\000\000a \000\000\032\001\000\000\023\004H,\020\000\000\000\007\000\000\000\024j\240l\003\312\240\024(\215\000\320*\204\002+\006\022\306\300\300\030\034\214\000\000\000\0003\021A\300\006\2430\023\021\004l0\n3\021A\300\006\2430\023\021\004l0\n3\021\\\300\006\2440bp\f!\b\006\212( \0373\334\020D`0\313 \004\201\246\005x\304\240\030B\020\f\252=XF\f\f\000\004\301\240)\005\247\310B0\ra``\201\300p\203`\007f0\3130\034A.\202\263\021\234\217\340l\004\217\030\030\f\b\202A\323\nW4l@D{0\000#\006\306\000\202`\320\264\302\005\r\033\020\2201\000#\006\306\000\202`\320\264\302\365\f\033\020\317\034\f\300\210\2011\200 \0304\255p9\303\006\204\263\007\0030b@\f!\b\006\316*\214\0304\r\b\202\301\263\n\224\302\t\003Q\320A@Q\030#\006\006\000\202`\240\371A\200\f\033\020S0\000D\2051\334\020,h0\313@\030A\347\203\004\nx\320\3710\205\302\037t>P\242\020\006\235\017\325(\334A\347\203E\nb0KP\fT\004\016\021\025\003\025\201DTE\n+RX\221\202\320a\003\202\013\b \005\241\303\006\304\022\020\300\260\001\241\300\001\001\f\033\020\311\033\020\300\260\001\201\270\001\001\f\033\020G\033\020\300\210A\343\200 \030P\265@\006\331(\260\001\033\344\202\030`e@_\030$\006a` \200\300\260\001A\006\301\000\320\030\204\201\001\001\002#\006\006\000\202`\240\305B\260\r\033\020f\020\f\300p\003\321\241\301,Ca\004#\006\306\000\202`0\365\202\032\200\301,\3011b`\f \b\006\3158\270A\031\214\030\030\003\b\202A3\016n`\006#\006\306\000\202`\320\214\203\033\234\301\210\2011\200 \0304\343\340\006h0b`\000 \b\006\3158\264\001\031\214\030\030\003\b\202\201\245\013k \n\263\004A8\020\000\000}\000\000\000\026f\bN3\370\210\321!\202\323\f\365\355#7 9\314\343?\021!8\315\340O\007\321\370\210\2451\276\303<>R\3714\356#&DH\023\361\030\225C\\\204\360S\022\021\375\2023\020\026D\\\f\322\030T\343;\314\343KS\204\f\204\217X\234\001\f\303\356#6g\000\303\300\373\210U5\013\321\030\323\341\033\213\023\000\213IU\002\360LTD\f\177\005D\322\017\fC$\371\210\375\030\013\321\030\323aN\216\3570\217/8L\340/\201\217\330\327\324T\317t\375\r\305\374\323\021\021\300 \371\210\001\031\003Q=Sdu\206\300<\271\217X\224\343;\314\343#\322\277\000\322\344#\007P\020\315\024a\346U\371\016\363\370\210\364/\2004\371\200$\000\322\344#\326U\371\016\363\370\202\303\004\376\022\370\200$\000\322\344#G\2409\314\343#MCD~\341D~\340\f\230\277D\376s\370\210]q\002\360LTD\f\177\005D\322\017\fC$\371\200$\000\322\344#\226eHT`\373\210\2111\276\303<>R\371t\355#wp\016\377\3570\317\357\024\305\342\000\003\322\030?^\3749\337\353\003p\353\377?\237\273\361P\f0\035\365M5H\341D\314\037\001\215A\210\203\347U\353\311\376\271\026E\000&\266\277\347\261\366\317\332\377\277\324\370\3570\317\357P\323\2024\304\340\023\0272\231V!0\217\217\234\300CID\364\013\316@\370D3E\230=9\276\303<\276\3400\201O\005>bj\21549\021\301\020\221A\334>r\001\212\3400\214\323\370\0211\235\301\3430\217\2778\316\343\023\0272\371\210qU\276\303<\276\3400\201O\005> \t\2004\371\210\215\035\002\363\344\266\217\\\001\3450\217\2174\r\021\371\205\023\371\2013`>b[\224\3570\217/M\0212\020> \t\2004\371\b\000\000\000\000\0011\000\000\030\000\000\000[\206&\260\203-\203\025\330\301\226\001\013\354`\313\240\005v\260e\340\002;\3302\204A`\007[\0068\b\360`\313 \007\001\036l\031\346 \300\203-\003\035\004x\260e\250\203\000\017\266\fv\020\340\301\226\001\017\002;\3302\344A`\007[\206=\b\354`\313\300\007\201\035l\031\376 \260\003\000\000\000\000\000\000\000\000a \000\000\256\000\000\000\023\004F,\020\000\000\000\004\000\000\000\024J\210V!\2200\006\b\306\340\000\000\000\000\0003\021A\300\006\2430\023\021\004l0\n3\021A\300\006\2430\023\021\004l0\n\304\2041\334\020\260\201\031\3142\004E\220\204\340$\004\347!8\023\301#\006\306\000\202`\320\214B\243\214\030\030\003\b\202A3\nM\222T\200\244\002\f\033\020\2140\000\303\006\304\022\f\300\210\2011\200 \0304\245\360(\303\006\204\262\006\0030b`\f \b\006M)<\311\260\001\221\314\301\000\020\026\306\210A\323\200 \030<\241\360\004\221A\024\007\033\260\0015ad\260d\270!\300\304`\226\201\020\002r\302\230%\030\006*\026C\210\206\f\002P\026I\n\321H\213d\304\340\000@\020\f\244T\020\202\241G\3013\206\r\210@ \000D\f\020\310`\311pC0\006b0\313@\f\301\210\2011\200 \030L\255\300=#\006\306\000\202`\320\314\202\207\215\030\030\003\b\202A3\013^6b`\f \b\006\315,x\332\210\2011\200 \0304\263\340m\263\004\205\206\003\001\000\000R\000\000\000\006\264\370\201C5\303?!\203oY\206\3404U\276\233U!8Mu[\327\2014C\005D\2221\035\276\303<>\025\234\000\3460\217\2174\r\021\371\205\023\371\2013`\376\022\371\317ad\205\3404UnC\306B4\306t\330W!8M\265\233\023\343;\314\343#\322\277\000\322dR\223\3570\217\217H\377\002H\223\017H\002 M\007P\020\315\024aFd\fD\365L\221\215\021\3000\364\027\0009\314\343?\021!8\315\340O\007\321\230P\343?\021Q!\016%\371T\340\233V\"0\217\3567\316\304[\031\"0\217\3567\316dF\2044\021\217U\021\202\323T&\206\000Q\004`\310pY\021q1Hc?\214o,N\000,\377\204\f\376\0214\016\363\370\213\343<>q!\223EI\276\303<\2764E\310@\370\200$\000\322t\005\217\303<\376\023\021\202\323\f>\321\f\026\324\370ODT\210CI\376\022\370\306u\bNS\3455mT\216\3570\217\277\004> \t\2004\335\200\3440\217\2174\r\021\371\205\023\371\2013`6\345\370\016\363\370T\340\003\222\000H\2235-\276\303<\2764E\310@\030\324 0\217-\035\276\303<\376\022\000\000\0011\000\000\016\000\000\000[\006\"\260\203-\303\023\330\301\226\001\n\354`\313 \005v\260e\240\002;\3302T\201\035l\031\256\300\016\266\f[`\007[\206/\320\203-C\030\004z\260e \203@\017\000\000\000\000\000a \000\000#\001\000\000\023\004H,\020\000\000\000\b\000\000\000\024j\240l\003\312\200\322\b\000\255B(\250\362\377\377\377\377(\005\022\306\300\300\030\034\214\000\000\000\0003\021A\300\006\2430\023\021\004l0\n3\021A\300\006\2430\023\021\004l0\n3\021^\300\006\2440bp\f!\b\006J( ^3\334\020D`0\313 \004\201\216\030\024C\b\202A\225\007\312Y\215\216\030\030\000\b\202AC\nO\221\205\340\304\002``\201\300p\203P\007f0\3130\034A.\202\263\021\234\217\340l\004\217\030\030\f\b\202A\303\nX4l@Dz0\000#\006\306\000\202`\320\260\002\006\r\033\020\2201\000#\006\306\000\202`\320\260\002\366\f\033\020\217\034\f\300\210\2011\200 \0304\254\2009\303\006\204\243\007\0030b@\f!\b\006\216*\214\0304\r\b\202\301\243\n\324\302\t\003Q\314A@Q\030#\006\006\000\202`\240\365A\200\f\033\020S0\000D\2051\334\020,h0\313@\030A\367\203\364\007w\320\3750\201\202\037$$\264\373\241\022\0051\350~\260F\341\016f\t\212\201\212\300!\242b\240\"\220\210\252HaE\n+R\020:l@p\001\001\244 t\330\200X\002\002\0306 \224\204\000\206\r\b\304\r\b`\330\2008\332\200\000F\f\032\007\004\301\200\242\0052\320D\201\r\330\000\026\304\000+\003\372\302 1\b\003\003\001\004\206\r\b2\b\006\200\306 \f\f\b\020\03010\000\020\004\003\r\026\202m\330\2000\203`\000\206\033\210\016\rf\031\n#\03010\006\020\004\203\211\027\324 \ff\t\216\021\003c\000A0h\304\341\r\312`\304\300\030@\020\f\032qx\0033\03010\006\020\004\203F\034\336\340\fF\f\214\001\004\301\240\021\2077@\203\021\003\003\000A0h\304\301\r\310`\304\300\030@\020\f\254\\X\203P\230%\b\302\201\000\213\000\000\000\006f\bN3\370\210iQ\276\303<\2764E\310@\370\200$\000\322\344#6\207\bN3\324\267\217\334\200\3440\217\377D\204\3404\203?\035D\343#\206\306\370\016\363\370H\345\323\270\217\330\224C\\\204\360S\022\021\375\2023\020\366\324\370\016\363\370\322\024!\003\341#\006g\000\303\260\373\210\311\031\3000\360>bQ\225\000<\023\025\021\303_\001\221\364\003\303\020I>b@\206CM\317\024\331\217\261\020\2151\035\326\344\370\016\363\370\202\303\004\376\022\370\210yMM\365L\327\337P\314?\035\021\001\f\222\217\334\301>\374\277\303<\277S\024\213\003\fHc\374x\361\347|\257\017\300\275\377\377|\356\306C1\300t\3247\360<\013\366\027T\363\033\017%\016\261P\245\3370x\300P\376s\0369T3x\236\347\r+y\262\177\256E\021\200\211\355\357y+\233\377\377b\327\277\303<\277CM\013\322\020\203O\\\310dt\206\300<\271\217\030\224\343;\314\343#\322\277\000\322\344#\007P\020\315\024a\326U\371\016\363\370\210\364/\2004\371\200$\000\322\344#\306U\371\016\363\370\202\303\004\376\022\370\200$\000\322\344#G\2409\314\343#MCD~\341D~\340\f\230\277D\376s\370\210Yq\002\360LTD\f\177\005D\322\017\fC$\371\200$\000\322\344#\206eHT`\373\210\2051\276\303<>R\371t\355#\226U\b\314\343#'\360P\022\021\375\2023\020>\321L\021fN\216\3570\217/8L\340S\201\217XZ#MND0Dd\020\267\217XP\2014\317\024]\200\"8\f\3434~DLV\025\006\013\321\030\323\341\013\2004\021\203/E\016\340\323>\355#\215DD\223O\\\223mU\276\303<\276\3400\201O\005> \t\2004\371\310\025P\016\363\370H\323\020\221_8\221\0378\003\346#&v\b\314\223\333>r\006\217\303<\376\3428\217O\\\310\344#vE\006\013\321\030\323\341\003\303\020\371R\344\000>\355\323>qM\021 L\376\024Q\215\340#\000\000\000\000\0011\000\000\025\000\000\000[\006+\260\203-\003\026\330\301\226A\013\354`\313\300\005v\260e\b\203\300\016\266\fp\020\340\301\226A\016\002<\3302\314A\200\007[\006:\b\360`\313P\007\001\036l\031\356 \260\203-\003\036\004v\260e\320\203\300\016\266\f{\020\330\301\226\301\017\002;\000\000\000\000\000\000\000a \000\000\263\000\000\000\023\004F,\020\000\000\000\004\000\000\000\024J\210V!\2200\006\b\306\340\000\000\000\000\0003\021A\300\006\2430\023\021\004l0\n3\021A\300\006\2430\023\021\004l0\n\271\004\030n\b\326\300\ff\031\202\"HBp\022\202\363\020\234\211\340\021\003c\000A0hD\241QF\f\214\001\004\301\240\021\205&\311)@N\001\206\r\bF\030\200a\003b\t\006`\304\300\030@\020\f\032Rx\224a\003BQ\203\001\03010\006\020\004\203\206\024\236d\330\200H\344`\000\350\nc\304\240i@\020\f\036Px\202\310 \212c\r\326\200\23202X2\334\020\\b0\313@\b\0019a\314\022\f\003\025\213!<C\006\001z\0240\201\202HF\f\212\007\004\301 \003\205\240G\201+\206\r\210@ \000<\n\020\310`\311pC\020\006b0\313@\f\301\210\2011\200 \030L\253\2609#\006\306\000\202`\320\304Bw\215\030\030\003\b\202A\023\013\0356b`\f \b\006M,t\331\210\2011\200 \0304\261\320i\263\004\205\206\003\001\000Z\000\000\000\006\264\370\201C5\303?!\203oX\206\3404U\276[U!8Mu\033\327\2014C\005D\222-\035\276\303<>\025\234\000\3460\217\2174\r\021\371\205\023\371\2013`\376\022\371\317ab\205\3404UnC\306B4\306tX\023\343;\314\343#\322\277\000\322dQ\223\3570\217\217H\377\002H\223\017H\002 M\007P\020\315\024a\346$\006\013\321\030\323\341\003\303\020\371R\344\000>\355\323>qM\021 L\376\024Q\215`a\0040\f\275\025\025H\363L\321\005@\016\363\370OD\bN3\370\323A4&\324\370ODT\210CI>\025\370\226\225\b\314\243\373\2153\3616\206\b\314\243\373\2153\031\025!8Me]\b\020E\000\206\f\327\0214\016\363\370\213\343<>q!\323\025<\016\363\370OD\bN3\370D3\330\017\343\033\213\023\000\313?!\203oP\222\3570\217/M\0212\020> \t\2004\031\221\341P\3233E\366E\b\300\262XP\343?\021Q!\016%\371K\340\333\326!8M\225\327\264M9\276\303<\376\022\370\200$\000\322t\003\222\303<>\3224D\344\027N\344\007\316\200\231\224\343;\314\343S\201\017H\002 M\306\264\370\016\363\370\322\024!\003a`\t\020E\000\206\f\027oO\203\300<\246t\370\016\363\370K\000\000\0011\000\000\f\000\000\000[\206'\260\203-\003\024\330\301\226A\n\354`\313@\005v\260e\250\002;\3302\\\201\035l\031\266\300\016\266\f`\020\350\301\226a\f\002=\000\000\000\000\000\000\000a \000\000$\001\000\000\023\004H,\020\000\000\000\b\000\000\000\024j\240l\003\312\200\322\b\000\255B(\250\362\377\377\377\377(\005\022\306\300\300\030\034\214\000\000\000\0003\021A\300\006\2430\023\021\004l0\n3\021A\300\006\2430\023\021\004l0\n3\021^\300\006\2440bp\f!\b\006J( ^3\334\020D`0\313 \004\201\216\030\024C\b\202A\225\007\312Y\215\216\030\030\000\b\202AC\nO\221\205\340\304\002``\201\300p\203P\007f0\3130\034A.\202\263\021\234\217\340l\004\217\030\030\f\b\202A\303\nX4l@Dz0\000#\006\306\000\202`\320\260\002\006\r\033\020\2201\000#\006\306\000\202`\320\260\002\366\f\033\020\217\034\f\300\210\2011\200 \0304\254\2009\303\006\204\243\007\0030b@\f!\b\006\216*\214\0304\r\b\202\301\243\n\324\302\t\003Q\314A@Q\030#\006\006\000\202`\240\365A\200\f\033\020S0\000D\2051\334\020,h0\313@\030A\367\203\364\007w\320\3750\201\202\037$$\264\373\241\022\0051\350~\260F\341\016f\t\212\201\212\300!\242b\240\"\220\210\252HaE\n+R\020:l@p\001\001\244 t\330\200X\002\002\0306 \224\204\000\206\r\b\304\r\b`\330\2008\332\200\000F\f\032\007\004\301\200\242\0052\320D\201\r\330\240\025\304\000+\003\372\302 1\b\003\003\001\004\206\r\b2\b\006\200\306 \f\f\b\020\03010\000\020\004\003\r\026\202m\330\2000\203`\000\206\033\210\016\rf\031\n#\03010\006\020\004\203\211\027\324 \ff\t\216\021\003c\000A0h\304\341\r\312`\304\300\030@\020\f\032qx\0033\03010\006\020\004\203F\034\336\340\fF\f\214\001\004\301\240\021\2077@\203\021\003\003\000A0h\304\301\r\310`\304\300\030@\020\f\254\\X\203P\230%\b\302\201\000\214\000\000\000\006f\bN3\370\210iQ\276\303<\2764E\310@\370\200$\000\322\344#6\207\bN3\324\267\217\334\200\3440\217\377D\204\3404\203?\035D\343#\206\306\370\016\363\370H\345\323\270\217\330\224C\\\204\360S\022\021\375\2023\020\366\324\370\016\363\370\322\024!\003\341#w\000\022\377\3570\317\357\024\305\342\000\003\322\030?^\3749\337\353\003p\357\377?\237\273\361P\f0\035\365\r<\317\202\375\005\325\374\306C\211C\f\f\345?\327\372\377;\002\263\374\221C5\303_\350\270\347y\336\260\222'\373\347Z\024\001\230\330\376\236\267\262\367\377/v\375;\314\363;\324\264 \r1\370\304\205L\006g\000\303\260\373\210\311\031\3000\360>bQ\225\000<\023\025\021\303_\001\221\364\003\303\020I>b@\206CM\317\024\331\217\261\020\2151\035\326\344\370\016\363\370\202\303\004\376\022\370\210yMM\365L\327\337P\314?\035\021\001\f\222\217\030\235!0O\356#\006\345\370\016\363\370\210\364/\2004\371\310\001\024D3E\230uU\276\303<>\"\375\013 M> \t\2004\371\210qU\276\303<\276\3400\201\277\004> \t\2004\371\310\021h\016\363\370H\323\020\221_8\221\0378\003\346/\221\377\034>bV\234\000<\023\025\021\303_\001\221\364\003\303\020I> \t\2004\371\210a\031\022\025\330>ba\214\3570\217\217T>]\373\210e\025\002\363\370\310\t<\224DD\277\340\f\204O4S\204\231\223\343;\314\343\013\016\023\370T\340#\226\326H\223\023\021\f\021\031\304\355#\026T \3153E\027\240\b\016\3038\215\037\021\223U\205\301B4\306t\370\002 M\304\340K\221\003\370\264O\373H#\021\321\344\023\327d[\225\3570\217/8L\340S\201\017H\002 M>r\005\224\303<>\3224D\344\027N\344\007\316\200\371\210\211\035\002\363\344\266\217\234\301\3430\217\2778\316\343\023\0272\371\210]\221\301B4\306t\370\3000D\276\0249\200O\373\264O\\S\004\b\223?ET#\370\b\000\000\000\000\0011\000\000\025\000\000\000[\006+\260\203-\003\026\330\301\226A\013\354`\313\300\005v\260e\b\203\300\016\266\fp\020\340\301\226A\016\002<\3302\314A\200\007[\006:\b\360`\313P\007\001\036l\031\356 \260\203-\003\036\004v\260e\320\203\300\016\266\f{\020\330\301\226\301\017\002;\000\000\000\000\000\000\000a \000\000\262\000\000\000\023\004F,\020\000\000\000\004\000\000\000\024J\210V!\2200\006\b\306\340\000\000\000\000\0003\021A\300\006\2430\023\021\004l0\n3\021A\300\006\2430\023\021\004l0\n\271\004\030n\b\326\300\ff\031\202\"HBp\022\202\363\020\234\211\340\021\003c\000A0hD\241QF\f\214\001\004\301\240\021\205&\311)@N\001\206\r\bF\030\200a\003b\t\006`\304\300\030@\020\f\032Rx\224a\003BQ\203\001\03010\006\020\004\203\206\024\236d\330\200H\344`\000\350\nc\304\240i@\020\f\036Px\202\310 \212c\r\326\200\23202X2\334\020\\b0\313@\b\0019a\314\022\f\003\025\213!<C\006\001z\0240\201\202HF\f\n\000\004\301 \353\203\240G\201+\206\r\210@ \000<\n\020\310`\311pC\020\006b0\313@\f\301\210\2011\200 \030L\253\2609#\006\306\000\202`\320\304Bw\215\030\030\003\b\202A\023\013\0356b`\f \b\006M,t\331\210\2011\200 \0304\261\320i\263\004\205\206\003\001\000Y\000\000\000\006\264\370\201C5\303?!\203oX\206\3404U\276[U!8Mu\033\327\2014C\005D\222-\035\276\303<>\025\234\000\3460\217\2174\r\021\371\205\023\371\2013`\376\022\371\317ab\205\3404UnC\306B4\306tX\023\343;\314\343#\322\277\000\322dQ\223\3570\217\217H\377\002H\223\017H\002 M\007P\020\315\024a\346$\006\013\321\030\323\341\003\303\020\371R\344\000>\355\323>qM\021 L\376\024Q\215`a\0040\f\275\025\025H\363L\321\005@\016\363\370OD\bN3\370\323A4&\324\370ODT\210CI>\025\370\226\225\b\314\243\373\2153\3616\206\b\314\243\373\2153\031\025!8Me]\b\020E\000\206\f\327\0214\016\363\370\213\343<>q!\323\025<\016\363\370OD\bN3\370D3\330\017\343\033\213\023\000\313?!\203oP\222\3570\217/M\0212\020> \t\2004\031\221\341P\3233E\026\324\370ODT\210CI\376\022\370\266u\bNS\3455mS\216\3570\217\277\004> \t\2004\335\200\3440\217\2174\r\021\371\205\023\371\2013`&\345\370\016\363\370T\340\003\222\000H\2231-\276\303<\2764E\310@\030X\002D\021\200!\303\305\333\323 0\217)\035\276\303<\376\022\000\000\000\0011\000\000\f\000\000\000[\206'\260\203-\003\024\330\301\226A\n\354`\313@\005v\260e\250\002;\3302\\\201\035l\031\266\300\016\266\f`\020\350\301\226a\f\002=\000\000\000\000\000\000\000\301 \000\000;\000\000\000\243\004\311P\001\"\252\000!2\204\210\020!B\304\b\211\032@\210\f!\"D\210\0201BR\016\020\"c\204\304\274 D\206\210\021\022\362\200\020\031BRZ\020\"d\204\204\324 d\204d\3340B\005QKK\3141\000\212\301\201E\304\006E\205F\006GY\334\002\fs\b\000\201pp\221Q\035\265\244\304\034\003\240\030\034xDlPThdp\224\307-\2740\207\000\024\b\007\027\037\031\005RKJ\3141\000\212\301AH\304\006E\205F\006G\205\334\302\013s\b\000\201pp\221a\000\265\022\024X@\255\004\005&P+A\201\r\324JP`\004\265\022\024X\001.\004\005f\200\013BA\201\035\340\202PP`\b\270 \024\024X\002-\005\004\246@K\001\201-\320R@`\fT@`\rT@`\016T@`\017v@\000$(,\000\000\000\000q \000\000\007\000\000\0002\016\020\"\204\020\372\nha\331\200\035\306\016\350\261\016\201 \240\022\030bL\001\000\000\000\000\000\000e\f\000\000\367\000\000\000\022\003\224\260\007\000\000\000\003\000\000\000\323\007\000\0002\000\000\000L\000\000\000\001\000\000\000X\000\000\000\000\000\000\000X\000\000\000$\000\000\000\270\003\000\000\001\000\000\000\005\b\000\000\021\000\000\000\026\b\000\000\020\000\000\000\024\000\000\000\000\000\000\000\320\003\000\000\000\000\000\000\000\000\000\000$\000\000\000\000\000\000\000\007\004\000\000U\000\000\000\007\004\000\000U\000\000\000\377\377\377\377\022$\000\000\\\004\000\000\022\000\000\000\\\004\000\000\022\000\000\000\377\377\377\377\b$\000\000n\004\000\000\026\000\000\000n\004\000\000\026\000\000\000\377\377\377\377\b,\000\000\204\004\000\000\024\000\000\000\204\004\000\000\024\000\000\000\377\377\377\377\b,\000\000\230\004\000\000(\000\000\000\230\004\000\000(\000\000\000\377\377\377\377\b$\000\000\300\004\000\000\037\000\000\000\300\004\000\000\037\000\000\000\377\377\377\377\b$\000\000\337\004\000\000o\000\000\000\337\004\000\000o\000\000\000\377\377\377\377\000 \000\000N\005\000\000\030\000\000\000N\005\000\000\030\000\000\000\377\377\377\377\b$\000\000f\005\000\000\020\000\000\000f\005\000\000\020\000\000\000\377\377\377\377\b,\000\000v\005\000\000\035\000\000\000v\005\000\000\035\000\000\000\377\377\377\377\b$\000\000\223\005\000\000\022\000\000\000\223\005\000\000\022\000\000\000\377\377\377\377\b$\000\000\245\005\000\000\030\000\000\000\245\005\000\000\030\000\000\000\377\377\377\377\b$\000\000\275\005\000\000\024\000\000\000\275\005\000\000\024\000\000\000\377\377\377\377\b$\000\000\321\005\000\000i\000\000\000\321\005\000\000i\000\000\000\377\377\377\377\022$\000\000:\006\000\000\203\000\000\000:\006\000\000\203\000\000\000\377\377\377\377\000 \000\000\275\006\000\000\005\000\000\000\275\006\000\000\005\000\000\000\377\377\377\377\210$\000\000\302\006\000\000n\000\000\000\302\006\000\000n\000\000\000\377\377\377\377\022$\000\0000\007\000\000\210\000\000\0000\007\000\000\210\000\000\000\377\377\377\377\000 \000\000\270\007\000\000\016\000\000\000\270\007\000\000\016\000\000\000\377\377\377\377\b,\000\000\306\007\000\000\r\000\000\000\306\007\000\000\r\000\000\000\377\377\377\377\b,\000\000\000\000\000\000\024\000\000\000\000\000\000\000\024\000\000\000\377\377\377\377\021\004\000\000\024\000\000\000'\000\000\000\024\000\000\000'\000\000\000\377\377\377\377\021\004\000\000;\000\000\000)\000\000\000;\000\000\000)\000\000\000\377\377\377\377\021\004\000\000d\000\000\000 \000\000\000d\000\000\000 \000\000\000\377\377\377\377\021\004\000\000\204\000\000\000&\000\000\000\204\000\000\000&\000\000\000\377\377\377\377\021\004\000\000\252\000\000\000'\000\000\000\252\000\000\000'\000\000\000\377\377\377\377\000\030\000\000\321\000\000\000'\000\000\000\321\000\000\000'\000\000\000\377\377\377\377\000\030\000\000\370\000\000\000'\000\000\000\370\000\000\000'\000\000\000\377\377\377\377\000\030\000\000\037\001\000\000'\000\000\000\037\001\000\000'\000\000\000\377\377\377\377\000\030\000\000F\001\000\000_\000\000\000F\001\000\000_\000\000\000\377\377\377\377\222\004\000\000\245\001\000\000s\000\000\000\245\001\000\000s\000\000\000\377\377\377\377\222\004\000\000\030\002\000\000x\000\000\000\030\002\000\000x\000\000\000\377\377\377\377\222\004\000\000\220\002\000\000h\000\000\000\220\002\000\000h\000\000\000\377\377\377\377\020\004\000\000\370\002\000\000|\000\000\000\370\002\000\000|\000\000\000\377\377\377\377\020\004\000\000t\003\000\000\201\000\000\000t\003\000\000\201\000\000\000\377\377\377\377\020\004\000\000\365\003\000\000\022\000\000\000\365\003\000\000\022\000\000\000\377\377\377\377\004\f\000\000\000\000\000\000\000\000\000\000\024\000\000\000\000\000\000\000&\b\000\000\r\000\000\000\000\000\000\000]\f\000\000\020\002\000\000\022\003\224s(\000\000\000__omp_rtl_debug_kind__omp_rtl_assume_teams_oversubscription__omp_rtl_assume_threads_oversubscription__omp_rtl_assume_no_thread_state__omp_rtl_assume_no_nested_parallelismanon.a53a47027f82d934c6dac8d950977af2.0anon.a53a47027f82d934c6dac8d950977af2.1anon.a53a47027f82d934c6dac8d950977af2.2anon.a53a47027f82d934c6dac8d950977af2.3__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelismllvm.compiler.used__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14__kmpc_target_initllvm.lifetime.start.p5llvm.lifetime.end.p5__kmpc_get_hardware_num_threads_in_block__kmpc_distribute_static_init_4__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_omp_outlined_omp_outlined__kmpc_for_static_init_4llvm.fmuladd.f64__kmpc_distribute_static_fini__kmpc_parallel_51__kmpc_global_thread_num__kmpc_target_deinit__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21_omp_outlined_omp_outlinedround__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21_omp_outlined_omp_outlinedllvm.round.f64llvm.smin.i3217.0.0git 644a4067312448b17ec2109ccfd0dd02a2f789c8amdgcn-amd-amdhsasrc/driver64.cppllvm.metadata\000\000\000\000"
	.size	.Lllvm.embedded.object, 14784

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
	.addrsig_sym _ZN7gpumath16compare_accuracyIdXcvPFddEadL_Z5roundEEXadL_Z16__ocml_round_f64EEEEvRNS_5ArrayIT_EES6_S6_S6_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESC_.omp_outlined
	.addrsig_sym .omp_task_entry.
	.addrsig_sym .omp_task_entry..24
	.addrsig_sym _ZN7gpumath13apply_fun_cpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5_.omp_outlined
	.addrsig_sym _GLOBAL__sub_I_driver64.cpp
	.addrsig_sym .omp_offloading.requires_reg
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZSt4cerr
	.addrsig_sym .__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.region_id
	.addrsig_sym _ZSt4cout
	.addrsig_sym .__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z5roundEEEEdRKNS_5ArrayIT_EERS5__l21.region_id
	.addrsig_sym .__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z16__ocml_round_f64EEEEdRKNS_5ArrayIT_EERS3__l21.region_id
