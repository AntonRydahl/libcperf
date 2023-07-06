	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.p2align	2
	.type	remainderf,@function
remainderf:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_xor_saveexec_b64 s[4:5], -1
	buffer_store_dword v2, off, s[0:3], s32
	s_mov_b64 exec, s[4:5]
	v_writelane_b32 v2, s30, 0
	v_and_b32_e32 v4, 0x7fffffff, v0
	s_mov_b32 s4, 0x7f800001
	v_writelane_b32 v2, s31, 1
	v_cmp_gt_u32_e32 vcc, s4, v4
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB2_84
	v_and_b32_e32 v3, 0x7fffffff, v1
	v_cmp_gt_u32_e32 vcc, s4, v3
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execz .LBB2_83
	s_mov_b32 s4, 0x7f800000
	v_cmp_ne_u32_e32 vcc, s4, v4
	v_cmp_ne_u32_e64 s[4:5], 0, v3
	s_and_b64 s[4:5], vcc, s[4:5]
	v_mov_b32_e32 v5, 0x7fc00001
	s_and_saveexec_b64 s[10:11], s[4:5]
	s_cbranch_execz .LBB2_82
	v_cmp_ne_u32_e32 vcc, 0, v4
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[12:13], exec, s[4:5]
	s_cbranch_execz .LBB2_79
	s_mov_b32 s4, 0x7f800000
	v_cmp_ne_u32_e32 vcc, s4, v3
	s_and_saveexec_b64 s[14:15], vcc
	s_cbranch_execz .LBB2_78
	v_and_b32_e32 v5, 0x7f800000, v0
	v_cmp_ne_u32_e32 vcc, 0, v5
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	v_lshrrev_b32_e32 v4, 23, v4
	v_add_u32_e32 v8, 0xffffff81, v4
	v_and_b32_e32 v4, 0x7fffff, v0
	v_or_b32_e32 v5, 0x800000, v4
	s_andn2_saveexec_b64 s[4:5], s[4:5]
	s_cbranch_execz .LBB2_11
	v_and_b32_e32 v4, 0x7fffff, v0
	s_mov_b32 s18, -1
	s_mov_b64 s[16:17], 0
	v_mov_b32_e32 v5, v4
.LBB2_9:
	s_add_i32 s18, s18, 1
	v_lshlrev_b32_e32 v7, 1, v5
	v_and_b32_e32 v5, 0x400000, v5
	s_cmp_gt_u32 s18, 21
	v_cmp_ne_u32_e32 vcc, 0, v5
	s_cselect_b64 s[20:21], -1, 0
	s_or_b64 s[20:21], vcc, s[20:21]
	s_and_b64 s[20:21], exec, s[20:21]
	v_mov_b32_e32 v6, s18
	s_or_b64 s[16:17], s[20:21], s[16:17]
	v_mov_b32_e32 v5, v7
	s_andn2_b64 exec, exec, s[16:17]
	s_cbranch_execnz .LBB2_9
	s_or_b64 exec, exec, s[16:17]
	v_add_u32_e32 v5, 1, v6
	v_lshlrev_b32_e32 v5, v5, v4
	v_sub_u32_e32 v8, 0xffffff81, v6
.LBB2_11:
	s_or_b64 exec, exec, s[4:5]
	s_mov_b32 s4, 0x7f800000
	v_and_b32_e32 v9, 0x7f800000, v1
	v_cmp_gt_i32_e32 vcc, s4, v9
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v6, 0
	v_mov_b32_e32 v7, 0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz .LBB2_19
	v_cmp_ne_u32_e32 vcc, 0, v9
	s_and_saveexec_b64 s[16:17], vcc
	s_xor_b64 s[16:17], exec, s[16:17]
	v_bfe_u32 v6, v1, 23, 8
	v_and_b32_e32 v7, 0x7fffff, v1
	v_add_u32_e32 v6, 0xffffff81, v6
	v_or_b32_e32 v7, 0x800000, v7
	s_andn2_saveexec_b64 s[16:17], s[16:17]
	s_cbranch_execz .LBB2_18
	v_and_b32_e32 v6, 0x7fffff, v1
	s_mov_b32 s20, -1
	s_mov_b64 s[18:19], 0
	v_mov_b32_e32 v7, v6
.LBB2_16:
	s_add_i32 s20, s20, 1
	v_lshlrev_b32_e32 v10, 1, v7
	v_and_b32_e32 v7, 0x400000, v7
	s_cmp_gt_u32 s20, 21
	v_cmp_ne_u32_e32 vcc, 0, v7
	s_cselect_b64 s[22:23], -1, 0
	s_or_b64 s[22:23], vcc, s[22:23]
	s_and_b64 s[22:23], exec, s[22:23]
	v_mov_b32_e32 v9, s20
	s_or_b64 s[18:19], s[22:23], s[18:19]
	v_mov_b32_e32 v7, v10
	s_andn2_b64 exec, exec, s[18:19]
	s_cbranch_execnz .LBB2_16
	s_or_b64 exec, exec, s[18:19]
	v_add_u32_e32 v7, 1, v9
	v_lshlrev_b32_e32 v7, v7, v6
	v_sub_u32_e32 v6, 0xffffff81, v9
.LBB2_18:
	s_or_b64 exec, exec, s[16:17]
.LBB2_19:
	s_or_b64 exec, exec, s[4:5]
	v_xor_b32_e32 v1, v1, v0
	v_cmp_gt_i32_e32 vcc, 0, v1
	v_sub_u32_e32 v8, v8, v6
	v_and_b32_e32 v1, 0x80000000, v0
	s_mov_b64 s[16:17], 0
	s_branch .LBB2_22
.LBB2_20:
	s_or_b64 exec, exec, s[30:31]
	s_andn2_b64 s[4:5], s[22:23], exec
	s_and_b64 s[22:23], s[28:29], exec
	s_or_b64 s[22:23], s[4:5], s[22:23]
	s_andn2_b64 s[4:5], s[20:21], exec
	s_and_b64 s[20:21], s[26:27], exec
	s_or_b64 s[20:21], s[4:5], s[20:21]
.LBB2_21:
	s_or_b64 exec, exec, s[24:25]
	s_and_b64 s[4:5], exec, s[20:21]
	s_or_b64 s[16:17], s[4:5], s[16:17]
	s_andn2_b64 s[4:5], s[18:19], exec
	s_and_b64 s[18:19], s[22:23], exec
	s_or_b64 s[18:19], s[4:5], s[18:19]
	s_andn2_b64 exec, exec, s[16:17]
	s_cbranch_execz .LBB2_33
.LBB2_22:
	v_cmp_lt_i32_e64 s[4:5], -1, v8
	s_or_b64 s[22:23], s[22:23], exec
	s_or_b64 s[20:21], s[20:21], exec
	s_and_saveexec_b64 s[24:25], s[4:5]
	s_cbranch_execz .LBB2_21
	v_cmp_lt_u32_e64 s[4:5], v5, v7
	v_mov_b32_e32 v11, 0
	v_mov_b32_e32 v10, v5
	s_and_saveexec_b64 s[26:27], s[4:5]
	s_cbranch_execz .LBB2_27
	s_mov_b32 s30, 0
	s_mov_b64 s[28:29], 0
	v_mov_b32_e32 v10, v5
.LBB2_25:
	v_lshlrev_b32_e32 v10, 1, v10
	s_add_i32 s30, s30, 1
	v_cmp_ge_u32_e64 s[4:5], v10, v7
	s_or_b64 s[28:29], s[4:5], s[28:29]
	v_mov_b32_e32 v11, s30
	s_andn2_b64 exec, exec, s[28:29]
	s_cbranch_execnz .LBB2_25
	s_or_b64 exec, exec, s[28:29]
.LBB2_27:
	s_or_b64 exec, exec, s[26:27]
	v_cmp_ge_i32_e64 s[4:5], v8, v11
	v_mov_b32_e32 v9, 3
	s_and_saveexec_b64 s[26:27], s[4:5]
	s_cbranch_execz .LBB2_31
	v_sub_u32_e32 v8, v8, v11
	v_lshlrev_b32_e64 v5, v8, 1
	v_cmp_gt_u32_e64 s[4:5], 3, v8
	v_cndmask_b32_e64 v5, 0, v5, s[4:5]
	v_or_b32_e32 v4, v5, v4
	v_sub_u32_e32 v5, v10, v7
	v_mov_b32_e32 v9, 0
	v_cmp_eq_u32_e64 s[4:5], 0, v5
	s_and_saveexec_b64 s[28:29], s[4:5]
	v_sub_u32_e32 v5, 0, v4
	v_cndmask_b32_e32 v4, v4, v5, vcc
	v_mov_b32_e32 v9, 1
	v_mov_b32_e32 v5, 0
	s_or_b64 exec, exec, s[28:29]
.LBB2_31:
	s_or_b64 exec, exec, s[26:27]
	v_cmp_gt_i32_e64 s[4:5], 3, v9
	s_mov_b64 s[26:27], -1
	s_mov_b64 s[28:29], -1
	s_and_saveexec_b64 s[30:31], s[4:5]
	s_cbranch_execz .LBB2_20
	v_cmp_ne_u32_e64 s[4:5], 0, v9
	s_xor_b64 s[28:29], exec, -1
	s_orn2_b64 s[26:27], s[4:5], exec
	s_branch .LBB2_20
.LBB2_33:
	s_or_b64 exec, exec, s[16:17]
	s_xor_b64 s[4:5], s[18:19], -1
	s_and_saveexec_b64 s[16:17], s[4:5]
	s_xor_b64 s[4:5], exec, s[16:17]
	s_andn2_saveexec_b64 s[4:5], s[4:5]
	s_cbranch_execz .LBB2_77
	s_mov_b32 s16, 0x800000
	v_add_u32_e32 v9, v8, v6
	v_cmp_gt_u32_e32 vcc, s16, v5
	s_and_saveexec_b64 s[16:17], vcc
	s_cbranch_execz .LBB2_40
	s_mov_b32 s20, 0
	s_mov_b64 s[18:19], 0
	v_mov_b32_e32 v8, v5
.LBB2_38:
	s_add_i32 s21, s20, 1
	v_lshlrev_b32_e32 v11, 1, v8
	v_and_b32_e32 v8, 0x400000, v8
	s_cmp_gt_u32 s20, 21
	v_cmp_ne_u32_e32 vcc, 0, v8
	s_cselect_b64 s[22:23], -1, 0
	s_or_b64 s[22:23], vcc, s[22:23]
	s_and_b64 s[22:23], exec, s[22:23]
	v_mov_b32_e32 v10, s21
	s_mov_b32 s20, s21
	s_or_b64 s[18:19], s[22:23], s[18:19]
	v_mov_b32_e32 v8, v11
	s_andn2_b64 exec, exec, s[18:19]
	s_cbranch_execnz .LBB2_38
	s_or_b64 exec, exec, s[18:19]
	v_lshlrev_b32_e32 v5, v10, v5
	v_sub_u32_e32 v9, v9, v10
.LBB2_40:
	s_or_b64 exec, exec, s[16:17]
	s_movk_i32 s16, 0x80
	v_cmp_gt_i32_e32 vcc, s16, v9
	v_mov_b32_e32 v8, 0x7f800000
	s_and_saveexec_b64 s[16:17], vcc
	s_cbranch_execz .LBB2_52
	s_movk_i32 s18, 0xff81
	v_cmp_lt_i32_e32 vcc, s18, v9
	s_and_saveexec_b64 s[18:19], vcc
	s_xor_b64 s[18:19], exec, s[18:19]
	v_lshl_add_u32 v8, v9, 23, 1.0
	v_and_b32_e32 v10, 0x7fffff, v5
	s_mov_b32 s20, 0x7f800000
	v_and_or_b32 v8, v8, s20, v10
	s_andn2_saveexec_b64 s[18:19], s[18:19]
	s_cbranch_execz .LBB2_51
	s_movk_i32 s20, 0xff69
	v_cmp_lt_u32_e32 vcc, s20, v9
	v_mov_b32_e32 v8, 0
	s_and_saveexec_b64 s[20:21], vcc
	s_cbranch_execz .LBB2_50
	v_sub_u32_e32 v12, 0xffffff82, v9
	v_sub_u32_e32 v8, 0xffffff81, v9
	v_bfe_u32 v11, v5, 0, v12
	v_lshlrev_b32_e64 v13, v8, 1
	v_bfe_u32 v10, v5, v12, 23
	v_cmp_le_u32_e32 vcc, v11, v13
	s_and_saveexec_b64 s[22:23], vcc
	s_xor_b64 s[22:23], exec, s[22:23]
	v_lshrrev_b32_e32 v8, v12, v5
	v_and_b32_e32 v8, 1, v8
	v_cmp_eq_u32_e32 vcc, v11, v13
	v_cndmask_b32_e32 v8, 0, v8, vcc
	v_add_u32_e32 v8, v8, v10
	s_andn2_saveexec_b64 s[22:23], s[22:23]
	v_add_u32_e32 v8, 1, v10
	s_or_b64 exec, exec, s[22:23]
	v_and_b32_e32 v10, 0x7fffff, v8
	s_mov_b32 s22, 0x800000
	v_or_b32_e32 v11, 0x800000, v10
	v_cmp_eq_u32_e32 vcc, s22, v8
	v_cndmask_b32_e32 v8, v10, v11, vcc
.LBB2_50:
	s_or_b64 exec, exec, s[20:21]
.LBB2_51:
	s_or_b64 exec, exec, s[18:19]
.LBB2_52:
	s_or_b64 exec, exec, s[16:17]
	v_cmp_lt_i32_e32 vcc, v9, v6
	v_mov_b32_e32 v10, 1
	s_and_saveexec_b64 s[16:17], vcc
	v_cmp_ne_u32_e32 vcc, v5, v7
	v_add_u32_e32 v9, 1, v9
	v_cndmask_b32_e64 v10, 0, -1, vcc
	v_cmp_le_u32_e32 vcc, v5, v7
	v_cndmask_b32_e32 v5, 1, v10, vcc
	v_cmp_eq_u32_e32 vcc, v9, v6
	v_cndmask_b32_e32 v10, -1, v5, vcc
	s_or_b64 exec, exec, s[16:17]
	v_cmp_gt_i32_e32 vcc, 1, v10
	s_and_saveexec_b64 s[16:17], vcc
	s_xor_b64 s[16:17], exec, s[16:17]
	s_cbranch_execz .LBB2_70
	v_cmp_ne_u32_e32 vcc, 0, v10
	s_and_saveexec_b64 s[18:19], vcc
	s_xor_b64 s[18:19], exec, s[18:19]
	s_cbranch_execz .LBB2_59
	v_cmp_gt_f32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[20:21], vcc
	v_xor_b32_e32 v8, 0x80000000, v8
	s_or_b64 exec, exec, s[20:21]
.LBB2_59:
	s_andn2_saveexec_b64 s[18:19], s[18:19]
	s_cbranch_execz .LBB2_69
	v_and_b32_e32 v3, 1, v4
	v_cmp_eq_u32_e32 vcc, 1, v3
	s_and_saveexec_b64 s[20:21], vcc
	s_xor_b64 s[20:21], exec, s[20:21]
	s_cbranch_execz .LBB2_64
	v_cmp_le_f32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[22:23], vcc
	v_xor_b32_e32 v8, 0x80000000, v8
	s_or_b64 exec, exec, s[22:23]
.LBB2_64:
	s_andn2_saveexec_b64 s[20:21], s[20:21]
	s_cbranch_execz .LBB2_68
	v_cmp_gt_f32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[22:23], vcc
	v_xor_b32_e32 v8, 0x80000000, v8
	s_or_b64 exec, exec, s[22:23]
.LBB2_68:
	s_or_b64 exec, exec, s[20:21]
.LBB2_69:
	s_or_b64 exec, exec, s[18:19]
.LBB2_70:
	s_andn2_saveexec_b64 s[16:17], s[16:17]
	s_cbranch_execz .LBB2_76
	v_cmp_le_f32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[18:19], vcc
	s_xor_b64 s[18:19], exec, s[18:19]
	v_sub_f32_e32 v8, v8, v3
	s_andn2_saveexec_b64 s[18:19], s[18:19]
	v_sub_f32_e32 v8, v3, v8
	s_or_b64 exec, exec, s[18:19]
.LBB2_76:
	s_or_b64 exec, exec, s[16:17]
	v_cmp_eq_f32_e32 vcc, 0, v8
	v_cndmask_b32_e32 v1, v8, v1, vcc
.LBB2_77:
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v0, v1
.LBB2_78:
	s_or_b64 exec, exec, s[14:15]
.LBB2_79:
	s_andn2_saveexec_b64 s[4:5], s[12:13]
	v_and_b32_e32 v0, 0x80000000, v0
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v5, v0
.LBB2_82:
	s_or_b64 exec, exec, s[10:11]
	v_mov_b32_e32 v1, v5
.LBB2_83:
	s_or_b64 exec, exec, s[8:9]
	v_mov_b32_e32 v0, v1
.LBB2_84:
	s_or_b64 exec, exec, s[6:7]
	v_readlane_b32 s31, v2, 1
	v_readlane_b32 s30, v2, 0
	s_xor_saveexec_b64 s[4:5], -1
	buffer_load_dword v2, off, s[0:3], s32
	s_mov_b64 exec, s[4:5]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end0:
	.size	remainderf, .Lfunc_end0-remainderf

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

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
	.p2align	8
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14,@function
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14:
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
	v_lshlrev_b64 v[5:6], 2, v[1:2]
	v_mov_b32_e32 v7, s15
	v_add_co_u32_e64 v5, s[0:1], s14, v5
	s_waitcnt lgkmcnt(0)
	v_ashrrev_i32_e32 v4, 31, v3
	v_addc_co_u32_e64 v6, s[0:1], v7, v6, s[0:1]
	v_lshlrev_b64 v[7:8], 2, v[3:4]
	s_mov_b64 s[6:7], 0
	v_mov_b32_e32 v9, v1
.LBB1_11:
	v_mov_b32_e32 v13, s16
	v_mov_b32_e32 v14, s17
	v_mov_b32_e32 v15, s18
	v_mov_b32_e32 v16, s19
	flat_load_dword v2, v[13:14]
	flat_load_dword v4, v[15:16]
	v_cvt_f32_i32_e32 v13, v9
	v_add_u32_e32 v9, v3, v9
	v_ashrrev_i32_e32 v10, 31, v9
	v_cmp_lt_u64_e64 s[0:1], s[2:3], v[9:10]
	s_or_b64 s[6:7], s[0:1], s[6:7]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fmac_f32_e32 v2, v13, v4
	flat_store_dword v[5:6], v2
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
	.amdhsa_kernel __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
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
.Lfunc_end2:
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14, .Lfunc_end2-__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30:
	s_add_u32 flat_scratch_lo, s8, s11
	s_addc_u32 flat_scratch_hi, s9, 0
	s_add_u32 s0, s0, s11
	v_mov_b32_e32 v14, v0
	s_addc_u32 s1, s1, 0
	v_cmp_eq_u32_e64 s[34:35], 0, v14
	s_mov_b32 s32, 0
	s_and_saveexec_b64 s[8:9], s[34:35]
	s_cbranch_execz .LBB3_2
	v_mov_b32_e32 v0, 1
	v_mov_b32_e32 v1, 0
	ds_write_b32 v1, v0
.LBB3_2:
	s_or_b64 exec, exec, s[8:9]
	s_load_dwordx8 s[40:47], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s40, 1
	s_cbranch_scc1 .LBB3_15
	s_load_dword s6, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s33, 0xffff, s6
	v_cvt_f32_u32_e32 v0, s33
	s_mul_i32 s41, s10, s33
	s_cmp_ge_i32 s41, s40
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
	s_sub_i32 s54, s4, s5
	s_add_i32 s4, s33, s41
	s_add_i32 s55, s40, -1
	s_add_i32 s4, s4, -1
	s_min_i32 s38, s4, s55
	s_cmp_gt_i32 s40, 0
	s_cselect_b64 s[4:5], -1, 0
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	s_mov_b32 s39, 0
	v_mov_b32_e32 v17, 0
	v_cmp_ne_u32_e64 s[36:37], 1, v0
	v_mov_b32_e32 v18, 1
	s_getpc_b64 s[48:49]
	s_add_u32 s48, s48, remainderf@rel32@lo+4
	s_addc_u32 s49, s49, remainderf@rel32@hi+12
	s_branch .LBB3_6
.LBB3_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s38, s54
	s_add_i32 s41, s41, s54
	s_min_i32 s38, s4, s55
	s_cmp_lt_i32 s41, s40
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB3_15
.LBB3_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[34:35]
	s_cbranch_execz .LBB3_8
	v_mov_b32_e32 v0, s33
	ds_write_b32 v17, v0
.LBB3_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[36:37]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB3_13
	v_add_u32_e32 v15, s41, v14
	v_ashrrev_i32_e32 v16, 31, v15
	v_cmp_ge_u64_e32 vcc, s[38:39], v[15:16]
	s_and_saveexec_b64 s[50:51], vcc
	s_cbranch_execz .LBB3_12
	ds_read_b32 v19, v17
	s_mov_b64 s[52:53], 0
.LBB3_11:
	v_lshlrev_b64 v[20:21], 2, v[15:16]
	v_mov_b32_e32 v1, s45
	v_add_co_u32_e32 v0, vcc, s44, v20
	v_addc_co_u32_e32 v1, vcc, v1, v21, vcc
	flat_load_dword v0, v[0:1]
	v_mov_b32_e32 v2, s47
	v_add_co_u32_e32 v1, vcc, s46, v20
	v_addc_co_u32_e32 v2, vcc, v2, v21, vcc
	flat_load_dword v1, v[1:2]
	s_swappc_b64 s[30:31], s[48:49]
	v_add_u32_e32 v15, v19, v15
	v_ashrrev_i32_e32 v16, 31, v15
	v_cmp_lt_u64_e32 vcc, s[38:39], v[15:16]
	v_mov_b32_e32 v2, s43
	v_add_co_u32_e64 v1, s[4:5], s42, v20
	v_addc_co_u32_e64 v2, s[4:5], v2, v21, s[4:5]
	s_or_b64 s[52:53], vcc, s[52:53]
	flat_store_dword v[1:2], v0
	s_andn2_b64 exec, exec, s[52:53]
	s_cbranch_execnz .LBB3_11
.LBB3_12:
	s_or_b64 exec, exec, s[50:51]
.LBB3_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[34:35]
	s_cbranch_execz .LBB3_5
	ds_write_b32 v17, v18
	s_branch .LBB3_5
.LBB3_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
		.amdhsa_group_segment_fixed_size 4
		.amdhsa_private_segment_fixed_size 8
		.amdhsa_kernarg_size 32
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
		.amdhsa_next_free_vgpr 22
		.amdhsa_next_free_sgpr 56
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30, .Lfunc_end3-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30:
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
	s_cbranch_scc1 .LBB4_23
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
	s_cbranch_scc1 .LBB4_23
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
	s_min_i32 s8, s2, s26
	s_cmp_gt_i32 s12, 0
	s_cselect_b64 s[2:3], -1, 0
	v_cndmask_b32_e64 v1, 0, 1, s[2:3]
	s_mov_b32 s9, 0
	v_mov_b32_e32 v5, 0
	v_cmp_ne_u32_e64 s[2:3], 1, v1
	s_mov_b32 s27, 0x7f000000
	s_brev_b32 s28, -2
	v_mov_b32_e32 v6, 0x1f8
	v_mov_b32_e32 v7, 1
	v_bfrev_b32_e32 v8, 1
	v_mov_b32_e32 v9, 0x7fc00000
	s_branch .LBB4_6
.LBB4_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s8, s25
	s_add_i32 s24, s24, s25
	s_min_i32 s8, s4, s26
	s_cmp_lt_i32 s24, s12
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB4_23
.LBB4_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB4_8
	v_mov_b32_e32 v1, s13
	ds_write_b32 v5, v1
.LBB4_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB4_21
	v_add_u32_e32 v1, s24, v0
	v_ashrrev_i32_e32 v2, 31, v1
	v_cmp_ge_u64_e32 vcc, s[8:9], v[1:2]
	s_and_saveexec_b64 s[10:11], vcc
	s_cbranch_execz .LBB4_20
	ds_read_b32 v10, v5
	s_mov_b64 s[20:21], 0
	s_branch .LBB4_13
.LBB4_11:
	s_or_b64 exec, exec, s[4:5]
	v_add_u32_e32 v16, -11, v16
	v_ldexp_f32 v14, v14, v16
	v_mul_f32_e32 v13, v13, v14
	v_rndne_f32_e32 v13, v13
	v_fma_f32 v14, -v13, v12, v14
	v_cvt_i32_f32_e32 v13, v13
	v_cmp_gt_f32_e32 vcc, 0, v14
	v_cndmask_b32_e32 v16, v8, v12, vcc
	v_add_f32_e32 v14, v14, v16
	v_and_b32_e32 v13, 1, v13
	v_add_f32_e32 v16, v14, v14
	v_cmp_eq_u32_e64 s[6:7], 1, v13
	s_xor_b64 s[6:7], vcc, s[6:7]
	v_cmp_eq_f32_e32 vcc, v16, v12
	v_cmp_gt_f32_e64 s[4:5], v16, v12
	s_and_b64 s[6:7], s[6:7], vcc
	s_or_b64 vcc, s[4:5], s[6:7]
	v_cndmask_b32_e32 v12, 0, v12, vcc
	v_add_u32_e32 v15, -1, v15
	v_sub_f32_e32 v12, v14, v12
	v_ldexp_f32 v12, v12, v15
	v_and_b32_e32 v13, 0x80000000, v2
	v_xor_b32_e32 v12, v13, v12
.LBB4_12:
	s_or_b64 exec, exec, s[22:23]
	v_cmp_o_f32_e64 s[4:5], v11, v11
	v_cmp_class_f32_e64 s[6:7], v2, v6
	v_cmp_neq_f32_e32 vcc, 0, v11
	s_and_b64 s[4:5], s[6:7], s[4:5]
	v_add_u32_e32 v1, v10, v1
	s_and_b64 vcc, s[4:5], vcc
	v_ashrrev_i32_e32 v2, 31, v1
	v_cndmask_b32_e32 v11, v9, v12, vcc
	v_cmp_lt_u64_e32 vcc, s[8:9], v[1:2]
	v_mov_b32_e32 v12, s15
	v_add_co_u32_e64 v3, s[4:5], s14, v3
	v_addc_co_u32_e64 v4, s[4:5], v12, v4, s[4:5]
	s_or_b64 s[20:21], vcc, s[20:21]
	flat_store_dword v[3:4], v11
	s_andn2_b64 exec, exec, s[20:21]
	s_cbranch_execz .LBB4_20
.LBB4_13:
	v_lshlrev_b64 v[3:4], 2, v[1:2]
	v_mov_b32_e32 v2, s17
	v_add_co_u32_e32 v11, vcc, s16, v3
	v_addc_co_u32_e32 v12, vcc, v2, v4, vcc
	flat_load_dword v2, v[11:12]
	v_mov_b32_e32 v12, s19
	v_add_co_u32_e32 v11, vcc, s18, v3
	v_addc_co_u32_e32 v12, vcc, v12, v4, vcc
	flat_load_dword v11, v[11:12]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_ngt_f32_e64 s[4:5], |v2|, |v11|
	s_and_saveexec_b64 s[6:7], s[4:5]
	s_xor_b64 s[4:5], exec, s[6:7]
	s_cbranch_execz .LBB4_15
	v_add_f32_e64 v12, |v2|, |v2|
	v_cmp_gt_f32_e64 s[22:23], v12, |v11|
	v_xor_b32_e32 v12, v11, v2
	v_ashrrev_i32_e32 v12, 30, v12
	v_or_b32_e32 v12, 1, v12
	v_cvt_f32_i32_e32 v12, v12
	v_cmp_lt_f32_e64 s[6:7], |v11|, s27
	v_mul_f32_e64 v13, |v11|, 0.5
	s_and_b64 s[6:7], s[6:7], s[22:23]
	v_cmp_gt_f32_e64 s[22:23], |v2|, v13
	v_fma_f32 v12, v11, -v12, v2
	s_or_b64 vcc, s[22:23], s[6:7]
	v_cndmask_b32_e32 v12, v2, v12, vcc
	v_bfi_b32 v13, s28, 0, v2
	v_cmp_eq_f32_e64 vcc, |v2|, |v11|
	v_cndmask_b32_e32 v12, v12, v13, vcc
.LBB4_15:
	s_andn2_saveexec_b64 s[22:23], s[4:5]
	s_cbranch_execz .LBB4_12
	v_frexp_mant_f32_e64 v12, |v2|
	v_ldexp_f32 v14, v12, 12
	v_frexp_mant_f32_e64 v12, |v11|
	v_ldexp_f32 v12, v12, 1
	v_rcp_f32_e32 v13, v12
	v_frexp_exp_i32_f32_e64 v16, |v2|
	v_frexp_exp_i32_f32_e64 v15, |v11|
	v_sub_u32_e32 v16, v16, v15
	v_cmp_lt_i32_e32 vcc, 12, v16
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz .LBB4_11
	s_mov_b64 s[6:7], 0
.LBB4_18:
	v_mul_f32_e32 v17, v13, v14
	v_rndne_f32_e32 v17, v17
	v_fma_f32 v14, -v17, v12, v14
	v_cmp_gt_f32_e32 vcc, 0, v14
	v_cndmask_b32_e32 v17, v8, v12, vcc
	v_add_f32_e32 v14, v14, v17
	v_cmp_gt_u32_e32 vcc, 25, v16
	v_ldexp_f32 v14, v14, 12
	s_or_b64 s[6:7], vcc, s[6:7]
	v_add_u32_e32 v16, -12, v16
	s_andn2_b64 exec, exec, s[6:7]
	s_cbranch_execnz .LBB4_18
	s_or_b64 exec, exec, s[6:7]
	s_branch .LBB4_11
.LBB4_20:
	s_or_b64 exec, exec, s[10:11]
.LBB4_21:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB4_5
	ds_write_b32 v5, v7
	s_branch .LBB4_5
.LBB4_23:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
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
		.amdhsa_next_free_vgpr 18
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30, .Lfunc_end4-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30

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

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11, 1

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
    .name:           __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
    .private_segment_fixed_size: 0
    .sgpr_count:     25
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14.kd
    .vgpr_count:     17
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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
    .private_segment_fixed_size: 8
    .sgpr_count:     62
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFfffEadL_Z10remainderfEEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30.kd
    .vgpr_count:     22
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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z20__ocml_remainder_f32EEJffEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30.kd
    .vgpr_count:     18
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata
