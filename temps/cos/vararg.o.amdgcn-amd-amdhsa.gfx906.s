	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
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
.Lfunc_end0:
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28, .Lfunc_end0-__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
	.p2align	8
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14,@function
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14:
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
	v_lshlrev_b64 v[5:6], 3, v[4:5]
	v_ashrrev_i32_e32 v4, 31, v3
	v_mov_b32_e32 v2, s15
	v_add_co_u32_e64 v5, s[0:1], s14, v5
	v_lshlrev_b64 v[7:8], 3, v[3:4]
	v_addc_co_u32_e64 v6, s[0:1], v2, v6, s[0:1]
.LBB1_11:
	v_mov_b32_e32 v11, s16
	v_mov_b32_e32 v12, s17
	v_mov_b32_e32 v13, s18
	v_mov_b32_e32 v14, s19
	flat_load_dwordx2 v[15:16], v[11:12]
	flat_load_dwordx2 v[17:18], v[13:14]
	v_cvt_f64_i32_e32 v[11:12], v1
	v_add_u32_e32 v1, v3, v1
	v_ashrrev_i32_e32 v2, 31, v1
	v_cmp_lt_u64_e64 s[0:1], s[4:5], v[1:2]
	s_or_b64 s[2:3], s[0:1], s[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f64 v[11:12], v[11:12], v[17:18], v[15:16]
	flat_store_dwordx2 v[5:6], v[11:12]
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
	.amdhsa_kernel __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
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
		.amdhsa_next_free_vgpr 19
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
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14, .Lfunc_end1-__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23:
	s_add_u32 flat_scratch_lo, s12, s17
	s_addc_u32 flat_scratch_hi, s13, 0
	s_add_u32 s0, s0, s17
	v_mov_b32_e32 v40, v0
	s_addc_u32 s1, s1, 0
	s_mov_b32 s33, s16
	s_mov_b32 s46, s15
	s_mov_b32 s47, s14
	s_mov_b64 s[34:35], s[10:11]
	s_mov_b64 s[36:37], s[8:9]
	s_mov_b64 s[38:39], s[6:7]
	s_mov_b64 s[40:41], s[4:5]
	v_cmp_eq_u32_e64 s[42:43], 0, v40
	s_mov_b32 s32, 0
	s_and_saveexec_b64 s[4:5], s[42:43]
	s_cbranch_execz .LBB2_2
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v3, 1
	ds_write2_b32 v0, v0, v0 offset0:1 offset1:2
	ds_write_b32 v0, v3 offset:24
.LBB2_2:
	s_or_b64 exec, exec, s[4:5]
	s_load_dwordx4 s[48:51], s[36:37], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s48, 1
	s_cbranch_scc1 .LBB2_15
	s_load_dword s4, s[40:41], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s49, 0xffff, s4
	v_cvt_f32_u32_e32 v0, s49
	s_mul_i32 s62, s47, s49
	s_cmp_ge_i32 s62, s48
	v_rcp_iflag_f32_e32 v0, v0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s4, v0
	s_cbranch_scc1 .LBB2_15
	s_load_dwordx2 s[52:53], s[36:37], 0x10
	s_load_dword s5, s[40:41], 0xc
	s_sub_i32 s6, 0, s49
	s_mul_i32 s6, s6, s4
	s_mul_hi_u32 s6, s4, s6
	s_add_i32 s4, s4, s6
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s4, s5, s4
	s_mul_i32 s4, s4, s49
	s_sub_i32 s4, s5, s4
	s_sub_i32 s6, s4, s49
	s_cmp_ge_u32 s4, s49
	s_cselect_b32 s4, s6, s4
	s_sub_i32 s6, s4, s49
	s_cmp_ge_u32 s4, s49
	s_cselect_b32 s4, s6, s4
	s_sub_i32 s63, s5, s4
	s_add_i32 s4, s49, s62
	s_add_i32 s64, s48, -1
	s_add_i32 s4, s4, -1
	s_min_i32 s54, s4, s64
	s_cmp_gt_i32 s48, 0
	s_cselect_b64 s[4:5], -1, 0
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, cos@gotpcrel32@lo+4
	s_addc_u32 s5, s5, cos@gotpcrel32@hi+12
	s_load_dwordx2 s[56:57], s[4:5], 0x0
	v_cmp_ne_u32_e64 s[44:45], 1, v0
	v_lshlrev_b32_e32 v0, 20, v2
	v_lshlrev_b32_e32 v1, 10, v1
	s_mov_b32 s55, 0
	v_mov_b32_e32 v44, 0
	v_or3_b32 v41, v40, v1, v0
	v_mov_b32_e32 v45, 1
	s_branch .LBB2_6
.LBB2_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s54, s63
	s_add_i32 s62, s62, s63
	s_min_i32 s54, s4, s64
	s_cmp_lt_i32 s62, s48
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB2_15
.LBB2_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[42:43]
	s_cbranch_execz .LBB2_8
	v_mov_b32_e32 v0, s49
	ds_write_b32 v44, v0 offset:24
	ds_write2_b32 v44, v45, v45 offset0:1 offset1:2
.LBB2_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[44:45]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB2_13
	ds_read2_b32 v[0:1], v44 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v1, v0
	v_cmp_ne_u32_e64 s[4:5], 0, v0
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v1, 0, v40, vcc
	v_add_u32_e32 v42, s62, v1
	v_ashrrev_i32_e32 v43, 31, v42
	v_cmp_ge_u64_e32 vcc, s[54:55], v[42:43]
	s_and_saveexec_b64 s[58:59], vcc
	s_cbranch_execz .LBB2_12
	ds_read_b32 v1, v44 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v0
	s_mov_b64 s[60:61], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v46, 1, v1, vcc
.LBB2_11:
	v_lshlrev_b64 v[56:57], 3, v[42:43]
	v_mov_b32_e32 v1, s53
	v_add_co_u32_e32 v0, vcc, s52, v56
	v_addc_co_u32_e32 v1, vcc, v1, v57, vcc
	flat_load_dwordx2 v[0:1], v[0:1]
	s_add_u32 s8, s36, 24
	s_addc_u32 s9, s37, 0
	s_mov_b64 s[4:5], s[40:41]
	s_mov_b64 s[6:7], s[38:39]
	s_mov_b64 s[10:11], s[34:35]
	s_mov_b32 s12, s47
	s_mov_b32 s13, s46
	s_mov_b32 s14, s33
	v_mov_b32_e32 v31, v41
	s_swappc_b64 s[30:31], s[56:57]
	v_add_u32_e32 v42, v46, v42
	v_ashrrev_i32_e32 v43, 31, v42
	v_cmp_lt_u64_e32 vcc, s[54:55], v[42:43]
	v_mov_b32_e32 v3, s51
	v_add_co_u32_e64 v2, s[4:5], s50, v56
	v_addc_co_u32_e64 v3, s[4:5], v3, v57, s[4:5]
	s_or_b64 s[60:61], vcc, s[60:61]
	flat_store_dwordx2 v[2:3], v[0:1]
	s_andn2_b64 exec, exec, s[60:61]
	s_cbranch_execnz .LBB2_11
.LBB2_12:
	s_or_b64 exec, exec, s[58:59]
.LBB2_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[42:43]
	s_cbranch_execz .LBB2_5
	ds_write2_b32 v44, v44, v44 offset0:1 offset1:2
	ds_write_b32 v44, v45 offset:24
	s_branch .LBB2_5
.LBB2_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
		.amdhsa_group_segment_fixed_size 40
		.amdhsa_private_segment_fixed_size 16384
		.amdhsa_kernarg_size 80
		.amdhsa_user_sgpr_count 14
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 1
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 1
		.amdhsa_user_sgpr_flat_scratch_init 1
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 1
		.amdhsa_system_sgpr_workgroup_id_z 1
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 2
		.amdhsa_next_free_vgpr 58
		.amdhsa_next_free_sgpr 65
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23, .Lfunc_end2-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23:
	v_cmp_eq_u32_e64 s[0:1], 0, v0
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz .LBB3_2
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, 1
	ds_write2_b32 v1, v1, v1 offset0:1 offset1:2
	ds_write_b32 v1, v2 offset:24
.LBB3_2:
	s_or_b64 exec, exec, s[2:3]
	s_load_dwordx4 s[12:15], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s12, 1
	s_cbranch_scc1 .LBB3_19
	s_load_dword s2, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, 0xffff, s2
	v_cvt_f32_u32_e32 v1, s13
	s_mul_i32 s33, s8, s13
	s_cmp_ge_i32 s33, s12
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s2, v1
	s_cbranch_scc1 .LBB3_19
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
	s_sub_i32 s62, s3, s2
	s_add_i32 s2, s13, s33
	s_add_i32 s63, s12, -1
	s_add_i32 s2, s2, -1
	s_min_i32 s16, s2, s63
	s_cmp_gt_i32 s12, 0
	s_cselect_b64 s[2:3], -1, 0
	s_mov_b32 s10, 0
	v_cndmask_b32_e64 v2, 0, 1, s[2:3]
	s_mov_b32 s24, 0x54442d18
	s_mov_b32 s30, 0x6dc9c883
	s_mov_b32 s34, 0x33145c00
	s_mov_b32 s36, 0x252049c0
	s_mov_b32 s38, 0x46cc5e42
	s_mov_b32 s40, 0xa17f65f6
	s_mov_b32 s42, 0x19f4ec90
	s_mov_b32 s44, 0x16c16967
	s_mov_b32 s46, 0x55555555
	s_mov_b32 s48, 0xf9a43bb8
	s_mov_b32 s50, 0x796cde01
	s_mov_b32 s52, 0x19e83e5c
	s_mov_b32 s54, 0x11110bb3
	s_mov_b32 s11, 0x41d00000
	v_mov_b32_e32 v1, 0
	v_cmp_ne_u32_e64 s[2:3], 1, v2
	s_mov_b32 s19, 0x7b000000
	s_movk_i32 s64, 0xff80
	s_mov_b32 s21, 0x7ff00000
	s_mov_b32 s23, 0x3ff921fb
	s_mov_b32 s25, 0xbff921fb
	s_mov_b32 s27, 0x3c91a626
	s_mov_b32 s28, 0x33145c07
	s_mov_b32 s31, 0x3fe45f30
	s_mov_b32 s35, 0xbc91a626
	s_mov_b32 s37, 0xb97b839a
	s_mov_b32 s39, 0xbda907db
	s_mov_b32 s41, 0xbe927e4f
	s_mov_b32 s43, 0x3efa01a0
	s_mov_b32 s45, 0xbf56c16c
	s_mov_b32 s47, 0x3fa55555
	s_mov_b32 s49, 0x3de5e0b2
	s_mov_b32 s51, 0x3ec71de3
	s_mov_b32 s53, 0xbf2a01a0
	s_mov_b32 s55, 0x3f811111
	s_mov_b32 s57, 0xbfc55555
	v_mov_b32_e32 v16, 0x1f8
	v_mov_b32_e32 v17, 1
	v_mov_b32_e32 v18, 0x3ff00000
	v_mov_b32_e32 v3, 0x9037ab78
	v_mov_b32_e32 v4, 0x3e21eeb6
	v_mov_b32_e32 v5, 0xb42fdfa7
	v_mov_b32_e32 v6, 0xbe5ae600
	v_mov_b32_e32 v19, 0x7ff80000
	s_branch .LBB3_6
.LBB3_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s16, s62
	s_add_i32 s33, s33, s62
	s_min_i32 s16, s4, s63
	s_cmp_lt_i32 s33, s12
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB3_19
.LBB3_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB3_8
	v_mov_b32_e32 v2, s13
	ds_write_b32 v1, v2 offset:24
	ds_write2_b32 v1, v17, v17 offset0:1 offset1:2
.LBB3_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB3_17
	ds_read2_b32 v[9:10], v1 offset0:1 offset1:2
	s_mov_b32 s17, s10
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v10, v9
	v_cmp_ne_u32_e64 s[4:5], 0, v9
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v2, 0, v0, vcc
	v_add_u32_e32 v7, s33, v2
	v_ashrrev_i32_e32 v8, 31, v7
	v_cmp_ge_u64_e32 vcc, s[16:17], v[7:8]
	s_and_saveexec_b64 s[58:59], vcc
	s_cbranch_execz .LBB3_16
	ds_read_b32 v2, v1 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v9
	s_mov_b64 s[60:61], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v20, 1, v2, vcc
	s_branch .LBB3_12
.LBB3_11:
	s_or_b64 exec, exec, s[4:5]
	v_mul_f64 v[22:23], v[12:13], v[12:13]
	v_mul_f64 v[32:33], v[14:15], 0.5
	s_mov_b32 s56, s46
	v_cmp_class_f64_e64 s[4:5], v[10:11], v16
	v_and_b32_e32 v2, 1, v21
	v_add_u32_e32 v7, v20, v7
	v_add_co_u32_e64 v10, s[6:7], s14, v8
	v_fma_f64 v[24:25], v[22:23], s[48:49], v[5:6]
	v_mul_f64 v[28:29], v[22:23], 0.5
	v_fma_f64 v[26:27], v[22:23], s[38:39], v[3:4]
	v_mul_f64 v[34:35], v[12:13], -v[22:23]
	v_cmp_eq_u32_e32 vcc, 0, v2
	v_ashrrev_i32_e32 v8, 31, v7
	v_fma_f64 v[24:25], v[22:23], v[24:25], s[50:51]
	v_add_f64 v[30:31], -v[28:29], 1.0
	v_fma_f64 v[26:27], v[22:23], v[26:27], s[40:41]
	v_fma_f64 v[24:25], v[22:23], v[24:25], s[52:53]
	v_add_f64 v[36:37], -v[30:31], 1.0
	v_fma_f64 v[26:27], v[22:23], v[26:27], s[42:43]
	v_fma_f64 v[24:25], v[22:23], v[24:25], s[54:55]
	v_add_f64 v[28:29], v[36:37], -v[28:29]
	v_fma_f64 v[26:27], v[22:23], v[26:27], s[44:45]
	v_fma_f64 v[24:25], v[34:35], v[24:25], v[32:33]
	v_fma_f64 v[28:29], v[12:13], -v[14:15], v[28:29]
	v_mul_f64 v[32:33], v[22:23], v[22:23]
	v_fma_f64 v[26:27], v[22:23], v[26:27], s[46:47]
	v_fma_f64 v[14:15], v[22:23], v[24:25], -v[14:15]
	v_fma_f64 v[22:23], v[32:33], v[26:27], v[28:29]
	v_fma_f64 v[14:15], v[34:35], s[56:57], v[14:15]
	v_add_f64 v[22:23], v[30:31], v[22:23]
	v_add_f64 v[12:13], v[12:13], -v[14:15]
	v_mov_b32_e32 v15, s15
	v_lshlrev_b32_e32 v14, 30, v21
	v_addc_co_u32_e64 v11, s[6:7], v15, v9, s[6:7]
	v_and_b32_e32 v14, 0x80000000, v14
	v_cmp_lt_u64_e64 s[6:7], s[16:17], v[7:8]
	s_or_b64 s[60:61], s[6:7], s[60:61]
	v_xor_b32_e32 v9, 0x80000000, v13
	v_cndmask_b32_e32 v2, v12, v22, vcc
	v_cndmask_b32_e32 v9, v9, v23, vcc
	v_cndmask_b32_e64 v12, 0, v2, s[4:5]
	v_xor_b32_e32 v2, v9, v14
	v_cndmask_b32_e64 v13, v19, v2, s[4:5]
	flat_store_dwordx2 v[10:11], v[12:13]
	s_andn2_b64 exec, exec, s[60:61]
	s_cbranch_execz .LBB3_16
.LBB3_12:
	v_lshlrev_b64 v[8:9], 3, v[7:8]
	v_mov_b32_e32 v2, s9
	v_add_co_u32_e32 v10, vcc, s8, v8
	v_addc_co_u32_e32 v11, vcc, v2, v9, vcc
	flat_load_dwordx2 v[10:11], v[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_nlt_f64_e64 s[4:5], |v[10:11]|, s[10:11]
	s_and_saveexec_b64 s[6:7], s[4:5]
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz .LBB3_14
	v_trig_preop_f64 v[12:13], |v[10:11]|, 0
	s_mov_b32 s18, s10
	v_cmp_ge_f64_e64 vcc, |v[10:11]|, s[18:19]
	v_ldexp_f64 v[23:24], |v[10:11]|, s64
	v_trig_preop_f64 v[14:15], |v[10:11]|, 1
	v_trig_preop_f64 v[21:22], |v[10:11]|, 2
	v_and_b32_e32 v2, 0x7fffffff, v11
	s_mov_b32 s20, s10
	s_mov_b32 s22, s24
	s_mov_b32 s29, s27
	v_cndmask_b32_e32 v24, v2, v24, vcc
	v_cndmask_b32_e32 v23, v10, v23, vcc
	v_mov_b32_e32 v2, 0x40100000
	v_mul_f64 v[29:30], v[12:13], v[23:24]
	v_mul_f64 v[27:28], v[14:15], v[23:24]
	v_mul_f64 v[25:26], v[21:22], v[23:24]
	v_fma_f64 v[12:13], v[12:13], v[23:24], -v[29:30]
	v_fma_f64 v[14:15], v[14:15], v[23:24], -v[27:28]
	v_fma_f64 v[21:22], v[21:22], v[23:24], -v[25:26]
	v_add_f64 v[23:24], v[27:28], v[12:13]
	v_add_f64 v[31:32], v[23:24], -v[27:28]
	v_add_f64 v[33:34], v[23:24], -v[31:32]
	v_add_f64 v[12:13], v[12:13], -v[31:32]
	v_add_f64 v[27:28], v[27:28], -v[33:34]
	v_add_f64 v[12:13], v[12:13], v[27:28]
	v_add_f64 v[27:28], v[25:26], v[14:15]
	v_add_f64 v[31:32], v[27:28], -v[25:26]
	v_add_f64 v[33:34], v[27:28], -v[31:32]
	v_add_f64 v[14:15], v[14:15], -v[31:32]
	v_add_f64 v[25:26], v[25:26], -v[33:34]
	v_add_f64 v[14:15], v[14:15], v[25:26]
	v_add_f64 v[25:26], v[27:28], v[12:13]
	v_add_f64 v[31:32], v[25:26], -v[27:28]
	v_add_f64 v[33:34], v[25:26], -v[31:32]
	v_add_f64 v[12:13], v[12:13], -v[31:32]
	v_add_f64 v[27:28], v[27:28], -v[33:34]
	v_add_f64 v[12:13], v[12:13], v[27:28]
	v_add_f64 v[12:13], v[14:15], v[12:13]
	v_add_f64 v[14:15], v[29:30], v[23:24]
	v_add_f64 v[12:13], v[21:22], v[12:13]
	v_add_f64 v[21:22], v[14:15], -v[29:30]
	v_ldexp_f64 v[14:15], v[14:15], -2
	v_add_f64 v[21:22], v[23:24], -v[21:22]
	v_cmp_neq_f64_e64 vcc, |v[14:15]|, s[20:21]
	v_add_f64 v[23:24], v[21:22], v[25:26]
	v_add_f64 v[21:22], v[23:24], -v[21:22]
	v_add_f64 v[21:22], v[25:26], -v[21:22]
	v_add_f64 v[12:13], v[21:22], v[12:13]
	v_fract_f64_e32 v[21:22], v[14:15]
	v_cndmask_b32_e32 v15, 0, v22, vcc
	v_cndmask_b32_e32 v14, 0, v21, vcc
	v_ldexp_f64 v[14:15], v[14:15], 2
	v_add_f64 v[21:22], v[14:15], v[23:24]
	v_cmp_gt_f64_e32 vcc, 0, v[21:22]
	v_cndmask_b32_e32 v2, 0, v2, vcc
	v_add_f64 v[14:15], v[14:15], v[1:2]
	v_add_f64 v[21:22], v[23:24], v[14:15]
	v_cvt_i32_f64_e32 v2, v[21:22]
	v_cvt_f64_i32_e32 v[21:22], v2
	v_add_f64 v[14:15], v[14:15], -v[21:22]
	v_add_f64 v[25:26], v[23:24], v[14:15]
	v_add_f64 v[14:15], v[25:26], -v[14:15]
	v_cmp_le_f64_e32 vcc, 0.5, v[25:26]
	v_add_f64 v[14:15], v[23:24], -v[14:15]
	v_addc_co_u32_e64 v21, s[4:5], 0, v2, vcc
	v_cndmask_b32_e32 v2, 0, v18, vcc
	v_add_f64 v[12:13], v[12:13], v[14:15]
	v_add_f64 v[14:15], v[25:26], -v[1:2]
	v_add_f64 v[22:23], v[14:15], v[12:13]
	v_add_f64 v[14:15], v[22:23], -v[14:15]
	v_add_f64 v[12:13], v[12:13], -v[14:15]
	v_mul_f64 v[14:15], v[22:23], s[22:23]
	v_fma_f64 v[24:25], v[22:23], s[22:23], -v[14:15]
	v_fma_f64 v[22:23], v[22:23], s[28:29], v[24:25]
	v_fma_f64 v[22:23], v[12:13], s[22:23], v[22:23]
	v_add_f64 v[12:13], v[14:15], v[22:23]
	v_add_f64 v[14:15], v[12:13], -v[14:15]
	v_add_f64 v[14:15], v[22:23], -v[14:15]
.LBB3_14:
	s_andn2_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execz .LBB3_11
	v_mul_f64 v[12:13], |v[10:11]|, s[30:31]
	s_mov_b32 s26, s34
	v_rndne_f64_e32 v[21:22], v[12:13]
	v_fma_f64 v[12:13], v[21:22], s[24:25], |v[10:11]|
	v_mul_f64 v[14:15], v[21:22], s[34:35]
	v_fma_f64 v[27:28], v[21:22], s[34:35], v[12:13]
	v_add_f64 v[23:24], v[12:13], v[14:15]
	v_add_f64 v[25:26], v[12:13], -v[23:24]
	v_add_f64 v[23:24], v[23:24], -v[27:28]
	v_add_f64 v[12:13], v[25:26], v[14:15]
	v_fma_f64 v[14:15], v[21:22], s[26:27], v[14:15]
	v_add_f64 v[12:13], v[23:24], v[12:13]
	v_add_f64 v[12:13], v[12:13], -v[14:15]
	v_fma_f64 v[14:15], v[21:22], s[36:37], v[12:13]
	v_cvt_i32_f64_e32 v21, v[21:22]
	v_add_f64 v[12:13], v[27:28], v[14:15]
	v_add_f64 v[23:24], v[12:13], -v[27:28]
	v_add_f64 v[14:15], v[14:15], -v[23:24]
	s_branch .LBB3_11
.LBB3_16:
	s_or_b64 exec, exec, s[58:59]
.LBB3_17:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB3_5
	ds_write2_b32 v1, v1, v1 offset0:1 offset1:2
	ds_write_b32 v1, v17 offset:24
	s_branch .LBB3_5
.LBB3_19:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
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
		.amdhsa_next_free_vgpr 38
		.amdhsa_next_free_sgpr 65
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
.Lfunc_end3:
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23, .Lfunc_end3-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23

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

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism.8,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism.8
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism.8:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism.8, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.9,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.9
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.9:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.9, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11, 1

	.no_dead_strip	__omp_rtl_device_environment
	.section	".linker-options",#exclude
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
    .name:           __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
    .private_segment_fixed_size: 0
    .sgpr_count:     27
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.kd
    .vgpr_count:     19
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
      - .offset:         24
        .size:           8
        .value_kind:     hidden_global_offset_x
      - .offset:         32
        .size:           8
        .value_kind:     hidden_global_offset_y
      - .offset:         40
        .size:           8
        .value_kind:     hidden_global_offset_z
      - .offset:         48
        .size:           8
        .value_kind:     hidden_hostcall_buffer
      - .offset:         56
        .size:           8
        .value_kind:     hidden_default_queue
      - .offset:         64
        .size:           8
        .value_kind:     hidden_completion_action
      - .offset:         72
        .size:           8
        .value_kind:     hidden_multigrid_sync_arg
    .group_segment_fixed_size: 40
    .kernarg_segment_align: 8
    .kernarg_segment_size: 80
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
    .private_segment_fixed_size: 16384
    .sgpr_count:     71
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3cosEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23.kd
    .vgpr_count:     58
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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
    .private_segment_fixed_size: 0
    .sgpr_count:     69
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_cos_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23.kd
    .vgpr_count:     38
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata
