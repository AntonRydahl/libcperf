	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.p2align	2
	.type	remainder,@function
remainder:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_xor_saveexec_b64 s[4:5], -1
	buffer_store_dword v4, off, s[0:3], s32
	s_mov_b64 exec, s[4:5]
	s_mov_b32 s4, 1
	v_and_b32_e32 v6, 0x7fffffff, v1
	v_mov_b32_e32 v5, v0
	s_mov_b32 s5, 0x7ff00000
	v_writelane_b32 v4, s30, 0
	v_cmp_gt_u64_e32 vcc, s[4:5], v[5:6]
	v_writelane_b32 v4, s31, 1
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB2_84
	v_and_b32_e32 v8, 0x7fffffff, v3
	v_mov_b32_e32 v7, v2
	v_cmp_gt_u64_e32 vcc, s[4:5], v[7:8]
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execz .LBB2_83
	s_mov_b32 s4, 0
	s_mov_b32 s5, 0x7ff00000
	v_cmp_ne_u64_e32 vcc, s[4:5], v[5:6]
	v_cmp_ne_u64_e64 s[4:5], 0, v[7:8]
	s_mov_b32 s10, 1
	s_mov_b32 s11, 0x7ff80000
	v_mov_b32_e32 v9, s10
	s_and_b64 s[4:5], vcc, s[4:5]
	v_mov_b32_e32 v10, s11
	s_and_saveexec_b64 s[10:11], s[4:5]
	s_cbranch_execz .LBB2_82
	v_cmp_ne_u64_e32 vcc, 0, v[5:6]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[12:13], exec, s[4:5]
	s_cbranch_execz .LBB2_79
	s_mov_b32 s4, 0
	s_mov_b32 s5, 0x7ff00000
	v_cmp_ne_u64_e32 vcc, s[4:5], v[7:8]
	s_and_saveexec_b64 s[14:15], vcc
	s_cbranch_execz .LBB2_78
	s_mov_b32 s4, -1
	s_mov_b32 s5, 0xfffff
	v_cmp_lt_u64_e32 vcc, s[4:5], v[5:6]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	v_lshrrev_b32_e32 v5, 20, v6
	v_add_u32_e32 v15, 0xfffffc01, v5
	v_and_b32_e32 v5, 0xfffff, v1
	v_or_b32_e32 v10, 0x100000, v5
	v_mov_b32_e32 v9, v0
	s_andn2_saveexec_b64 s[4:5], s[4:5]
	s_cbranch_execz .LBB2_11
	v_and_b32_e32 v6, 0xfffff, v1
	v_mov_b32_e32 v5, v0
	v_mov_b32_e32 v10, v6
	s_mov_b32 s18, -1
	s_mov_b64 s[16:17], 0
	v_mov_b32_e32 v9, v5
.LBB2_9:
	s_add_i32 s18, s18, 1
	v_lshlrev_b64 v[12:13], 1, v[9:10]
	v_and_b32_e32 v9, 0x80000, v10
	s_cmp_gt_u32 s18, 50
	v_cmp_ne_u32_e32 vcc, 0, v9
	s_cselect_b64 s[20:21], -1, 0
	s_or_b64 s[20:21], vcc, s[20:21]
	s_and_b64 s[20:21], exec, s[20:21]
	v_mov_b32_e32 v9, v12
	v_mov_b32_e32 v11, s18
	s_or_b64 s[16:17], s[20:21], s[16:17]
	v_mov_b32_e32 v10, v13
	s_andn2_b64 exec, exec, s[16:17]
	s_cbranch_execnz .LBB2_9
	s_or_b64 exec, exec, s[16:17]
	v_add_u32_e32 v9, 1, v11
	v_lshlrev_b64 v[9:10], v9, v[5:6]
	v_sub_u32_e32 v15, 0xfffffc01, v11
.LBB2_11:
	s_or_b64 exec, exec, s[4:5]
	s_mov_b32 s4, 0
	s_mov_b32 s5, 0x7ff00000
	v_and_b32_e32 v6, 0x7ff00000, v3
	v_mov_b32_e32 v5, 0
	v_cmp_ne_u64_e32 vcc, s[4:5], v[5:6]
	v_mov_b32_e32 v11, 0
	s_mov_b64 s[16:17], 0
	v_mov_b32_e32 v12, 0
	v_mov_b32_e32 v20, 0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz .LBB2_19
	v_lshrrev_b32_e32 v6, 20, v3
	v_and_b32_e32 v6, 0x7ff, v6
	v_cmp_ne_u16_e32 vcc, 0, v6
	s_and_saveexec_b64 s[18:19], vcc
	s_xor_b64 s[18:19], exec, s[18:19]
	s_movk_i32 s20, 0xfc01
	v_add_u32_sdwa v20, v6, s20 dst_sel:DWORD dst_unused:UNUSED_PAD src0_sel:WORD_0 src1_sel:DWORD
	v_and_b32_e32 v6, 0xfffff, v3
	v_or_b32_e32 v12, 0x100000, v6
	v_mov_b32_e32 v11, v2
	s_andn2_saveexec_b64 s[18:19], s[18:19]
	s_cbranch_execz .LBB2_18
	v_and_b32_e32 v12, 0xfffff, v3
	v_mov_b32_e32 v11, v2
	v_mov_b32_e32 v14, v12
	s_mov_b32 s22, -1
	s_mov_b64 s[20:21], 0
	v_mov_b32_e32 v13, v11
.LBB2_16:
	s_add_i32 s22, s22, 1
	v_and_b32_e32 v6, 0x80000, v14
	s_cmp_gt_u32 s22, 50
	v_lshlrev_b64 v[16:17], 1, v[13:14]
	v_cmp_ne_u32_e32 vcc, 0, v6
	s_cselect_b64 s[24:25], -1, 0
	s_or_b64 s[24:25], vcc, s[24:25]
	s_and_b64 s[24:25], exec, s[24:25]
	v_mov_b32_e32 v13, v16
	v_mov_b32_e32 v6, s22
	s_or_b64 s[20:21], s[24:25], s[20:21]
	v_mov_b32_e32 v14, v17
	s_andn2_b64 exec, exec, s[20:21]
	s_cbranch_execnz .LBB2_16
	s_or_b64 exec, exec, s[20:21]
	v_add_u32_e32 v13, 1, v6
	v_lshlrev_b64 v[11:12], v13, v[11:12]
	v_sub_u32_e32 v20, 0xfffffc01, v6
.LBB2_18:
	s_or_b64 exec, exec, s[18:19]
.LBB2_19:
	s_or_b64 exec, exec, s[4:5]
	v_xor_b32_e32 v3, v3, v1
	v_xor_b32_e32 v2, v2, v0
	v_cmp_gt_i64_e32 vcc, 0, v[2:3]
	v_sub_u32_e32 v13, v15, v20
	v_and_b32_e32 v6, 0x80000000, v1
	v_mov_b32_e32 v19, v5
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
	v_cmp_lt_i32_e64 s[4:5], -1, v13
	s_or_b64 s[22:23], s[22:23], exec
	s_or_b64 s[20:21], s[20:21], exec
	s_and_saveexec_b64 s[24:25], s[4:5]
	s_cbranch_execz .LBB2_21
	v_cmp_lt_u64_e64 s[4:5], v[9:10], v[11:12]
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v15, 0
	v_mov_b32_e32 v3, v10
	s_and_saveexec_b64 s[26:27], s[4:5]
	s_cbranch_execz .LBB2_27
	v_mov_b32_e32 v2, v9
	s_mov_b32 s30, 0
	s_mov_b64 s[28:29], 0
	v_mov_b32_e32 v3, v10
.LBB2_25:
	v_lshlrev_b64 v[2:3], 1, v[2:3]
	s_add_i32 s30, s30, 1
	v_cmp_ge_u64_e64 s[4:5], v[2:3], v[11:12]
	v_mov_b32_e32 v15, s30
	s_or_b64 s[28:29], s[4:5], s[28:29]
	s_andn2_b64 exec, exec, s[28:29]
	s_cbranch_execnz .LBB2_25
	s_or_b64 exec, exec, s[28:29]
.LBB2_27:
	s_or_b64 exec, exec, s[26:27]
	v_cmp_ge_i32_e64 s[4:5], v13, v15
	v_mov_b32_e32 v14, 3
	s_and_saveexec_b64 s[26:27], s[4:5]
	s_cbranch_execz .LBB2_31
	v_sub_u32_e32 v13, v13, v15
	v_lshlrev_b32_e64 v9, v13, 1
	v_cmp_gt_u32_e64 s[4:5], 3, v13
	v_cndmask_b32_e64 v15, 0, v9, s[4:5]
	v_sub_co_u32_e64 v9, s[4:5], v2, v11
	v_subb_co_u32_e64 v10, s[4:5], v3, v12, s[4:5]
	v_cmp_eq_u64_e64 s[4:5], 0, v[9:10]
	v_mov_b32_e32 v14, 0
	v_or_b32_e32 v19, v15, v19
	s_and_saveexec_b64 s[28:29], s[4:5]
	v_sub_u32_e32 v2, 0, v19
	v_mov_b32_e32 v9, 0
	v_cndmask_b32_e32 v19, v19, v2, vcc
	v_mov_b32_e32 v10, 0
	v_mov_b32_e32 v14, 1
	s_or_b64 exec, exec, s[28:29]
.LBB2_31:
	s_or_b64 exec, exec, s[26:27]
	v_cmp_gt_i32_e64 s[4:5], 3, v14
	s_mov_b64 s[26:27], -1
	s_mov_b64 s[28:29], -1
	s_and_saveexec_b64 s[30:31], s[4:5]
	s_cbranch_execz .LBB2_20
	v_cmp_ne_u32_e64 s[4:5], 0, v14
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
	s_mov_b32 s19, 0x100000
	s_mov_b32 s18, 0
	v_cmp_gt_u64_e32 vcc, s[18:19], v[9:10]
	v_add_u32_e32 v5, v13, v20
	s_and_saveexec_b64 s[16:17], vcc
	s_cbranch_execz .LBB2_40
	v_mov_b32_e32 v2, v9
	s_mov_b64 s[20:21], 0
	v_mov_b32_e32 v3, v10
.LBB2_38:
	s_add_i32 s19, s18, 1
	v_lshlrev_b64 v[14:15], 1, v[2:3]
	v_and_b32_e32 v2, 0x80000, v3
	s_cmp_gt_u32 s18, 50
	v_cmp_ne_u32_e32 vcc, 0, v2
	s_cselect_b64 s[22:23], -1, 0
	s_or_b64 s[22:23], vcc, s[22:23]
	s_and_b64 s[22:23], exec, s[22:23]
	v_mov_b32_e32 v2, v14
	v_mov_b32_e32 v13, s19
	s_mov_b32 s18, s19
	s_or_b64 s[20:21], s[22:23], s[20:21]
	v_mov_b32_e32 v3, v15
	s_andn2_b64 exec, exec, s[20:21]
	s_cbranch_execnz .LBB2_38
	s_or_b64 exec, exec, s[20:21]
	v_lshlrev_b64 v[9:10], v13, v[9:10]
	v_sub_u32_e32 v5, v5, v13
.LBB2_40:
	s_or_b64 exec, exec, s[16:17]
	s_movk_i32 s16, 0x400
	v_cmp_gt_i32_e32 vcc, s16, v5
	s_mov_b32 s16, 0
	s_mov_b32 s17, 0x7ff00000
	v_mov_b32_e32 v2, s16
	v_mov_b32_e32 v3, s17
	s_and_saveexec_b64 s[16:17], vcc
	s_cbranch_execz .LBB2_52
	s_movk_i32 s18, 0xfc01
	v_cmp_lt_i32_e32 vcc, s18, v5
	s_and_saveexec_b64 s[18:19], vcc
	s_xor_b64 s[18:19], exec, s[18:19]
	v_mov_b32_e32 v2, 0x3ff00000
	v_lshl_add_u32 v2, v5, 20, v2
	v_and_b32_e32 v3, 0xfffff, v10
	v_or_b32_e32 v3, v2, v3
	v_mov_b32_e32 v2, v9
	s_andn2_saveexec_b64 s[18:19], s[18:19]
	s_cbranch_execz .LBB2_51
	s_movk_i32 s20, 0xfbcc
	v_mov_b32_e32 v2, 0
	v_mov_b32_e32 v3, 0
	v_cmp_lt_u32_e32 vcc, s20, v5
	s_and_saveexec_b64 s[20:21], vcc
	s_cbranch_execz .LBB2_50
	v_sub_u32_e32 v13, 0xfffffc02, v5
	v_lshlrev_b64 v[2:3], v13, -1
	v_lshrrev_b64 v[13:14], v13, v[9:10]
	v_not_b32_e32 v2, v2
	v_and_b32_e32 v15, v9, v2
	v_sub_u32_e32 v2, 0xfffffc01, v5
	v_not_b32_e32 v3, v3
	v_lshlrev_b64 v[17:18], v2, 1
	v_and_b32_e32 v16, v10, v3
	v_cmp_le_u64_e32 vcc, v[15:16], v[17:18]
	v_and_b32_e32 v14, 0xfffff, v14
	s_and_saveexec_b64 s[22:23], vcc
	s_xor_b64 s[22:23], exec, s[22:23]
	v_cmp_eq_u64_e32 vcc, v[15:16], v[17:18]
	v_and_b32_e32 v2, 1, v13
	v_cndmask_b32_e32 v2, 0, v2, vcc
	v_add_co_u32_e32 v2, vcc, v2, v13
	v_addc_co_u32_e32 v3, vcc, 0, v14, vcc
	s_andn2_saveexec_b64 s[22:23], s[22:23]
	v_add_co_u32_e32 v2, vcc, 1, v13
	v_addc_co_u32_e32 v3, vcc, 0, v14, vcc
	s_or_b64 exec, exec, s[22:23]
	s_mov_b32 s22, 0
	s_mov_b32 s23, 0x100000
	v_and_b32_e32 v13, 0xfffff, v3
	v_cmp_eq_u64_e32 vcc, s[22:23], v[2:3]
	v_or_b32_e32 v14, 0x100000, v13
	v_cndmask_b32_e32 v3, v13, v14, vcc
.LBB2_50:
	s_or_b64 exec, exec, s[20:21]
.LBB2_51:
	s_or_b64 exec, exec, s[18:19]
.LBB2_52:
	s_or_b64 exec, exec, s[16:17]
	v_cmp_lt_i32_e32 vcc, v5, v20
	v_mov_b32_e32 v13, 1
	s_and_saveexec_b64 s[16:17], vcc
	v_cmp_ne_u64_e32 vcc, v[9:10], v[11:12]
	v_add_u32_e32 v5, 1, v5
	v_cndmask_b32_e64 v13, 0, -1, vcc
	v_cmp_le_u64_e32 vcc, v[9:10], v[11:12]
	v_cndmask_b32_e32 v9, 1, v13, vcc
	v_cmp_eq_u32_e32 vcc, v5, v20
	v_cndmask_b32_e32 v13, -1, v9, vcc
	s_or_b64 exec, exec, s[16:17]
	v_cmp_gt_i32_e32 vcc, 1, v13
	s_and_saveexec_b64 s[16:17], vcc
	s_xor_b64 s[16:17], exec, s[16:17]
	s_cbranch_execz .LBB2_70
	v_cmp_ne_u32_e32 vcc, 0, v13
	s_and_saveexec_b64 s[18:19], vcc
	s_xor_b64 s[18:19], exec, s[18:19]
	s_cbranch_execz .LBB2_59
	v_cmp_gt_f64_e32 vcc, 0, v[0:1]
	s_and_saveexec_b64 s[20:21], vcc
	v_xor_b32_e32 v3, 0x80000000, v3
	s_or_b64 exec, exec, s[20:21]
.LBB2_59:
	s_andn2_saveexec_b64 s[18:19], s[18:19]
	s_cbranch_execz .LBB2_69
	v_and_b32_e32 v5, 1, v19
	v_cmp_eq_u32_e32 vcc, 1, v5
	s_and_saveexec_b64 s[20:21], vcc
	s_xor_b64 s[20:21], exec, s[20:21]
	s_cbranch_execz .LBB2_64
	v_cmp_le_f64_e32 vcc, 0, v[0:1]
	s_and_saveexec_b64 s[22:23], vcc
	v_xor_b32_e32 v3, 0x80000000, v3
	s_or_b64 exec, exec, s[22:23]
.LBB2_64:
	s_andn2_saveexec_b64 s[20:21], s[20:21]
	s_cbranch_execz .LBB2_68
	v_cmp_gt_f64_e32 vcc, 0, v[0:1]
	s_and_saveexec_b64 s[22:23], vcc
	v_xor_b32_e32 v3, 0x80000000, v3
	s_or_b64 exec, exec, s[22:23]
.LBB2_68:
	s_or_b64 exec, exec, s[20:21]
.LBB2_69:
	s_or_b64 exec, exec, s[18:19]
.LBB2_70:
	s_andn2_saveexec_b64 s[16:17], s[16:17]
	s_cbranch_execz .LBB2_76
	v_cmp_le_f64_e32 vcc, 0, v[0:1]
	s_and_saveexec_b64 s[18:19], vcc
	s_xor_b64 s[18:19], exec, s[18:19]
	v_add_f64 v[2:3], v[2:3], -v[7:8]
	s_andn2_saveexec_b64 s[18:19], s[18:19]
	v_add_f64 v[2:3], v[7:8], -v[2:3]
	s_or_b64 exec, exec, s[18:19]
.LBB2_76:
	s_or_b64 exec, exec, s[16:17]
	v_cmp_eq_f64_e32 vcc, 0, v[2:3]
	v_cndmask_b32_e32 v6, v3, v6, vcc
	v_cndmask_b32_e64 v5, v2, 0, vcc
.LBB2_77:
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v0, v5
	v_mov_b32_e32 v1, v6
.LBB2_78:
	s_or_b64 exec, exec, s[14:15]
.LBB2_79:
	s_andn2_saveexec_b64 s[4:5], s[12:13]
	v_and_b32_e32 v1, 0x80000000, v1
	v_mov_b32_e32 v0, 0
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v10, v1
	v_mov_b32_e32 v9, v0
.LBB2_82:
	s_or_b64 exec, exec, s[10:11]
	v_mov_b32_e32 v2, v9
	v_mov_b32_e32 v3, v10
.LBB2_83:
	s_or_b64 exec, exec, s[8:9]
	v_mov_b32_e32 v0, v2
	v_mov_b32_e32 v1, v3
.LBB2_84:
	s_or_b64 exec, exec, s[6:7]
	v_readlane_b32 s31, v4, 1
	v_readlane_b32 s30, v4, 0
	s_xor_saveexec_b64 s[4:5], -1
	buffer_load_dword v4, off, s[0:3], s32
	s_mov_b64 exec, s[4:5]
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[30:31]
.Lfunc_end0:
	.size	remainder, .Lfunc_end0-remainder

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

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30:
	s_add_u32 flat_scratch_lo, s8, s11
	s_addc_u32 flat_scratch_hi, s9, 0
	s_add_u32 s0, s0, s11
	v_mov_b32_e32 v21, v0
	s_addc_u32 s1, s1, 0
	v_cmp_eq_u32_e64 s[34:35], 0, v21
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
	v_mov_b32_e32 v24, 0
	v_cmp_ne_u32_e64 s[36:37], 1, v0
	v_mov_b32_e32 v25, 1
	s_getpc_b64 s[48:49]
	s_add_u32 s48, s48, remainder@rel32@lo+4
	s_addc_u32 s49, s49, remainder@rel32@hi+12
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
	ds_write_b32 v24, v0
.LBB3_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[36:37]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB3_13
	v_add_u32_e32 v22, s41, v21
	v_ashrrev_i32_e32 v23, 31, v22
	v_cmp_ge_u64_e32 vcc, s[38:39], v[22:23]
	s_and_saveexec_b64 s[50:51], vcc
	s_cbranch_execz .LBB3_12
	ds_read_b32 v26, v24
	s_mov_b64 s[52:53], 0
.LBB3_11:
	v_lshlrev_b64 v[27:28], 3, v[22:23]
	v_mov_b32_e32 v1, s45
	v_add_co_u32_e32 v0, vcc, s44, v27
	v_addc_co_u32_e32 v1, vcc, v1, v28, vcc
	v_mov_b32_e32 v3, s47
	v_add_co_u32_e32 v2, vcc, s46, v27
	v_addc_co_u32_e32 v3, vcc, v3, v28, vcc
	flat_load_dwordx2 v[0:1], v[0:1]
	s_nop 0
	flat_load_dwordx2 v[2:3], v[2:3]
	s_swappc_b64 s[30:31], s[48:49]
	v_add_u32_e32 v22, v26, v22
	v_ashrrev_i32_e32 v23, 31, v22
	v_cmp_lt_u64_e32 vcc, s[38:39], v[22:23]
	v_mov_b32_e32 v3, s43
	v_add_co_u32_e64 v2, s[4:5], s42, v27
	v_addc_co_u32_e64 v3, s[4:5], v3, v28, s[4:5]
	s_or_b64 s[52:53], vcc, s[52:53]
	flat_store_dwordx2 v[2:3], v[0:1]
	s_andn2_b64 exec, exec, s[52:53]
	s_cbranch_execnz .LBB3_11
.LBB3_12:
	s_or_b64 exec, exec, s[50:51]
.LBB3_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[34:35]
	s_cbranch_execz .LBB3_5
	ds_write_b32 v24, v25
	s_branch .LBB3_5
.LBB3_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
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
		.amdhsa_next_free_vgpr 29
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30, .Lfunc_end3-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30:
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
	s_mul_i32 s28, s8, s13
	s_cmp_ge_i32 s28, s12
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
	s_sub_i32 s29, s3, s2
	s_add_i32 s2, s13, s28
	s_add_i32 s30, s12, -1
	s_add_i32 s2, s2, -1
	s_min_i32 s20, s2, s30
	s_cmp_gt_i32 s12, 0
	s_cselect_b64 s[2:3], -1, 0
	s_mov_b32 s10, 0
	v_cndmask_b32_e64 v1, 0, 1, s[2:3]
	s_mov_b32 s11, 0x7fe00000
	v_mov_b32_e32 v15, 0
	v_cmp_ne_u32_e64 s[2:3], 1, v1
	v_mov_b32_e32 v16, 0x1f8
	v_mov_b32_e32 v17, 1
	v_bfrev_b32_e32 v18, 1
	v_mov_b32_e32 v19, 0x7ff80000
	s_branch .LBB4_6
.LBB4_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s20, s29
	s_add_i32 s28, s28, s29
	s_min_i32 s20, s4, s30
	s_cmp_lt_i32 s28, s12
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB4_23
.LBB4_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB4_8
	v_mov_b32_e32 v1, s13
	ds_write_b32 v15, v1
.LBB4_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB4_21
	v_add_u32_e32 v1, s28, v0
	s_mov_b32 s21, s10
	v_ashrrev_i32_e32 v2, 31, v1
	v_cmp_ge_u64_e32 vcc, s[20:21], v[1:2]
	s_and_saveexec_b64 s[22:23], vcc
	s_cbranch_execz .LBB4_20
	ds_read_b32 v20, v15
	s_mov_b64 s[24:25], 0
	s_branch .LBB4_13
.LBB4_11:
	s_or_b64 exec, exec, s[4:5]
	v_subrev_u32_e32 v21, 25, v21
	v_ldexp_f64 v[13:14], v[13:14], v21
	v_add_u32_e32 v2, -1, v2
	v_mul_f64 v[11:12], v[11:12], v[13:14]
	v_rndne_f64_e32 v[11:12], v[11:12]
	v_fma_f64 v[13:14], -v[11:12], v[9:10], v[13:14]
	v_cvt_i32_f64_e32 v11, v[11:12]
	v_and_b32_e32 v11, 1, v11
	v_cmp_eq_u32_e64 s[8:9], 1, v11
	v_cmp_gt_f64_e32 vcc, 0, v[13:14]
	v_cndmask_b32_e32 v22, v18, v10, vcc
	v_cndmask_b32_e32 v21, 0, v9, vcc
	v_add_f64 v[13:14], v[13:14], v[21:22]
	s_xor_b64 s[8:9], vcc, s[8:9]
	v_add_f64 v[21:22], v[13:14], v[13:14]
	v_cmp_eq_f64_e64 s[4:5], v[21:22], v[9:10]
	v_cmp_gt_f64_e64 s[6:7], v[21:22], v[9:10]
	s_and_b64 s[4:5], s[8:9], s[4:5]
	s_or_b64 vcc, s[6:7], s[4:5]
	v_cndmask_b32_e32 v10, 0, v10, vcc
	v_cndmask_b32_e32 v9, 0, v9, vcc
	v_add_f64 v[9:10], v[13:14], -v[9:10]
	v_ldexp_f64 v[9:10], v[9:10], v2
	v_and_b32_e32 v2, 0x80000000, v6
	v_xor_b32_e32 v10, v2, v10
.LBB4_12:
	s_or_b64 exec, exec, s[26:27]
	v_cmp_o_f64_e32 vcc, v[7:8], v[7:8]
	v_cmp_class_f64_e64 s[4:5], v[5:6], v16
	v_cmp_neq_f64_e64 s[6:7], 0, v[7:8]
	v_add_u32_e32 v1, v20, v1
	v_ashrrev_i32_e32 v2, 31, v1
	v_cmp_lt_u64_e64 s[8:9], s[20:21], v[1:2]
	v_mov_b32_e32 v7, s15
	s_and_b64 s[4:5], s[4:5], vcc
	s_and_b64 vcc, s[4:5], s[6:7]
	v_cndmask_b32_e32 v6, v19, v10, vcc
	v_cndmask_b32_e32 v5, 0, v9, vcc
	v_add_co_u32_e32 v3, vcc, s14, v3
	v_addc_co_u32_e32 v4, vcc, v7, v4, vcc
	s_or_b64 s[24:25], s[8:9], s[24:25]
	flat_store_dwordx2 v[3:4], v[5:6]
	s_andn2_b64 exec, exec, s[24:25]
	s_cbranch_execz .LBB4_20
.LBB4_13:
	v_lshlrev_b64 v[3:4], 3, v[1:2]
	v_mov_b32_e32 v2, s17
	v_add_co_u32_e32 v5, vcc, s16, v3
	v_addc_co_u32_e32 v6, vcc, v2, v4, vcc
	v_mov_b32_e32 v2, s19
	v_add_co_u32_e32 v7, vcc, s18, v3
	v_addc_co_u32_e32 v8, vcc, v2, v4, vcc
	flat_load_dwordx2 v[5:6], v[5:6]
	s_nop 0
	flat_load_dwordx2 v[7:8], v[7:8]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_ngt_f64_e64 s[4:5], |v[5:6]|, |v[7:8]|
	s_and_saveexec_b64 s[6:7], s[4:5]
	s_xor_b64 s[4:5], exec, s[6:7]
	s_cbranch_execz .LBB4_15
	v_add_f64 v[9:10], |v[5:6]|, |v[5:6]|
	v_mul_f64 v[11:12], |v[7:8]|, 0.5
	v_xor_b32_e32 v2, v8, v6
	v_ashrrev_i32_e32 v2, 30, v2
	v_or_b32_e32 v2, 1, v2
	v_cvt_f64_i32_e32 v[13:14], v2
	v_cmp_lt_f64_e64 s[6:7], |v[7:8]|, s[10:11]
	v_and_b32_e32 v2, 0x80000000, v6
	v_cmp_gt_f64_e64 s[8:9], v[9:10], |v[7:8]|
	v_cmp_gt_f64_e64 s[26:27], |v[5:6]|, v[11:12]
	v_fma_f64 v[9:10], v[7:8], -v[13:14], v[5:6]
	s_and_b64 s[6:7], s[6:7], s[8:9]
	s_or_b64 vcc, s[6:7], s[26:27]
	v_cndmask_b32_e32 v9, v5, v9, vcc
	v_cndmask_b32_e32 v10, v6, v10, vcc
	v_cmp_eq_f64_e64 vcc, |v[5:6]|, |v[7:8]|
	v_cndmask_b32_e32 v10, v10, v2, vcc
	v_cndmask_b32_e64 v9, v9, 0, vcc
.LBB4_15:
	s_andn2_saveexec_b64 s[26:27], s[4:5]
	s_cbranch_execz .LBB4_12
	v_frexp_mant_f64_e64 v[9:10], |v[7:8]|
	v_frexp_exp_i32_f64_e64 v2, |v[7:8]|
	v_ldexp_f64 v[9:10], v[9:10], 1
	v_div_scale_f64 v[11:12], s[4:5], v[9:10], v[9:10], 1.0
	v_div_scale_f64 v[23:24], vcc, 1.0, v[9:10], 1.0
	v_rcp_f64_e32 v[13:14], v[11:12]
	v_fma_f64 v[21:22], -v[11:12], v[13:14], 1.0
	v_fma_f64 v[13:14], v[13:14], v[21:22], v[13:14]
	v_fma_f64 v[21:22], -v[11:12], v[13:14], 1.0
	v_fma_f64 v[13:14], v[13:14], v[21:22], v[13:14]
	v_mul_f64 v[21:22], v[23:24], v[13:14]
	v_fma_f64 v[11:12], -v[11:12], v[21:22], v[23:24]
	v_div_fmas_f64 v[11:12], v[11:12], v[13:14], v[21:22]
	v_frexp_mant_f64_e64 v[13:14], |v[5:6]|
	v_frexp_exp_i32_f64_e64 v21, |v[5:6]|
	v_ldexp_f64 v[13:14], v[13:14], 26
	v_sub_u32_e32 v21, v21, v2
	v_cmp_lt_i32_e32 vcc, 26, v21
	v_div_fixup_f64 v[11:12], v[11:12], v[9:10], 1.0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz .LBB4_11
	s_mov_b64 s[6:7], 0
.LBB4_18:
	v_mul_f64 v[22:23], v[11:12], v[13:14]
	v_rndne_f64_e32 v[22:23], v[22:23]
	v_fma_f64 v[13:14], -v[22:23], v[9:10], v[13:14]
	v_cmp_gt_f64_e32 vcc, 0, v[13:14]
	v_cndmask_b32_e32 v23, v18, v10, vcc
	v_cndmask_b32_e32 v22, 0, v9, vcc
	v_add_f64 v[13:14], v[13:14], v[22:23]
	v_cmp_gt_u32_e32 vcc, 53, v21
	s_or_b64 s[6:7], vcc, s[6:7]
	v_subrev_u32_e32 v21, 26, v21
	v_ldexp_f64 v[13:14], v[13:14], 26
	s_andn2_b64 exec, exec, s[6:7]
	s_cbranch_execnz .LBB4_18
	s_or_b64 exec, exec, s[6:7]
	s_branch .LBB4_11
.LBB4_20:
	s_or_b64 exec, exec, s[22:23]
.LBB4_21:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB4_5
	ds_write_b32 v15, v17
	s_branch .LBB4_5
.LBB4_23:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
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
		.amdhsa_next_free_vgpr 25
		.amdhsa_next_free_sgpr 31
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30, .Lfunc_end4-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30

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

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11, 1

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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
    .private_segment_fixed_size: 8
    .sgpr_count:     62
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z9remainderEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30.kd
    .vgpr_count:     29
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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
    .private_segment_fixed_size: 0
    .sgpr_count:     35
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z20__ocml_remainder_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30.kd
    .vgpr_count:     25
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata
