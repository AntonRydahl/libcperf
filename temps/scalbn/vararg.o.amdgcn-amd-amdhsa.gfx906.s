	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.p2align	2
	.type	scalbn,@function
scalbn:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s4, 0
	v_cmp_ne_u32_e32 vcc, 0, v2
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB2_34
	v_and_b32_e32 v4, 0x7fffffff, v1
	v_mov_b32_e32 v3, v0
	v_cmp_ne_u64_e32 vcc, 0, v[3:4]
	s_mov_b32 s5, 0x7ff00000
	v_and_b32_e32 v4, 0x7ff00000, v1
	v_mov_b32_e32 v3, 0
	v_cmp_ne_u64_e64 s[4:5], s[4:5], v[3:4]
	s_and_b64 s[8:9], vcc, s[4:5]
	s_and_saveexec_b64 s[4:5], s[8:9]
	s_cbranch_execz .LBB2_33
	s_movk_i32 s8, 0x835
	v_cmp_gt_i32_e32 vcc, s8, v2
	s_and_saveexec_b64 s[8:9], vcc
	s_xor_b64 s[8:9], exec, s[8:9]
	s_cbranch_execz .LBB2_30
	s_movk_i32 s10, 0xf7cb
	v_cmp_lt_i32_e32 vcc, s10, v2
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execz .LBB2_27
	v_lshrrev_b32_e32 v3, 20, v1
	v_and_b32_e32 v6, 0x7ff, v3
	v_cmp_ne_u16_e32 vcc, 0, v6
	s_and_saveexec_b64 s[12:13], vcc
	s_xor_b64 s[12:13], exec, s[12:13]
	s_movk_i32 s14, 0xfc01
	v_and_b32_e32 v4, 0xfffff, v1
	v_add_u32_sdwa v3, v6, s14 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:DWORD
	v_or_b32_e32 v5, 0x100000, v4
	v_mov_b32_e32 v4, v0
	s_andn2_saveexec_b64 s[12:13], s[12:13]
	s_cbranch_execz .LBB2_10
	v_and_b32_e32 v4, 0xfffff, v1
	v_mov_b32_e32 v3, v0
	v_mov_b32_e32 v6, v4
	s_mov_b32 s16, -1
	s_mov_b64 s[14:15], 0
	v_mov_b32_e32 v5, v3
.LBB2_8:
	s_add_i32 s16, s16, 1
	v_and_b32_e32 v0, 0x80000, v6
	s_cmp_gt_u32 s16, 50
	v_lshlrev_b64 v[7:8], 1, v[5:6]
	v_cmp_ne_u32_e32 vcc, 0, v0
	s_cselect_b64 s[18:19], -1, 0
	s_or_b64 s[18:19], vcc, s[18:19]
	s_and_b64 s[18:19], exec, s[18:19]
	v_mov_b32_e32 v5, v7
	v_mov_b32_e32 v0, s16
	s_or_b64 s[14:15], s[18:19], s[14:15]
	v_mov_b32_e32 v6, v8
	s_andn2_b64 exec, exec, s[14:15]
	s_cbranch_execnz .LBB2_8
	s_or_b64 exec, exec, s[14:15]
	v_add_u32_e32 v5, 1, v0
	v_lshlrev_b64 v[4:5], v5, v[3:4]
	v_sub_u32_e32 v3, 0xfffffc01, v0
.LBB2_10:
	s_or_b64 exec, exec, s[12:13]
	v_add_u32_e32 v8, v3, v2
	s_movk_i32 s12, 0x400
	v_cmp_gt_i32_e32 vcc, s12, v8
	s_and_saveexec_b64 s[12:13], vcc
	s_xor_b64 s[12:13], exec, s[12:13]
	s_cbranch_execz .LBB2_24
	s_movk_i32 s14, 0xfc01
	v_and_b32_e32 v3, 0x80000000, v1
	v_mov_b32_e32 v2, 0
	v_cmp_lt_i32_e32 vcc, s14, v8
	s_and_saveexec_b64 s[14:15], vcc
	s_xor_b64 s[14:15], exec, s[14:15]
	v_mov_b32_e32 v0, 0x3ff00000
	v_lshl_add_u32 v0, v8, 20, v0
	v_and_b32_e32 v1, 0xfffff, v5
	v_or3_b32 v1, v0, v1, v3
	v_or3_b32 v0, 0, v4, 0
	s_andn2_saveexec_b64 s[14:15], s[14:15]
	s_cbranch_execz .LBB2_23
	s_movk_i32 s16, 0xfbcd
	v_cmp_gt_u32_e32 vcc, s16, v8
	s_and_saveexec_b64 s[16:17], vcc
	s_xor_b64 s[16:17], exec, s[16:17]
	v_mov_b32_e32 v0, v2
	v_mov_b32_e32 v1, v3
	s_andn2_saveexec_b64 s[16:17], s[16:17]
	s_cbranch_execz .LBB2_22
	v_sub_u32_e32 v2, 0xfffffc02, v8
	v_lshlrev_b64 v[0:1], v2, -1
	v_not_b32_e32 v0, v0
	v_and_b32_e32 v6, v4, v0
	v_sub_u32_e32 v0, 0xfffffc01, v8
	v_not_b32_e32 v1, v1
	v_lshlrev_b64 v[8:9], v0, 1
	v_and_b32_e32 v7, v5, v1
	v_lshrrev_b64 v[4:5], v2, v[4:5]
	v_cmp_le_u64_e32 vcc, v[6:7], v[8:9]
	v_and_b32_e32 v2, 0xfffff, v5
	s_and_saveexec_b64 s[18:19], vcc
	s_xor_b64 s[18:19], exec, s[18:19]
	v_cmp_eq_u64_e32 vcc, v[6:7], v[8:9]
	v_and_b32_e32 v0, 1, v4
	v_cndmask_b32_e32 v0, 0, v0, vcc
	v_add_co_u32_e32 v0, vcc, v0, v4
	v_addc_co_u32_e32 v1, vcc, 0, v2, vcc
	s_andn2_saveexec_b64 s[18:19], s[18:19]
	v_add_co_u32_e32 v0, vcc, 1, v4
	v_addc_co_u32_e32 v1, vcc, 0, v2, vcc
	s_or_b64 exec, exec, s[18:19]
	s_mov_b32 s18, 0
	v_and_b32_e32 v2, 0xfffff, v1
	s_mov_b32 s19, 0x100000
	v_or_b32_e32 v2, v2, v3
	v_cmp_eq_u64_e32 vcc, s[18:19], v[0:1]
	v_or_b32_e32 v3, 0x100000, v2
	v_cndmask_b32_e32 v1, v2, v3, vcc
.LBB2_22:
	s_or_b64 exec, exec, s[16:17]
.LBB2_23:
	s_or_b64 exec, exec, s[14:15]
.LBB2_24:
	s_andn2_saveexec_b64 s[12:13], s[12:13]
	s_brev_b32 s14, -2
	v_mov_b32_e32 v0, 0x7ff00000
	v_bfi_b32 v1, s14, v0, v1
	v_mov_b32_e32 v0, 0
	s_or_b64 exec, exec, s[12:13]
.LBB2_27:
	s_andn2_saveexec_b64 s[10:11], s[10:11]
	s_brev_b32 s12, -2
	v_mov_b32_e32 v0, 0
	v_bfi_b32 v1, s12, 0, v1
	s_or_b64 exec, exec, s[10:11]
.LBB2_30:
	s_andn2_saveexec_b64 s[8:9], s[8:9]
	s_brev_b32 s10, -2
	v_mov_b32_e32 v0, 0x7ff00000
	v_bfi_b32 v1, s10, v0, v1
	v_mov_b32_e32 v0, 0
	s_or_b64 exec, exec, s[8:9]
.LBB2_33:
	s_or_b64 exec, exec, s[4:5]
.LBB2_34:
	s_or_b64 exec, exec, s[6:7]
	s_setpc_b64 s[30:31]
.Lfunc_end0:
	.size	scalbn, .Lfunc_end0-scalbn

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28
	.p2align	8
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28,@function
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28:
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_2
	v_mov_b32_e32 v1, 1
	v_mov_b32_e32 v2, 0
	ds_write_b32 v2, v1
.LBB0_2:
	s_or_b64 exec, exec, s[0:1]
	s_load_dwordx8 s[12:19], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_load_dword s9, s[12:13], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s9, 1
	s_cbranch_scc1 .LBB0_14
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s10, 0xffff, s0
	v_cvt_f32_u32_e32 v1, s10
	s_mul_i32 s8, s8, s10
	s_cmp_ge_i32 s8, s9
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s0, v1
	s_cbranch_scc1 .LBB0_14
	s_load_dword s1, s[4:5], 0xc
	s_sub_i32 s2, 0, s10
	s_mul_i32 s2, s2, s0
	s_mul_hi_u32 s2, s0, s2
	s_add_i32 s0, s0, s2
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s0, s1, s0
	s_mul_i32 s2, s0, s10
	s_sub_i32 s1, s1, s2
	s_add_i32 s2, s0, 1
	s_sub_i32 s4, s1, s10
	s_cmp_ge_u32 s1, s10
	s_cselect_b32 s0, s2, s0
	s_cselect_b32 s1, s4, s1
	s_add_i32 s2, s0, 1
	s_cmp_ge_u32 s1, s10
	s_cselect_b32 s11, s2, s0
	s_add_i32 s0, s10, s8
	s_add_i32 s20, s9, -1
	s_add_i32 s0, s0, -1
	s_mov_b32 s3, 0
	s_mul_i32 s11, s11, s10
	s_min_i32 s2, s0, s20
	v_add_u32_e32 v1, s8, v0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v12, 1
	s_branch .LBB0_6
.LBB0_5:
	s_or_b64 exec, exec, s[0:1]
	s_add_i32 s0, s2, s11
	s_add_i32 s8, s8, s11
	s_min_i32 s2, s0, s20
	s_cmp_lt_i32 s8, s9
	v_add_u32_e32 v1, s11, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_scc0 .LBB0_14
.LBB0_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_8
	v_mov_b32_e32 v2, s10
	ds_write_b32 v11, v2
.LBB0_8:
	s_or_b64 exec, exec, s[0:1]
	v_mov_b32_e32 v2, s12
	v_mov_b32_e32 v3, s13
	s_waitcnt lgkmcnt(0)
	s_barrier
	flat_load_dword v2, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_lt_i32_e64 s[0:1], 0, v2
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB0_12
	v_add_u32_e32 v2, s8, v0
	v_ashrrev_i32_e32 v3, 31, v2
	v_cmp_ge_u64_e64 s[0:1], s[2:3], v[2:3]
	s_and_b64 exec, exec, s[0:1]
	s_cbranch_execz .LBB0_12
	ds_read_b32 v3, v11
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[5:6], 2, v[1:2]
	v_mov_b32_e32 v7, s15
	v_add_co_u32_e64 v5, s[0:1], s14, v5
	s_waitcnt lgkmcnt(0)
	v_ashrrev_i32_e32 v4, 31, v3
	v_addc_co_u32_e64 v6, s[0:1], v7, v6, s[0:1]
	v_lshlrev_b64 v[7:8], 2, v[3:4]
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v9, v1
.LBB0_11:
	v_mov_b32_e32 v13, s16
	v_mov_b32_e32 v14, s17
	v_mov_b32_e32 v15, s18
	v_mov_b32_e32 v16, s19
	flat_load_dword v2, v[13:14]
	flat_load_dword v4, v[15:16]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mad_u64_u32 v[13:14], s[0:1], v4, v9, v[2:3]
	v_add_u32_e32 v9, v3, v9
	v_ashrrev_i32_e32 v10, 31, v9
	v_cmp_lt_u64_e64 s[0:1], s[2:3], v[9:10]
	flat_store_dword v[5:6], v13
	s_or_b64 s[6:7], s[0:1], s[6:7]
	v_add_co_u32_e64 v5, s[0:1], v5, v7
	v_addc_co_u32_e64 v6, s[0:1], v6, v8, s[0:1]
	s_andn2_b64 exec, exec, s[6:7]
	s_cbranch_execnz .LBB0_11
.LBB0_12:
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB0_5
	ds_write_b32 v11, v12
	s_branch .LBB0_5
.LBB0_14:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28
		.amdhsa_group_segment_fixed_size 4
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
		.amdhsa_next_free_vgpr 17
		.amdhsa_next_free_sgpr 21
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

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
	.p2align	8
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14,@function
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14:
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB1_2
	v_mov_b32_e32 v1, 1
	v_mov_b32_e32 v2, 0
	ds_write_b32 v2, v1
.LBB1_2:
	s_or_b64 exec, exec, s[0:1]
	s_load_dwordx8 s[12:19], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_load_dword s9, s[12:13], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s9, 1
	s_cbranch_scc1 .LBB1_14
	s_load_dword s0, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s10, 0xffff, s0
	v_cvt_f32_u32_e32 v1, s10
	s_mul_i32 s8, s8, s10
	s_cmp_ge_i32 s8, s9
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s0, v1
	s_cbranch_scc1 .LBB1_14
	s_load_dword s1, s[4:5], 0xc
	s_sub_i32 s2, 0, s10
	s_mul_i32 s2, s2, s0
	s_mul_hi_u32 s2, s0, s2
	s_add_i32 s0, s0, s2
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s0, s1, s0
	s_mul_i32 s2, s0, s10
	s_sub_i32 s1, s1, s2
	s_add_i32 s2, s0, 1
	s_sub_i32 s4, s1, s10
	s_cmp_ge_u32 s1, s10
	s_cselect_b32 s0, s2, s0
	s_cselect_b32 s1, s4, s1
	s_add_i32 s2, s0, 1
	s_cmp_ge_u32 s1, s10
	s_cselect_b32 s11, s2, s0
	s_add_i32 s0, s10, s8
	s_add_i32 s20, s9, -1
	s_add_i32 s0, s0, -1
	s_mov_b32 s3, 0
	s_mul_i32 s11, s11, s10
	s_min_i32 s2, s0, s20
	v_add_u32_e32 v1, s8, v0
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v12, 1
	s_branch .LBB1_6
.LBB1_5:
	s_or_b64 exec, exec, s[0:1]
	s_add_i32 s0, s2, s11
	s_add_i32 s8, s8, s11
	s_min_i32 s2, s0, s20
	s_cmp_lt_i32 s8, s9
	v_add_u32_e32 v1, s11, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_scc0 .LBB1_14
.LBB1_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB1_8
	v_mov_b32_e32 v2, s10
	ds_write_b32 v11, v2
.LBB1_8:
	s_or_b64 exec, exec, s[0:1]
	v_mov_b32_e32 v2, s12
	v_mov_b32_e32 v3, s13
	s_waitcnt lgkmcnt(0)
	s_barrier
	flat_load_dword v2, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_lt_i32_e64 s[0:1], 0, v2
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB1_12
	v_add_u32_e32 v2, s8, v0
	v_ashrrev_i32_e32 v3, 31, v2
	v_cmp_ge_u64_e64 s[0:1], s[2:3], v[2:3]
	s_and_b64 exec, exec, s[0:1]
	s_cbranch_execz .LBB1_12
	ds_read_b32 v3, v11
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[5:6], 3, v[1:2]
	v_mov_b32_e32 v7, s15
	v_add_co_u32_e64 v5, s[0:1], s14, v5
	s_waitcnt lgkmcnt(0)
	v_ashrrev_i32_e32 v4, 31, v3
	v_addc_co_u32_e64 v6, s[0:1], v7, v6, s[0:1]
	v_lshlrev_b64 v[7:8], 3, v[3:4]
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v9, v1
.LBB1_11:
	v_mov_b32_e32 v13, s16
	v_mov_b32_e32 v14, s17
	v_mov_b32_e32 v15, s18
	v_mov_b32_e32 v16, s19
	flat_load_dwordx2 v[17:18], v[13:14]
	flat_load_dwordx2 v[19:20], v[15:16]
	v_cvt_f64_i32_e32 v[13:14], v9
	v_add_u32_e32 v9, v3, v9
	v_ashrrev_i32_e32 v10, 31, v9
	v_cmp_lt_u64_e64 s[0:1], s[2:3], v[9:10]
	s_or_b64 s[6:7], s[0:1], s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f64 v[13:14], v[13:14], v[19:20], v[17:18]
	flat_store_dwordx2 v[5:6], v[13:14]
	v_add_co_u32_e64 v5, s[0:1], v5, v7
	v_addc_co_u32_e64 v6, s[0:1], v6, v8, s[0:1]
	s_andn2_b64 exec, exec, s[6:7]
	s_cbranch_execnz .LBB1_11
.LBB1_12:
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB1_5
	ds_write_b32 v11, v12
	s_branch .LBB1_5
.LBB1_14:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
		.amdhsa_group_segment_fixed_size 4
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
		.amdhsa_next_free_vgpr 21
		.amdhsa_next_free_sgpr 21
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

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30:
	s_add_u32 flat_scratch_lo, s8, s11
	s_addc_u32 flat_scratch_hi, s9, 0
	s_add_u32 s0, s0, s11
	v_mov_b32_e32 v10, v0
	s_addc_u32 s1, s1, 0
	v_cmp_eq_u32_e64 s[20:21], 0, v10
	s_mov_b32 s32, 0
	s_and_saveexec_b64 s[8:9], s[20:21]
	s_cbranch_execz .LBB3_2
	v_mov_b32_e32 v0, 1
	v_mov_b32_e32 v1, 0
	ds_write_b32 v1, v0
.LBB3_2:
	s_or_b64 exec, exec, s[8:9]
	s_load_dwordx8 s[36:43], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s36, 1
	s_cbranch_scc1 .LBB3_15
	s_load_dword s6, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s33, 0xffff, s6
	v_cvt_f32_u32_e32 v0, s33
	s_mul_i32 s37, s10, s33
	s_cmp_ge_i32 s37, s36
	v_rcp_iflag_f32_e32 v0, v0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s6, v0
	s_cbranch_scc1 .LBB3_15
	s_load_dword s4, s[4:5], 0xc
	s_sub_i32 s5, 0, s33
	s_mul_i32 s5, s5, s6
	s_mul_hi_u32 s5, s6, s5
	s_add_i32 s6, s6, s5
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s5, s4, s6
	s_mul_i32 s5, s5, s33
	s_sub_i32 s5, s4, s5
	s_sub_i32 s6, s5, s33
	s_cmp_ge_u32 s5, s33
	s_cselect_b32 s5, s6, s5
	s_sub_i32 s6, s5, s33
	s_cmp_ge_u32 s5, s33
	s_cselect_b32 s5, s6, s5
	s_sub_i32 s44, s4, s5
	s_add_i32 s4, s33, s37
	s_add_i32 s45, s36, -1
	s_add_i32 s4, s4, -1
	s_min_i32 s24, s4, s45
	s_cmp_gt_i32 s36, 0
	s_cselect_b64 s[4:5], -1, 0
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	s_mov_b32 s25, 0
	v_mov_b32_e32 v13, 0
	v_cmp_ne_u32_e64 s[22:23], 1, v0
	v_mov_b32_e32 v14, 1
	s_getpc_b64 s[26:27]
	s_add_u32 s26, s26, scalbn@rel32@lo+4
	s_addc_u32 s27, s27, scalbn@rel32@hi+12
	s_branch .LBB3_6
.LBB3_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s24, s44
	s_add_i32 s37, s37, s44
	s_min_i32 s24, s4, s45
	s_cmp_lt_i32 s37, s36
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB3_15
.LBB3_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[20:21]
	s_cbranch_execz .LBB3_8
	v_mov_b32_e32 v0, s33
	ds_write_b32 v13, v0
.LBB3_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[22:23]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB3_13
	v_add_u32_e32 v11, s37, v10
	v_ashrrev_i32_e32 v12, 31, v11
	v_cmp_ge_u64_e32 vcc, s[24:25], v[11:12]
	s_and_saveexec_b64 s[28:29], vcc
	s_cbranch_execz .LBB3_12
	ds_read_b32 v15, v13
	s_mov_b64 s[34:35], 0
.LBB3_11:
	v_lshlrev_b64 v[16:17], 3, v[11:12]
	v_mov_b32_e32 v1, s41
	v_add_co_u32_e32 v0, vcc, s40, v16
	v_lshlrev_b64 v[2:3], 2, v[11:12]
	v_addc_co_u32_e32 v1, vcc, v1, v17, vcc
	v_mov_b32_e32 v4, s43
	v_add_co_u32_e32 v2, vcc, s42, v2
	v_addc_co_u32_e32 v3, vcc, v4, v3, vcc
	flat_load_dwordx2 v[0:1], v[0:1]
	s_nop 0
	flat_load_dword v2, v[2:3]
	s_swappc_b64 s[30:31], s[26:27]
	v_add_u32_e32 v11, v15, v11
	v_ashrrev_i32_e32 v12, 31, v11
	v_cmp_lt_u64_e32 vcc, s[24:25], v[11:12]
	v_mov_b32_e32 v3, s39
	v_add_co_u32_e64 v2, s[4:5], s38, v16
	v_addc_co_u32_e64 v3, s[4:5], v3, v17, s[4:5]
	s_or_b64 s[34:35], vcc, s[34:35]
	flat_store_dwordx2 v[2:3], v[0:1]
	s_andn2_b64 exec, exec, s[34:35]
	s_cbranch_execnz .LBB3_11
.LBB3_12:
	s_or_b64 exec, exec, s[28:29]
.LBB3_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[20:21]
	s_cbranch_execz .LBB3_5
	ds_write_b32 v13, v14
	s_branch .LBB3_5
.LBB3_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
		.amdhsa_group_segment_fixed_size 4
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_kernarg_size 32
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
		.amdhsa_next_free_vgpr 18
		.amdhsa_next_free_sgpr 46
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30, .Lfunc_end3-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30:
	v_cmp_eq_u32_e64 s[0:1], 0, v0
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz .LBB4_2
	v_mov_b32_e32 v1, 1
	v_mov_b32_e32 v2, 0
	ds_write_b32 v2, v1
.LBB4_2:
	s_or_b64 exec, exec, s[2:3]
	s_load_dwordx8 s[12:19], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s12, 1
	s_cbranch_scc1 .LBB4_15
	s_load_dword s2, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s13, 0xffff, s2
	v_cvt_f32_u32_e32 v1, s13
	s_mul_i32 s22, s8, s13
	s_cmp_ge_i32 s22, s12
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s2, v1
	s_cbranch_scc1 .LBB4_15
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
	s_sub_i32 s23, s3, s2
	s_add_i32 s2, s13, s22
	s_add_i32 s24, s12, -1
	s_add_i32 s2, s2, -1
	s_min_i32 s8, s2, s24
	s_cmp_gt_i32 s12, 0
	s_cselect_b64 s[2:3], -1, 0
	v_cndmask_b32_e64 v2, 0, 1, s[2:3]
	s_mov_b32 s9, 0
	v_add_u32_e32 v1, s22, v0
	v_mov_b32_e32 v15, 0
	v_cmp_ne_u32_e64 s[2:3], 1, v2
	v_mov_b32_e32 v16, 1
	s_branch .LBB4_6
.LBB4_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s8, s23
	s_add_i32 s22, s22, s23
	s_min_i32 s8, s4, s24
	s_cmp_lt_i32 s22, s12
	v_add_u32_e32 v1, s23, v1
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB4_15
.LBB4_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB4_8
	v_mov_b32_e32 v2, s13
	ds_write_b32 v15, v2
.LBB4_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB4_13
	v_add_u32_e32 v2, s22, v0
	v_ashrrev_i32_e32 v3, 31, v2
	v_cmp_ge_u64_e32 vcc, s[8:9], v[2:3]
	s_and_saveexec_b64 s[10:11], vcc
	s_cbranch_execz .LBB4_12
	ds_read_b32 v3, v15
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshlrev_b64 v[7:8], 2, v[1:2]
	v_mov_b32_e32 v9, s19
	v_add_co_u32_e32 v7, vcc, s18, v7
	s_waitcnt lgkmcnt(0)
	v_ashrrev_i32_e32 v4, 31, v3
	v_lshlrev_b64 v[5:6], 3, v[1:2]
	v_addc_co_u32_e32 v8, vcc, v9, v8, vcc
	v_lshlrev_b64 v[9:10], 3, v[3:4]
	v_lshlrev_b64 v[11:12], 2, v[3:4]
	v_add_u32_e32 v13, v3, v1
	s_mov_b64 s[20:21], 0
.LBB4_11:
	v_mov_b32_e32 v2, s17
	v_add_co_u32_e32 v17, vcc, s16, v5
	v_addc_co_u32_e32 v18, vcc, v2, v6, vcc
	flat_load_dword v4, v[7:8]
	v_mov_b32_e32 v2, s15
	flat_load_dwordx2 v[17:18], v[17:18]
	v_add_co_u32_e32 v19, vcc, s14, v5
	v_ashrrev_i32_e32 v14, 31, v13
	v_addc_co_u32_e32 v20, vcc, v2, v6, vcc
	v_cmp_lt_u64_e32 vcc, s[8:9], v[13:14]
	v_add_co_u32_e64 v5, s[4:5], v5, v9
	v_add_co_u32_e64 v7, s[6:7], v7, v11
	v_addc_co_u32_e64 v8, s[6:7], v8, v12, s[6:7]
	v_addc_co_u32_e64 v6, s[4:5], v6, v10, s[4:5]
	v_add_u32_e32 v13, v13, v3
	s_or_b64 s[20:21], vcc, s[20:21]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_ldexp_f64 v[17:18], v[17:18], v4
	flat_store_dwordx2 v[19:20], v[17:18]
	s_andn2_b64 exec, exec, s[20:21]
	s_cbranch_execnz .LBB4_11
.LBB4_12:
	s_or_b64 exec, exec, s[10:11]
.LBB4_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB4_5
	ds_write_b32 v15, v16
	s_branch .LBB4_5
.LBB4_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
		.amdhsa_group_segment_fixed_size 4
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
		.amdhsa_next_free_vgpr 21
		.amdhsa_next_free_sgpr 25
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30, .Lfunc_end4-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30

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

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11, 1

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
    .group_segment_fixed_size: 4
    .kernarg_segment_align: 8
    .kernarg_segment_size: 32
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28
    .private_segment_fixed_size: 0
    .sgpr_count:     25
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28.kd
    .vgpr_count:     17
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
    .group_segment_fixed_size: 4
    .kernarg_segment_align: 8
    .kernarg_segment_size: 32
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
    .private_segment_fixed_size: 0
    .sgpr_count:     25
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14.kd
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
      - .address_space:  generic
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 4
    .kernarg_segment_align: 8
    .kernarg_segment_size: 32
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
    .private_segment_fixed_size: 0
    .sgpr_count:     52
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddiEadL_Z6scalbnEEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30.kd
    .vgpr_count:     18
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
      - .address_space:  generic
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
    .group_segment_fixed_size: 4
    .kernarg_segment_align: 8
    .kernarg_segment_size: 32
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 1024
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
    .private_segment_fixed_size: 0
    .sgpr_count:     29
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z17__ocml_scalbn_f64EEJdiEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30.kd
    .vgpr_count:     21
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata
