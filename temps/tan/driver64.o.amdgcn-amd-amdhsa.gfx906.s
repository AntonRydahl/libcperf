	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
	.p2align	8
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14,@function
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14:
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
	v_lshlrev_b64 v[5:6], 3, v[4:5]
	v_ashrrev_i32_e32 v4, 31, v3
	v_mov_b32_e32 v2, s15
	v_add_co_u32_e64 v5, s[0:1], s14, v5
	v_lshlrev_b64 v[7:8], 3, v[3:4]
	v_addc_co_u32_e64 v6, s[0:1], v2, v6, s[0:1]
.LBB0_11:
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
.Lfunc_end0:
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14, .Lfunc_end0-__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21:
	v_cmp_eq_u32_e64 s[0:1], 0, v0
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz .LBB1_2
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, 1
	ds_write2_b32 v1, v1, v1 offset0:1 offset1:2
	ds_write_b32 v1, v2 offset:24
.LBB1_2:
	s_or_b64 exec, exec, s[2:3]
	s_load_dwordx2 s[6:7], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s6, 1
	s_cbranch_scc1 .LBB1_15
	s_load_dword s2, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s7, 0xffff, s2
	v_cvt_f32_u32_e32 v1, s7
	s_mul_i32 s12, s8, s7
	s_cmp_ge_i32 s12, s6
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s2, v1
	s_cbranch_scc1 .LBB1_15
	s_load_dword s3, s[4:5], 0xc
	s_sub_i32 s4, 0, s7
	s_mul_i32 s4, s4, s2
	s_mul_hi_u32 s4, s2, s4
	s_add_i32 s2, s2, s4
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s2, s3, s2
	s_mul_i32 s2, s2, s7
	s_sub_i32 s2, s3, s2
	s_sub_i32 s4, s2, s7
	s_cmp_ge_u32 s2, s7
	s_cselect_b32 s2, s4, s2
	s_sub_i32 s4, s2, s7
	s_cmp_ge_u32 s2, s7
	s_cselect_b32 s2, s4, s2
	s_sub_i32 s13, s3, s2
	s_add_i32 s2, s7, s12
	s_add_i32 s14, s6, -1
	s_add_i32 s2, s2, -1
	s_min_i32 s8, s2, s14
	s_cmp_gt_i32 s6, 0
	s_cselect_b64 s[2:3], -1, 0
	v_cndmask_b32_e64 v1, 0, 1, s[2:3]
	s_mov_b32 s9, 0
	v_mov_b32_e32 v3, 0
	v_cmp_ne_u32_e64 s[2:3], 1, v1
	v_mov_b32_e32 v4, 1
	s_branch .LBB1_6
.LBB1_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s8, s13
	s_add_i32 s12, s12, s13
	s_min_i32 s8, s4, s14
	s_cmp_lt_i32 s12, s6
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB1_15
.LBB1_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB1_8
	v_mov_b32_e32 v1, s7
	ds_write_b32 v3, v1 offset:24
	ds_write2_b32 v3, v4, v4 offset0:1 offset1:2
.LBB1_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB1_13
	ds_read2_b32 v[1:2], v3 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v2, v1
	v_cmp_ne_u32_e64 s[4:5], 0, v1
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v2, 0, v0, vcc
	v_add_u32_e32 v5, s12, v2
	v_ashrrev_i32_e32 v6, 31, v5
	v_cmp_ge_u64_e32 vcc, s[8:9], v[5:6]
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz .LBB1_12
	ds_read_b32 v5, v3 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v1
	s_mov_b64 s[10:11], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v5, 1, v5, vcc
	v_add_u32_e32 v1, s12, v5
	v_add_u32_e32 v1, v1, v2
	v_ashrrev_i32_e32 v6, 31, v5
	v_ashrrev_i32_e32 v2, 31, v1
	v_sub_co_u32_e32 v1, vcc, v1, v5
	v_subb_co_u32_e32 v2, vcc, v2, v6, vcc
.LBB1_11:
	v_add_co_u32_e32 v1, vcc, v1, v5
	v_addc_co_u32_e32 v2, vcc, v2, v6, vcc
	v_cmp_lt_u64_e32 vcc, s[8:9], v[1:2]
	s_or_b64 s[10:11], vcc, s[10:11]
	s_andn2_b64 exec, exec, s[10:11]
	s_cbranch_execnz .LBB1_11
.LBB1_12:
	s_or_b64 exec, exec, s[4:5]
.LBB1_13:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB1_5
	ds_write2_b32 v3, v3, v3 offset0:1 offset1:2
	ds_write_b32 v3, v4 offset:24
	s_branch .LBB1_5
.LBB1_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21
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
		.amdhsa_next_free_vgpr 7
		.amdhsa_next_free_sgpr 15
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21, .Lfunc_end1-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21:
	v_cmp_eq_u32_e64 s[0:1], 0, v0
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz .LBB2_2
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, 1
	ds_write2_b32 v1, v1, v1 offset0:1 offset1:2
	ds_write_b32 v1, v2 offset:24
.LBB2_2:
	s_or_b64 exec, exec, s[2:3]
	s_load_dwordx4 s[12:15], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s12, 1
	s_cbranch_scc1 .LBB2_19
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
	s_cbranch_scc1 .LBB2_19
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
	s_sub_i32 s68, s3, s2
	s_add_i32 s2, s13, s33
	s_add_i32 s69, s12, -1
	s_add_i32 s2, s2, -1
	s_min_i32 s16, s2, s69
	s_cmp_gt_i32 s12, 0
	s_cselect_b64 s[2:3], -1, 0
	s_mov_b32 s10, 0
	v_cndmask_b32_e64 v2, 0, 1, s[2:3]
	s_mov_b32 s24, 0x54442d18
	s_mov_b32 s30, 0x6dc9c883
	s_mov_b32 s34, 0x33145c00
	s_mov_b32 s36, 0x252049c0
	s_mov_b32 s38, 0xc751c08c
	s_mov_b32 s40, 0x90a8aae0
	s_mov_b32 s42, 0xa6fbf144
	s_mov_b32 s44, 0xa7943acf
	s_mov_b32 s46, 0xdeb68feb
	s_mov_b32 s48, 0xb58c4d95
	s_mov_b32 s50, 0x15120e2c
	s_mov_b32 s52, 0xe09491df
	s_mov_b32 s54, 0x2033784d
	s_mov_b32 s56, 0x9ac36ae2
	s_mov_b32 s58, 0x1b451c21
	s_mov_b32 s60, 0x111185b7
	s_mov_b32 s62, 0x555554ee
	s_mov_b32 s11, 0x41d00000
	v_mov_b32_e32 v1, 0
	v_cmp_ne_u32_e64 s[2:3], 1, v2
	s_mov_b32 s19, 0x7b000000
	s_movk_i32 s70, 0xff80
	s_mov_b32 s21, 0x7ff00000
	s_mov_b32 s23, 0x3ff921fb
	s_mov_b32 s25, 0xbff921fb
	s_mov_b32 s27, 0x3c91a626
	s_mov_b32 s28, 0x33145c07
	s_mov_b32 s31, 0x3fe45f30
	s_mov_b32 s35, 0xbc91a626
	s_mov_b32 s37, 0xb97b839a
	s_mov_b32 s39, 0x3ef5e089
	s_mov_b32 s41, 0x3f17746f
	s_mov_b32 s43, 0xbefbb44d
	s_mov_b32 s45, 0x3f21e634
	s_mov_b32 s47, 0x3f2d250f
	s_mov_b32 s49, 0x3f437fd9
	s_mov_b32 s51, 0x3f57d5af
	s_mov_b32 s53, 0x3f6d6d93
	s_mov_b32 s55, 0x3f8226e1
	s_mov_b32 s57, 0x3f9664f4
	s_mov_b32 s59, 0x3faba1ba
	s_mov_b32 s61, 0x3fc11111
	s_mov_b32 s63, 0x3fd55555
	v_mov_b32_e32 v14, 1
	v_mov_b32_e32 v3, 0xa9a29f71
	v_mov_b32_e32 v4, 0xbf078809
	v_mov_b32_e32 v15, 0x7ff80000
	s_branch .LBB2_6
.LBB2_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s16, s68
	s_add_i32 s33, s33, s68
	s_min_i32 s16, s4, s69
	s_cmp_lt_i32 s33, s12
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB2_19
.LBB2_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB2_8
	v_mov_b32_e32 v2, s13
	ds_write_b32 v1, v2 offset:24
	ds_write2_b32 v1, v14, v14 offset0:1 offset1:2
.LBB2_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB2_17
	ds_read2_b32 v[7:8], v1 offset0:1 offset1:2
	s_mov_b32 s17, s10
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v8, v7
	v_cmp_ne_u32_e64 s[4:5], 0, v7
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v2, 0, v0, vcc
	v_add_u32_e32 v5, s33, v2
	v_ashrrev_i32_e32 v6, 31, v5
	v_cmp_ge_u64_e32 vcc, s[16:17], v[5:6]
	s_and_saveexec_b64 s[64:65], vcc
	s_cbranch_execz .LBB2_16
	ds_read_b32 v2, v1 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v7
	s_mov_b64 s[66:67], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v16, 1, v2, vcc
	s_branch .LBB2_12
.LBB2_11:
	s_or_b64 exec, exec, s[4:5]
	v_mul_f64 v[17:18], v[10:11], v[10:11]
	v_add_f64 v[19:20], v[12:13], v[12:13]
	v_and_b32_e32 v2, 1, v2
	v_cmp_eq_u32_e32 vcc, 0, v2
	v_add_u32_e32 v5, v16, v5
	v_fma_f64 v[21:22], v[10:11], v[10:11], -v[17:18]
	v_fma_f64 v[19:20], v[10:11], v[19:20], v[21:22]
	v_add_f64 v[17:18], v[17:18], v[19:20]
	v_fma_f64 v[19:20], v[17:18], s[38:39], v[3:4]
	v_fma_f64 v[19:20], v[17:18], v[19:20], s[40:41]
	v_fma_f64 v[19:20], v[17:18], v[19:20], s[42:43]
	v_fma_f64 v[19:20], v[17:18], v[19:20], s[44:45]
	v_fma_f64 v[19:20], v[17:18], v[19:20], s[46:47]
	v_fma_f64 v[19:20], v[17:18], v[19:20], s[48:49]
	v_fma_f64 v[19:20], v[17:18], v[19:20], s[50:51]
	v_fma_f64 v[19:20], v[17:18], v[19:20], s[52:53]
	v_fma_f64 v[19:20], v[17:18], v[19:20], s[54:55]
	v_fma_f64 v[19:20], v[17:18], v[19:20], s[56:57]
	v_fma_f64 v[19:20], v[17:18], v[19:20], s[58:59]
	v_fma_f64 v[19:20], v[17:18], v[19:20], s[60:61]
	v_fma_f64 v[19:20], v[17:18], v[19:20], s[62:63]
	v_mul_f64 v[17:18], v[17:18], v[19:20]
	v_mul_f64 v[19:20], v[10:11], v[17:18]
	v_add_f64 v[21:22], v[10:11], v[19:20]
	v_fma_f64 v[17:18], v[10:11], v[17:18], -v[19:20]
	v_add_f64 v[10:11], v[21:22], -v[10:11]
	v_add_f64 v[12:13], v[12:13], v[17:18]
	v_add_f64 v[10:11], v[19:20], -v[10:11]
	v_add_f64 v[10:11], v[12:13], v[10:11]
	v_add_f64 v[12:13], v[21:22], v[10:11]
	v_rcp_f64_e32 v[17:18], v[12:13]
	v_fma_f64 v[19:20], -v[12:13], v[17:18], 1.0
	v_fma_f64 v[17:18], v[19:20], v[17:18], v[17:18]
	v_fma_f64 v[19:20], -v[12:13], v[17:18], 1.0
	v_fma_f64 v[17:18], v[19:20], v[17:18], v[17:18]
	v_add_f64 v[19:20], v[12:13], -v[21:22]
	v_mul_f64 v[21:22], v[12:13], v[17:18]
	v_add_f64 v[10:11], v[10:11], -v[19:20]
	v_fma_f64 v[19:20], v[17:18], v[12:13], -v[21:22]
	v_fma_f64 v[10:11], v[17:18], v[10:11], v[19:20]
	v_add_f64 v[19:20], v[21:22], v[10:11]
	v_add_f64 v[23:24], -v[19:20], 1.0
	v_add_f64 v[21:22], v[19:20], -v[21:22]
	v_add_f64 v[25:26], -v[23:24], 1.0
	v_add_f64 v[10:11], v[10:11], -v[21:22]
	v_add_f64 v[19:20], v[25:26], -v[19:20]
	v_add_f64 v[10:11], v[19:20], -v[10:11]
	v_add_f64 v[10:11], v[23:24], v[10:11]
	v_mul_f64 v[10:11], v[17:18], v[10:11]
	v_add_f64 v[10:11], v[17:18], v[10:11]
	v_mov_b32_e32 v18, s15
	v_and_b32_e32 v17, 0x80000000, v9
	v_cndmask_b32_e32 v2, v10, v12, vcc
	v_mov_b32_e32 v10, 0x1f8
	v_cmp_class_f64_e64 s[4:5], v[8:9], v10
	v_add_co_u32_e64 v8, s[6:7], s14, v6
	v_addc_co_u32_e64 v9, s[6:7], v18, v7, s[6:7]
	v_ashrrev_i32_e32 v6, 31, v5
	v_xor_b32_e32 v7, 0x80000000, v11
	v_cmp_lt_u64_e64 s[6:7], s[16:17], v[5:6]
	v_cndmask_b32_e32 v7, v7, v13, vcc
	v_cndmask_b32_e64 v10, 0, v2, s[4:5]
	v_xor_b32_e32 v2, v7, v17
	v_cndmask_b32_e64 v11, v15, v2, s[4:5]
	s_or_b64 s[66:67], s[6:7], s[66:67]
	flat_store_dwordx2 v[8:9], v[10:11]
	s_andn2_b64 exec, exec, s[66:67]
	s_cbranch_execz .LBB2_16
.LBB2_12:
	v_lshlrev_b64 v[6:7], 3, v[5:6]
	v_mov_b32_e32 v2, s9
	v_add_co_u32_e32 v8, vcc, s8, v6
	v_addc_co_u32_e32 v9, vcc, v2, v7, vcc
	flat_load_dwordx2 v[8:9], v[8:9]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_nlt_f64_e64 s[4:5], |v[8:9]|, s[10:11]
	s_and_saveexec_b64 s[6:7], s[4:5]
	s_xor_b64 s[4:5], exec, s[6:7]
	s_cbranch_execz .LBB2_14
	v_trig_preop_f64 v[10:11], |v[8:9]|, 0
	s_mov_b32 s18, s10
	v_ldexp_f64 v[17:18], |v[8:9]|, s70
	v_cmp_ge_f64_e64 vcc, |v[8:9]|, s[18:19]
	v_trig_preop_f64 v[12:13], |v[8:9]|, 2
	v_trig_preop_f64 v[19:20], |v[8:9]|, 1
	v_and_b32_e32 v2, 0x7fffffff, v9
	s_mov_b32 s20, s10
	s_mov_b32 s22, s24
	s_mov_b32 s29, s27
	v_cndmask_b32_e32 v18, v2, v18, vcc
	v_cndmask_b32_e32 v17, v8, v17, vcc
	v_mov_b32_e32 v2, 0x40100000
	v_mul_f64 v[21:22], v[10:11], v[17:18]
	v_mul_f64 v[23:24], v[12:13], v[17:18]
	v_mul_f64 v[25:26], v[19:20], v[17:18]
	v_fma_f64 v[10:11], v[10:11], v[17:18], -v[21:22]
	v_fma_f64 v[12:13], v[12:13], v[17:18], -v[23:24]
	v_fma_f64 v[17:18], v[19:20], v[17:18], -v[25:26]
	v_add_f64 v[19:20], v[25:26], v[10:11]
	v_add_f64 v[27:28], v[19:20], -v[25:26]
	v_add_f64 v[10:11], v[10:11], -v[27:28]
	v_add_f64 v[27:28], v[19:20], -v[27:28]
	v_add_f64 v[25:26], v[25:26], -v[27:28]
	v_add_f64 v[27:28], v[23:24], v[17:18]
	v_add_f64 v[10:11], v[10:11], v[25:26]
	v_add_f64 v[29:30], v[27:28], -v[23:24]
	v_add_f64 v[25:26], v[27:28], v[10:11]
	v_add_f64 v[17:18], v[17:18], -v[29:30]
	v_add_f64 v[29:30], v[27:28], -v[29:30]
	v_add_f64 v[23:24], v[23:24], -v[29:30]
	v_add_f64 v[29:30], v[21:22], v[19:20]
	v_add_f64 v[17:18], v[17:18], v[23:24]
	v_add_f64 v[21:22], v[29:30], -v[21:22]
	v_add_f64 v[19:20], v[19:20], -v[21:22]
	v_ldexp_f64 v[21:22], v[29:30], -2
	v_add_f64 v[29:30], v[25:26], -v[27:28]
	v_cmp_neq_f64_e64 vcc, |v[21:22]|, s[20:21]
	v_fract_f64_e32 v[21:22], v[21:22]
	v_add_f64 v[10:11], v[10:11], -v[29:30]
	v_add_f64 v[29:30], v[25:26], -v[29:30]
	v_cndmask_b32_e32 v22, 0, v22, vcc
	v_cndmask_b32_e32 v21, 0, v21, vcc
	v_add_f64 v[27:28], v[27:28], -v[29:30]
	v_ldexp_f64 v[21:22], v[21:22], 2
	v_add_f64 v[29:30], v[19:20], v[25:26]
	v_add_f64 v[10:11], v[10:11], v[27:28]
	v_add_f64 v[31:32], v[21:22], v[29:30]
	v_add_f64 v[19:20], v[29:30], -v[19:20]
	v_add_f64 v[10:11], v[17:18], v[10:11]
	v_cmp_gt_f64_e32 vcc, 0, v[31:32]
	v_add_f64 v[19:20], v[25:26], -v[19:20]
	v_add_f64 v[10:11], v[12:13], v[10:11]
	v_cndmask_b32_e32 v2, 0, v2, vcc
	v_add_f64 v[21:22], v[21:22], v[1:2]
	v_mov_b32_e32 v2, 0x3ff00000
	v_add_f64 v[10:11], v[19:20], v[10:11]
	v_add_f64 v[23:24], v[29:30], v[21:22]
	v_cvt_i32_f64_e32 v27, v[23:24]
	v_cvt_f64_i32_e32 v[23:24], v27
	v_add_f64 v[21:22], v[21:22], -v[23:24]
	v_add_f64 v[17:18], v[29:30], v[21:22]
	v_add_f64 v[12:13], v[17:18], -v[21:22]
	v_cmp_le_f64_e32 vcc, 0.5, v[17:18]
	v_add_f64 v[12:13], v[29:30], -v[12:13]
	v_cndmask_b32_e32 v2, 0, v2, vcc
	v_add_f64 v[10:11], v[10:11], v[12:13]
	v_add_f64 v[12:13], v[17:18], -v[1:2]
	v_addc_co_u32_e32 v2, vcc, 0, v27, vcc
	v_add_f64 v[17:18], v[12:13], v[10:11]
	v_mul_f64 v[19:20], v[17:18], s[22:23]
	v_add_f64 v[12:13], v[17:18], -v[12:13]
	v_fma_f64 v[21:22], v[17:18], s[22:23], -v[19:20]
	v_add_f64 v[10:11], v[10:11], -v[12:13]
	v_fma_f64 v[12:13], v[17:18], s[28:29], v[21:22]
	v_fma_f64 v[12:13], v[10:11], s[22:23], v[12:13]
	v_add_f64 v[10:11], v[19:20], v[12:13]
	v_add_f64 v[17:18], v[10:11], -v[19:20]
	v_add_f64 v[12:13], v[12:13], -v[17:18]
.LBB2_14:
	s_andn2_saveexec_b64 s[4:5], s[4:5]
	s_cbranch_execz .LBB2_11
	v_mul_f64 v[10:11], |v[8:9]|, s[30:31]
	s_mov_b32 s26, s34
	v_rndne_f64_e32 v[17:18], v[10:11]
	v_fma_f64 v[10:11], v[17:18], s[24:25], |v[8:9]|
	v_mul_f64 v[12:13], v[17:18], s[34:35]
	v_cvt_i32_f64_e32 v2, v[17:18]
	v_fma_f64 v[23:24], v[17:18], s[34:35], v[10:11]
	v_add_f64 v[19:20], v[10:11], v[12:13]
	v_add_f64 v[21:22], v[10:11], -v[19:20]
	v_add_f64 v[19:20], v[19:20], -v[23:24]
	v_add_f64 v[10:11], v[21:22], v[12:13]
	v_fma_f64 v[12:13], v[17:18], s[26:27], v[12:13]
	v_add_f64 v[10:11], v[19:20], v[10:11]
	v_add_f64 v[10:11], v[10:11], -v[12:13]
	v_fma_f64 v[12:13], v[17:18], s[36:37], v[10:11]
	v_add_f64 v[10:11], v[23:24], v[12:13]
	v_add_f64 v[19:20], v[10:11], -v[23:24]
	v_add_f64 v[12:13], v[12:13], -v[19:20]
	s_branch .LBB2_11
.LBB2_16:
	s_or_b64 exec, exec, s[64:65]
.LBB2_17:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB2_5
	ds_write2_b32 v1, v1, v1 offset0:1 offset1:2
	ds_write_b32 v1, v14 offset:24
	s_branch .LBB2_5
.LBB2_19:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21
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
		.amdhsa_next_free_vgpr 33
		.amdhsa_next_free_sgpr 71
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21, .Lfunc_end2-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21

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

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.8,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.8
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.8:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.8, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism.9,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism.9
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism.9:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism.9, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism.10,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism.10
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism.10:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism.10, 1

	.no_dead_strip	__omp_rtl_device_environment
	.section	".linker-options",#exclude
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 644a4067312448b17ec2109ccfd0dd02a2f789c8)"
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 644a4067312448b17ec2109ccfd0dd02a2f789c8)"
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 644a4067312448b17ec2109ccfd0dd02a2f789c8)"
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 644a4067312448b17ec2109ccfd0dd02a2f789c8)"
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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21
    .private_segment_fixed_size: 0
    .sgpr_count:     19
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z3tanEEEEdRKNS_5ArrayIT_EERS5__l21.kd
    .vgpr_count:     7
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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21
    .private_segment_fixed_size: 0
    .sgpr_count:     75
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z14__ocml_tan_f64EEEEdRKNS_5ArrayIT_EERS3__l21.kd
    .vgpr_count:     33
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata
