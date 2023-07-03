	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.p2align	2
	.type	sqrt.internalized,@function
sqrt.internalized:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	v_sqrt_f64_e32 v[0:1], v[0:1]
	s_setpc_b64 s[30:31]
.Lfunc_end0:
	.size	sqrt.internalized, .Lfunc_end0-sqrt.internalized

	.hidden	sqrt
	.globl	sqrt
	.p2align	2
	.type	sqrt,@function
sqrt:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	v_sqrt_f64_e32 v[0:1], v[0:1]
	s_setpc_b64 s[30:31]
.Lfunc_end1:
	.size	sqrt, .Lfunc_end1-sqrt

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
.Lfunc_end2:
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14, .Lfunc_end2-__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21:
	s_add_u32 flat_scratch_lo, s8, s11
	s_addc_u32 flat_scratch_hi, s9, 0
	s_add_u32 s0, s0, s11
	v_mov_b32_e32 v2, v0
	s_addc_u32 s1, s1, 0
	v_cmp_eq_u32_e64 s[8:9], 0, v2
	s_mov_b32 s32, 0
	s_and_saveexec_b64 s[12:13], s[8:9]
	s_cbranch_execz .LBB3_2
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v1, 1
	ds_write2_b32 v0, v0, v0 offset0:1 offset1:2
	ds_write_b32 v0, v1 offset:24
.LBB3_2:
	s_or_b64 exec, exec, s[12:13]
	s_load_dwordx4 s[12:15], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s12, 1
	s_cbranch_scc1 .LBB3_15
	s_load_dword s11, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, 0xffff, s11
	v_cvt_f32_u32_e32 v0, s13
	s_mul_i32 s22, s10, s13
	s_cmp_ge_i32 s22, s12
	v_rcp_iflag_f32_e32 v0, v0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s16, v0
	s_cbranch_scc1 .LBB3_15
	s_load_dwordx2 s[10:11], s[6:7], 0x10
	s_load_dword s18, s[4:5], 0xc
	s_sub_i32 s4, 0, s13
	s_mul_i32 s4, s4, s16
	s_mul_hi_u32 s4, s16, s4
	s_add_i32 s16, s16, s4
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s4, s18, s16
	s_mul_i32 s4, s4, s13
	s_sub_i32 s4, s18, s4
	s_sub_i32 s5, s4, s13
	s_cmp_ge_u32 s4, s13
	s_cselect_b32 s4, s5, s4
	s_sub_i32 s5, s4, s13
	s_cmp_ge_u32 s4, s13
	s_cselect_b32 s4, s5, s4
	s_sub_i32 s23, s18, s4
	s_add_i32 s4, s13, s22
	s_add_i32 s24, s12, -1
	s_add_i32 s4, s4, -1
	s_min_i32 s16, s4, s24
	s_cmp_gt_i32 s12, 0
	s_cselect_b64 s[4:5], -1, 0
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	s_mov_b32 s17, 0
	v_mov_b32_e32 v5, 0
	v_cmp_ne_u32_e64 s[6:7], 1, v0
	v_mov_b32_e32 v6, 1
	s_getpc_b64 s[18:19]
	s_add_u32 s18, s18, sqrt.internalized@rel32@lo+4
	s_addc_u32 s19, s19, sqrt.internalized@rel32@hi+12
	s_branch .LBB3_6
.LBB3_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s16, s23
	s_add_i32 s22, s22, s23
	s_min_i32 s16, s4, s24
	s_cmp_lt_i32 s22, s12
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB3_15
.LBB3_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[8:9]
	s_cbranch_execz .LBB3_8
	v_mov_b32_e32 v0, s13
	ds_write_b32 v5, v0 offset:24
	ds_write2_b32 v5, v6, v6 offset0:1 offset1:2
.LBB3_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[6:7]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB3_13
	ds_read2_b32 v[3:4], v5 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v4, v3
	v_cmp_ne_u32_e64 s[4:5], 0, v3
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v4, 0, v2, vcc
	v_add_u32_e32 v0, s22, v4
	v_ashrrev_i32_e32 v1, 31, v0
	v_cmp_ge_u64_e32 vcc, s[16:17], v[0:1]
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz .LBB3_12
	ds_read_b32 v7, v5 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v3
	s_mov_b64 s[20:21], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v7, 1, v7, vcc
	v_add_u32_e32 v3, s22, v7
	v_add_u32_e32 v3, v3, v4
	v_ashrrev_i32_e32 v8, 31, v7
	v_ashrrev_i32_e32 v4, 31, v3
	v_sub_co_u32_e32 v3, vcc, v3, v7
	v_subb_co_u32_e32 v4, vcc, v4, v8, vcc
.LBB3_11:
	v_lshlrev_b64 v[9:10], 3, v[0:1]
	v_mov_b32_e32 v1, s11
	v_add_co_u32_e32 v0, vcc, s10, v9
	v_addc_co_u32_e32 v1, vcc, v1, v10, vcc
	flat_load_dwordx2 v[0:1], v[0:1]
	s_swappc_b64 s[30:31], s[18:19]
	v_mov_b32_e32 v11, s15
	v_add_co_u32_e32 v9, vcc, s14, v9
	v_addc_co_u32_e32 v10, vcc, v11, v10, vcc
	v_add_co_u32_e32 v3, vcc, v3, v7
	v_addc_co_u32_e32 v4, vcc, v4, v8, vcc
	v_cmp_lt_u64_e32 vcc, s[16:17], v[3:4]
	flat_store_dwordx2 v[9:10], v[0:1]
	v_ashrrev_i32_e32 v1, 31, v3
	s_or_b64 s[20:21], vcc, s[20:21]
	v_mov_b32_e32 v0, v3
	s_andn2_b64 exec, exec, s[20:21]
	s_cbranch_execnz .LBB3_11
.LBB3_12:
	s_or_b64 exec, exec, s[4:5]
.LBB3_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[8:9]
	s_cbranch_execz .LBB3_5
	ds_write2_b32 v5, v5, v5 offset0:1 offset1:2
	ds_write_b32 v5, v6 offset:24
	s_branch .LBB3_5
.LBB3_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21
		.amdhsa_group_segment_fixed_size 40
		.amdhsa_private_segment_fixed_size 16384
		.amdhsa_kernarg_size 24
		.amdhsa_user_sgpr_count 10
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 1
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 1
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 1
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 12
		.amdhsa_next_free_sgpr 33
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21, .Lfunc_end3-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21:
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
	s_cbranch_scc1 .LBB4_15
	s_load_dword s2, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s23, 0xffff, s2
	v_cvt_f32_u32_e32 v1, s23
	s_mul_i32 s8, s8, s23
	s_cmp_ge_i32 s8, s12
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s2, v1
	s_cbranch_scc1 .LBB4_15
	s_load_dwordx2 s[24:25], s[6:7], 0x10
	s_load_dword s3, s[4:5], 0xc
	s_sub_i32 s4, 0, s23
	s_mul_i32 s4, s4, s2
	s_mul_hi_u32 s4, s2, s4
	s_add_i32 s2, s2, s4
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s2, s3, s2
	s_mul_i32 s2, s2, s23
	s_sub_i32 s2, s3, s2
	s_sub_i32 s4, s2, s23
	s_cmp_ge_u32 s2, s23
	s_cselect_b32 s2, s4, s2
	s_sub_i32 s4, s2, s23
	s_cmp_ge_u32 s2, s23
	s_cselect_b32 s2, s4, s2
	s_sub_i32 s16, s3, s2
	s_add_i32 s2, s23, s8
	s_add_i32 s28, s12, -1
	s_add_i32 s2, s2, -1
	s_min_i32 s18, s2, s28
	s_cmp_gt_i32 s12, 0
	s_cselect_b64 s[2:3], -1, 0
	s_ashr_i32 s9, s8, 31
	s_lshl_b64 s[4:5], s[8:9], 3
	s_add_u32 s14, s14, s4
	s_addc_u32 s9, s15, s5
	s_ashr_i32 s17, s16, 31
	s_lshl_b64 s[20:21], s[16:17], 3
	s_mov_b32 s10, 0
	s_add_u32 s22, s24, s4
	v_cndmask_b32_e64 v2, 0, 1, s[2:3]
	s_brev_b32 s11, 8
	s_addc_u32 s13, s25, s5
	v_mov_b32_e32 v1, 0
	v_cmp_ne_u32_e64 s[2:3], 1, v2
	v_mov_b32_e32 v10, 0x260
	v_mov_b32_e32 v11, 1
	v_mov_b32_e32 v12, 0x3ff00000
	v_mov_b32_e32 v13, 0x4ff00000
	v_mov_b32_e32 v14, 0x37f00000
	s_branch .LBB4_6
.LBB4_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s18, s16
	s_add_i32 s8, s8, s16
	s_min_i32 s18, s4, s28
	s_add_u32 s14, s14, s20
	s_addc_u32 s9, s9, s21
	s_add_u32 s22, s22, s20
	s_addc_u32 s13, s13, s21
	s_cmp_lt_i32 s8, s12
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB4_15
.LBB4_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB4_8
	v_mov_b32_e32 v2, s23
	ds_write_b32 v1, v2 offset:24
	ds_write2_b32 v1, v11, v11 offset0:1 offset1:2
.LBB4_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB4_13
	ds_read2_b32 v[2:3], v1 offset0:1 offset1:2
	s_mov_b32 s19, s10
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v3, v2
	v_cmp_ne_u32_e64 s[4:5], 0, v2
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v8, 0, v0, vcc
	v_add_u32_e32 v3, s8, v8
	v_ashrrev_i32_e32 v4, 31, v3
	v_cmp_ge_u64_e32 vcc, s[18:19], v[3:4]
	s_and_saveexec_b64 s[24:25], vcc
	s_cbranch_execz .LBB4_12
	ds_read_b32 v5, v1 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v2
	v_lshlrev_b32_e32 v3, 3, v8
	v_mov_b32_e32 v4, v1
	s_mov_b64 s[26:27], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v5, 1, v5, vcc
	v_ashrrev_i32_e32 v6, 31, v5
	v_add_u32_e32 v2, s8, v5
	v_lshlrev_b64 v[6:7], 3, v[5:6]
	v_add_u32_e32 v8, v2, v8
.LBB4_11:
	v_mov_b32_e32 v2, s13
	v_add_co_u32_e32 v15, vcc, s22, v3
	v_addc_co_u32_e32 v16, vcc, v2, v4, vcc
	flat_load_dwordx2 v[15:16], v[15:16]
	v_mov_b32_e32 v23, s9
	v_ashrrev_i32_e32 v9, 31, v8
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_gt_f64_e32 vcc, s[10:11], v[15:16]
	v_cndmask_b32_e32 v2, v12, v13, vcc
	v_mul_f64 v[15:16], v[15:16], v[1:2]
	v_cndmask_b32_e32 v2, v12, v14, vcc
	v_rsq_f64_e32 v[17:18], v[15:16]
	v_cmp_class_f64_e32 vcc, v[15:16], v10
	v_mul_f64 v[19:20], v[15:16], v[17:18]
	v_mul_f64 v[17:18], v[17:18], 0.5
	v_fma_f64 v[21:22], -v[17:18], v[19:20], 0.5
	v_fma_f64 v[19:20], v[19:20], v[21:22], v[19:20]
	v_fma_f64 v[17:18], v[17:18], v[21:22], v[17:18]
	v_fma_f64 v[21:22], -v[19:20], v[19:20], v[15:16]
	v_fma_f64 v[19:20], v[21:22], v[17:18], v[19:20]
	v_fma_f64 v[21:22], -v[19:20], v[19:20], v[15:16]
	v_fma_f64 v[17:18], v[21:22], v[17:18], v[19:20]
	v_add_co_u32_e64 v19, s[4:5], s14, v3
	v_addc_co_u32_e64 v20, s[4:5], v23, v4, s[4:5]
	v_cmp_lt_u64_e64 s[4:5], s[18:19], v[8:9]
	v_add_co_u32_e64 v3, s[6:7], v3, v6
	v_mul_f64 v[17:18], v[1:2], v[17:18]
	v_addc_co_u32_e64 v4, s[6:7], v4, v7, s[6:7]
	v_add_u32_e32 v8, v8, v5
	s_or_b64 s[26:27], s[4:5], s[26:27]
	v_cndmask_b32_e32 v16, v18, v16, vcc
	v_cndmask_b32_e32 v15, v17, v15, vcc
	flat_store_dwordx2 v[19:20], v[15:16]
	s_andn2_b64 exec, exec, s[26:27]
	s_cbranch_execnz .LBB4_11
.LBB4_12:
	s_or_b64 exec, exec, s[24:25]
.LBB4_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB4_5
	ds_write2_b32 v1, v1, v1 offset0:1 offset1:2
	ds_write_b32 v1, v11 offset:24
	s_branch .LBB4_5
.LBB4_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21
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
		.amdhsa_next_free_vgpr 24
		.amdhsa_next_free_sgpr 29
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21, .Lfunc_end4-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21

	.protected	__omp_rtl_device_environment
	.type	__omp_rtl_device_environment,@object
	.section	.bss,#alloc,#write
	.weak	__omp_rtl_device_environment
	.p2align	2, 0x0
__omp_rtl_device_environment:
	.zero	16
	.size	__omp_rtl_device_environment, 16

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode,@object
	.section	.rodata,#alloc
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.8,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.8
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.8:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.8, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism.9,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism.9
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism.9:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism.9, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism.10,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism.10
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism.10:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism.10, 1

	.no_dead_strip	__omp_rtl_device_environment
	.section	".linker-options",#exclude
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 085845a2acbefd26d5c229338225dfd76e2c2df3)"
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 085845a2acbefd26d5c229338225dfd76e2c2df3)"
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 085845a2acbefd26d5c229338225dfd76e2c2df3)"
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 085845a2acbefd26d5c229338225dfd76e2c2df3)"
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
    .group_segment_fixed_size: 40
    .kernarg_segment_align: 8
    .kernarg_segment_size: 24
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21
    .private_segment_fixed_size: 16384
    .sgpr_count:     39
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEEEdRKNS_5ArrayIT_EERS5__l21.kd
    .vgpr_count:     12
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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEEEdRKNS_5ArrayIT_EERS3__l21.kd
    .vgpr_count:     24
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata
