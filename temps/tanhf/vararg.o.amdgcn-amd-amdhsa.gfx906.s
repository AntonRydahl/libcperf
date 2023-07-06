	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.p2align	2
	.type	tanhf,@function
tanhf:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	v_and_b32_e32 v4, 0x7fffffff, v0
	v_add_u32_e32 v1, 0xbe900000, v4
	s_mov_b32 s4, 0xfc300000
	v_cmp_lt_u32_e32 vcc, s4, v1
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	s_cbranch_execnz .LBB2_3
	s_andn2_saveexec_b64 s[4:5], s[4:5]
	s_cbranch_execnz .LBB2_4
.LBB2_2:
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v0, v1
	s_setpc_b64 s[30:31]
.LBB2_3:
	v_lshrrev_b32_e32 v1, 28, v0
	v_and_b32_e32 v1, 8, v1
	s_getpc_b64 s[6:7]
	s_add_u32 s6, s6, __const.tanhf.HALF_WAY@rel32@lo+4
	s_addc_u32 s7, s7, __const.tanhf.HALF_WAY@rel32@hi+12
	global_load_dwordx2 v[1:2], v1, s[6:7]
	v_cvt_f64_f32_e32 v[3:4], v0
	s_mov_b32 s6, 0x652b82fe
	s_mov_b32 s7, 0xc0571547
	s_mov_b32 s8, 0xa0e34bdb
	v_mov_b32_e32 v7, 0x3fe5555c
	s_mov_b32 s9, 0x3fd11112
	s_waitcnt vmcnt(0)
	v_fma_f64 v[0:1], v[3:4], s[6:7], v[1:2]
	s_getpc_b64 s[6:7]
	s_add_u32 s6, s6, _ZN11__llvm_libc7ExpBase9EXP_2_MIDE@rel32@lo+4
	s_addc_u32 s7, s7, _ZN11__llvm_libc7ExpBase9EXP_2_MIDE@rel32@hi+12
	v_cvt_i32_f64_e32 v10, v[0:1]
	v_and_b32_e32 v0, 31, v10
	v_lshlrev_b32_e32 v0, 3, v0
	global_load_dwordx2 v[0:1], v0, s[6:7]
	v_sub_u32_e32 v2, 0, v10
	v_cvt_f64_i32_e32 v[5:6], v2
	s_mov_b32 s6, 0xfefa0000
	s_mov_b32 s7, 0xbf862e42
	v_fma_f64 v[2:3], v[5:6], s[6:7], v[3:4]
	s_mov_b32 s6, 0xbc9e3b3a
	s_mov_b32 s7, 0xbd1cf79a
	v_mov_b32_e32 v4, 0xfffe5bc8
	v_fma_f64 v[2:3], v[5:6], s[6:7], v[2:3]
	s_mov_b32 s6, 0x5555cd67
	v_bfrev_b32_e32 v5, -4
	s_mov_b32 s7, 0x3ff55555
	v_mov_b32_e32 v6, 0x2a9b48b4
	v_mul_f64 v[8:9], v[2:3], v[2:3]
	v_fma_f64 v[4:5], v[2:3], s[6:7], v[4:5]
	v_fma_f64 v[6:7], v[2:3], s[8:9], v[6:7]
	v_fma_f64 v[2:3], v[2:3], 2.0, 1.0
	v_fma_f64 v[4:5], v[8:9], v[6:7], v[4:5]
	v_fma_f64 v[2:3], v[8:9], v[4:5], v[2:3]
	v_lshlrev_b32_e32 v4, 15, v10
	v_and_b32_e32 v4, 0xfff00000, v4
	s_waitcnt vmcnt(0)
	v_add_co_u32_e32 v0, vcc, 0, v0
	v_addc_co_u32_e32 v1, vcc, v4, v1, vcc
	v_add_f64 v[4:5], v[2:3], -v[0:1]
	v_add_f64 v[0:1], v[2:3], v[0:1]
	v_div_scale_f64 v[2:3], s[6:7], v[0:1], v[0:1], v[4:5]
	v_div_scale_f64 v[10:11], vcc, v[4:5], v[0:1], v[4:5]
	v_rcp_f64_e32 v[6:7], v[2:3]
	v_fma_f64 v[8:9], -v[2:3], v[6:7], 1.0
	v_fma_f64 v[6:7], v[6:7], v[8:9], v[6:7]
	v_fma_f64 v[8:9], -v[2:3], v[6:7], 1.0
	v_fma_f64 v[6:7], v[6:7], v[8:9], v[6:7]
	v_mul_f64 v[8:9], v[10:11], v[6:7]
	v_fma_f64 v[2:3], -v[2:3], v[8:9], v[10:11]
	v_div_fmas_f64 v[2:3], v[2:3], v[6:7], v[8:9]
	v_div_fixup_f64 v[0:1], v[2:3], v[0:1], v[4:5]
	v_cvt_f32_f64_e32 v1, v[0:1]
	s_andn2_saveexec_b64 s[4:5], s[4:5]
	s_cbranch_execz .LBB2_2
.LBB2_4:
	s_mov_b32 s6, 0x3da00000
	v_cmp_lt_u32_e32 vcc, s6, v4
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz .LBB2_12
	s_mov_b32 s8, 0x7f800001
	v_cmp_gt_u32_e32 vcc, s8, v4
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz .LBB2_9
	v_lshrrev_b32_e32 v0, 27, v0
	v_and_b32_e32 v2, 16, v0
	s_getpc_b64 s[12:13]
	s_add_u32 s12, s12, __const.tanhf.SIGNS@rel32@lo+4
	s_addc_u32 s13, s13, __const.tanhf.SIGNS@rel32@hi+12
	global_load_dwordx2 v[0:1], v2, s[12:13]
	s_mov_b32 s10, 0x7f800000
	v_cmp_ne_u32_e32 vcc, s10, v4
	s_and_saveexec_b64 s[10:11], vcc
	s_cbranch_execz .LBB2_8
	v_mov_b32_e32 v3, s13
	v_add_co_u32_e32 v2, vcc, s12, v2
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	global_load_dwordx2 v[2:3], v[2:3], off offset:8
	s_waitcnt vmcnt(0)
	v_add_f64 v[0:1], v[0:1], v[2:3]
.LBB2_8:
	s_or_b64 exec, exec, s[10:11]
	s_waitcnt vmcnt(0)
	v_cvt_f32_f64_e32 v1, v[0:1]
.LBB2_9:
	s_andn2_saveexec_b64 s[8:9], s[8:9]
	v_add_f32_e32 v1, 1.0, v0
	s_or_b64 exec, exec, s[8:9]
.LBB2_12:
	s_andn2_saveexec_b64 s[6:7], s[6:7]
	s_cbranch_execz .LBB2_18
	v_cvt_f64_f32_e32 v[2:3], v0
	s_mov_b32 s8, 0x32800000
	v_cmp_lt_u32_e32 vcc, s8, v4
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz .LBB2_15
	v_mul_f64 v[0:1], v[2:3], v[2:3]
	s_mov_b32 s10, 0x1ba1ba1c
	v_mov_b32_e32 v4, 0x11111111
	v_mov_b32_e32 v5, 0x3fc11111
	s_mov_b32 s11, 0xbfaba1ba
	v_mov_b32_e32 v6, 0x882c10fa
	v_mov_b32_e32 v7, 0x3f9664f4
	v_fma_f64 v[4:5], v[0:1], s[10:11], v[4:5]
	s_mov_b32 s10, 0x55e6c23d
	s_mov_b32 s11, 0xbf8226e3
	v_mul_f64 v[8:9], v[0:1], v[0:1]
	v_fma_f64 v[6:7], v[0:1], s[10:11], v[6:7]
	s_mov_b32 s10, 0x55555555
	s_mov_b32 s11, 0xbfd55555
	v_mul_f64 v[0:1], v[0:1], s[10:11]
	v_fma_f64 v[4:5], v[8:9], v[6:7], v[4:5]
	v_fma_f64 v[0:1], v[8:9], v[4:5], v[0:1]
	v_fma_f64 v[0:1], v[2:3], v[0:1], v[2:3]
	v_cvt_f32_f64_e32 v1, v[0:1]
.LBB2_15:
	s_andn2_saveexec_b64 s[8:9], s[8:9]
	s_mov_b32 s10, 0x55555555
	s_mov_b32 s11, 0xbfd55555
	v_mul_f64 v[5:6], v[2:3], s[10:11]
	v_cmp_eq_u32_e32 vcc, 0, v4
	v_mul_f64 v[5:6], v[5:6], v[2:3]
	v_fma_f64 v[1:2], v[5:6], v[2:3], v[2:3]
	v_cvt_f32_f64_e32 v1, v[1:2]
	v_cndmask_b32_e32 v1, v1, v0, vcc
	s_or_b64 exec, exec, s[8:9]
.LBB2_18:
	s_or_b64 exec, exec, s[6:7]
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v0, v1
	s_setpc_b64 s[30:31]
.Lfunc_end0:
	.size	tanhf, .Lfunc_end0-tanhf

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28
	.p2align	8
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28,@function
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28:
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_2
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, 1
	ds_write2_b32 v1, v1, v1 offset0:1 offset1:2
	ds_write_b32 v1, v2 offset:24
.LBB0_2:
	s_or_b64 exec, exec, s[0:1]
	s_load_dwordx8 s[12:19], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_load_dword s20, s[12:13], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s20, 1
	s_cbranch_scc1 .LBB0_14
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, 0xffff, s0
	v_cvt_f32_u32_e32 v1, s21
	s_mul_i32 s6, s8, s21
	s_cmp_ge_i32 s6, s20
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s0, v1
	s_cbranch_scc1 .LBB0_14
	s_load_dword s1, s[4:5], 0xc
	s_sub_i32 s2, 0, s21
	s_mul_i32 s2, s2, s0
	s_mul_hi_u32 s2, s0, s2
	s_add_i32 s0, s0, s2
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s0, s1, s0
	s_mul_i32 s2, s0, s21
	s_sub_i32 s1, s1, s2
	s_add_i32 s2, s0, 1
	s_sub_i32 s3, s1, s21
	s_cmp_ge_u32 s1, s21
	s_cselect_b32 s0, s2, s0
	s_cselect_b32 s1, s3, s1
	s_add_i32 s2, s0, 1
	s_cmp_ge_u32 s1, s21
	s_cselect_b32 s0, s2, s0
	s_mul_i32 s8, s0, s21
	s_add_i32 s0, s21, s6
	s_add_i32 s22, s20, -1
	s_add_i32 s0, s0, -1
	s_mov_b32 s5, 0
	s_min_i32 s4, s0, s22
	s_ashr_i32 s7, s6, 31
	s_ashr_i32 s9, s8, 31
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v10, 1
	s_branch .LBB0_6
.LBB0_5:
	s_or_b64 exec, exec, s[0:1]
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	s_add_i32 s0, s4, s8
	s_min_i32 s4, s0, s22
	s_cmp_lt_i32 s6, s20
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_scc0 .LBB0_14
.LBB0_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_8
	v_mov_b32_e32 v1, s21
	ds_write_b32 v9, v1 offset:24
	ds_write2_b32 v9, v10, v10 offset0:1 offset1:2
.LBB0_8:
	s_or_b64 exec, exec, s[0:1]
	v_mov_b32_e32 v1, s12
	v_mov_b32_e32 v2, s13
	s_waitcnt lgkmcnt(0)
	s_barrier
	flat_load_dword v1, v[1:2]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_lt_i32_e64 s[0:1], 0, v1
	s_and_saveexec_b64 s[10:11], s[0:1]
	s_cbranch_execz .LBB0_12
	ds_read2_b32 v[3:4], v9 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e64 s[0:1], v4, v3
	v_cmp_ne_u32_e64 s[2:3], 0, v3
	s_and_b64 s[0:1], s[2:3], s[0:1]
	v_cndmask_b32_e64 v4, 0, v0, s[0:1]
	v_add_u32_e32 v1, s6, v4
	v_ashrrev_i32_e32 v2, 31, v1
	v_cmp_ge_u64_e64 s[0:1], s[4:5], v[1:2]
	s_and_b64 exec, exec, s[0:1]
	s_cbranch_execz .LBB0_12
	ds_read_b32 v2, v9 offset:24
	v_cmp_gt_u32_e64 s[0:1], 2, v3
	v_mov_b32_e32 v5, s7
	s_mov_b64 s[2:3], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v3, 1, v2, s[0:1]
	v_add_co_u32_e64 v4, s[0:1], s6, v4
	v_addc_co_u32_e64 v5, s[0:1], 0, v5, s[0:1]
	v_lshlrev_b64 v[5:6], 2, v[4:5]
	v_ashrrev_i32_e32 v4, 31, v3
	v_mov_b32_e32 v2, s15
	v_add_co_u32_e64 v5, s[0:1], s14, v5
	v_lshlrev_b64 v[7:8], 2, v[3:4]
	v_addc_co_u32_e64 v6, s[0:1], v2, v6, s[0:1]
.LBB0_11:
	v_mov_b32_e32 v11, s16
	v_mov_b32_e32 v12, s17
	v_mov_b32_e32 v13, s18
	v_mov_b32_e32 v14, s19
	flat_load_dword v2, v[11:12]
	flat_load_dword v4, v[13:14]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mad_u64_u32 v[11:12], s[0:1], v4, v1, v[2:3]
	v_add_u32_e32 v1, v3, v1
	v_ashrrev_i32_e32 v2, 31, v1
	v_cmp_lt_u64_e64 s[0:1], s[4:5], v[1:2]
	flat_store_dword v[5:6], v11
	s_or_b64 s[2:3], s[0:1], s[2:3]
	v_add_co_u32_e64 v5, s[0:1], v5, v7
	v_addc_co_u32_e64 v6, s[0:1], v6, v8, s[0:1]
	s_andn2_b64 exec, exec, s[2:3]
	s_cbranch_execnz .LBB0_11
.LBB0_12:
	s_or_b64 exec, exec, s[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_5
	ds_write2_b32 v9, v9, v9 offset0:1 offset1:2
	ds_write_b32 v9, v10 offset:24
	s_branch .LBB0_5
.LBB0_14:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28
		.amdhsa_group_segment_fixed_size 40
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 32
		.amdhsa_user_sgpr_count 8
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 15
		.amdhsa_next_free_sgpr 23
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_reserve_xnack_mask 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end1:
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28, .Lfunc_end1-__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
	.p2align	8
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14,@function
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14:
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB1_2
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, 1
	ds_write2_b32 v1, v1, v1 offset0:1 offset1:2
	ds_write_b32 v1, v2 offset:24
.LBB1_2:
	s_or_b64 exec, exec, s[0:1]
	s_load_dwordx8 s[12:19], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_load_dword s20, s[12:13], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s20, 1
	s_cbranch_scc1 .LBB1_14
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, 0xffff, s0
	v_cvt_f32_u32_e32 v1, s21
	s_mul_i32 s6, s8, s21
	s_cmp_ge_i32 s6, s20
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s0, v1
	s_cbranch_scc1 .LBB1_14
	s_load_dword s1, s[4:5], 0xc
	s_sub_i32 s2, 0, s21
	s_mul_i32 s2, s2, s0
	s_mul_hi_u32 s2, s0, s2
	s_add_i32 s0, s0, s2
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s0, s1, s0
	s_mul_i32 s2, s0, s21
	s_sub_i32 s1, s1, s2
	s_add_i32 s2, s0, 1
	s_sub_i32 s3, s1, s21
	s_cmp_ge_u32 s1, s21
	s_cselect_b32 s0, s2, s0
	s_cselect_b32 s1, s3, s1
	s_add_i32 s2, s0, 1
	s_cmp_ge_u32 s1, s21
	s_cselect_b32 s0, s2, s0
	s_mul_i32 s8, s0, s21
	s_add_i32 s0, s21, s6
	s_add_i32 s22, s20, -1
	s_add_i32 s0, s0, -1
	s_mov_b32 s5, 0
	s_min_i32 s4, s0, s22
	s_ashr_i32 s7, s6, 31
	s_ashr_i32 s9, s8, 31
	v_mov_b32_e32 v9, 0
	v_mov_b32_e32 v10, 1
	s_branch .LBB1_6
.LBB1_5:
	s_or_b64 exec, exec, s[0:1]
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	s_add_i32 s0, s4, s8
	s_min_i32 s4, s0, s22
	s_cmp_lt_i32 s6, s20
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_scc0 .LBB1_14
.LBB1_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB1_8
	v_mov_b32_e32 v1, s21
	ds_write_b32 v9, v1 offset:24
	ds_write2_b32 v9, v10, v10 offset0:1 offset1:2
.LBB1_8:
	s_or_b64 exec, exec, s[0:1]
	v_mov_b32_e32 v1, s12
	v_mov_b32_e32 v2, s13
	s_waitcnt lgkmcnt(0)
	s_barrier
	flat_load_dword v1, v[1:2]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_lt_i32_e64 s[0:1], 0, v1
	s_and_saveexec_b64 s[10:11], s[0:1]
	s_cbranch_execz .LBB1_12
	ds_read2_b32 v[3:4], v9 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e64 s[0:1], v4, v3
	v_cmp_ne_u32_e64 s[2:3], 0, v3
	s_and_b64 s[0:1], s[2:3], s[0:1]
	v_cndmask_b32_e64 v4, 0, v0, s[0:1]
	v_add_u32_e32 v1, s6, v4
	v_ashrrev_i32_e32 v2, 31, v1
	v_cmp_ge_u64_e64 s[0:1], s[4:5], v[1:2]
	s_and_b64 exec, exec, s[0:1]
	s_cbranch_execz .LBB1_12
	ds_read_b32 v2, v9 offset:24
	v_cmp_gt_u32_e64 s[0:1], 2, v3
	v_mov_b32_e32 v5, s7
	s_mov_b64 s[2:3], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e64 v3, 1, v2, s[0:1]
	v_add_co_u32_e64 v4, s[0:1], s6, v4
	v_addc_co_u32_e64 v5, s[0:1], 0, v5, s[0:1]
	v_lshlrev_b64 v[5:6], 2, v[4:5]
	v_ashrrev_i32_e32 v4, 31, v3
	v_mov_b32_e32 v2, s15
	v_add_co_u32_e64 v5, s[0:1], s14, v5
	v_lshlrev_b64 v[7:8], 2, v[3:4]
	v_addc_co_u32_e64 v6, s[0:1], v2, v6, s[0:1]
.LBB1_11:
	v_mov_b32_e32 v11, s16
	v_mov_b32_e32 v12, s17
	v_mov_b32_e32 v13, s18
	v_mov_b32_e32 v14, s19
	flat_load_dword v4, v[11:12]
	flat_load_dword v15, v[13:14]
	v_cvt_f32_i32_e32 v11, v1
	v_add_u32_e32 v1, v3, v1
	v_ashrrev_i32_e32 v2, 31, v1
	v_cmp_lt_u64_e64 s[0:1], s[4:5], v[1:2]
	s_or_b64 s[2:3], s[0:1], s[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fmac_f32_e32 v4, v11, v15
	flat_store_dword v[5:6], v4
	v_add_co_u32_e64 v5, s[0:1], v5, v7
	v_addc_co_u32_e64 v6, s[0:1], v6, v8, s[0:1]
	s_andn2_b64 exec, exec, s[2:3]
	s_cbranch_execnz .LBB1_11
.LBB1_12:
	s_or_b64 exec, exec, s[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB1_5
	ds_write2_b32 v9, v9, v9 offset0:1 offset1:2
	ds_write_b32 v9, v10 offset:24
	s_branch .LBB1_5
.LBB1_14:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
		.amdhsa_group_segment_fixed_size 40
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 32
		.amdhsa_user_sgpr_count 8
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 16
		.amdhsa_next_free_sgpr 23
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_reserve_xnack_mask 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end2:
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14, .Lfunc_end2-__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23:
	s_add_u32 flat_scratch_lo, s8, s11
	s_addc_u32 flat_scratch_hi, s9, 0
	s_add_u32 s0, s0, s11
	v_mov_b32_e32 v12, v0
	s_addc_u32 s1, s1, 0
	v_cmp_eq_u32_e64 s[14:15], 0, v12
	s_mov_b32 s32, 0
	s_and_saveexec_b64 s[8:9], s[14:15]
	s_cbranch_execz .LBB3_2
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v1, 1
	ds_write2_b32 v0, v0, v0 offset0:1 offset1:2
	ds_write_b32 v0, v1 offset:24
.LBB3_2:
	s_or_b64 exec, exec, s[8:9]
	s_load_dwordx4 s[20:23], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s20, 1
	s_cbranch_scc1 .LBB3_15
	s_load_dword s8, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s21, 0xffff, s8
	v_cvt_f32_u32_e32 v0, s21
	s_mul_i32 s33, s10, s21
	s_cmp_ge_i32 s33, s20
	v_rcp_iflag_f32_e32 v0, v0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s8, v0
	s_cbranch_scc1 .LBB3_15
	s_load_dwordx2 s[18:19], s[6:7], 0x10
	s_load_dword s9, s[4:5], 0xc
	s_sub_i32 s4, 0, s21
	s_mul_i32 s4, s4, s8
	s_mul_hi_u32 s4, s8, s4
	s_add_i32 s8, s8, s4
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s4, s9, s8
	s_mul_i32 s4, s4, s21
	s_sub_i32 s4, s9, s4
	s_sub_i32 s5, s4, s21
	s_cmp_ge_u32 s4, s21
	s_cselect_b32 s4, s5, s4
	s_sub_i32 s5, s4, s21
	s_cmp_ge_u32 s4, s21
	s_cselect_b32 s4, s5, s4
	s_sub_i32 s36, s9, s4
	s_add_i32 s4, s21, s33
	s_add_i32 s37, s20, -1
	s_add_i32 s4, s4, -1
	s_min_i32 s24, s4, s37
	s_cmp_gt_i32 s20, 0
	s_cselect_b64 s[4:5], -1, 0
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	s_mov_b32 s25, 0
	v_mov_b32_e32 v15, 0
	v_cmp_ne_u32_e64 s[16:17], 1, v0
	v_mov_b32_e32 v16, 1
	s_getpc_b64 s[26:27]
	s_add_u32 s26, s26, tanhf@rel32@lo+4
	s_addc_u32 s27, s27, tanhf@rel32@hi+12
	s_branch .LBB3_6
.LBB3_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s24, s36
	s_add_i32 s33, s33, s36
	s_min_i32 s24, s4, s37
	s_cmp_lt_i32 s33, s20
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB3_15
.LBB3_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[14:15]
	s_cbranch_execz .LBB3_8
	v_mov_b32_e32 v0, s21
	ds_write_b32 v15, v0 offset:24
	ds_write2_b32 v15, v16, v16 offset0:1 offset1:2
.LBB3_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[16:17]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB3_13
	ds_read2_b32 v[2:3], v15 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v3, v2
	v_cmp_ne_u32_e64 s[4:5], 0, v2
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v3, 0, v12, vcc
	v_add_u32_e32 v0, s33, v3
	v_ashrrev_i32_e32 v1, 31, v0
	v_cmp_ge_u64_e32 vcc, s[24:25], v[0:1]
	s_and_saveexec_b64 s[28:29], vcc
	s_cbranch_execz .LBB3_12
	ds_read_b32 v4, v15 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v2
	s_mov_b64 s[34:35], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v17, 1, v4, vcc
	v_add_u32_e32 v2, s33, v17
	v_add_u32_e32 v2, v2, v3
	v_ashrrev_i32_e32 v18, 31, v17
	v_ashrrev_i32_e32 v3, 31, v2
	v_sub_co_u32_e32 v13, vcc, v2, v17
	v_subb_co_u32_e32 v14, vcc, v3, v18, vcc
.LBB3_11:
	v_lshlrev_b64 v[19:20], 2, v[0:1]
	v_mov_b32_e32 v1, s19
	v_add_co_u32_e32 v0, vcc, s18, v19
	v_addc_co_u32_e32 v1, vcc, v1, v20, vcc
	flat_load_dword v0, v[0:1]
	s_swappc_b64 s[30:31], s[26:27]
	v_mov_b32_e32 v2, s23
	v_add_co_u32_e32 v1, vcc, s22, v19
	v_addc_co_u32_e32 v2, vcc, v2, v20, vcc
	v_add_co_u32_e32 v13, vcc, v13, v17
	v_addc_co_u32_e32 v14, vcc, v14, v18, vcc
	v_cmp_lt_u64_e32 vcc, s[24:25], v[13:14]
	flat_store_dword v[1:2], v0
	v_ashrrev_i32_e32 v1, 31, v13
	s_or_b64 s[34:35], vcc, s[34:35]
	v_mov_b32_e32 v0, v13
	s_andn2_b64 exec, exec, s[34:35]
	s_cbranch_execnz .LBB3_11
.LBB3_12:
	s_or_b64 exec, exec, s[28:29]
.LBB3_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[14:15]
	s_cbranch_execz .LBB3_5
	ds_write2_b32 v15, v15, v15 offset0:1 offset1:2
	ds_write_b32 v15, v16 offset:24
	s_branch .LBB3_5
.LBB3_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
		.amdhsa_group_segment_fixed_size 40
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 24
		.amdhsa_user_sgpr_count 10
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 1
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 21
		.amdhsa_next_free_sgpr 38
		.amdhsa_reserve_xnack_mask 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end3:
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23, .Lfunc_end3-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23:
	v_cmp_eq_u32_e64 s[0:1], 0, v0
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz .LBB4_2
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, 1
	ds_write2_b32 v1, v1, v1 offset0:1 offset1:2
	ds_write_b32 v1, v2 offset:24
.LBB4_2:
	s_or_b64 exec, exec, s[2:3]
	s_load_dwordx4 s[12:15], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s12, 1
	s_cbranch_scc1 .LBB4_19
	s_load_dword s2, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, 0xffff, s2
	v_cvt_f32_u32_e32 v1, s13
	s_mul_i32 s18, s8, s13
	s_cmp_ge_i32 s18, s12
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s2, v1
	s_cbranch_scc1 .LBB4_19
	s_load_dwordx2 s[8:9], s[6:7], 0x10
	s_load_dword s3, s[4:5], 0xc
	s_sub_i32 s4, 0, s13
	s_mul_i32 s4, s4, s2
	s_mul_hi_u32 s4, s2, s4
	s_add_i32 s2, s2, s4
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s2, s3, s2
	s_mul_i32 s2, s2, s13
	s_sub_i32 s2, s3, s2
	s_sub_i32 s4, s2, s13
	s_cmp_ge_u32 s2, s13
	s_cselect_b32 s2, s4, s2
	s_sub_i32 s4, s2, s13
	s_cmp_ge_u32 s2, s13
	s_cselect_b32 s2, s4, s2
	s_sub_i32 s19, s3, s2
	s_add_i32 s2, s13, s18
	s_add_i32 s20, s12, -1
	s_add_i32 s2, s2, -1
	s_min_i32 s6, s2, s20
	s_cmp_gt_i32 s12, 0
	s_cselect_b64 s[2:3], -1, 0
	v_cndmask_b32_e64 v1, 0, 1, s[2:3]
	s_mov_b32 s7, 0
	v_mov_b32_e32 v5, 0
	v_cmp_ne_u32_e64 s[2:3], 1, v1
	s_mov_b32 s21, 0x3f200000
	s_mov_b32 s22, 0x3fb8aa3b
	s_mov_b32 s23, 0xc2ce8ed0
	s_mov_b32 s24, 0x42b17218
	v_mov_b32_e32 v6, 0xbd5c1c4e
	v_mov_b32_e32 v7, 0x3e088382
	v_mov_b32_e32 v8, 0xbeaaaa99
	s_brev_b32 s25, -2
	v_mov_b32_e32 v9, 1
	v_mov_b32_e32 v10, 0x7f800000
	s_branch .LBB4_6
.LBB4_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s6, s19
	s_add_i32 s18, s18, s19
	s_min_i32 s6, s4, s20
	s_cmp_lt_i32 s18, s12
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB4_19
.LBB4_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB4_8
	v_mov_b32_e32 v1, s13
	ds_write_b32 v5, v1 offset:24
	ds_write2_b32 v5, v9, v9 offset0:1 offset1:2
.LBB4_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB4_17
	ds_read2_b32 v[3:4], v5 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v4, v3
	v_cmp_ne_u32_e64 s[4:5], 0, v3
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v1, 0, v0, vcc
	v_add_u32_e32 v1, s18, v1
	v_ashrrev_i32_e32 v2, 31, v1
	v_cmp_ge_u64_e32 vcc, s[6:7], v[1:2]
	s_and_saveexec_b64 s[10:11], vcc
	s_cbranch_execz .LBB4_16
	ds_read_b32 v4, v5 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v3
	s_mov_b64 s[16:17], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v11, 1, v4, vcc
	s_branch .LBB4_12
.LBB4_11:
	s_or_b64 exec, exec, s[4:5]
	v_add_u32_e32 v1, v11, v1
	v_bfi_b32 v12, s25, v12, v2
	v_ashrrev_i32_e32 v2, 31, v1
	v_cmp_lt_u64_e32 vcc, s[6:7], v[1:2]
	v_mov_b32_e32 v13, s15
	v_add_co_u32_e64 v3, s[4:5], s14, v3
	v_addc_co_u32_e64 v4, s[4:5], v13, v4, s[4:5]
	s_or_b64 s[16:17], vcc, s[16:17]
	flat_store_dword v[3:4], v12
	s_andn2_b64 exec, exec, s[16:17]
	s_cbranch_execz .LBB4_16
.LBB4_12:
	v_lshlrev_b64 v[3:4], 2, v[1:2]
	v_mov_b32_e32 v2, s9
	v_add_co_u32_e32 v12, vcc, s8, v3
	v_addc_co_u32_e32 v13, vcc, v2, v4, vcc
	flat_load_dword v2, v[12:13]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_nlt_f32_e64 s[4:5], |v2|, s21
	s_and_saveexec_b64 s[26:27], s[4:5]
	s_xor_b64 s[4:5], exec, s[26:27]
	s_cbranch_execz .LBB4_14
	v_add_f32_e64 v12, |v2|, |v2|
	v_mul_f32_e32 v13, 0x3fb8aa3b, v12
	v_fma_f32 v14, v12, s22, -v13
	v_rndne_f32_e32 v15, v13
	v_fmac_f32_e32 v14, 0x32a5705f, v12
	v_sub_f32_e32 v13, v13, v15
	v_add_f32_e32 v13, v14, v13
	v_cvt_i32_f32_e32 v14, v15
	v_exp_f32_e32 v13, v13
	v_cmp_ngt_f32_e32 vcc, s23, v12
	v_ldexp_f32 v13, v13, v14
	v_add_f32_e32 v13, 1.0, v13
	v_cndmask_b32_e32 v13, 1.0, v13, vcc
	v_cmp_nlt_f32_e32 vcc, s24, v12
	v_cndmask_b32_e32 v12, v10, v13, vcc
	v_rcp_f32_e32 v12, v12
	v_fma_f32 v12, v12, -2.0, 1.0
.LBB4_14:
	s_andn2_saveexec_b64 s[4:5], s[4:5]
	s_cbranch_execz .LBB4_11
	v_mul_f32_e32 v12, v2, v2
	v_mov_b32_e32 v13, 0x3ca908c9
	v_fmac_f32_e32 v13, 0xbbbac73d, v12
	v_fma_f32 v13, v12, v13, v6
	v_fma_f32 v13, v12, v13, v7
	v_fma_f32 v13, v12, v13, v8
	v_mul_f32_e64 v13, |v2|, v13
	v_fma_f32 v12, v12, v13, |v2|
	s_branch .LBB4_11
.LBB4_16:
	s_or_b64 exec, exec, s[10:11]
.LBB4_17:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB4_5
	ds_write2_b32 v5, v5, v5 offset0:1 offset1:2
	ds_write_b32 v5, v9 offset:24
	s_branch .LBB4_5
.LBB4_19:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
		.amdhsa_group_segment_fixed_size 40
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 24
		.amdhsa_user_sgpr_count 8
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 16
		.amdhsa_next_free_sgpr 28
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_reserve_xnack_mask 1
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 3
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end4:
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23, .Lfunc_end4-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23

	.type	__const.tanhf.SIGNS,@object
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
__const.tanhf.SIGNS:
	.quad	0x3ff0000000000000
	.quad	0xbe60000000000000
	.quad	0xbff0000000000000
	.quad	0x3e60000000000000
	.size	__const.tanhf.SIGNS, 32

	.type	__const.tanhf.HALF_WAY,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
__const.tanhf.HALF_WAY:
	.quad	0xbfe0000000000000
	.quad	0x3fe0000000000000
	.size	__const.tanhf.HALF_WAY, 16

	.type	_ZN11__llvm_libc7ExpBase9EXP_2_MIDE,@object
	.section	.rodata._ZN11__llvm_libc7ExpBase9EXP_2_MIDE,#alloc
	.p2align	3, 0x0
_ZN11__llvm_libc7ExpBase9EXP_2_MIDE:
	.quad	4607182418800017408
	.quad	4607281034790536564
	.quad	4607381810190059791
	.quad	4607484792283487057
	.quad	4607590029391122811
	.quad	4607697570891348394
	.quad	4607807467243790904
	.quad	4607919770012999393
	.quad	4608034531892639509
	.quad	4608151806730217931
	.quad	4608271649552348194
	.quad	4608394116590569773
	.quad	4608519265307732519
	.quad	4608647154424958850
	.quad	4608777843949196329
	.quad	4608911395201373573
	.quad	4609047870845172685
	.quad	4609187334916431732
	.quad	4609329852853191047
	.quad	4609475491526397459
	.quad	4609624319271280859
	.quad	4609776405919417829
	.quad	4609931822831497360
	.quad	4610090642930804061
	.quad	4610252940737434541
	.quad	4610418792403263047
	.quad	4610588275747672732
	.quad	4610761470294069353
	.quad	4610938457307194503
	.quad	4611119319831255903
	.quad	4611304142728892634
	.quad	4611493012720993600
	.size	_ZN11__llvm_libc7ExpBase9EXP_2_MIDE, 256

	.protected	__omp_rtl_device_environment
	.type	__omp_rtl_device_environment,@object
	.section	.bss,#alloc,#write
	.weak	__omp_rtl_device_environment
	.p2align	2, 0x0
__omp_rtl_device_environment:
	.zero	16
	.size	__omp_rtl_device_environment, 16

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_exec_mode
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_exec_mode,@object
	.section	.rodata,#alloc
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_exec_mode
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_exec_mode, 1

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism.8,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism.8
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism.8:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism.8, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.9,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.9
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.9:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.9, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11, 1

	.no_dead_strip	__omp_rtl_device_environment
	.section	".linker-options",#exclude
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 123545e9e59f765afa6ddf3b6f07191509604e94)"
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 123545e9e59f765afa6ddf3b6f07191509604e94)"
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 123545e9e59f765afa6ddf3b6f07191509604e94)"
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 123545e9e59f765afa6ddf3b6f07191509604e94)"
	.ident	"AMD clang version 16.0.0 (https://github.com/RadeonOpenCompute/llvm-project roc-5.5.0 23144 5fe166b8eac068df976282939b880a75a3a63014)"
	.section	".note.GNU-stack"
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  generic
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  generic
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  generic
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  generic
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 40
    .kernarg_segment_align: 8
    .kernarg_segment_size: 32
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28
    .private_segment_fixed_size: 0
    .sgpr_count:     27
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28.kd
    .vgpr_count:     15
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .address_space:  generic
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  generic
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  generic
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  generic
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 40
    .kernarg_segment_align: 8
    .kernarg_segment_size: 32
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
    .private_segment_fixed_size: 0
    .sgpr_count:     27
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14.kd
    .vgpr_count:     16
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .offset:         0
        .size:           8
        .value_kind:     by_value
      - .address_space:  generic
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  generic
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 40
    .kernarg_segment_align: 8
    .kernarg_segment_size: 24
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5tanhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23.kd
    .vgpr_count:     21
    .vgpr_spill_count: 0
    .wavefront_size: 64
  - .args:
      - .offset:         0
        .size:           8
        .value_kind:     by_value
      - .address_space:  generic
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
      - .address_space:  generic
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 40
    .kernarg_segment_align: 8
    .kernarg_segment_size: 24
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
    .private_segment_fixed_size: 0
    .sgpr_count:     32
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_tanh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23.kd
    .vgpr_count:     16
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata
