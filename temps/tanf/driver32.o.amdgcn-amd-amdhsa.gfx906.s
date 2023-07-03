	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
	.p2align	8
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14,@function
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14:
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
.Lfunc_end0:
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14, .Lfunc_end0-__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21:
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
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21, .Lfunc_end1-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21:
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
	s_mul_i32 s24, s8, s13
	s_cmp_ge_i32 s24, s12
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s2, v1
	s_cbranch_scc1 .LBB2_19
	s_load_dwordx2 s[10:11], s[6:7], 0x10
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
	s_sub_i32 s25, s3, s2
	s_add_i32 s2, s13, s24
	s_add_i32 s26, s12, -1
	s_add_i32 s2, s2, -1
	s_min_i32 s16, s2, s26
	s_cmp_gt_i32 s12, 0
	s_cselect_b64 s[2:3], -1, 0
	v_cndmask_b32_e64 v1, 0, 1, s[2:3]
	s_mov_b32 s17, 0
	v_mov_b32_e32 v2, 0
	v_cmp_ne_u32_e64 s[2:3], 1, v1
	s_brev_b32 s27, 18
	s_mov_b32 s28, 0xfe5163ab
	s_mov_b32 s29, 0x3c439041
	s_mov_b32 s30, 0xdb629599
	s_mov_b32 s31, 0xf534ddc0
	s_mov_b32 s33, 0xfc2757d1
	s_mov_b32 s34, 0x4e441529
	s_mov_b32 s35, 0xa2f9836e
	s_mov_b32 s36, 0x3fc90fda
	s_mov_b32 s37, 0x3f22f983
	s_mov_b32 s38, 0xbfc90fda
	v_mov_b32_e32 v7, 0x3f93f425
	v_mov_b32_e32 v8, 0x1f8
	v_mov_b32_e32 v9, 1
	v_mov_b32_e32 v10, 0xffffffc0
	v_mov_b32_e32 v11, 0xffffffe0
	v_mov_b32_e32 v12, 0x7fc00000
	s_branch .LBB2_6
.LBB2_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s16, s25
	s_add_i32 s24, s24, s25
	s_min_i32 s16, s4, s26
	s_cmp_lt_i32 s24, s12
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB2_19
.LBB2_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB2_8
	v_mov_b32_e32 v1, s13
	ds_write_b32 v2, v1 offset:24
	ds_write2_b32 v2, v9, v9 offset0:1 offset1:2
.LBB2_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB2_17
	ds_read2_b32 v[5:6], v2 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v6, v5
	v_cmp_ne_u32_e64 s[4:5], 0, v5
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v1, 0, v0, vcc
	v_add_u32_e32 v3, s24, v1
	v_ashrrev_i32_e32 v4, 31, v3
	v_cmp_ge_u64_e32 vcc, s[16:17], v[3:4]
	s_and_saveexec_b64 s[18:19], vcc
	s_cbranch_execz .LBB2_16
	ds_read_b32 v1, v2 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v5
	s_mov_b64 s[20:21], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v13, 1, v1, vcc
	s_branch .LBB2_12
.LBB2_11:
	s_or_b64 exec, exec, s[4:5]
	v_mul_f32_e32 v16, v1, v1
	v_mov_b32_e32 v17, 0xbf039337
	v_fmac_f32_e32 v17, 0x3c971480, v16
	v_fma_f32 v17, v16, v17, v7
	v_rcp_f32_e32 v17, v17
	v_mov_b32_e32 v18, 0x3ec54587
	v_fmac_f32_e32 v18, 0xbc8cedd3, v16
	v_and_b32_e32 v15, 1, v15
	v_mul_f32_e32 v17, v18, v17
	v_mul_f32_e32 v16, v16, v17
	v_fma_f32 v17, v16, v1, v1
	v_rcp_f32_e32 v18, v17
	v_sub_f32_e32 v19, v17, v1
	v_fma_f32 v1, v16, v1, -v19
	v_cmp_eq_u32_e32 vcc, 0, v15
	v_fma_f32 v16, v17, -v18, 1.0
	v_fma_f32 v1, v1, -v18, v16
	v_fma_f32 v1, v1, -v18, -v18
	v_cndmask_b32_e32 v1, v1, v17, vcc
	v_xor_b32_e32 v14, v14, v4
	v_add_u32_e32 v3, v13, v3
	v_xor_b32_e32 v1, v14, v1
	v_cmp_class_f32_e32 vcc, v4, v8
	v_ashrrev_i32_e32 v4, 31, v3
	v_cndmask_b32_e32 v1, v12, v1, vcc
	v_cmp_lt_u64_e32 vcc, s[16:17], v[3:4]
	v_mov_b32_e32 v14, s15
	v_add_co_u32_e64 v5, s[4:5], s14, v5
	v_addc_co_u32_e64 v6, s[4:5], v14, v6, s[4:5]
	s_or_b64 s[20:21], vcc, s[20:21]
	flat_store_dword v[5:6], v1
	s_andn2_b64 exec, exec, s[20:21]
	s_cbranch_execz .LBB2_16
.LBB2_12:
	v_lshlrev_b64 v[5:6], 2, v[3:4]
	v_mov_b32_e32 v1, s11
	v_add_co_u32_e32 v14, vcc, s10, v5
	v_addc_co_u32_e32 v15, vcc, v1, v6, vcc
	flat_load_dword v4, v[14:15]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_and_b32_e32 v14, 0x7fffffff, v4
	v_cmp_nlt_f32_e64 s[4:5], |v4|, s27
	s_and_saveexec_b64 s[6:7], s[4:5]
	s_xor_b64 s[22:23], exec, s[6:7]
	s_cbranch_execz .LBB2_14
	v_and_b32_e32 v1, 0x7fffff, v14
	v_or_b32_e32 v22, 0x800000, v1
	v_mad_u64_u32 v[15:16], s[4:5], v22, s28, 0
	v_mov_b32_e32 v1, v16
	v_mad_u64_u32 v[16:17], s[4:5], v22, s29, v[1:2]
	v_mov_b32_e32 v1, v17
	v_mad_u64_u32 v[17:18], s[4:5], v22, s30, v[1:2]
	v_mov_b32_e32 v1, v18
	v_mad_u64_u32 v[18:19], s[4:5], v22, s31, v[1:2]
	v_lshrrev_b32_e32 v1, 23, v14
	v_add_u32_e32 v21, 0xffffff88, v1
	v_mov_b32_e32 v1, v19
	v_mad_u64_u32 v[19:20], s[4:5], v22, s33, v[1:2]
	v_cmp_lt_u32_e32 vcc, 63, v21
	v_cndmask_b32_e32 v1, 0, v10, vcc
	v_add_u32_e32 v23, v1, v21
	v_mov_b32_e32 v1, v20
	v_mad_u64_u32 v[20:21], s[4:5], v22, s34, v[1:2]
	v_cmp_lt_u32_e64 s[4:5], 31, v23
	v_cndmask_b32_e64 v1, 0, v11, s[4:5]
	v_add_u32_e32 v23, v1, v23
	v_mov_b32_e32 v1, v21
	v_mad_u64_u32 v[21:22], s[6:7], v22, s35, v[1:2]
	v_cmp_lt_u32_e64 s[6:7], 31, v23
	v_cndmask_b32_e64 v1, 0, v11, s[6:7]
	v_add_u32_e32 v1, v1, v23
	v_cndmask_b32_e32 v23, v20, v18, vcc
	v_cndmask_b32_e32 v21, v21, v19, vcc
	v_cndmask_b32_e32 v20, v22, v20, vcc
	v_cndmask_b32_e32 v19, v19, v17, vcc
	v_cndmask_b32_e64 v22, v21, v23, s[4:5]
	v_cndmask_b32_e64 v20, v20, v21, s[4:5]
	v_cndmask_b32_e64 v21, v23, v19, s[4:5]
	v_sub_u32_e32 v23, 32, v1
	v_cmp_eq_u32_e64 s[8:9], 0, v1
	v_cndmask_b32_e32 v1, v18, v16, vcc
	v_cndmask_b32_e64 v20, v20, v22, s[6:7]
	v_cndmask_b32_e64 v22, v22, v21, s[6:7]
	v_cndmask_b32_e64 v16, v19, v1, s[4:5]
	v_alignbit_b32 v24, v20, v22, v23
	v_cndmask_b32_e64 v18, v21, v16, s[6:7]
	v_cndmask_b32_e64 v20, v24, v20, s[8:9]
	v_alignbit_b32 v19, v22, v18, v23
	v_cndmask_b32_e32 v15, v17, v15, vcc
	v_cndmask_b32_e64 v19, v19, v22, s[8:9]
	v_bfe_u32 v24, v20, 29, 1
	v_cndmask_b32_e64 v1, v1, v15, s[4:5]
	v_alignbit_b32 v21, v20, v19, 30
	v_sub_u32_e32 v25, 0, v24
	v_cndmask_b32_e64 v1, v16, v1, s[6:7]
	v_xor_b32_e32 v21, v21, v25
	v_alignbit_b32 v15, v18, v1, v23
	v_cndmask_b32_e64 v15, v15, v18, s[8:9]
	v_ffbh_u32_e32 v17, v21
	v_alignbit_b32 v16, v19, v15, 30
	v_min_u32_e32 v17, 32, v17
	v_alignbit_b32 v1, v15, v1, 30
	v_xor_b32_e32 v16, v16, v25
	v_sub_u32_e32 v18, 31, v17
	v_xor_b32_e32 v1, v1, v25
	v_alignbit_b32 v19, v21, v16, v18
	v_alignbit_b32 v1, v16, v1, v18
	v_alignbit_b32 v15, v19, v1, 9
	v_ffbh_u32_e32 v16, v15
	v_min_u32_e32 v16, 32, v16
	v_sub_u32_e32 v18, 31, v16
	v_alignbit_b32 v1, v15, v1, v18
	v_lshrrev_b32_e32 v1, 9, v1
	v_add_lshl_u32 v15, v16, v17, 23
	v_lshrrev_b32_e32 v22, 29, v20
	v_sub_u32_e32 v1, v1, v15
	v_add_u32_e32 v1, 0x33000000, v1
	v_lshlrev_b32_e32 v15, 31, v22
	v_or_b32_e32 v1, v1, v15
	v_or_b32_e32 v15, 0.5, v15
	v_lshlrev_b32_e32 v17, 23, v17
	v_lshrrev_b32_e32 v16, 9, v19
	v_sub_u32_e32 v15, v15, v17
	v_or_b32_e32 v15, v16, v15
	v_mul_f32_e32 v16, 0x3fc90fda, v15
	v_fma_f32 v17, v15, s36, -v16
	v_fmac_f32_e32 v17, 0x33a22168, v15
	v_fmac_f32_e32 v17, 0x3fc90fda, v1
	v_lshrrev_b32_e32 v15, 30, v20
	v_add_f32_e32 v1, v16, v17
	v_add_u32_e32 v15, v24, v15
.LBB2_14:
	s_andn2_saveexec_b64 s[4:5], s[22:23]
	s_cbranch_execz .LBB2_11
	v_mul_f32_e64 v1, |v4|, s37
	v_rndne_f32_e32 v16, v1
	v_cvt_i32_f32_e32 v15, v16
	v_fma_f32 v1, v16, s38, |v4|
	v_fmac_f32_e32 v1, 0xb3a22168, v16
	v_fmac_f32_e32 v1, 0xa7c234c4, v16
	s_branch .LBB2_11
.LBB2_16:
	s_or_b64 exec, exec, s[18:19]
.LBB2_17:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB2_5
	ds_write2_b32 v2, v2, v2 offset0:1 offset1:2
	ds_write_b32 v2, v9 offset:24
	s_branch .LBB2_5
.LBB2_19:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21
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
		.amdhsa_next_free_vgpr 26
		.amdhsa_next_free_sgpr 39
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21, .Lfunc_end2-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21

	.protected	__omp_rtl_device_environment
	.type	__omp_rtl_device_environment,@object
	.section	.bss,#alloc,#write
	.weak	__omp_rtl_device_environment
	.p2align	2, 0x0
__omp_rtl_device_environment:
	.zero	16
	.size	__omp_rtl_device_environment, 16

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode,@object
	.section	.rodata,#alloc
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21_exec_mode, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.8,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.8
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.8:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.8, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism.9,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism.9
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism.9:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21_nested_parallelism.9, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism.10,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism.10
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism.10:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21_nested_parallelism.10, 1

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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21
    .private_segment_fixed_size: 0
    .sgpr_count:     19
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z4tanfEEEEdRKNS_5ArrayIT_EERS5__l21.kd
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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21
    .private_segment_fixed_size: 0
    .sgpr_count:     43
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z14__ocml_tan_f32EEEEdRKNS_5ArrayIT_EERS3__l21.kd
    .vgpr_count:     26
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata
