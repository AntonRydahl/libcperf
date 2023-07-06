	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.p2align	2
	.type	fmod.internalized,@function
fmod.internalized:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, 0
	v_mov_b32_e32 v10, 0
	s_mov_b32 s11, 0x7ff00000
	v_and_b32_e32 v11, 0x7ff00000, v3
	v_and_b32_e32 v13, 0x7ff00000, v1
	v_mov_b32_e32 v12, v10
	v_and_b32_e32 v7, 0x7fffffff, v3
	v_mov_b32_e32 v6, v2
	v_cmp_ne_u64_e64 s[4:5], s[10:11], v[10:11]
	v_cmp_ne_u64_e64 s[6:7], s[10:11], v[12:13]
	v_cmp_ne_u64_e64 s[8:9], 0, v[6:7]
	s_and_b64 s[4:5], s[6:7], s[4:5]
	v_cmp_eq_u64_e32 vcc, 0, v[6:7]
	s_and_b64 s[12:13], s[4:5], s[8:9]
	s_xor_b64 s[4:5], s[12:13], -1
	s_and_saveexec_b64 s[14:15], s[4:5]
	s_cbranch_execnz .LBB3_3
	s_or_b64 exec, exec, s[14:15]
	s_and_saveexec_b64 s[10:11], s[12:13]
	s_cbranch_execnz .LBB3_4
.LBB3_2:
	s_or_b64 exec, exec, s[10:11]
	v_mov_b32_e32 v0, v4
	v_mov_b32_e32 v1, v5
	s_setpc_b64 s[30:31]
.LBB3_3:
	v_and_b32_e32 v5, 0x7fffffff, v1
	v_mov_b32_e32 v4, v0
	v_cmp_lt_u64_e64 s[4:5], s[10:11], v[4:5]
	v_cmp_lt_u64_e64 s[6:7], s[10:11], v[6:7]
	v_cmp_eq_u64_e64 s[8:9], s[10:11], v[4:5]
	s_or_b64 s[4:5], s[4:5], s[6:7]
	s_or_b64 s[6:7], s[8:9], vcc
	v_mov_b32_e32 v4, 0x7ff80000
	s_or_b64 vcc, s[4:5], s[6:7]
	v_cndmask_b32_e32 v5, v1, v4, vcc
	v_cndmask_b32_e64 v4, v0, 0, vcc
	s_or_b64 exec, exec, s[14:15]
	s_and_saveexec_b64 s[10:11], s[12:13]
	s_cbranch_execz .LBB3_2
.LBB3_4:
	v_and_b32_e32 v9, 0x7fffffff, v1
	v_mov_b32_e32 v8, v0
	v_cmp_le_u64_e32 vcc, v[8:9], v[6:7]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	v_cmp_lt_u64_e32 vcc, v[8:9], v[6:7]
	v_cndmask_b32_e32 v5, 0, v9, vcc
	v_cndmask_b32_e32 v4, 0, v8, vcc
	s_andn2_saveexec_b64 s[12:13], s[4:5]
	s_cbranch_execz .LBB3_64
	v_lshrrev_b32_e32 v15, 20, v9
	v_lshrrev_b32_e32 v14, 20, v7
	v_sub_u32_e32 v16, v15, v14
	v_cmp_gt_u16_e32 vcc, 53, v14
	v_cmp_lt_i32_e64 s[4:5], 11, v16
	s_or_b64 s[4:5], vcc, s[4:5]
	s_and_saveexec_b64 s[6:7], s[4:5]
	s_xor_b64 s[14:15], exec, s[6:7]
	s_cbranch_execz .LBB3_46
	v_or_b32_e32 v4, v14, v15
	v_cmp_ne_u16_e32 vcc, 0, v4
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[16:17], exec, s[4:5]
	s_cbranch_execz .LBB3_40
	v_cmp_ne_u64_e32 vcc, 0, v[12:13]
	v_cmp_eq_u16_e64 s[4:5], 0, v14
	v_cndmask_b32_e64 v4, 0, 1, vcc
	v_cmp_eq_u64_e32 vcc, 0, v[10:11]
	v_add_u32_e32 v6, -1, v14
	v_mov_b32_e32 v7, 0x100000
	s_or_b64 s[6:7], vcc, s[4:5]
	v_and_b32_e32 v3, 0xfffff, v3
	v_cndmask_b32_e64 v13, v6, 0, s[4:5]
	v_cndmask_b32_e64 v6, v7, 0, s[6:7]
	v_or_b32_e32 v7, v6, v3
	v_ffbl_b32_e32 v8, v7
	v_add_u32_e32 v8, 32, v8
	v_ffbl_b32_e32 v9, v2
	v_min_u32_e32 v10, v9, v8
	v_xad_u32 v8, v13, -1, v15
	v_min_i32_e32 v14, v8, v10
	v_lshlrev_b32_e32 v4, 20, v4
	v_and_b32_e32 v5, 0xfffff, v1
	v_sub_u32_e32 v11, v8, v14
	v_or_b32_e32 v5, v4, v5
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v6, v2
	v_min_i32_e32 v12, 11, v11
	v_lshrrev_b64 v[6:7], v14, v[6:7]
	v_lshlrev_b64 v[4:5], v12, v[4:5]
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, v5, v7
	v_cmp_ne_u64_e32 vcc, 0, v[8:9]
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[18:19], exec, s[6:7]
	s_cbranch_execz .LBB3_11
	v_cvt_f32_u32_e32 v8, v6
	v_cvt_f32_u32_e32 v9, v7
	v_sub_co_u32_e32 v19, vcc, 0, v6
	v_subb_co_u32_e32 v20, vcc, 0, v7, vcc
	v_mac_f32_e32 v8, 0x4f800000, v9
	v_rcp_f32_e32 v8, v8
	v_mul_f32_e32 v8, 0x5f7ffffc, v8
	v_mul_f32_e32 v9, 0x2f800000, v8
	v_trunc_f32_e32 v9, v9
	v_mac_f32_e32 v8, 0xcf800000, v9
	v_cvt_u32_f32_e32 v17, v9
	v_cvt_u32_f32_e32 v18, v8
	v_mul_lo_u32 v15, v19, v17
	v_mul_lo_u32 v16, v20, v18
	v_mad_u64_u32 v[8:9], s[6:7], v19, v18, 0
	v_add3_u32 v21, v9, v15, v16
	v_mul_hi_u32 v9, v18, v8
	v_mad_u64_u32 v[15:16], s[6:7], v18, v21, 0
	v_add_co_u32_e32 v22, vcc, v9, v15
	v_mad_u64_u32 v[8:9], s[6:7], v17, v8, 0
	v_addc_co_u32_e32 v23, vcc, 0, v16, vcc
	v_mad_u64_u32 v[15:16], s[6:7], v17, v21, 0
	v_add_co_u32_e32 v8, vcc, v22, v8
	v_addc_co_u32_e32 v8, vcc, v23, v9, vcc
	v_addc_co_u32_e32 v9, vcc, 0, v16, vcc
	v_add_co_u32_e32 v8, vcc, v8, v15
	v_addc_co_u32_e32 v9, vcc, 0, v9, vcc
	v_add_co_u32_e32 v21, vcc, v18, v8
	v_addc_co_u32_e32 v22, vcc, v17, v9, vcc
	v_mul_lo_u32 v15, v19, v22
	v_mul_lo_u32 v16, v20, v21
	v_mad_u64_u32 v[8:9], s[6:7], v19, v21, 0
	v_add3_u32 v9, v9, v15, v16
	v_mad_u64_u32 v[17:18], s[6:7], v21, v9, 0
	v_mul_hi_u32 v19, v21, v8
	v_mad_u64_u32 v[15:16], s[6:7], v22, v9, 0
	v_mad_u64_u32 v[8:9], s[6:7], v22, v8, 0
	v_add_co_u32_e32 v17, vcc, v19, v17
	v_addc_co_u32_e32 v18, vcc, 0, v18, vcc
	v_add_co_u32_e32 v8, vcc, v17, v8
	v_addc_co_u32_e32 v8, vcc, v18, v9, vcc
	v_addc_co_u32_e32 v9, vcc, 0, v16, vcc
	v_add_co_u32_e32 v8, vcc, v8, v15
	v_addc_co_u32_e32 v9, vcc, 0, v9, vcc
	v_add_co_u32_e32 v15, vcc, v21, v8
	v_addc_co_u32_e32 v16, vcc, v22, v9, vcc
	v_mad_u64_u32 v[8:9], s[6:7], v4, v16, 0
	v_mul_hi_u32 v17, v4, v15
	v_add_co_u32_e32 v17, vcc, v17, v8
	v_addc_co_u32_e32 v18, vcc, 0, v9, vcc
	v_mad_u64_u32 v[8:9], s[6:7], v5, v15, 0
	v_mad_u64_u32 v[15:16], s[6:7], v5, v16, 0
	v_add_co_u32_e32 v8, vcc, v17, v8
	v_addc_co_u32_e32 v8, vcc, v18, v9, vcc
	v_addc_co_u32_e32 v9, vcc, 0, v16, vcc
	v_add_co_u32_e32 v8, vcc, v8, v15
	v_addc_co_u32_e32 v9, vcc, 0, v9, vcc
	v_mul_lo_u32 v15, v7, v8
	v_mul_lo_u32 v16, v6, v9
	v_mad_u64_u32 v[8:9], s[6:7], v6, v8, 0
	v_add3_u32 v9, v9, v16, v15
	v_sub_u32_e32 v15, v5, v9
	v_sub_co_u32_e32 v4, vcc, v4, v8
	v_subb_co_u32_e64 v8, s[6:7], v15, v7, vcc
	v_sub_co_u32_e64 v15, s[6:7], v4, v6
	v_subbrev_co_u32_e64 v16, s[8:9], 0, v8, s[6:7]
	v_cmp_ge_u32_e64 s[8:9], v16, v7
	v_cndmask_b32_e64 v17, 0, -1, s[8:9]
	v_cmp_ge_u32_e64 s[8:9], v15, v6
	v_cndmask_b32_e64 v18, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], v16, v7
	v_subb_co_u32_e64 v8, s[6:7], v8, v7, s[6:7]
	v_cndmask_b32_e64 v17, v17, v18, s[8:9]
	v_sub_co_u32_e64 v18, s[6:7], v15, v6
	v_subb_co_u32_e32 v5, vcc, v5, v9, vcc
	v_subbrev_co_u32_e64 v8, s[6:7], 0, v8, s[6:7]
	v_cmp_ge_u32_e32 vcc, v5, v7
	v_cmp_ne_u32_e64 s[6:7], 0, v17
	v_cndmask_b32_e64 v9, 0, -1, vcc
	v_cmp_ge_u32_e32 vcc, v4, v6
	v_cndmask_b32_e64 v8, v16, v8, s[6:7]
	v_cndmask_b32_e64 v16, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, v5, v7
	v_cndmask_b32_e32 v9, v9, v16, vcc
	v_cmp_ne_u32_e32 vcc, 0, v9
	v_cndmask_b32_e32 v9, v5, v8, vcc
	v_cndmask_b32_e64 v5, v15, v18, s[6:7]
	v_cndmask_b32_e32 v8, v4, v5, vcc
.LBB3_11:
	s_andn2_saveexec_b64 s[6:7], s[18:19]
	s_cbranch_execz .LBB3_13
	v_cvt_f32_u32_e32 v5, v6
	v_sub_u32_e32 v8, 0, v6
	v_mov_b32_e32 v9, 0
	v_rcp_iflag_f32_e32 v5, v5
	v_mul_f32_e32 v5, 0x4f7ffffe, v5
	v_cvt_u32_f32_e32 v5, v5
	v_mul_lo_u32 v8, v8, v5
	v_mul_hi_u32 v8, v5, v8
	v_add_u32_e32 v5, v5, v8
	v_mul_hi_u32 v5, v4, v5
	v_mul_lo_u32 v5, v5, v6
	v_sub_u32_e32 v4, v4, v5
	v_sub_u32_e32 v5, v4, v6
	v_cmp_ge_u32_e32 vcc, v4, v6
	v_cndmask_b32_e32 v4, v4, v5, vcc
	v_sub_u32_e32 v5, v4, v6
	v_cmp_ge_u32_e32 vcc, v4, v6
	v_cndmask_b32_e32 v8, v4, v5, vcc
.LBB3_13:
	s_or_b64 exec, exec, s[6:7]
	v_cmp_ne_u64_e32 vcc, 0, v[8:9]
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execz .LBB3_39
	v_add_u32_e32 v16, v14, v13
	v_cmp_lt_i32_e32 vcc, 11, v11
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[18:19], exec, s[6:7]
	s_cbranch_execz .LBB3_32
	v_ffbh_u32_e32 v2, v2
	v_add_u32_e32 v2, 32, v2
	v_ffbh_u32_e32 v3, v3
	v_min_u32_e32 v2, v2, v3
	v_cvt_f32_u32_e32 v17, v6
	v_cvt_f32_u32_e32 v18, v7
	v_cndmask_b32_e64 v2, 11, v2, s[4:5]
	v_add_u32_e32 v2, v2, v10
	v_sub_u32_e32 v19, v11, v12
	v_cmp_gt_i32_e32 vcc, v19, v2
	s_and_saveexec_b64 s[20:21], vcc
	s_cbranch_execz .LBB3_23
	v_madmk_f32 v3, v18, 0x4f800000, v17
	v_rcp_f32_e32 v3, v3
	v_sub_co_u32_e32 v22, vcc, 0, v6
	v_subb_co_u32_e32 v23, vcc, 0, v7, vcc
	v_mul_f32_e32 v3, 0x5f7ffffc, v3
	v_mul_f32_e32 v4, 0x2f800000, v3
	v_trunc_f32_e32 v4, v4
	v_mac_f32_e32 v3, 0xcf800000, v4
	v_cvt_u32_f32_e32 v20, v4
	v_cvt_u32_f32_e32 v21, v3
	v_mov_b32_e32 v12, 0
	s_mov_b64 s[22:23], 0
	v_mul_lo_u32 v5, v22, v20
	v_mul_lo_u32 v10, v23, v21
	v_mad_u64_u32 v[3:4], s[4:5], v22, v21, 0
	v_add3_u32 v10, v4, v5, v10
	v_mad_u64_u32 v[4:5], s[4:5], v21, v10, 0
	v_mul_hi_u32 v24, v21, v3
	v_mad_u64_u32 v[10:11], s[4:5], v20, v10, 0
	s_branch .LBB3_18
.LBB3_17:
	s_or_b64 exec, exec, s[4:5]
	v_sub_u32_e32 v19, v19, v2
	v_cmp_le_i32_e32 vcc, v19, v2
	s_or_b64 s[22:23], vcc, s[22:23]
	s_andn2_b64 exec, exec, s[22:23]
	s_cbranch_execz .LBB3_22
.LBB3_18:
	v_lshlrev_b64 v[14:15], v2, v[8:9]
	v_or_b32_e32 v13, v15, v7
	v_cmp_ne_u64_e32 vcc, 0, v[12:13]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[24:25], exec, s[4:5]
	s_cbranch_execz .LBB3_20
	v_mad_u64_u32 v[8:9], s[4:5], v20, v3, 0
	v_add_co_u32_e32 v13, vcc, v24, v4
	v_addc_co_u32_e32 v25, vcc, 0, v5, vcc
	v_add_co_u32_e32 v8, vcc, v13, v8
	v_addc_co_u32_e32 v8, vcc, v25, v9, vcc
	v_addc_co_u32_e32 v9, vcc, 0, v11, vcc
	v_add_co_u32_e32 v8, vcc, v8, v10
	v_addc_co_u32_e32 v9, vcc, 0, v9, vcc
	v_add_co_u32_e32 v13, vcc, v21, v8
	v_addc_co_u32_e32 v29, vcc, v20, v9, vcc
	v_mul_lo_u32 v25, v22, v29
	v_mul_lo_u32 v26, v23, v13
	v_mad_u64_u32 v[8:9], s[4:5], v22, v13, 0
	v_add3_u32 v9, v9, v25, v26
	v_mad_u64_u32 v[27:28], s[4:5], v13, v9, 0
	v_mul_hi_u32 v30, v13, v8
	v_mad_u64_u32 v[25:26], s[4:5], v29, v9, 0
	v_mad_u64_u32 v[8:9], s[4:5], v29, v8, 0
	v_add_co_u32_e32 v27, vcc, v30, v27
	v_addc_co_u32_e32 v28, vcc, 0, v28, vcc
	v_add_co_u32_e32 v8, vcc, v27, v8
	v_addc_co_u32_e32 v8, vcc, v28, v9, vcc
	v_addc_co_u32_e32 v9, vcc, 0, v26, vcc
	v_add_co_u32_e32 v8, vcc, v8, v25
	v_addc_co_u32_e32 v9, vcc, 0, v9, vcc
	v_add_co_u32_e32 v13, vcc, v13, v8
	v_addc_co_u32_e32 v25, vcc, v29, v9, vcc
	v_mad_u64_u32 v[8:9], s[4:5], v14, v25, 0
	v_mul_hi_u32 v26, v14, v13
	v_add_co_u32_e32 v27, vcc, v26, v8
	v_addc_co_u32_e32 v28, vcc, 0, v9, vcc
	v_mad_u64_u32 v[8:9], s[4:5], v15, v13, 0
	v_mad_u64_u32 v[25:26], s[4:5], v15, v25, 0
	v_add_co_u32_e32 v8, vcc, v27, v8
	v_addc_co_u32_e32 v8, vcc, v28, v9, vcc
	v_addc_co_u32_e32 v9, vcc, 0, v26, vcc
	v_add_co_u32_e32 v8, vcc, v8, v25
	v_addc_co_u32_e32 v9, vcc, 0, v9, vcc
	v_mul_lo_u32 v13, v7, v8
	v_mul_lo_u32 v25, v6, v9
	v_mad_u64_u32 v[8:9], s[4:5], v6, v8, 0
	v_add3_u32 v9, v9, v25, v13
	v_sub_u32_e32 v13, v15, v9
	v_sub_co_u32_e32 v8, vcc, v14, v8
	v_subb_co_u32_e64 v13, s[4:5], v13, v7, vcc
	v_sub_co_u32_e64 v14, s[4:5], v8, v6
	v_subbrev_co_u32_e64 v25, s[6:7], 0, v13, s[4:5]
	v_cmp_ge_u32_e64 s[6:7], v25, v7
	v_cndmask_b32_e64 v26, 0, -1, s[6:7]
	v_cmp_ge_u32_e64 s[6:7], v14, v6
	v_cndmask_b32_e64 v27, 0, -1, s[6:7]
	v_cmp_eq_u32_e64 s[6:7], v25, v7
	v_subb_co_u32_e64 v13, s[4:5], v13, v7, s[4:5]
	v_cndmask_b32_e64 v26, v26, v27, s[6:7]
	v_sub_co_u32_e64 v27, s[4:5], v14, v6
	v_subb_co_u32_e32 v9, vcc, v15, v9, vcc
	v_subbrev_co_u32_e64 v13, s[4:5], 0, v13, s[4:5]
	v_cmp_ge_u32_e32 vcc, v9, v7
	v_cmp_ne_u32_e64 s[4:5], 0, v26
	v_cndmask_b32_e64 v15, 0, -1, vcc
	v_cmp_ge_u32_e32 vcc, v8, v6
	v_cndmask_b32_e64 v13, v25, v13, s[4:5]
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, v9, v7
	v_cndmask_b32_e32 v15, v15, v25, vcc
	v_cmp_ne_u32_e32 vcc, 0, v15
	v_cndmask_b32_e32 v9, v9, v13, vcc
	v_cndmask_b32_e64 v13, v14, v27, s[4:5]
	v_cndmask_b32_e32 v8, v8, v13, vcc
.LBB3_20:
	s_andn2_saveexec_b64 s[4:5], s[24:25]
	s_cbranch_execz .LBB3_17
	v_cvt_f32_u32_e32 v8, v6
	v_sub_u32_e32 v9, 0, v6
	v_rcp_iflag_f32_e32 v8, v8
	v_mul_f32_e32 v8, 0x4f7ffffe, v8
	v_cvt_u32_f32_e32 v8, v8
	v_mul_lo_u32 v9, v9, v8
	v_mul_hi_u32 v9, v8, v9
	v_add_u32_e32 v8, v8, v9
	v_mul_hi_u32 v8, v14, v8
	v_mul_lo_u32 v8, v8, v6
	v_sub_u32_e32 v8, v14, v8
	v_sub_u32_e32 v9, v8, v6
	v_cmp_ge_u32_e32 vcc, v8, v6
	v_cndmask_b32_e32 v8, v8, v9, vcc
	v_sub_u32_e32 v9, v8, v6
	v_cmp_ge_u32_e32 vcc, v8, v6
	v_cndmask_b32_e32 v8, v8, v9, vcc
	v_mov_b32_e32 v9, v12
	s_branch .LBB3_17
.LBB3_22:
	s_or_b64 exec, exec, s[22:23]
.LBB3_23:
	s_or_b64 exec, exec, s[20:21]
	v_lshlrev_b64 v[2:3], v19, v[8:9]
	v_mov_b32_e32 v4, 0
	v_or_b32_e32 v5, v3, v7
	v_cmp_ne_u64_e32 vcc, 0, v[4:5]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[20:21], exec, s[4:5]
	s_cbranch_execz .LBB3_25
	v_mac_f32_e32 v17, 0x4f800000, v18
	v_rcp_f32_e32 v4, v17
	v_sub_co_u32_e32 v12, vcc, 0, v6
	v_subb_co_u32_e32 v13, vcc, 0, v7, vcc
	v_mul_f32_e32 v4, 0x5f7ffffc, v4
	v_mul_f32_e32 v5, 0x2f800000, v4
	v_trunc_f32_e32 v5, v5
	v_mac_f32_e32 v4, 0xcf800000, v5
	v_cvt_u32_f32_e32 v10, v5
	v_cvt_u32_f32_e32 v11, v4
	v_mul_lo_u32 v8, v12, v10
	v_mul_lo_u32 v9, v13, v11
	v_mad_u64_u32 v[4:5], s[4:5], v12, v11, 0
	v_add3_u32 v14, v5, v8, v9
	v_mul_hi_u32 v5, v11, v4
	v_mad_u64_u32 v[8:9], s[4:5], v11, v14, 0
	v_add_co_u32_e32 v15, vcc, v5, v8
	v_mad_u64_u32 v[4:5], s[4:5], v10, v4, 0
	v_addc_co_u32_e32 v17, vcc, 0, v9, vcc
	v_mad_u64_u32 v[8:9], s[4:5], v10, v14, 0
	v_add_co_u32_e32 v4, vcc, v15, v4
	v_addc_co_u32_e32 v4, vcc, v17, v5, vcc
	v_addc_co_u32_e32 v5, vcc, 0, v9, vcc
	v_add_co_u32_e32 v4, vcc, v4, v8
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	v_add_co_u32_e32 v14, vcc, v11, v4
	v_addc_co_u32_e32 v15, vcc, v10, v5, vcc
	v_mul_lo_u32 v8, v12, v15
	v_mul_lo_u32 v9, v13, v14
	v_mad_u64_u32 v[4:5], s[4:5], v12, v14, 0
	v_add3_u32 v5, v5, v8, v9
	v_mad_u64_u32 v[10:11], s[4:5], v14, v5, 0
	v_mul_hi_u32 v12, v14, v4
	v_mad_u64_u32 v[8:9], s[4:5], v15, v5, 0
	v_mad_u64_u32 v[4:5], s[4:5], v15, v4, 0
	v_add_co_u32_e32 v10, vcc, v12, v10
	v_addc_co_u32_e32 v11, vcc, 0, v11, vcc
	v_add_co_u32_e32 v4, vcc, v10, v4
	v_addc_co_u32_e32 v4, vcc, v11, v5, vcc
	v_addc_co_u32_e32 v5, vcc, 0, v9, vcc
	v_add_co_u32_e32 v4, vcc, v4, v8
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	v_add_co_u32_e32 v8, vcc, v14, v4
	v_addc_co_u32_e32 v9, vcc, v15, v5, vcc
	v_mad_u64_u32 v[4:5], s[4:5], v2, v9, 0
	v_mul_hi_u32 v10, v2, v8
	v_add_co_u32_e32 v10, vcc, v10, v4
	v_addc_co_u32_e32 v11, vcc, 0, v5, vcc
	v_mad_u64_u32 v[4:5], s[4:5], v3, v8, 0
	v_mad_u64_u32 v[8:9], s[4:5], v3, v9, 0
	v_add_co_u32_e32 v4, vcc, v10, v4
	v_addc_co_u32_e32 v4, vcc, v11, v5, vcc
	v_addc_co_u32_e32 v5, vcc, 0, v9, vcc
	v_add_co_u32_e32 v4, vcc, v4, v8
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	v_mul_lo_u32 v8, v7, v4
	v_mul_lo_u32 v9, v6, v5
	v_mad_u64_u32 v[4:5], s[4:5], v6, v4, 0
	v_add3_u32 v5, v5, v9, v8
	v_sub_u32_e32 v8, v3, v5
	v_sub_co_u32_e32 v2, vcc, v2, v4
	v_subb_co_u32_e64 v4, s[4:5], v8, v7, vcc
	v_sub_co_u32_e64 v8, s[4:5], v2, v6
	v_subbrev_co_u32_e64 v9, s[6:7], 0, v4, s[4:5]
	v_cmp_ge_u32_e64 s[6:7], v9, v7
	v_cndmask_b32_e64 v10, 0, -1, s[6:7]
	v_cmp_ge_u32_e64 s[6:7], v8, v6
	v_subb_co_u32_e32 v3, vcc, v3, v5, vcc
	v_cndmask_b32_e64 v11, 0, -1, s[6:7]
	v_cmp_eq_u32_e64 s[6:7], v9, v7
	v_subb_co_u32_e64 v4, s[4:5], v4, v7, s[4:5]
	v_cmp_ge_u32_e32 vcc, v3, v7
	v_cndmask_b32_e64 v10, v10, v11, s[6:7]
	v_sub_co_u32_e64 v11, s[4:5], v8, v6
	v_cndmask_b32_e64 v5, 0, -1, vcc
	v_cmp_ge_u32_e32 vcc, v2, v6
	v_subbrev_co_u32_e64 v4, s[4:5], 0, v4, s[4:5]
	v_cndmask_b32_e64 v6, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, v3, v7
	v_cmp_ne_u32_e64 s[4:5], 0, v10
	v_cndmask_b32_e32 v5, v5, v6, vcc
	v_cndmask_b32_e64 v4, v9, v4, s[4:5]
	v_cmp_ne_u32_e32 vcc, 0, v5
	v_cndmask_b32_e32 v5, v3, v4, vcc
	v_cndmask_b32_e64 v3, v8, v11, s[4:5]
	v_cndmask_b32_e32 v4, v2, v3, vcc
.LBB3_25:
	s_andn2_saveexec_b64 s[4:5], s[20:21]
	s_cbranch_execz .LBB3_27
	v_cvt_f32_u32_e32 v3, v6
	v_sub_u32_e32 v4, 0, v6
	v_mov_b32_e32 v5, 0
	v_rcp_iflag_f32_e32 v3, v3
	v_mul_f32_e32 v3, 0x4f7ffffe, v3
	v_cvt_u32_f32_e32 v3, v3
	v_mul_lo_u32 v4, v4, v3
	v_mul_hi_u32 v4, v3, v4
	v_add_u32_e32 v3, v3, v4
	v_mul_hi_u32 v3, v2, v3
	v_mul_lo_u32 v3, v3, v6
	v_sub_u32_e32 v2, v2, v3
	v_sub_u32_e32 v3, v2, v6
	v_cmp_ge_u32_e32 vcc, v2, v6
	v_cndmask_b32_e32 v2, v2, v3, vcc
	v_sub_u32_e32 v3, v2, v6
	v_cmp_ge_u32_e32 vcc, v2, v6
	v_cndmask_b32_e32 v4, v2, v3, vcc
.LBB3_27:
	s_or_b64 exec, exec, s[4:5]
	v_ffbh_u32_e32 v2, v4
	v_add_u32_e32 v2, 32, v2
	v_ffbh_u32_e32 v3, v5
	v_min_u32_e32 v2, v2, v3
	v_add_u32_e32 v2, -11, v2
	v_lshlrev_b64 v[4:5], v2, v[4:5]
	v_sub_u32_e32 v2, v16, v2
	v_cmp_gt_i32_e32 vcc, 0, v2
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	v_sub_u32_e32 v2, 0, v2
	v_lshrrev_b64 v[4:5], v2, v[4:5]
	v_and_b32_e32 v5, 0xfffff, v5
	s_andn2_saveexec_b64 s[4:5], s[4:5]
	v_and_b32_e32 v3, 0xfffff, v5
	v_mov_b32_e32 v5, 0x100000
	v_lshl_add_u32 v2, v2, 20, v5
	v_and_b32_e32 v2, 0x7ff00000, v2
	v_or_b32_e32 v5, v2, v3
	s_or_b64 exec, exec, s[4:5]
.LBB3_32:
	s_andn2_saveexec_b64 s[4:5], s[18:19]
	s_cbranch_execz .LBB3_38
	v_ffbh_u32_e32 v2, v8
	v_add_u32_e32 v2, 32, v2
	v_ffbh_u32_e32 v3, v9
	v_min_u32_e32 v2, v2, v3
	v_add_u32_e32 v2, -11, v2
	v_lshlrev_b64 v[4:5], v2, v[8:9]
	v_sub_u32_e32 v2, v16, v2
	v_cmp_gt_i32_e32 vcc, 0, v2
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	v_sub_u32_e32 v2, 0, v2
	v_lshrrev_b64 v[4:5], v2, v[4:5]
	v_and_b32_e32 v5, 0xfffff, v5
	s_andn2_saveexec_b64 s[6:7], s[6:7]
	v_and_b32_e32 v3, 0xfffff, v5
	v_mov_b32_e32 v5, 0x100000
	v_lshl_add_u32 v2, v2, 20, v5
	v_and_b32_e32 v2, 0x7ff00000, v2
	v_or_b32_e32 v5, v2, v3
	s_or_b64 exec, exec, s[6:7]
.LBB3_38:
	s_or_b64 exec, exec, s[4:5]
.LBB3_39:
	s_or_b64 exec, exec, s[8:9]
.LBB3_40:
	s_andn2_saveexec_b64 s[8:9], s[16:17]
	s_cbranch_execz .LBB3_47
	v_or_b32_e32 v3, v9, v7
	v_mov_b32_e32 v2, 0
	v_cmp_ne_u64_e32 vcc, 0, v[2:3]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[16:17], exec, s[4:5]
	s_cbranch_execz .LBB3_43
	v_cvt_f32_u32_e32 v2, v6
	v_cvt_f32_u32_e32 v3, v7
	v_sub_co_u32_e32 v12, vcc, 0, v6
	v_subb_co_u32_e32 v13, vcc, 0, v7, vcc
	v_mac_f32_e32 v2, 0x4f800000, v3
	v_rcp_f32_e32 v2, v2
	v_mul_f32_e32 v2, 0x5f7ffffc, v2
	v_mul_f32_e32 v3, 0x2f800000, v2
	v_trunc_f32_e32 v3, v3
	v_mac_f32_e32 v2, 0xcf800000, v3
	v_cvt_u32_f32_e32 v10, v3
	v_cvt_u32_f32_e32 v11, v2
	v_mul_lo_u32 v4, v12, v10
	v_mul_lo_u32 v5, v13, v11
	v_mad_u64_u32 v[2:3], s[4:5], v12, v11, 0
	v_add3_u32 v5, v3, v4, v5
	v_mul_hi_u32 v14, v11, v2
	v_mad_u64_u32 v[3:4], s[4:5], v11, v5, 0
	v_add_co_u32_e32 v14, vcc, v14, v3
	v_mad_u64_u32 v[2:3], s[4:5], v10, v2, 0
	v_addc_co_u32_e32 v15, vcc, 0, v4, vcc
	v_mad_u64_u32 v[4:5], s[4:5], v10, v5, 0
	v_add_co_u32_e32 v2, vcc, v14, v2
	v_addc_co_u32_e32 v2, vcc, v15, v3, vcc
	v_addc_co_u32_e32 v3, vcc, 0, v5, vcc
	v_add_co_u32_e32 v2, vcc, v2, v4
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	v_add_co_u32_e32 v5, vcc, v11, v2
	v_addc_co_u32_e32 v14, vcc, v10, v3, vcc
	v_mul_lo_u32 v4, v12, v14
	v_mul_lo_u32 v10, v13, v5
	v_mad_u64_u32 v[2:3], s[4:5], v12, v5, 0
	v_add3_u32 v10, v3, v4, v10
	v_mad_u64_u32 v[3:4], s[4:5], v14, v10, 0
	v_mad_u64_u32 v[10:11], s[4:5], v5, v10, 0
	v_mul_hi_u32 v15, v5, v2
	v_mad_u64_u32 v[12:13], s[4:5], v14, v2, 0
	v_add_co_u32_e32 v2, vcc, v15, v10
	v_addc_co_u32_e32 v10, vcc, 0, v11, vcc
	v_add_co_u32_e32 v2, vcc, v2, v12
	v_addc_co_u32_e32 v2, vcc, v10, v13, vcc
	v_addc_co_u32_e32 v4, vcc, 0, v4, vcc
	v_add_co_u32_e32 v2, vcc, v2, v3
	v_addc_co_u32_e32 v3, vcc, 0, v4, vcc
	v_add_co_u32_e32 v4, vcc, v5, v2
	v_addc_co_u32_e32 v5, vcc, v14, v3, vcc
	v_mad_u64_u32 v[2:3], s[4:5], v8, v5, 0
	v_mul_hi_u32 v10, v8, v4
	v_add_co_u32_e32 v10, vcc, v10, v2
	v_addc_co_u32_e32 v11, vcc, 0, v3, vcc
	v_mad_u64_u32 v[2:3], s[4:5], v9, v4, 0
	v_mad_u64_u32 v[4:5], s[4:5], v9, v5, 0
	v_add_co_u32_e32 v2, vcc, v10, v2
	v_addc_co_u32_e32 v2, vcc, v11, v3, vcc
	v_addc_co_u32_e32 v3, vcc, 0, v5, vcc
	v_add_co_u32_e32 v2, vcc, v2, v4
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	v_mul_lo_u32 v4, v7, v2
	v_mul_lo_u32 v5, v6, v3
	v_mad_u64_u32 v[2:3], s[4:5], v6, v2, 0
	v_add3_u32 v3, v3, v5, v4
	v_sub_u32_e32 v4, v9, v3
	v_sub_co_u32_e32 v2, vcc, v8, v2
	v_subb_co_u32_e64 v4, s[4:5], v4, v7, vcc
	v_sub_co_u32_e64 v8, s[4:5], v2, v6
	v_subbrev_co_u32_e64 v5, s[6:7], 0, v4, s[4:5]
	v_cmp_ge_u32_e64 s[6:7], v5, v7
	v_cndmask_b32_e64 v10, 0, -1, s[6:7]
	v_cmp_ge_u32_e64 s[6:7], v8, v6
	v_cndmask_b32_e64 v11, 0, -1, s[6:7]
	v_cmp_eq_u32_e64 s[6:7], v5, v7
	v_subb_co_u32_e64 v4, s[4:5], v4, v7, s[4:5]
	v_cndmask_b32_e64 v10, v10, v11, s[6:7]
	v_sub_co_u32_e64 v11, s[4:5], v8, v6
	v_subbrev_co_u32_e64 v4, s[4:5], 0, v4, s[4:5]
	v_subb_co_u32_e32 v3, vcc, v9, v3, vcc
	v_cmp_ne_u32_e64 s[4:5], 0, v10
	v_cmp_ge_u32_e32 vcc, v3, v7
	v_cndmask_b32_e64 v4, v5, v4, s[4:5]
	v_cndmask_b32_e64 v5, 0, -1, vcc
	v_cmp_ge_u32_e32 vcc, v2, v6
	v_cndmask_b32_e64 v6, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, v3, v7
	v_cndmask_b32_e32 v5, v5, v6, vcc
	v_cmp_ne_u32_e32 vcc, 0, v5
	v_cndmask_b32_e32 v5, v3, v4, vcc
	v_cndmask_b32_e64 v3, v8, v11, s[4:5]
	v_cndmask_b32_e32 v4, v2, v3, vcc
.LBB3_43:
	s_andn2_saveexec_b64 s[4:5], s[16:17]
	s_cbranch_execz .LBB3_45
	v_cvt_f32_u32_e32 v2, v6
	v_sub_u32_e32 v3, 0, v6
	v_mov_b32_e32 v5, 0
	v_rcp_iflag_f32_e32 v2, v2
	v_mul_f32_e32 v2, 0x4f7ffffe, v2
	v_cvt_u32_f32_e32 v2, v2
	v_mul_lo_u32 v3, v3, v2
	v_mul_hi_u32 v3, v2, v3
	v_add_u32_e32 v2, v2, v3
	v_mul_hi_u32 v2, v8, v2
	v_mul_lo_u32 v2, v2, v6
	v_sub_u32_e32 v2, v8, v2
	v_sub_u32_e32 v3, v2, v6
	v_cmp_ge_u32_e32 vcc, v2, v6
	v_cndmask_b32_e32 v2, v2, v3, vcc
	v_sub_u32_e32 v3, v2, v6
	v_cmp_ge_u32_e32 vcc, v2, v6
	v_cndmask_b32_e32 v4, v2, v3, vcc
.LBB3_45:
	s_or_b64 exec, exec, s[4:5]
	v_and_b32_e32 v5, 0xfffff, v5
	s_or_b64 exec, exec, s[8:9]
.LBB3_46:
	s_andn2_saveexec_b64 s[8:9], s[14:15]
	s_cbranch_execnz .LBB3_48
	s_branch .LBB3_63
.LBB3_47:
	s_or_b64 exec, exec, s[8:9]
	s_andn2_saveexec_b64 s[8:9], s[14:15]
	s_cbranch_execz .LBB3_63
.LBB3_48:
	v_cmp_ne_u64_e32 vcc, 0, v[12:13]
	v_and_b32_e32 v5, 0xfffff, v1
	v_cndmask_b32_e64 v4, 0, 1, vcc
	v_cmp_ne_u64_e32 vcc, 0, v[10:11]
	v_lshlrev_b32_e32 v4, 20, v4
	v_or_b32_e32 v5, v4, v5
	v_mov_b32_e32 v4, v0
	v_cndmask_b32_e64 v0, 0, 1, vcc
	v_lshlrev_b32_e32 v0, 20, v0
	v_and_b32_e32 v3, 0xfffff, v3
	v_or_b32_e32 v0, v0, v3
	v_cmp_ne_u16_e32 vcc, v15, v14
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[14:15], exec, s[4:5]
	s_cbranch_execz .LBB3_54
	v_lshlrev_b64 v[3:4], v16, v[4:5]
	v_mov_b32_e32 v5, 0
	v_or_b32_e32 v6, v4, v0
	v_cmp_ne_u64_e32 vcc, 0, v[5:6]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[16:17], exec, s[4:5]
	s_cbranch_execz .LBB3_51
	v_cvt_f32_u32_e32 v5, v2
	v_cvt_f32_u32_e32 v6, v0
	v_sub_co_u32_e32 v11, vcc, 0, v2
	v_subb_co_u32_e32 v12, vcc, 0, v0, vcc
	v_mac_f32_e32 v5, 0x4f800000, v6
	v_rcp_f32_e32 v5, v5
	v_mul_f32_e32 v5, 0x5f7ffffc, v5
	v_mul_f32_e32 v6, 0x2f800000, v5
	v_trunc_f32_e32 v6, v6
	v_mac_f32_e32 v5, 0xcf800000, v6
	v_cvt_u32_f32_e32 v9, v6
	v_cvt_u32_f32_e32 v10, v5
	v_mul_lo_u32 v7, v11, v9
	v_mul_lo_u32 v8, v12, v10
	v_mad_u64_u32 v[5:6], s[4:5], v11, v10, 0
	v_add3_u32 v8, v6, v7, v8
	v_mul_hi_u32 v13, v10, v5
	v_mad_u64_u32 v[6:7], s[4:5], v10, v8, 0
	v_add_co_u32_e32 v13, vcc, v13, v6
	v_mad_u64_u32 v[5:6], s[4:5], v9, v5, 0
	v_addc_co_u32_e32 v15, vcc, 0, v7, vcc
	v_mad_u64_u32 v[7:8], s[4:5], v9, v8, 0
	v_add_co_u32_e32 v5, vcc, v13, v5
	v_addc_co_u32_e32 v5, vcc, v15, v6, vcc
	v_addc_co_u32_e32 v6, vcc, 0, v8, vcc
	v_add_co_u32_e32 v5, vcc, v5, v7
	v_addc_co_u32_e32 v6, vcc, 0, v6, vcc
	v_add_co_u32_e32 v13, vcc, v10, v5
	v_addc_co_u32_e32 v15, vcc, v9, v6, vcc
	v_mul_lo_u32 v7, v11, v15
	v_mul_lo_u32 v8, v12, v13
	v_mad_u64_u32 v[5:6], s[4:5], v11, v13, 0
	v_add3_u32 v8, v6, v7, v8
	v_mad_u64_u32 v[6:7], s[4:5], v15, v8, 0
	v_mad_u64_u32 v[8:9], s[4:5], v13, v8, 0
	v_mul_hi_u32 v12, v13, v5
	v_mad_u64_u32 v[10:11], s[4:5], v15, v5, 0
	v_add_co_u32_e32 v5, vcc, v12, v8
	v_addc_co_u32_e32 v8, vcc, 0, v9, vcc
	v_add_co_u32_e32 v5, vcc, v5, v10
	v_addc_co_u32_e32 v5, vcc, v8, v11, vcc
	v_addc_co_u32_e32 v7, vcc, 0, v7, vcc
	v_add_co_u32_e32 v5, vcc, v5, v6
	v_addc_co_u32_e32 v6, vcc, 0, v7, vcc
	v_add_co_u32_e32 v7, vcc, v13, v5
	v_addc_co_u32_e32 v8, vcc, v15, v6, vcc
	v_mad_u64_u32 v[5:6], s[4:5], v3, v8, 0
	v_mul_hi_u32 v9, v3, v7
	v_add_co_u32_e32 v9, vcc, v9, v5
	v_addc_co_u32_e32 v10, vcc, 0, v6, vcc
	v_mad_u64_u32 v[5:6], s[4:5], v4, v7, 0
	v_mad_u64_u32 v[7:8], s[4:5], v4, v8, 0
	v_add_co_u32_e32 v5, vcc, v9, v5
	v_addc_co_u32_e32 v5, vcc, v10, v6, vcc
	v_addc_co_u32_e32 v6, vcc, 0, v8, vcc
	v_add_co_u32_e32 v5, vcc, v5, v7
	v_addc_co_u32_e32 v6, vcc, 0, v6, vcc
	v_mul_lo_u32 v7, v0, v5
	v_mul_lo_u32 v8, v2, v6
	v_mad_u64_u32 v[5:6], s[4:5], v2, v5, 0
	v_add3_u32 v6, v6, v8, v7
	v_sub_u32_e32 v7, v4, v6
	v_sub_co_u32_e32 v3, vcc, v3, v5
	v_subb_co_u32_e64 v5, s[4:5], v7, v0, vcc
	v_sub_co_u32_e64 v8, s[4:5], v3, v2
	v_subbrev_co_u32_e64 v7, s[6:7], 0, v5, s[4:5]
	v_cmp_ge_u32_e64 s[6:7], v7, v0
	v_cndmask_b32_e64 v9, 0, -1, s[6:7]
	v_cmp_ge_u32_e64 s[6:7], v8, v2
	v_subb_co_u32_e32 v4, vcc, v4, v6, vcc
	v_cndmask_b32_e64 v10, 0, -1, s[6:7]
	v_cmp_eq_u32_e64 s[6:7], v7, v0
	v_subb_co_u32_e64 v5, s[4:5], v5, v0, s[4:5]
	v_cmp_ge_u32_e32 vcc, v4, v0
	v_cndmask_b32_e64 v9, v9, v10, s[6:7]
	v_sub_co_u32_e64 v10, s[4:5], v8, v2
	v_cndmask_b32_e64 v6, 0, -1, vcc
	v_cmp_ge_u32_e32 vcc, v3, v2
	v_subbrev_co_u32_e64 v5, s[4:5], 0, v5, s[4:5]
	v_cndmask_b32_e64 v2, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, v4, v0
	v_cmp_ne_u32_e64 s[4:5], 0, v9
	v_cndmask_b32_e32 v0, v6, v2, vcc
	v_cmp_ne_u32_e32 vcc, 0, v0
	v_cndmask_b32_e64 v0, v8, v10, s[4:5]
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	v_cndmask_b32_e32 v6, v3, v0, vcc
	v_cndmask_b32_e32 v7, v4, v5, vcc
.LBB3_51:
	s_andn2_saveexec_b64 s[4:5], s[16:17]
	s_cbranch_execz .LBB3_53
	v_cvt_f32_u32_e32 v0, v2
	v_sub_u32_e32 v4, 0, v2
	v_mov_b32_e32 v7, 0
	v_rcp_iflag_f32_e32 v0, v0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v4, v4, v0
	v_mul_hi_u32 v4, v0, v4
	v_add_u32_e32 v0, v0, v4
	v_mul_hi_u32 v0, v3, v0
	v_mul_lo_u32 v0, v0, v2
	v_sub_u32_e32 v0, v3, v0
	v_sub_u32_e32 v3, v0, v2
	v_cmp_ge_u32_e32 vcc, v0, v2
	v_cndmask_b32_e32 v0, v0, v3, vcc
	v_sub_u32_e32 v3, v0, v2
	v_cmp_ge_u32_e32 vcc, v0, v2
	v_cndmask_b32_e32 v6, v0, v3, vcc
.LBB3_53:
	s_or_b64 exec, exec, s[4:5]
.LBB3_54:
	s_andn2_saveexec_b64 s[4:5], s[14:15]
	v_sub_co_u32_e32 v6, vcc, v4, v2
	v_subb_co_u32_e32 v7, vcc, v5, v0, vcc
	s_or_b64 exec, exec, s[4:5]
	v_cmp_ne_u64_e32 vcc, 0, v[6:7]
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz .LBB3_62
	v_ffbh_u32_e32 v0, v6
	v_add_u32_e32 v0, 32, v0
	v_ffbh_u32_e32 v2, v7
	v_min_u32_e32 v0, v0, v2
	v_add_u32_e32 v2, -11, v0
	v_lshlrev_b64 v[4:5], v2, v[6:7]
	v_sub_u32_e32 v0, v14, v0
	v_cmp_gt_i32_e32 vcc, -10, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	v_sub_u32_e32 v0, -10, v0
	v_lshrrev_b64 v[4:5], v0, v[4:5]
	v_and_b32_e32 v5, 0xfffff, v5
	s_andn2_saveexec_b64 s[6:7], s[6:7]
	v_mov_b32_e32 v3, 0xb00000
	v_lshl_add_u32 v0, v0, 20, v3
	v_and_b32_e32 v2, 0xfffff, v5
	v_and_b32_e32 v0, 0x7ff00000, v0
	v_or_b32_e32 v5, v0, v2
	s_or_b64 exec, exec, s[6:7]
.LBB3_62:
	s_or_b64 exec, exec, s[4:5]
.LBB3_63:
	s_or_b64 exec, exec, s[8:9]
.LBB3_64:
	s_or_b64 exec, exec, s[12:13]
	v_and_b32_e32 v0, 0x80000000, v1
	v_or_b32_e32 v5, v5, v0
	s_or_b64 exec, exec, s[10:11]
	v_mov_b32_e32 v0, v4
	v_mov_b32_e32 v1, v5
	s_setpc_b64 s[30:31]
.Lfunc_end0:
	.size	fmod.internalized, .Lfunc_end0-fmod.internalized

	.hidden	fmod
	.globl	fmod
	.p2align	2
	.type	fmod,@function
fmod:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s10, 0
	v_mov_b32_e32 v10, 0
	s_mov_b32 s11, 0x7ff00000
	v_and_b32_e32 v11, 0x7ff00000, v3
	v_and_b32_e32 v13, 0x7ff00000, v1
	v_mov_b32_e32 v12, v10
	v_and_b32_e32 v7, 0x7fffffff, v3
	v_mov_b32_e32 v6, v2
	v_cmp_ne_u64_e64 s[4:5], s[10:11], v[10:11]
	v_cmp_ne_u64_e64 s[6:7], s[10:11], v[12:13]
	v_cmp_ne_u64_e64 s[8:9], 0, v[6:7]
	s_and_b64 s[4:5], s[6:7], s[4:5]
	v_cmp_eq_u64_e32 vcc, 0, v[6:7]
	s_and_b64 s[12:13], s[4:5], s[8:9]
	s_xor_b64 s[4:5], s[12:13], -1
	s_and_saveexec_b64 s[14:15], s[4:5]
	s_cbranch_execnz .LBB0_3
	s_or_b64 exec, exec, s[14:15]
	s_and_saveexec_b64 s[10:11], s[12:13]
	s_cbranch_execnz .LBB0_4
.LBB0_2:
	s_or_b64 exec, exec, s[10:11]
	v_mov_b32_e32 v0, v4
	v_mov_b32_e32 v1, v5
	s_setpc_b64 s[30:31]
.LBB0_3:
	v_and_b32_e32 v5, 0x7fffffff, v1
	v_mov_b32_e32 v4, v0
	v_cmp_lt_u64_e64 s[4:5], s[10:11], v[4:5]
	v_cmp_lt_u64_e64 s[6:7], s[10:11], v[6:7]
	v_cmp_eq_u64_e64 s[8:9], s[10:11], v[4:5]
	s_or_b64 s[4:5], s[4:5], s[6:7]
	s_or_b64 s[6:7], s[8:9], vcc
	v_mov_b32_e32 v4, 0x7ff80000
	s_or_b64 vcc, s[4:5], s[6:7]
	v_cndmask_b32_e32 v5, v1, v4, vcc
	v_cndmask_b32_e64 v4, v0, 0, vcc
	s_or_b64 exec, exec, s[14:15]
	s_and_saveexec_b64 s[10:11], s[12:13]
	s_cbranch_execz .LBB0_2
.LBB0_4:
	v_and_b32_e32 v9, 0x7fffffff, v1
	v_mov_b32_e32 v8, v0
	v_cmp_le_u64_e32 vcc, v[8:9], v[6:7]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	v_cmp_lt_u64_e32 vcc, v[8:9], v[6:7]
	v_cndmask_b32_e32 v5, 0, v9, vcc
	v_cndmask_b32_e32 v4, 0, v8, vcc
	s_andn2_saveexec_b64 s[12:13], s[4:5]
	s_cbranch_execz .LBB0_64
	v_lshrrev_b32_e32 v15, 20, v9
	v_lshrrev_b32_e32 v14, 20, v7
	v_sub_u32_e32 v16, v15, v14
	v_cmp_gt_u16_e32 vcc, 53, v14
	v_cmp_lt_i32_e64 s[4:5], 11, v16
	s_or_b64 s[4:5], vcc, s[4:5]
	s_and_saveexec_b64 s[6:7], s[4:5]
	s_xor_b64 s[14:15], exec, s[6:7]
	s_cbranch_execz .LBB0_46
	v_or_b32_e32 v4, v14, v15
	v_cmp_ne_u16_e32 vcc, 0, v4
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[16:17], exec, s[4:5]
	s_cbranch_execz .LBB0_40
	v_cmp_ne_u64_e32 vcc, 0, v[12:13]
	v_cmp_eq_u16_e64 s[4:5], 0, v14
	v_cndmask_b32_e64 v4, 0, 1, vcc
	v_cmp_eq_u64_e32 vcc, 0, v[10:11]
	v_add_u32_e32 v6, -1, v14
	v_mov_b32_e32 v7, 0x100000
	s_or_b64 s[6:7], vcc, s[4:5]
	v_and_b32_e32 v3, 0xfffff, v3
	v_cndmask_b32_e64 v13, v6, 0, s[4:5]
	v_cndmask_b32_e64 v6, v7, 0, s[6:7]
	v_or_b32_e32 v7, v6, v3
	v_ffbl_b32_e32 v8, v7
	v_add_u32_e32 v8, 32, v8
	v_ffbl_b32_e32 v9, v2
	v_min_u32_e32 v10, v9, v8
	v_xad_u32 v8, v13, -1, v15
	v_min_i32_e32 v14, v8, v10
	v_lshlrev_b32_e32 v4, 20, v4
	v_and_b32_e32 v5, 0xfffff, v1
	v_sub_u32_e32 v11, v8, v14
	v_or_b32_e32 v5, v4, v5
	v_mov_b32_e32 v4, v0
	v_mov_b32_e32 v6, v2
	v_min_i32_e32 v12, 11, v11
	v_lshrrev_b64 v[6:7], v14, v[6:7]
	v_lshlrev_b64 v[4:5], v12, v[4:5]
	v_mov_b32_e32 v8, 0
	v_or_b32_e32 v9, v5, v7
	v_cmp_ne_u64_e32 vcc, 0, v[8:9]
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[18:19], exec, s[6:7]
	s_cbranch_execz .LBB0_11
	v_cvt_f32_u32_e32 v8, v6
	v_cvt_f32_u32_e32 v9, v7
	v_sub_co_u32_e32 v19, vcc, 0, v6
	v_subb_co_u32_e32 v20, vcc, 0, v7, vcc
	v_mac_f32_e32 v8, 0x4f800000, v9
	v_rcp_f32_e32 v8, v8
	v_mul_f32_e32 v8, 0x5f7ffffc, v8
	v_mul_f32_e32 v9, 0x2f800000, v8
	v_trunc_f32_e32 v9, v9
	v_mac_f32_e32 v8, 0xcf800000, v9
	v_cvt_u32_f32_e32 v17, v9
	v_cvt_u32_f32_e32 v18, v8
	v_mul_lo_u32 v15, v19, v17
	v_mul_lo_u32 v16, v20, v18
	v_mad_u64_u32 v[8:9], s[6:7], v19, v18, 0
	v_add3_u32 v21, v9, v15, v16
	v_mul_hi_u32 v9, v18, v8
	v_mad_u64_u32 v[15:16], s[6:7], v18, v21, 0
	v_add_co_u32_e32 v22, vcc, v9, v15
	v_mad_u64_u32 v[8:9], s[6:7], v17, v8, 0
	v_addc_co_u32_e32 v23, vcc, 0, v16, vcc
	v_mad_u64_u32 v[15:16], s[6:7], v17, v21, 0
	v_add_co_u32_e32 v8, vcc, v22, v8
	v_addc_co_u32_e32 v8, vcc, v23, v9, vcc
	v_addc_co_u32_e32 v9, vcc, 0, v16, vcc
	v_add_co_u32_e32 v8, vcc, v8, v15
	v_addc_co_u32_e32 v9, vcc, 0, v9, vcc
	v_add_co_u32_e32 v21, vcc, v18, v8
	v_addc_co_u32_e32 v22, vcc, v17, v9, vcc
	v_mul_lo_u32 v15, v19, v22
	v_mul_lo_u32 v16, v20, v21
	v_mad_u64_u32 v[8:9], s[6:7], v19, v21, 0
	v_add3_u32 v9, v9, v15, v16
	v_mad_u64_u32 v[17:18], s[6:7], v21, v9, 0
	v_mul_hi_u32 v19, v21, v8
	v_mad_u64_u32 v[15:16], s[6:7], v22, v9, 0
	v_mad_u64_u32 v[8:9], s[6:7], v22, v8, 0
	v_add_co_u32_e32 v17, vcc, v19, v17
	v_addc_co_u32_e32 v18, vcc, 0, v18, vcc
	v_add_co_u32_e32 v8, vcc, v17, v8
	v_addc_co_u32_e32 v8, vcc, v18, v9, vcc
	v_addc_co_u32_e32 v9, vcc, 0, v16, vcc
	v_add_co_u32_e32 v8, vcc, v8, v15
	v_addc_co_u32_e32 v9, vcc, 0, v9, vcc
	v_add_co_u32_e32 v15, vcc, v21, v8
	v_addc_co_u32_e32 v16, vcc, v22, v9, vcc
	v_mad_u64_u32 v[8:9], s[6:7], v4, v16, 0
	v_mul_hi_u32 v17, v4, v15
	v_add_co_u32_e32 v17, vcc, v17, v8
	v_addc_co_u32_e32 v18, vcc, 0, v9, vcc
	v_mad_u64_u32 v[8:9], s[6:7], v5, v15, 0
	v_mad_u64_u32 v[15:16], s[6:7], v5, v16, 0
	v_add_co_u32_e32 v8, vcc, v17, v8
	v_addc_co_u32_e32 v8, vcc, v18, v9, vcc
	v_addc_co_u32_e32 v9, vcc, 0, v16, vcc
	v_add_co_u32_e32 v8, vcc, v8, v15
	v_addc_co_u32_e32 v9, vcc, 0, v9, vcc
	v_mul_lo_u32 v15, v7, v8
	v_mul_lo_u32 v16, v6, v9
	v_mad_u64_u32 v[8:9], s[6:7], v6, v8, 0
	v_add3_u32 v9, v9, v16, v15
	v_sub_u32_e32 v15, v5, v9
	v_sub_co_u32_e32 v4, vcc, v4, v8
	v_subb_co_u32_e64 v8, s[6:7], v15, v7, vcc
	v_sub_co_u32_e64 v15, s[6:7], v4, v6
	v_subbrev_co_u32_e64 v16, s[8:9], 0, v8, s[6:7]
	v_cmp_ge_u32_e64 s[8:9], v16, v7
	v_cndmask_b32_e64 v17, 0, -1, s[8:9]
	v_cmp_ge_u32_e64 s[8:9], v15, v6
	v_cndmask_b32_e64 v18, 0, -1, s[8:9]
	v_cmp_eq_u32_e64 s[8:9], v16, v7
	v_subb_co_u32_e64 v8, s[6:7], v8, v7, s[6:7]
	v_cndmask_b32_e64 v17, v17, v18, s[8:9]
	v_sub_co_u32_e64 v18, s[6:7], v15, v6
	v_subb_co_u32_e32 v5, vcc, v5, v9, vcc
	v_subbrev_co_u32_e64 v8, s[6:7], 0, v8, s[6:7]
	v_cmp_ge_u32_e32 vcc, v5, v7
	v_cmp_ne_u32_e64 s[6:7], 0, v17
	v_cndmask_b32_e64 v9, 0, -1, vcc
	v_cmp_ge_u32_e32 vcc, v4, v6
	v_cndmask_b32_e64 v8, v16, v8, s[6:7]
	v_cndmask_b32_e64 v16, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, v5, v7
	v_cndmask_b32_e32 v9, v9, v16, vcc
	v_cmp_ne_u32_e32 vcc, 0, v9
	v_cndmask_b32_e32 v9, v5, v8, vcc
	v_cndmask_b32_e64 v5, v15, v18, s[6:7]
	v_cndmask_b32_e32 v8, v4, v5, vcc
.LBB0_11:
	s_andn2_saveexec_b64 s[6:7], s[18:19]
	s_cbranch_execz .LBB0_13
	v_cvt_f32_u32_e32 v5, v6
	v_sub_u32_e32 v8, 0, v6
	v_mov_b32_e32 v9, 0
	v_rcp_iflag_f32_e32 v5, v5
	v_mul_f32_e32 v5, 0x4f7ffffe, v5
	v_cvt_u32_f32_e32 v5, v5
	v_mul_lo_u32 v8, v8, v5
	v_mul_hi_u32 v8, v5, v8
	v_add_u32_e32 v5, v5, v8
	v_mul_hi_u32 v5, v4, v5
	v_mul_lo_u32 v5, v5, v6
	v_sub_u32_e32 v4, v4, v5
	v_sub_u32_e32 v5, v4, v6
	v_cmp_ge_u32_e32 vcc, v4, v6
	v_cndmask_b32_e32 v4, v4, v5, vcc
	v_sub_u32_e32 v5, v4, v6
	v_cmp_ge_u32_e32 vcc, v4, v6
	v_cndmask_b32_e32 v8, v4, v5, vcc
.LBB0_13:
	s_or_b64 exec, exec, s[6:7]
	v_cmp_ne_u64_e32 vcc, 0, v[8:9]
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execz .LBB0_39
	v_add_u32_e32 v16, v14, v13
	v_cmp_lt_i32_e32 vcc, 11, v11
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[18:19], exec, s[6:7]
	s_cbranch_execz .LBB0_32
	v_ffbh_u32_e32 v2, v2
	v_add_u32_e32 v2, 32, v2
	v_ffbh_u32_e32 v3, v3
	v_min_u32_e32 v2, v2, v3
	v_cvt_f32_u32_e32 v17, v6
	v_cvt_f32_u32_e32 v18, v7
	v_cndmask_b32_e64 v2, 11, v2, s[4:5]
	v_add_u32_e32 v2, v2, v10
	v_sub_u32_e32 v19, v11, v12
	v_cmp_gt_i32_e32 vcc, v19, v2
	s_and_saveexec_b64 s[20:21], vcc
	s_cbranch_execz .LBB0_23
	v_madmk_f32 v3, v18, 0x4f800000, v17
	v_rcp_f32_e32 v3, v3
	v_sub_co_u32_e32 v22, vcc, 0, v6
	v_subb_co_u32_e32 v23, vcc, 0, v7, vcc
	v_mul_f32_e32 v3, 0x5f7ffffc, v3
	v_mul_f32_e32 v4, 0x2f800000, v3
	v_trunc_f32_e32 v4, v4
	v_mac_f32_e32 v3, 0xcf800000, v4
	v_cvt_u32_f32_e32 v20, v4
	v_cvt_u32_f32_e32 v21, v3
	v_mov_b32_e32 v12, 0
	s_mov_b64 s[22:23], 0
	v_mul_lo_u32 v5, v22, v20
	v_mul_lo_u32 v10, v23, v21
	v_mad_u64_u32 v[3:4], s[4:5], v22, v21, 0
	v_add3_u32 v10, v4, v5, v10
	v_mad_u64_u32 v[4:5], s[4:5], v21, v10, 0
	v_mul_hi_u32 v24, v21, v3
	v_mad_u64_u32 v[10:11], s[4:5], v20, v10, 0
	s_branch .LBB0_18
.LBB0_17:
	s_or_b64 exec, exec, s[4:5]
	v_sub_u32_e32 v19, v19, v2
	v_cmp_le_i32_e32 vcc, v19, v2
	s_or_b64 s[22:23], vcc, s[22:23]
	s_andn2_b64 exec, exec, s[22:23]
	s_cbranch_execz .LBB0_22
.LBB0_18:
	v_lshlrev_b64 v[14:15], v2, v[8:9]
	v_or_b32_e32 v13, v15, v7
	v_cmp_ne_u64_e32 vcc, 0, v[12:13]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[24:25], exec, s[4:5]
	s_cbranch_execz .LBB0_20
	v_mad_u64_u32 v[8:9], s[4:5], v20, v3, 0
	v_add_co_u32_e32 v13, vcc, v24, v4
	v_addc_co_u32_e32 v25, vcc, 0, v5, vcc
	v_add_co_u32_e32 v8, vcc, v13, v8
	v_addc_co_u32_e32 v8, vcc, v25, v9, vcc
	v_addc_co_u32_e32 v9, vcc, 0, v11, vcc
	v_add_co_u32_e32 v8, vcc, v8, v10
	v_addc_co_u32_e32 v9, vcc, 0, v9, vcc
	v_add_co_u32_e32 v13, vcc, v21, v8
	v_addc_co_u32_e32 v29, vcc, v20, v9, vcc
	v_mul_lo_u32 v25, v22, v29
	v_mul_lo_u32 v26, v23, v13
	v_mad_u64_u32 v[8:9], s[4:5], v22, v13, 0
	v_add3_u32 v9, v9, v25, v26
	v_mad_u64_u32 v[27:28], s[4:5], v13, v9, 0
	v_mul_hi_u32 v30, v13, v8
	v_mad_u64_u32 v[25:26], s[4:5], v29, v9, 0
	v_mad_u64_u32 v[8:9], s[4:5], v29, v8, 0
	v_add_co_u32_e32 v27, vcc, v30, v27
	v_addc_co_u32_e32 v28, vcc, 0, v28, vcc
	v_add_co_u32_e32 v8, vcc, v27, v8
	v_addc_co_u32_e32 v8, vcc, v28, v9, vcc
	v_addc_co_u32_e32 v9, vcc, 0, v26, vcc
	v_add_co_u32_e32 v8, vcc, v8, v25
	v_addc_co_u32_e32 v9, vcc, 0, v9, vcc
	v_add_co_u32_e32 v13, vcc, v13, v8
	v_addc_co_u32_e32 v25, vcc, v29, v9, vcc
	v_mad_u64_u32 v[8:9], s[4:5], v14, v25, 0
	v_mul_hi_u32 v26, v14, v13
	v_add_co_u32_e32 v27, vcc, v26, v8
	v_addc_co_u32_e32 v28, vcc, 0, v9, vcc
	v_mad_u64_u32 v[8:9], s[4:5], v15, v13, 0
	v_mad_u64_u32 v[25:26], s[4:5], v15, v25, 0
	v_add_co_u32_e32 v8, vcc, v27, v8
	v_addc_co_u32_e32 v8, vcc, v28, v9, vcc
	v_addc_co_u32_e32 v9, vcc, 0, v26, vcc
	v_add_co_u32_e32 v8, vcc, v8, v25
	v_addc_co_u32_e32 v9, vcc, 0, v9, vcc
	v_mul_lo_u32 v13, v7, v8
	v_mul_lo_u32 v25, v6, v9
	v_mad_u64_u32 v[8:9], s[4:5], v6, v8, 0
	v_add3_u32 v9, v9, v25, v13
	v_sub_u32_e32 v13, v15, v9
	v_sub_co_u32_e32 v8, vcc, v14, v8
	v_subb_co_u32_e64 v13, s[4:5], v13, v7, vcc
	v_sub_co_u32_e64 v14, s[4:5], v8, v6
	v_subbrev_co_u32_e64 v25, s[6:7], 0, v13, s[4:5]
	v_cmp_ge_u32_e64 s[6:7], v25, v7
	v_cndmask_b32_e64 v26, 0, -1, s[6:7]
	v_cmp_ge_u32_e64 s[6:7], v14, v6
	v_cndmask_b32_e64 v27, 0, -1, s[6:7]
	v_cmp_eq_u32_e64 s[6:7], v25, v7
	v_subb_co_u32_e64 v13, s[4:5], v13, v7, s[4:5]
	v_cndmask_b32_e64 v26, v26, v27, s[6:7]
	v_sub_co_u32_e64 v27, s[4:5], v14, v6
	v_subb_co_u32_e32 v9, vcc, v15, v9, vcc
	v_subbrev_co_u32_e64 v13, s[4:5], 0, v13, s[4:5]
	v_cmp_ge_u32_e32 vcc, v9, v7
	v_cmp_ne_u32_e64 s[4:5], 0, v26
	v_cndmask_b32_e64 v15, 0, -1, vcc
	v_cmp_ge_u32_e32 vcc, v8, v6
	v_cndmask_b32_e64 v13, v25, v13, s[4:5]
	v_cndmask_b32_e64 v25, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, v9, v7
	v_cndmask_b32_e32 v15, v15, v25, vcc
	v_cmp_ne_u32_e32 vcc, 0, v15
	v_cndmask_b32_e32 v9, v9, v13, vcc
	v_cndmask_b32_e64 v13, v14, v27, s[4:5]
	v_cndmask_b32_e32 v8, v8, v13, vcc
.LBB0_20:
	s_andn2_saveexec_b64 s[4:5], s[24:25]
	s_cbranch_execz .LBB0_17
	v_cvt_f32_u32_e32 v8, v6
	v_sub_u32_e32 v9, 0, v6
	v_rcp_iflag_f32_e32 v8, v8
	v_mul_f32_e32 v8, 0x4f7ffffe, v8
	v_cvt_u32_f32_e32 v8, v8
	v_mul_lo_u32 v9, v9, v8
	v_mul_hi_u32 v9, v8, v9
	v_add_u32_e32 v8, v8, v9
	v_mul_hi_u32 v8, v14, v8
	v_mul_lo_u32 v8, v8, v6
	v_sub_u32_e32 v8, v14, v8
	v_sub_u32_e32 v9, v8, v6
	v_cmp_ge_u32_e32 vcc, v8, v6
	v_cndmask_b32_e32 v8, v8, v9, vcc
	v_sub_u32_e32 v9, v8, v6
	v_cmp_ge_u32_e32 vcc, v8, v6
	v_cndmask_b32_e32 v8, v8, v9, vcc
	v_mov_b32_e32 v9, v12
	s_branch .LBB0_17
.LBB0_22:
	s_or_b64 exec, exec, s[22:23]
.LBB0_23:
	s_or_b64 exec, exec, s[20:21]
	v_lshlrev_b64 v[2:3], v19, v[8:9]
	v_mov_b32_e32 v4, 0
	v_or_b32_e32 v5, v3, v7
	v_cmp_ne_u64_e32 vcc, 0, v[4:5]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[20:21], exec, s[4:5]
	s_cbranch_execz .LBB0_25
	v_mac_f32_e32 v17, 0x4f800000, v18
	v_rcp_f32_e32 v4, v17
	v_sub_co_u32_e32 v12, vcc, 0, v6
	v_subb_co_u32_e32 v13, vcc, 0, v7, vcc
	v_mul_f32_e32 v4, 0x5f7ffffc, v4
	v_mul_f32_e32 v5, 0x2f800000, v4
	v_trunc_f32_e32 v5, v5
	v_mac_f32_e32 v4, 0xcf800000, v5
	v_cvt_u32_f32_e32 v10, v5
	v_cvt_u32_f32_e32 v11, v4
	v_mul_lo_u32 v8, v12, v10
	v_mul_lo_u32 v9, v13, v11
	v_mad_u64_u32 v[4:5], s[4:5], v12, v11, 0
	v_add3_u32 v14, v5, v8, v9
	v_mul_hi_u32 v5, v11, v4
	v_mad_u64_u32 v[8:9], s[4:5], v11, v14, 0
	v_add_co_u32_e32 v15, vcc, v5, v8
	v_mad_u64_u32 v[4:5], s[4:5], v10, v4, 0
	v_addc_co_u32_e32 v17, vcc, 0, v9, vcc
	v_mad_u64_u32 v[8:9], s[4:5], v10, v14, 0
	v_add_co_u32_e32 v4, vcc, v15, v4
	v_addc_co_u32_e32 v4, vcc, v17, v5, vcc
	v_addc_co_u32_e32 v5, vcc, 0, v9, vcc
	v_add_co_u32_e32 v4, vcc, v4, v8
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	v_add_co_u32_e32 v14, vcc, v11, v4
	v_addc_co_u32_e32 v15, vcc, v10, v5, vcc
	v_mul_lo_u32 v8, v12, v15
	v_mul_lo_u32 v9, v13, v14
	v_mad_u64_u32 v[4:5], s[4:5], v12, v14, 0
	v_add3_u32 v5, v5, v8, v9
	v_mad_u64_u32 v[10:11], s[4:5], v14, v5, 0
	v_mul_hi_u32 v12, v14, v4
	v_mad_u64_u32 v[8:9], s[4:5], v15, v5, 0
	v_mad_u64_u32 v[4:5], s[4:5], v15, v4, 0
	v_add_co_u32_e32 v10, vcc, v12, v10
	v_addc_co_u32_e32 v11, vcc, 0, v11, vcc
	v_add_co_u32_e32 v4, vcc, v10, v4
	v_addc_co_u32_e32 v4, vcc, v11, v5, vcc
	v_addc_co_u32_e32 v5, vcc, 0, v9, vcc
	v_add_co_u32_e32 v4, vcc, v4, v8
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	v_add_co_u32_e32 v8, vcc, v14, v4
	v_addc_co_u32_e32 v9, vcc, v15, v5, vcc
	v_mad_u64_u32 v[4:5], s[4:5], v2, v9, 0
	v_mul_hi_u32 v10, v2, v8
	v_add_co_u32_e32 v10, vcc, v10, v4
	v_addc_co_u32_e32 v11, vcc, 0, v5, vcc
	v_mad_u64_u32 v[4:5], s[4:5], v3, v8, 0
	v_mad_u64_u32 v[8:9], s[4:5], v3, v9, 0
	v_add_co_u32_e32 v4, vcc, v10, v4
	v_addc_co_u32_e32 v4, vcc, v11, v5, vcc
	v_addc_co_u32_e32 v5, vcc, 0, v9, vcc
	v_add_co_u32_e32 v4, vcc, v4, v8
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	v_mul_lo_u32 v8, v7, v4
	v_mul_lo_u32 v9, v6, v5
	v_mad_u64_u32 v[4:5], s[4:5], v6, v4, 0
	v_add3_u32 v5, v5, v9, v8
	v_sub_u32_e32 v8, v3, v5
	v_sub_co_u32_e32 v2, vcc, v2, v4
	v_subb_co_u32_e64 v4, s[4:5], v8, v7, vcc
	v_sub_co_u32_e64 v8, s[4:5], v2, v6
	v_subbrev_co_u32_e64 v9, s[6:7], 0, v4, s[4:5]
	v_cmp_ge_u32_e64 s[6:7], v9, v7
	v_cndmask_b32_e64 v10, 0, -1, s[6:7]
	v_cmp_ge_u32_e64 s[6:7], v8, v6
	v_subb_co_u32_e32 v3, vcc, v3, v5, vcc
	v_cndmask_b32_e64 v11, 0, -1, s[6:7]
	v_cmp_eq_u32_e64 s[6:7], v9, v7
	v_subb_co_u32_e64 v4, s[4:5], v4, v7, s[4:5]
	v_cmp_ge_u32_e32 vcc, v3, v7
	v_cndmask_b32_e64 v10, v10, v11, s[6:7]
	v_sub_co_u32_e64 v11, s[4:5], v8, v6
	v_cndmask_b32_e64 v5, 0, -1, vcc
	v_cmp_ge_u32_e32 vcc, v2, v6
	v_subbrev_co_u32_e64 v4, s[4:5], 0, v4, s[4:5]
	v_cndmask_b32_e64 v6, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, v3, v7
	v_cmp_ne_u32_e64 s[4:5], 0, v10
	v_cndmask_b32_e32 v5, v5, v6, vcc
	v_cndmask_b32_e64 v4, v9, v4, s[4:5]
	v_cmp_ne_u32_e32 vcc, 0, v5
	v_cndmask_b32_e32 v5, v3, v4, vcc
	v_cndmask_b32_e64 v3, v8, v11, s[4:5]
	v_cndmask_b32_e32 v4, v2, v3, vcc
.LBB0_25:
	s_andn2_saveexec_b64 s[4:5], s[20:21]
	s_cbranch_execz .LBB0_27
	v_cvt_f32_u32_e32 v3, v6
	v_sub_u32_e32 v4, 0, v6
	v_mov_b32_e32 v5, 0
	v_rcp_iflag_f32_e32 v3, v3
	v_mul_f32_e32 v3, 0x4f7ffffe, v3
	v_cvt_u32_f32_e32 v3, v3
	v_mul_lo_u32 v4, v4, v3
	v_mul_hi_u32 v4, v3, v4
	v_add_u32_e32 v3, v3, v4
	v_mul_hi_u32 v3, v2, v3
	v_mul_lo_u32 v3, v3, v6
	v_sub_u32_e32 v2, v2, v3
	v_sub_u32_e32 v3, v2, v6
	v_cmp_ge_u32_e32 vcc, v2, v6
	v_cndmask_b32_e32 v2, v2, v3, vcc
	v_sub_u32_e32 v3, v2, v6
	v_cmp_ge_u32_e32 vcc, v2, v6
	v_cndmask_b32_e32 v4, v2, v3, vcc
.LBB0_27:
	s_or_b64 exec, exec, s[4:5]
	v_ffbh_u32_e32 v2, v4
	v_add_u32_e32 v2, 32, v2
	v_ffbh_u32_e32 v3, v5
	v_min_u32_e32 v2, v2, v3
	v_add_u32_e32 v2, -11, v2
	v_lshlrev_b64 v[4:5], v2, v[4:5]
	v_sub_u32_e32 v2, v16, v2
	v_cmp_gt_i32_e32 vcc, 0, v2
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	v_sub_u32_e32 v2, 0, v2
	v_lshrrev_b64 v[4:5], v2, v[4:5]
	v_and_b32_e32 v5, 0xfffff, v5
	s_andn2_saveexec_b64 s[4:5], s[4:5]
	v_and_b32_e32 v3, 0xfffff, v5
	v_mov_b32_e32 v5, 0x100000
	v_lshl_add_u32 v2, v2, 20, v5
	v_and_b32_e32 v2, 0x7ff00000, v2
	v_or_b32_e32 v5, v2, v3
	s_or_b64 exec, exec, s[4:5]
.LBB0_32:
	s_andn2_saveexec_b64 s[4:5], s[18:19]
	s_cbranch_execz .LBB0_38
	v_ffbh_u32_e32 v2, v8
	v_add_u32_e32 v2, 32, v2
	v_ffbh_u32_e32 v3, v9
	v_min_u32_e32 v2, v2, v3
	v_add_u32_e32 v2, -11, v2
	v_lshlrev_b64 v[4:5], v2, v[8:9]
	v_sub_u32_e32 v2, v16, v2
	v_cmp_gt_i32_e32 vcc, 0, v2
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	v_sub_u32_e32 v2, 0, v2
	v_lshrrev_b64 v[4:5], v2, v[4:5]
	v_and_b32_e32 v5, 0xfffff, v5
	s_andn2_saveexec_b64 s[6:7], s[6:7]
	v_and_b32_e32 v3, 0xfffff, v5
	v_mov_b32_e32 v5, 0x100000
	v_lshl_add_u32 v2, v2, 20, v5
	v_and_b32_e32 v2, 0x7ff00000, v2
	v_or_b32_e32 v5, v2, v3
	s_or_b64 exec, exec, s[6:7]
.LBB0_38:
	s_or_b64 exec, exec, s[4:5]
.LBB0_39:
	s_or_b64 exec, exec, s[8:9]
.LBB0_40:
	s_andn2_saveexec_b64 s[8:9], s[16:17]
	s_cbranch_execz .LBB0_47
	v_or_b32_e32 v3, v9, v7
	v_mov_b32_e32 v2, 0
	v_cmp_ne_u64_e32 vcc, 0, v[2:3]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[16:17], exec, s[4:5]
	s_cbranch_execz .LBB0_43
	v_cvt_f32_u32_e32 v2, v6
	v_cvt_f32_u32_e32 v3, v7
	v_sub_co_u32_e32 v12, vcc, 0, v6
	v_subb_co_u32_e32 v13, vcc, 0, v7, vcc
	v_mac_f32_e32 v2, 0x4f800000, v3
	v_rcp_f32_e32 v2, v2
	v_mul_f32_e32 v2, 0x5f7ffffc, v2
	v_mul_f32_e32 v3, 0x2f800000, v2
	v_trunc_f32_e32 v3, v3
	v_mac_f32_e32 v2, 0xcf800000, v3
	v_cvt_u32_f32_e32 v10, v3
	v_cvt_u32_f32_e32 v11, v2
	v_mul_lo_u32 v4, v12, v10
	v_mul_lo_u32 v5, v13, v11
	v_mad_u64_u32 v[2:3], s[4:5], v12, v11, 0
	v_add3_u32 v5, v3, v4, v5
	v_mul_hi_u32 v14, v11, v2
	v_mad_u64_u32 v[3:4], s[4:5], v11, v5, 0
	v_add_co_u32_e32 v14, vcc, v14, v3
	v_mad_u64_u32 v[2:3], s[4:5], v10, v2, 0
	v_addc_co_u32_e32 v15, vcc, 0, v4, vcc
	v_mad_u64_u32 v[4:5], s[4:5], v10, v5, 0
	v_add_co_u32_e32 v2, vcc, v14, v2
	v_addc_co_u32_e32 v2, vcc, v15, v3, vcc
	v_addc_co_u32_e32 v3, vcc, 0, v5, vcc
	v_add_co_u32_e32 v2, vcc, v2, v4
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	v_add_co_u32_e32 v5, vcc, v11, v2
	v_addc_co_u32_e32 v14, vcc, v10, v3, vcc
	v_mul_lo_u32 v4, v12, v14
	v_mul_lo_u32 v10, v13, v5
	v_mad_u64_u32 v[2:3], s[4:5], v12, v5, 0
	v_add3_u32 v10, v3, v4, v10
	v_mad_u64_u32 v[3:4], s[4:5], v14, v10, 0
	v_mad_u64_u32 v[10:11], s[4:5], v5, v10, 0
	v_mul_hi_u32 v15, v5, v2
	v_mad_u64_u32 v[12:13], s[4:5], v14, v2, 0
	v_add_co_u32_e32 v2, vcc, v15, v10
	v_addc_co_u32_e32 v10, vcc, 0, v11, vcc
	v_add_co_u32_e32 v2, vcc, v2, v12
	v_addc_co_u32_e32 v2, vcc, v10, v13, vcc
	v_addc_co_u32_e32 v4, vcc, 0, v4, vcc
	v_add_co_u32_e32 v2, vcc, v2, v3
	v_addc_co_u32_e32 v3, vcc, 0, v4, vcc
	v_add_co_u32_e32 v4, vcc, v5, v2
	v_addc_co_u32_e32 v5, vcc, v14, v3, vcc
	v_mad_u64_u32 v[2:3], s[4:5], v8, v5, 0
	v_mul_hi_u32 v10, v8, v4
	v_add_co_u32_e32 v10, vcc, v10, v2
	v_addc_co_u32_e32 v11, vcc, 0, v3, vcc
	v_mad_u64_u32 v[2:3], s[4:5], v9, v4, 0
	v_mad_u64_u32 v[4:5], s[4:5], v9, v5, 0
	v_add_co_u32_e32 v2, vcc, v10, v2
	v_addc_co_u32_e32 v2, vcc, v11, v3, vcc
	v_addc_co_u32_e32 v3, vcc, 0, v5, vcc
	v_add_co_u32_e32 v2, vcc, v2, v4
	v_addc_co_u32_e32 v3, vcc, 0, v3, vcc
	v_mul_lo_u32 v4, v7, v2
	v_mul_lo_u32 v5, v6, v3
	v_mad_u64_u32 v[2:3], s[4:5], v6, v2, 0
	v_add3_u32 v3, v3, v5, v4
	v_sub_u32_e32 v4, v9, v3
	v_sub_co_u32_e32 v2, vcc, v8, v2
	v_subb_co_u32_e64 v4, s[4:5], v4, v7, vcc
	v_sub_co_u32_e64 v8, s[4:5], v2, v6
	v_subbrev_co_u32_e64 v5, s[6:7], 0, v4, s[4:5]
	v_cmp_ge_u32_e64 s[6:7], v5, v7
	v_cndmask_b32_e64 v10, 0, -1, s[6:7]
	v_cmp_ge_u32_e64 s[6:7], v8, v6
	v_cndmask_b32_e64 v11, 0, -1, s[6:7]
	v_cmp_eq_u32_e64 s[6:7], v5, v7
	v_subb_co_u32_e64 v4, s[4:5], v4, v7, s[4:5]
	v_cndmask_b32_e64 v10, v10, v11, s[6:7]
	v_sub_co_u32_e64 v11, s[4:5], v8, v6
	v_subbrev_co_u32_e64 v4, s[4:5], 0, v4, s[4:5]
	v_subb_co_u32_e32 v3, vcc, v9, v3, vcc
	v_cmp_ne_u32_e64 s[4:5], 0, v10
	v_cmp_ge_u32_e32 vcc, v3, v7
	v_cndmask_b32_e64 v4, v5, v4, s[4:5]
	v_cndmask_b32_e64 v5, 0, -1, vcc
	v_cmp_ge_u32_e32 vcc, v2, v6
	v_cndmask_b32_e64 v6, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, v3, v7
	v_cndmask_b32_e32 v5, v5, v6, vcc
	v_cmp_ne_u32_e32 vcc, 0, v5
	v_cndmask_b32_e32 v5, v3, v4, vcc
	v_cndmask_b32_e64 v3, v8, v11, s[4:5]
	v_cndmask_b32_e32 v4, v2, v3, vcc
.LBB0_43:
	s_andn2_saveexec_b64 s[4:5], s[16:17]
	s_cbranch_execz .LBB0_45
	v_cvt_f32_u32_e32 v2, v6
	v_sub_u32_e32 v3, 0, v6
	v_mov_b32_e32 v5, 0
	v_rcp_iflag_f32_e32 v2, v2
	v_mul_f32_e32 v2, 0x4f7ffffe, v2
	v_cvt_u32_f32_e32 v2, v2
	v_mul_lo_u32 v3, v3, v2
	v_mul_hi_u32 v3, v2, v3
	v_add_u32_e32 v2, v2, v3
	v_mul_hi_u32 v2, v8, v2
	v_mul_lo_u32 v2, v2, v6
	v_sub_u32_e32 v2, v8, v2
	v_sub_u32_e32 v3, v2, v6
	v_cmp_ge_u32_e32 vcc, v2, v6
	v_cndmask_b32_e32 v2, v2, v3, vcc
	v_sub_u32_e32 v3, v2, v6
	v_cmp_ge_u32_e32 vcc, v2, v6
	v_cndmask_b32_e32 v4, v2, v3, vcc
.LBB0_45:
	s_or_b64 exec, exec, s[4:5]
	v_and_b32_e32 v5, 0xfffff, v5
	s_or_b64 exec, exec, s[8:9]
.LBB0_46:
	s_andn2_saveexec_b64 s[8:9], s[14:15]
	s_cbranch_execnz .LBB0_48
	s_branch .LBB0_63
.LBB0_47:
	s_or_b64 exec, exec, s[8:9]
	s_andn2_saveexec_b64 s[8:9], s[14:15]
	s_cbranch_execz .LBB0_63
.LBB0_48:
	v_cmp_ne_u64_e32 vcc, 0, v[12:13]
	v_and_b32_e32 v5, 0xfffff, v1
	v_cndmask_b32_e64 v4, 0, 1, vcc
	v_cmp_ne_u64_e32 vcc, 0, v[10:11]
	v_lshlrev_b32_e32 v4, 20, v4
	v_or_b32_e32 v5, v4, v5
	v_mov_b32_e32 v4, v0
	v_cndmask_b32_e64 v0, 0, 1, vcc
	v_lshlrev_b32_e32 v0, 20, v0
	v_and_b32_e32 v3, 0xfffff, v3
	v_or_b32_e32 v0, v0, v3
	v_cmp_ne_u16_e32 vcc, v15, v14
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[14:15], exec, s[4:5]
	s_cbranch_execz .LBB0_54
	v_lshlrev_b64 v[3:4], v16, v[4:5]
	v_mov_b32_e32 v5, 0
	v_or_b32_e32 v6, v4, v0
	v_cmp_ne_u64_e32 vcc, 0, v[5:6]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[16:17], exec, s[4:5]
	s_cbranch_execz .LBB0_51
	v_cvt_f32_u32_e32 v5, v2
	v_cvt_f32_u32_e32 v6, v0
	v_sub_co_u32_e32 v11, vcc, 0, v2
	v_subb_co_u32_e32 v12, vcc, 0, v0, vcc
	v_mac_f32_e32 v5, 0x4f800000, v6
	v_rcp_f32_e32 v5, v5
	v_mul_f32_e32 v5, 0x5f7ffffc, v5
	v_mul_f32_e32 v6, 0x2f800000, v5
	v_trunc_f32_e32 v6, v6
	v_mac_f32_e32 v5, 0xcf800000, v6
	v_cvt_u32_f32_e32 v9, v6
	v_cvt_u32_f32_e32 v10, v5
	v_mul_lo_u32 v7, v11, v9
	v_mul_lo_u32 v8, v12, v10
	v_mad_u64_u32 v[5:6], s[4:5], v11, v10, 0
	v_add3_u32 v8, v6, v7, v8
	v_mul_hi_u32 v13, v10, v5
	v_mad_u64_u32 v[6:7], s[4:5], v10, v8, 0
	v_add_co_u32_e32 v13, vcc, v13, v6
	v_mad_u64_u32 v[5:6], s[4:5], v9, v5, 0
	v_addc_co_u32_e32 v15, vcc, 0, v7, vcc
	v_mad_u64_u32 v[7:8], s[4:5], v9, v8, 0
	v_add_co_u32_e32 v5, vcc, v13, v5
	v_addc_co_u32_e32 v5, vcc, v15, v6, vcc
	v_addc_co_u32_e32 v6, vcc, 0, v8, vcc
	v_add_co_u32_e32 v5, vcc, v5, v7
	v_addc_co_u32_e32 v6, vcc, 0, v6, vcc
	v_add_co_u32_e32 v13, vcc, v10, v5
	v_addc_co_u32_e32 v15, vcc, v9, v6, vcc
	v_mul_lo_u32 v7, v11, v15
	v_mul_lo_u32 v8, v12, v13
	v_mad_u64_u32 v[5:6], s[4:5], v11, v13, 0
	v_add3_u32 v8, v6, v7, v8
	v_mad_u64_u32 v[6:7], s[4:5], v15, v8, 0
	v_mad_u64_u32 v[8:9], s[4:5], v13, v8, 0
	v_mul_hi_u32 v12, v13, v5
	v_mad_u64_u32 v[10:11], s[4:5], v15, v5, 0
	v_add_co_u32_e32 v5, vcc, v12, v8
	v_addc_co_u32_e32 v8, vcc, 0, v9, vcc
	v_add_co_u32_e32 v5, vcc, v5, v10
	v_addc_co_u32_e32 v5, vcc, v8, v11, vcc
	v_addc_co_u32_e32 v7, vcc, 0, v7, vcc
	v_add_co_u32_e32 v5, vcc, v5, v6
	v_addc_co_u32_e32 v6, vcc, 0, v7, vcc
	v_add_co_u32_e32 v7, vcc, v13, v5
	v_addc_co_u32_e32 v8, vcc, v15, v6, vcc
	v_mad_u64_u32 v[5:6], s[4:5], v3, v8, 0
	v_mul_hi_u32 v9, v3, v7
	v_add_co_u32_e32 v9, vcc, v9, v5
	v_addc_co_u32_e32 v10, vcc, 0, v6, vcc
	v_mad_u64_u32 v[5:6], s[4:5], v4, v7, 0
	v_mad_u64_u32 v[7:8], s[4:5], v4, v8, 0
	v_add_co_u32_e32 v5, vcc, v9, v5
	v_addc_co_u32_e32 v5, vcc, v10, v6, vcc
	v_addc_co_u32_e32 v6, vcc, 0, v8, vcc
	v_add_co_u32_e32 v5, vcc, v5, v7
	v_addc_co_u32_e32 v6, vcc, 0, v6, vcc
	v_mul_lo_u32 v7, v0, v5
	v_mul_lo_u32 v8, v2, v6
	v_mad_u64_u32 v[5:6], s[4:5], v2, v5, 0
	v_add3_u32 v6, v6, v8, v7
	v_sub_u32_e32 v7, v4, v6
	v_sub_co_u32_e32 v3, vcc, v3, v5
	v_subb_co_u32_e64 v5, s[4:5], v7, v0, vcc
	v_sub_co_u32_e64 v8, s[4:5], v3, v2
	v_subbrev_co_u32_e64 v7, s[6:7], 0, v5, s[4:5]
	v_cmp_ge_u32_e64 s[6:7], v7, v0
	v_cndmask_b32_e64 v9, 0, -1, s[6:7]
	v_cmp_ge_u32_e64 s[6:7], v8, v2
	v_subb_co_u32_e32 v4, vcc, v4, v6, vcc
	v_cndmask_b32_e64 v10, 0, -1, s[6:7]
	v_cmp_eq_u32_e64 s[6:7], v7, v0
	v_subb_co_u32_e64 v5, s[4:5], v5, v0, s[4:5]
	v_cmp_ge_u32_e32 vcc, v4, v0
	v_cndmask_b32_e64 v9, v9, v10, s[6:7]
	v_sub_co_u32_e64 v10, s[4:5], v8, v2
	v_cndmask_b32_e64 v6, 0, -1, vcc
	v_cmp_ge_u32_e32 vcc, v3, v2
	v_subbrev_co_u32_e64 v5, s[4:5], 0, v5, s[4:5]
	v_cndmask_b32_e64 v2, 0, -1, vcc
	v_cmp_eq_u32_e32 vcc, v4, v0
	v_cmp_ne_u32_e64 s[4:5], 0, v9
	v_cndmask_b32_e32 v0, v6, v2, vcc
	v_cmp_ne_u32_e32 vcc, 0, v0
	v_cndmask_b32_e64 v0, v8, v10, s[4:5]
	v_cndmask_b32_e64 v5, v7, v5, s[4:5]
	v_cndmask_b32_e32 v6, v3, v0, vcc
	v_cndmask_b32_e32 v7, v4, v5, vcc
.LBB0_51:
	s_andn2_saveexec_b64 s[4:5], s[16:17]
	s_cbranch_execz .LBB0_53
	v_cvt_f32_u32_e32 v0, v2
	v_sub_u32_e32 v4, 0, v2
	v_mov_b32_e32 v7, 0
	v_rcp_iflag_f32_e32 v0, v0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_mul_lo_u32 v4, v4, v0
	v_mul_hi_u32 v4, v0, v4
	v_add_u32_e32 v0, v0, v4
	v_mul_hi_u32 v0, v3, v0
	v_mul_lo_u32 v0, v0, v2
	v_sub_u32_e32 v0, v3, v0
	v_sub_u32_e32 v3, v0, v2
	v_cmp_ge_u32_e32 vcc, v0, v2
	v_cndmask_b32_e32 v0, v0, v3, vcc
	v_sub_u32_e32 v3, v0, v2
	v_cmp_ge_u32_e32 vcc, v0, v2
	v_cndmask_b32_e32 v6, v0, v3, vcc
.LBB0_53:
	s_or_b64 exec, exec, s[4:5]
.LBB0_54:
	s_andn2_saveexec_b64 s[4:5], s[14:15]
	v_sub_co_u32_e32 v6, vcc, v4, v2
	v_subb_co_u32_e32 v7, vcc, v5, v0, vcc
	s_or_b64 exec, exec, s[4:5]
	v_cmp_ne_u64_e32 vcc, 0, v[6:7]
	v_mov_b32_e32 v4, 0
	v_mov_b32_e32 v5, 0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz .LBB0_62
	v_ffbh_u32_e32 v0, v6
	v_add_u32_e32 v0, 32, v0
	v_ffbh_u32_e32 v2, v7
	v_min_u32_e32 v0, v0, v2
	v_add_u32_e32 v2, -11, v0
	v_lshlrev_b64 v[4:5], v2, v[6:7]
	v_sub_u32_e32 v0, v14, v0
	v_cmp_gt_i32_e32 vcc, -10, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	v_sub_u32_e32 v0, -10, v0
	v_lshrrev_b64 v[4:5], v0, v[4:5]
	v_and_b32_e32 v5, 0xfffff, v5
	s_andn2_saveexec_b64 s[6:7], s[6:7]
	v_mov_b32_e32 v3, 0xb00000
	v_lshl_add_u32 v0, v0, 20, v3
	v_and_b32_e32 v2, 0xfffff, v5
	v_and_b32_e32 v0, 0x7ff00000, v0
	v_or_b32_e32 v5, v0, v2
	s_or_b64 exec, exec, s[6:7]
.LBB0_62:
	s_or_b64 exec, exec, s[4:5]
.LBB0_63:
	s_or_b64 exec, exec, s[8:9]
.LBB0_64:
	s_or_b64 exec, exec, s[12:13]
	v_and_b32_e32 v0, 0x80000000, v1
	v_or_b32_e32 v5, v5, v0
	s_or_b64 exec, exec, s[10:11]
	v_mov_b32_e32 v0, v4
	v_mov_b32_e32 v1, v5
	s_setpc_b64 s[30:31]
.Lfunc_end1:
	.size	fmod, .Lfunc_end1-fmod

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28
	.p2align	8
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28,@function
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28:
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
.Lfunc_end2:
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28, .Lfunc_end2-__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14
	.p2align	8
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14,@function
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14:
	v_cmp_eq_u32_e32 vcc, 0, v0
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB2_2
	v_mov_b32_e32 v1, 1
	v_mov_b32_e32 v2, 0
	ds_write_b32 v2, v1
.LBB2_2:
	s_or_b64 exec, exec, s[0:1]
	s_load_dwordx8 s[12:19], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_load_dword s9, s[12:13], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s9, 1
	s_cbranch_scc1 .LBB2_14
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
	s_cbranch_scc1 .LBB2_14
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
	s_branch .LBB2_6
.LBB2_5:
	s_or_b64 exec, exec, s[0:1]
	s_add_i32 s0, s2, s11
	s_add_i32 s8, s8, s11
	s_min_i32 s2, s0, s20
	s_cmp_lt_i32 s8, s9
	v_add_u32_e32 v1, s11, v1
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_scc0 .LBB2_14
.LBB2_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB2_8
	v_mov_b32_e32 v2, s10
	ds_write_b32 v11, v2
.LBB2_8:
	s_or_b64 exec, exec, s[0:1]
	v_mov_b32_e32 v2, s12
	v_mov_b32_e32 v3, s13
	s_waitcnt lgkmcnt(0)
	s_barrier
	flat_load_dword v2, v[2:3]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_lt_i32_e64 s[0:1], 0, v2
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB2_12
	v_add_u32_e32 v2, s8, v0
	v_ashrrev_i32_e32 v3, 31, v2
	v_cmp_ge_u64_e64 s[0:1], s[2:3], v[2:3]
	s_and_b64 exec, exec, s[0:1]
	s_cbranch_execz .LBB2_12
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
.LBB2_11:
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
	s_cbranch_execnz .LBB2_11
.LBB2_12:
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB2_5
	ds_write_b32 v11, v12
	s_branch .LBB2_5
.LBB2_14:
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
.Lfunc_end3:
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14, .Lfunc_end3-__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30:
	s_add_u32 flat_scratch_lo, s8, s11
	s_addc_u32 flat_scratch_hi, s9, 0
	s_add_u32 s0, s0, s11
	v_mov_b32_e32 v31, v0
	s_addc_u32 s1, s1, 0
	v_cmp_eq_u32_e64 s[26:27], 0, v31
	s_mov_b32 s32, 0
	s_and_saveexec_b64 s[8:9], s[26:27]
	s_cbranch_execz .LBB4_2
	v_mov_b32_e32 v0, 1
	v_mov_b32_e32 v1, 0
	ds_write_b32 v1, v0
.LBB4_2:
	s_or_b64 exec, exec, s[8:9]
	s_load_dwordx8 s[36:43], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s36, 1
	s_cbranch_scc1 .LBB4_15
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
	s_cbranch_scc1 .LBB4_15
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
	s_sub_i32 s50, s4, s5
	s_add_i32 s4, s33, s37
	s_add_i32 s51, s36, -1
	s_add_i32 s4, s4, -1
	s_min_i32 s34, s4, s51
	s_cmp_gt_i32 s36, 0
	s_cselect_b64 s[4:5], -1, 0
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	s_mov_b32 s35, 0
	v_mov_b32_e32 v34, 0
	v_cmp_ne_u32_e64 s[28:29], 1, v0
	v_mov_b32_e32 v35, 1
	s_getpc_b64 s[44:45]
	s_add_u32 s44, s44, fmod.internalized@rel32@lo+4
	s_addc_u32 s45, s45, fmod.internalized@rel32@hi+12
	s_branch .LBB4_6
.LBB4_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s34, s50
	s_add_i32 s37, s37, s50
	s_min_i32 s34, s4, s51
	s_cmp_lt_i32 s37, s36
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB4_15
.LBB4_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[26:27]
	s_cbranch_execz .LBB4_8
	v_mov_b32_e32 v0, s33
	ds_write_b32 v34, v0
.LBB4_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[28:29]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB4_13
	v_add_u32_e32 v32, s37, v31
	v_ashrrev_i32_e32 v33, 31, v32
	v_cmp_ge_u64_e32 vcc, s[34:35], v[32:33]
	s_and_saveexec_b64 s[46:47], vcc
	s_cbranch_execz .LBB4_12
	ds_read_b32 v36, v34
	s_mov_b64 s[48:49], 0
.LBB4_11:
	v_lshlrev_b64 v[37:38], 3, v[32:33]
	v_mov_b32_e32 v1, s41
	v_add_co_u32_e32 v0, vcc, s40, v37
	v_addc_co_u32_e32 v1, vcc, v1, v38, vcc
	v_mov_b32_e32 v3, s43
	v_add_co_u32_e32 v2, vcc, s42, v37
	v_addc_co_u32_e32 v3, vcc, v3, v38, vcc
	flat_load_dwordx2 v[0:1], v[0:1]
	s_nop 0
	flat_load_dwordx2 v[2:3], v[2:3]
	s_swappc_b64 s[30:31], s[44:45]
	v_add_u32_e32 v32, v36, v32
	v_ashrrev_i32_e32 v33, 31, v32
	v_cmp_lt_u64_e32 vcc, s[34:35], v[32:33]
	v_mov_b32_e32 v3, s39
	v_add_co_u32_e64 v2, s[4:5], s38, v37
	v_addc_co_u32_e64 v3, s[4:5], v3, v38, s[4:5]
	s_or_b64 s[48:49], vcc, s[48:49]
	flat_store_dwordx2 v[2:3], v[0:1]
	s_andn2_b64 exec, exec, s[48:49]
	s_cbranch_execnz .LBB4_11
.LBB4_12:
	s_or_b64 exec, exec, s[46:47]
.LBB4_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[26:27]
	s_cbranch_execz .LBB4_5
	ds_write_b32 v34, v35
	s_branch .LBB4_5
.LBB4_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
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
		.amdhsa_next_free_vgpr 39
		.amdhsa_next_free_sgpr 52
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30, .Lfunc_end4-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30:
	v_cmp_eq_u32_e64 s[0:1], 0, v0
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz .LBB5_2
	v_mov_b32_e32 v1, 1
	v_mov_b32_e32 v2, 0
	ds_write_b32 v2, v1
.LBB5_2:
	s_or_b64 exec, exec, s[2:3]
	s_load_dwordx8 s[12:19], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s12, 1
	s_cbranch_scc1 .LBB5_23
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
	s_cbranch_scc1 .LBB5_23
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
	s_min_i32 s10, s2, s26
	s_cmp_gt_i32 s12, 0
	s_cselect_b64 s[2:3], -1, 0
	v_cndmask_b32_e64 v1, 0, 1, s[2:3]
	s_mov_b32 s11, 0
	v_mov_b32_e32 v15, 0
	v_cmp_ne_u32_e64 s[2:3], 1, v1
	v_mov_b32_e32 v16, 0x1f8
	v_mov_b32_e32 v17, 1
	v_bfrev_b32_e32 v18, 1
	v_mov_b32_e32 v19, 0x7ff80000
	s_branch .LBB5_6
.LBB5_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s10, s25
	s_add_i32 s24, s24, s25
	s_min_i32 s10, s4, s26
	s_cmp_lt_i32 s24, s12
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB5_23
.LBB5_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB5_8
	v_mov_b32_e32 v1, s13
	ds_write_b32 v15, v1
.LBB5_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB5_21
	v_add_u32_e32 v1, s24, v0
	v_ashrrev_i32_e32 v2, 31, v1
	v_cmp_ge_u64_e32 vcc, s[10:11], v[1:2]
	s_and_saveexec_b64 s[20:21], vcc
	s_cbranch_execz .LBB5_20
	ds_read_b32 v20, v15
	s_mov_b64 s[22:23], 0
	s_branch .LBB5_13
.LBB5_11:
	s_or_b64 exec, exec, s[6:7]
	v_subrev_u32_e32 v21, 25, v21
	v_ldexp_f64 v[13:14], v[13:14], v21
	v_add_u32_e32 v2, -1, v2
	v_mul_f64 v[11:12], v[11:12], v[13:14]
	v_rndne_f64_e32 v[11:12], v[11:12]
	v_fma_f64 v[11:12], -v[11:12], v[9:10], v[13:14]
	v_cmp_gt_f64_e32 vcc, 0, v[11:12]
	v_cndmask_b32_e32 v10, v18, v10, vcc
	v_cndmask_b32_e32 v9, 0, v9, vcc
	v_add_f64 v[9:10], v[11:12], v[9:10]
	v_ldexp_f64 v[9:10], v[9:10], v2
	v_and_b32_e32 v2, 0x80000000, v6
	v_xor_b32_e32 v10, v2, v10
.LBB5_12:
	s_or_b64 exec, exec, s[4:5]
	v_cmp_o_f64_e32 vcc, v[7:8], v[7:8]
	v_cmp_class_f64_e64 s[4:5], v[5:6], v16
	v_cmp_neq_f64_e64 s[6:7], 0, v[7:8]
	v_add_u32_e32 v1, v20, v1
	v_ashrrev_i32_e32 v2, 31, v1
	v_cmp_lt_u64_e64 s[8:9], s[10:11], v[1:2]
	v_mov_b32_e32 v7, s15
	s_and_b64 s[4:5], s[4:5], vcc
	s_and_b64 vcc, s[4:5], s[6:7]
	v_cndmask_b32_e32 v6, v19, v10, vcc
	v_cndmask_b32_e32 v5, 0, v9, vcc
	v_add_co_u32_e32 v3, vcc, s14, v3
	v_addc_co_u32_e32 v4, vcc, v7, v4, vcc
	s_or_b64 s[22:23], s[8:9], s[22:23]
	flat_store_dwordx2 v[3:4], v[5:6]
	s_andn2_b64 exec, exec, s[22:23]
	s_cbranch_execz .LBB5_20
.LBB5_13:
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
	v_cmp_eq_f64_e64 vcc, |v[5:6]|, |v[7:8]|
	v_and_b32_e32 v2, 0x80000000, v6
	v_cndmask_b32_e32 v10, v6, v2, vcc
	v_cndmask_b32_e64 v9, v5, 0, vcc
	s_andn2_saveexec_b64 s[4:5], s[4:5]
	s_cbranch_execz .LBB5_12
	v_frexp_mant_f64_e64 v[9:10], |v[7:8]|
	v_frexp_exp_i32_f64_e64 v2, |v[7:8]|
	v_ldexp_f64 v[9:10], v[9:10], 1
	v_div_scale_f64 v[11:12], s[6:7], v[9:10], v[9:10], 1.0
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
	s_and_saveexec_b64 s[6:7], vcc
	s_cbranch_execz .LBB5_11
	s_mov_b64 s[8:9], 0
.LBB5_18:
	v_mul_f64 v[22:23], v[11:12], v[13:14]
	v_rndne_f64_e32 v[22:23], v[22:23]
	v_fma_f64 v[13:14], -v[22:23], v[9:10], v[13:14]
	v_cmp_gt_f64_e32 vcc, 0, v[13:14]
	v_cndmask_b32_e32 v23, v18, v10, vcc
	v_cndmask_b32_e32 v22, 0, v9, vcc
	v_add_f64 v[13:14], v[13:14], v[22:23]
	v_cmp_gt_u32_e32 vcc, 53, v21
	s_or_b64 s[8:9], vcc, s[8:9]
	v_subrev_u32_e32 v21, 26, v21
	v_ldexp_f64 v[13:14], v[13:14], 26
	s_andn2_b64 exec, exec, s[8:9]
	s_cbranch_execnz .LBB5_18
	s_or_b64 exec, exec, s[8:9]
	s_branch .LBB5_11
.LBB5_20:
	s_or_b64 exec, exec, s[20:21]
.LBB5_21:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB5_5
	ds_write_b32 v15, v17
	s_branch .LBB5_5
.LBB5_23:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
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
		.amdhsa_next_free_sgpr 27
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
.Lfunc_end5:
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30, .Lfunc_end5-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30

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

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_exec_mode, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30_nested_parallelism.10, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30_nested_parallelism.11, 1

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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFdddEadL_Z4fmodEEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l30.kd
    .vgpr_count:     39
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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_fmod_f64EEJddEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l30.kd
    .vgpr_count:     25
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata
