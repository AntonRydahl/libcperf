	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.p2align	2
	.type	acosf,@function
acosf:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	v_and_b32_e32 v2, 0x7fffffff, v0
	v_cmp_lt_u32_e32 vcc, 0.5, v2
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[6:7], exec, s[4:5]
	s_cbranch_execnz .LBB2_3
	s_andn2_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execnz .LBB2_22
.LBB2_2:
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v0, v1
	s_setpc_b64 s[30:31]
.LBB2_3:
	s_mov_b32 s4, 0x3f800001
	v_cmp_gt_u32_e32 vcc, s4, v2
	v_mov_b32_e32 v1, 0x7fc00000
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execz .LBB2_21
	v_cvt_f64_f32_e32 v[1:2], v2
	s_mov_b32 s4, 0
	s_mov_b32 s5, 0x7ff00000
	v_mov_b32_e32 v3, 0
	v_fma_f64 v[1:2], v[1:2], -0.5, 0.5
	v_and_b32_e32 v4, 0x7ff00000, v2
	v_cmp_ne_u64_e32 vcc, s[4:5], v[3:4]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[10:11], exec, s[4:5]
	s_cbranch_execz .LBB2_18
	v_and_b32_e32 v4, 0x7fffffff, v2
	v_mov_b32_e32 v3, v1
	v_cmp_ne_u64_e32 vcc, 0, v[3:4]
	v_mov_b32_e32 v4, v2
	v_mov_b32_e32 v3, v1
	s_and_saveexec_b64 s[12:13], vcc
	s_cbranch_execz .LBB2_17
	s_mov_b32 s4, 0
	v_cmp_lt_i64_e32 vcc, -1, v[1:2]
	s_mov_b32 s5, 0x7ff80000
	v_mov_b32_e32 v3, s4
	v_mov_b32_e32 v4, s5
	s_and_saveexec_b64 s[14:15], vcc
	s_cbranch_execz .LBB2_16
	s_mov_b32 s4, -1
	s_mov_b32 s5, 0xfffff
	v_cmp_lt_u64_e32 vcc, s[4:5], v[1:2]
	v_lshrrev_b32_e32 v5, 20, v2
	v_and_b32_e32 v4, 0xfffff, v2
	v_mov_b32_e32 v3, v1
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	v_add_u32_e32 v11, 0xfffffc01, v5
	v_or_b32_e32 v4, 0x100000, v4
	s_andn2_saveexec_b64 s[4:5], s[4:5]
	v_ffbh_u32_e32 v6, v3
	v_add_u32_e32 v6, 32, v6
	v_ffbh_u32_e32 v7, v4
	v_min_u32_e32 v6, v6, v7
	v_add_u32_e32 v7, -11, v6
	v_sub_u32_e32 v5, v5, v6
	v_lshlrev_b64 v[3:4], v7, v[3:4]
	v_add_u32_e32 v11, 0xfffffc0d, v5
	s_or_b64 exec, exec, s[4:5]
	v_and_b32_e32 v5, 1, v11
	v_lshlrev_b64 v[3:4], v5, v[3:4]
	s_mov_b32 s4, 0
	s_mov_b32 s5, 0x100000
	v_mov_b32_e32 v5, 0xfff00000
	v_add_co_u32_e32 v9, vcc, 0, v3
	v_mov_b32_e32 v8, s5
	v_addc_co_u32_e32 v10, vcc, v4, v5, vcc
	s_mov_b32 s17, 0x80000
	s_mov_b32 s16, s4
	v_mov_b32_e32 v7, s4
	s_branch .LBB2_13
.LBB2_12:
	v_lshlrev_b64 v[9:10], 1, v[3:4]
	s_lshr_b64 s[4:5], s[16:17], 4
	v_lshlrev_b64 v[7:8], 1, v[5:6]
	v_mov_b32_e32 v12, s5
	v_add_co_u32_e32 v9, vcc, s4, v9
	v_addc_co_u32_e32 v10, vcc, v10, v12, vcc
	v_cmp_lt_u64_e32 vcc, v[7:8], v[9:10]
	v_cndmask_b32_e64 v13, v12, 0, vcc
	v_mov_b32_e32 v12, s4
	v_cndmask_b32_e64 v12, v12, 0, vcc
	v_add_co_u32_e64 v12, s[4:5], v12, v3
	v_cndmask_b32_e64 v9, v9, 0, vcc
	v_addc_co_u32_e64 v13, s[4:5], v13, v4, s[4:5]
	v_cndmask_b32_e64 v10, v10, 0, vcc
	v_sub_co_u32_e32 v7, vcc, v7, v9
	v_subb_co_u32_e32 v8, vcc, v8, v10, vcc
	v_lshlrev_b64 v[9:10], 1, v[12:13]
	s_lshr_b64 s[4:5], s[16:17], 5
	v_lshlrev_b64 v[7:8], 1, v[7:8]
	v_mov_b32_e32 v14, s5
	v_add_co_u32_e32 v9, vcc, s4, v9
	v_addc_co_u32_e32 v10, vcc, v10, v14, vcc
	v_cmp_lt_u64_e32 vcc, v[7:8], v[9:10]
	v_mov_b32_e32 v15, s4
	v_cndmask_b32_e64 v15, v15, 0, vcc
	v_cndmask_b32_e64 v14, v14, 0, vcc
	v_add_co_u32_e64 v12, s[4:5], v15, v12
	v_cndmask_b32_e64 v9, v9, 0, vcc
	v_addc_co_u32_e64 v13, s[4:5], v14, v13, s[4:5]
	v_cndmask_b32_e64 v10, v10, 0, vcc
	v_sub_co_u32_e32 v7, vcc, v7, v9
	v_subb_co_u32_e32 v8, vcc, v8, v10, vcc
	v_lshlrev_b64 v[9:10], 1, v[12:13]
	s_lshr_b64 s[4:5], s[16:17], 6
	v_lshlrev_b64 v[7:8], 1, v[7:8]
	v_mov_b32_e32 v14, s5
	v_add_co_u32_e32 v9, vcc, s4, v9
	v_addc_co_u32_e32 v10, vcc, v10, v14, vcc
	v_cmp_lt_u64_e32 vcc, v[7:8], v[9:10]
	v_mov_b32_e32 v15, s4
	v_cndmask_b32_e64 v15, v15, 0, vcc
	v_cndmask_b32_e64 v9, v9, 0, vcc
	v_cndmask_b32_e64 v14, v14, 0, vcc
	v_add_co_u32_e64 v12, s[4:5], v15, v12
	v_cndmask_b32_e64 v10, v10, 0, vcc
	v_sub_co_u32_e32 v7, vcc, v7, v9
	v_addc_co_u32_e64 v13, s[4:5], v14, v13, s[4:5]
	v_subb_co_u32_e32 v8, vcc, v8, v10, vcc
	v_lshlrev_b64 v[9:10], 1, v[7:8]
	v_lshlrev_b64 v[7:8], 1, v[12:13]
	s_lshr_b64 s[4:5], s[16:17], 7
	v_mov_b32_e32 v15, s5
	v_add_co_u32_e32 v14, vcc, s4, v7
	v_addc_co_u32_e32 v15, vcc, v8, v15, vcc
	v_cmp_lt_u64_e32 vcc, v[9:10], v[14:15]
	v_mov_b32_e32 v7, s5
	v_cndmask_b32_e64 v8, v7, 0, vcc
	v_mov_b32_e32 v7, s4
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_add_co_u32_e64 v7, s[4:5], v7, v12
	v_addc_co_u32_e64 v8, s[4:5], v8, v13, s[4:5]
	v_cndmask_b32_e64 v13, v14, 0, vcc
	v_cndmask_b32_e64 v12, v15, 0, vcc
	v_sub_co_u32_e32 v9, vcc, v9, v13
	v_subb_co_u32_e32 v10, vcc, v10, v12, vcc
	s_lshr_b64 s[16:17], s[16:17], 8
	s_cbranch_execz .LBB2_15
.LBB2_13:
	v_lshlrev_b64 v[5:6], 1, v[7:8]
	v_lshlrev_b64 v[3:4], 1, v[9:10]
	v_mov_b32_e32 v9, s17
	v_add_co_u32_e32 v5, vcc, s16, v5
	v_addc_co_u32_e32 v6, vcc, v6, v9, vcc
	v_cmp_lt_u64_e32 vcc, v[3:4], v[5:6]
	v_mov_b32_e32 v10, s16
	v_cndmask_b32_e64 v10, v10, 0, vcc
	v_cndmask_b32_e64 v9, v9, 0, vcc
	v_add_co_u32_e64 v7, s[4:5], v10, v7
	v_cndmask_b32_e64 v5, v5, 0, vcc
	v_addc_co_u32_e64 v8, s[4:5], v9, v8, s[4:5]
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_sub_co_u32_e32 v3, vcc, v3, v5
	v_subb_co_u32_e32 v4, vcc, v4, v6, vcc
	v_lshlrev_b64 v[5:6], 1, v[7:8]
	s_lshr_b64 s[4:5], s[16:17], 1
	v_lshlrev_b64 v[3:4], 1, v[3:4]
	v_mov_b32_e32 v9, s5
	v_add_co_u32_e32 v5, vcc, s4, v5
	v_addc_co_u32_e32 v6, vcc, v6, v9, vcc
	v_cmp_lt_u64_e32 vcc, v[3:4], v[5:6]
	v_mov_b32_e32 v10, s4
	v_cndmask_b32_e64 v10, v10, 0, vcc
	v_cndmask_b32_e64 v9, v9, 0, vcc
	v_add_co_u32_e64 v7, s[4:5], v10, v7
	v_cndmask_b32_e64 v5, v5, 0, vcc
	v_addc_co_u32_e64 v8, s[4:5], v9, v8, s[4:5]
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_sub_co_u32_e32 v3, vcc, v3, v5
	v_subb_co_u32_e32 v4, vcc, v4, v6, vcc
	v_lshlrev_b64 v[5:6], 1, v[7:8]
	s_lshr_b64 s[4:5], s[16:17], 2
	v_lshlrev_b64 v[3:4], 1, v[3:4]
	v_mov_b32_e32 v9, s5
	v_add_co_u32_e32 v5, vcc, s4, v5
	v_addc_co_u32_e32 v6, vcc, v6, v9, vcc
	v_cmp_lt_u64_e32 vcc, v[3:4], v[5:6]
	v_mov_b32_e32 v10, s4
	v_cndmask_b32_e64 v10, v10, 0, vcc
	v_cndmask_b32_e64 v5, v5, 0, vcc
	v_cndmask_b32_e64 v9, v9, 0, vcc
	v_add_co_u32_e64 v7, s[4:5], v10, v7
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_sub_co_u32_e32 v3, vcc, v3, v5
	v_addc_co_u32_e64 v8, s[4:5], v9, v8, s[4:5]
	v_subb_co_u32_e32 v4, vcc, v4, v6, vcc
	v_lshlrev_b64 v[5:6], 1, v[3:4]
	v_lshlrev_b64 v[3:4], 1, v[7:8]
	s_lshr_b64 s[4:5], s[16:17], 3
	v_mov_b32_e32 v10, s5
	v_add_co_u32_e32 v9, vcc, s4, v3
	v_addc_co_u32_e32 v10, vcc, v4, v10, vcc
	v_cmp_lt_u64_e32 vcc, v[5:6], v[9:10]
	v_mov_b32_e32 v3, s5
	v_cndmask_b32_e64 v4, v3, 0, vcc
	v_mov_b32_e32 v3, s4
	v_cndmask_b32_e64 v3, v3, 0, vcc
	v_add_co_u32_e64 v3, s[4:5], v3, v7
	v_addc_co_u32_e64 v4, s[4:5], v4, v8, s[4:5]
	v_cndmask_b32_e64 v8, v9, 0, vcc
	v_cndmask_b32_e64 v7, v10, 0, vcc
	v_cmp_lt_u64_e64 s[4:5], s[16:17], 16
	v_sub_co_u32_e32 v5, vcc, v5, v8
	v_subb_co_u32_e32 v6, vcc, v6, v7, vcc
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB2_12
.LBB2_15:
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZZN11__llvm_libc6fputil15quick_get_roundEvE1x@rel32@lo+4
	s_addc_u32 s5, s5, _ZZN11__llvm_libc6fputil15quick_get_roundEvE1x@rel32@hi+12
	v_mov_b32_e32 v8, s5
	v_mov_b32_e32 v7, s4
	flat_load_dword v7, v[7:8] glc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshlrev_b64 v[7:8], 2, v[3:4]
	v_lshlrev_b64 v[5:6], 2, v[5:6]
	v_or_b32_e32 v7, 1, v7
	v_cmp_ge_u64_e32 vcc, v[5:6], v[7:8]
	v_and_b32_e32 v9, 1, v3
	v_cndmask_b32_e32 v7, 0, v7, vcc
	v_cndmask_b32_e32 v8, 0, v8, vcc
	v_sub_co_u32_e64 v7, s[4:5], v5, v7
	v_subb_co_u32_e64 v5, s[4:5], v6, v8, s[4:5]
	v_mov_b32_e32 v8, 0xfff00000
	v_add_co_u32_e64 v3, s[4:5], 0, v3
	v_addc_co_u32_e64 v8, s[4:5], v4, v8, s[4:5]
	v_or_b32_e32 v4, v7, v9
	v_cmp_ne_u64_e64 s[4:5], 0, v[4:5]
	v_lshlrev_b32_e32 v6, 19, v11
	v_and_b32_e32 v6, 0xfff00000, v6
	s_and_b64 s[4:5], vcc, s[4:5]
	v_add_u32_e32 v6, 0x3ff00000, v6
	v_cndmask_b32_e64 v5, 0, 1, s[4:5]
	v_or_b32_e32 v4, v8, v6
	v_add_co_u32_e32 v3, vcc, v3, v5
	v_addc_co_u32_e32 v4, vcc, 0, v4, vcc
.LBB2_16:
	s_or_b64 exec, exec, s[14:15]
.LBB2_17:
	s_or_b64 exec, exec, s[12:13]
.LBB2_18:
	s_andn2_saveexec_b64 s[4:5], s[10:11]
	s_mov_b32 s10, 0
	v_and_b32_e32 v4, 0x800fffff, v2
	v_mov_b32_e32 v3, v1
	s_brev_b32 s11, 1
	v_cmp_ne_u64_e32 vcc, s[10:11], v[3:4]
	v_mov_b32_e32 v5, 0x7ff80000
	v_cndmask_b32_e32 v4, v5, v2, vcc
	v_cndmask_b32_e32 v3, 0, v1, vcc
	s_or_b64 exec, exec, s[4:5]
	v_mul_f64 v[5:6], v[1:2], v[1:2]
	s_mov_b32 s4, 0xfa875dd0
	v_mov_b32_e32 v7, 0x47f87146
	v_mov_b32_e32 v8, 0x3f89b60f
	s_mov_b32 s5, 0xbf7df946
	v_mov_b32_e32 v9, 0x634c494f
	v_mov_b32_e32 v10, 0x3f9259e2
	s_mov_b32 s10, 0xcf652577
	v_fma_f64 v[7:8], v[5:6], s[4:5], v[7:8]
	s_mov_b32 s4, 0xecf99c28
	s_mov_b32 s5, 0x3fa02311
	v_fma_f64 v[9:10], v[5:6], s[4:5], v[9:10]
	s_mov_b32 s4, 0x99f5f4f4
	s_mov_b32 s5, 0x3f96e438
	s_mov_b32 s11, 0x3f91f847
	v_add_f64 v[3:4], v[3:4], v[3:4]
	v_fma_f64 v[7:8], v[5:6], v[7:8], s[4:5]
	s_mov_b32 s4, 0xc1541b31
	s_mov_b32 s5, 0x3fa6db6c
	v_fma_f64 v[9:10], v[5:6], v[9:10], s[10:11]
	s_mov_b32 s10, 0xf324770e
	s_mov_b32 s11, 0x3f9f1caf
	v_cmp_gt_i32_e32 vcc, 0, v0
	v_fma_f64 v[7:8], v[5:6], v[7:8], s[4:5]
	s_mov_b32 s4, 0x55540fa1
	s_mov_b32 s5, 0x3fc55555
	v_fma_f64 v[9:10], v[5:6], v[9:10], s[10:11]
	s_mov_b32 s10, 0x3512edc2
	s_mov_b32 s11, 0x3fb33333
	v_fma_f64 v[7:8], v[5:6], v[7:8], s[4:5]
	s_mov_b32 s4, 0x54442d18
	s_mov_b32 s5, 0x400921fb
	v_fma_f64 v[5:6], v[5:6], v[9:10], s[10:11]
	v_mul_f64 v[9:10], v[1:2], v[3:4]
	v_fma_f64 v[1:2], v[1:2], v[5:6], v[7:8]
	v_fma_f64 v[1:2], v[9:10], v[1:2], v[3:4]
	v_add_f64 v[3:4], -v[1:2], s[4:5]
	v_cndmask_b32_e32 v2, v2, v4, vcc
	v_cndmask_b32_e32 v1, v1, v3, vcc
	v_cvt_f32_f64_e32 v1, v[1:2]
.LBB2_21:
	s_or_b64 exec, exec, s[8:9]
	s_andn2_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execz .LBB2_2
.LBB2_22:
	s_mov_b32 s6, 0x3a7fffff
	v_cmp_lt_u32_e32 vcc, s6, v2
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz .LBB2_24
	v_cvt_f64_f32_e32 v[0:1], v0
	s_mov_b32 s8, 0xfa875dd0
	s_mov_b32 s10, 0xecf99c28
	v_mov_b32_e32 v4, 0x47f87146
	v_mul_f64 v[2:3], v[0:1], v[0:1]
	v_mov_b32_e32 v5, 0x3f89b60f
	s_mov_b32 s9, 0xbf7df946
	v_mov_b32_e32 v8, 0x634c494f
	v_mov_b32_e32 v9, 0x3f9259e2
	s_mov_b32 s11, 0x3fa02311
	v_mul_f64 v[6:7], v[2:3], v[2:3]
	v_fma_f64 v[4:5], v[6:7], s[8:9], v[4:5]
	v_fma_f64 v[8:9], v[6:7], s[10:11], v[8:9]
	s_mov_b32 s8, 0x99f5f4f4
	s_mov_b32 s10, 0xcf652577
	s_mov_b32 s9, 0x3f96e438
	s_mov_b32 s11, 0x3f91f847
	v_fma_f64 v[4:5], v[6:7], v[4:5], s[8:9]
	v_fma_f64 v[8:9], v[6:7], v[8:9], s[10:11]
	s_mov_b32 s8, 0xc1541b31
	s_mov_b32 s10, 0xf324770e
	s_mov_b32 s9, 0x3fa6db6c
	s_mov_b32 s11, 0x3f9f1caf
	v_fma_f64 v[4:5], v[6:7], v[4:5], s[8:9]
	v_fma_f64 v[8:9], v[6:7], v[8:9], s[10:11]
	s_mov_b32 s8, 0x55540fa1
	s_mov_b32 s10, 0x3512edc2
	s_mov_b32 s9, 0x3fc55555
	s_mov_b32 s11, 0x3fb33333
	v_fma_f64 v[4:5], v[6:7], v[4:5], s[8:9]
	v_fma_f64 v[6:7], v[6:7], v[8:9], s[10:11]
	s_mov_b32 s8, 0x54442d18
	s_mov_b32 s9, 0x3ff921fb
	v_mul_f64 v[8:9], v[0:1], -v[2:3]
	v_add_f64 v[0:1], -v[0:1], s[8:9]
	v_fma_f64 v[2:3], v[2:3], v[6:7], v[4:5]
	v_fma_f64 v[0:1], v[8:9], v[2:3], v[0:1]
	v_cvt_f32_f64_e32 v1, v[0:1]
.LBB2_24:
	s_andn2_saveexec_b64 s[6:7], s[6:7]
	s_cbranch_execz .LBB2_31
	s_mov_b32 s8, 0x328885a2
	v_cmp_lt_i32_e32 vcc, s8, v0
	s_mov_b64 s[10:11], 0
	s_and_saveexec_b64 s[12:13], vcc
	s_xor_b64 s[12:13], exec, s[12:13]
	s_cbranch_execnz .LBB2_32
	s_andn2_saveexec_b64 s[12:13], s[12:13]
	s_cbranch_execnz .LBB2_37
.LBB2_27:
	s_or_b64 exec, exec, s[12:13]
	s_and_saveexec_b64 s[12:13], s[10:11]
	s_cbranch_execnz .LBB2_42
.LBB2_28:
	s_or_b64 exec, exec, s[12:13]
	s_and_saveexec_b64 s[10:11], s[8:9]
.LBB2_29:
	v_cvt_f64_f32_e32 v[0:1], v0
	s_mov_b32 s8, 0x55555555
	s_mov_b32 s9, 0xbfc55555
	v_mul_f64 v[2:3], v[0:1], s[8:9]
	s_mov_b32 s8, 0x54442d18
	s_mov_b32 s9, 0x3ff921fb
	v_mul_f64 v[4:5], v[0:1], v[0:1]
	v_add_f64 v[0:1], -v[0:1], s[8:9]
	v_fma_f64 v[0:1], v[2:3], v[4:5], v[0:1]
	v_cvt_f32_f64_e32 v1, v[0:1]
.LBB2_30:
	s_or_b64 exec, exec, s[10:11]
.LBB2_31:
	s_or_b64 exec, exec, s[6:7]
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v0, v1
	s_setpc_b64 s[30:31]
.LBB2_32:
	s_mov_b32 s8, 0x39826221
	v_cmp_lt_i32_e32 vcc, s8, v0
	s_and_saveexec_b64 s[14:15], vcc
	s_xor_b64 s[14:15], exec, s[14:15]
	s_mov_b32 s8, 0x39826222
	v_cmp_eq_u32_e32 vcc, s8, v0
	s_mov_b64 s[8:9], -1
	s_mov_b32 s16, 0
	s_and_b64 s[10:11], vcc, exec
	s_or_saveexec_b64 s[14:15], s[14:15]
	v_mov_b32_e32 v1, s16
	s_xor_b64 exec, exec, s[14:15]
	s_mov_b32 s16, 0x328885a3
	v_cmp_eq_u32_e32 vcc, s16, v0
	s_andn2_b64 s[10:11], s[10:11], exec
	s_and_b64 s[16:17], vcc, exec
	v_mov_b32_e32 v1, 0
	s_or_b64 s[8:9], s[8:9], exec
	s_or_b64 s[10:11], s[10:11], s[16:17]
	s_or_b64 exec, exec, s[14:15]
	s_and_b64 s[8:9], s[8:9], exec
	s_and_b64 s[10:11], s[10:11], exec
	s_andn2_saveexec_b64 s[12:13], s[12:13]
	s_cbranch_execz .LBB2_27
.LBB2_37:
	s_mov_b32 s14, 0xb9826221
	v_cmp_lt_i32_e32 vcc, s14, v0
	s_mov_b64 s[16:17], s[10:11]
	s_and_saveexec_b64 s[18:19], vcc
	s_xor_b64 s[18:19], exec, s[18:19]
	s_mov_b32 s14, 0xb9826222
	v_cmp_eq_u32_e32 vcc, s14, v0
	s_andn2_b64 s[16:17], s[10:11], exec
	s_and_b64 s[22:23], vcc, exec
	s_mov_b64 s[14:15], -1
	s_mov_b32 s20, 0
	s_or_b64 s[16:17], s[16:17], s[22:23]
	s_or_saveexec_b64 s[18:19], s[18:19]
	v_mov_b32_e32 v1, s20
	s_xor_b64 exec, exec, s[18:19]
	s_mov_b32 s20, 0xb28885a3
	v_cmp_eq_u32_e32 vcc, s20, v0
	s_andn2_b64 s[16:17], s[16:17], exec
	s_and_b64 s[20:21], vcc, exec
	v_mov_b32_e32 v1, 0
	s_or_b64 s[14:15], s[14:15], exec
	s_or_b64 s[16:17], s[16:17], s[20:21]
	s_or_b64 exec, exec, s[18:19]
	s_andn2_b64 s[8:9], s[8:9], exec
	s_and_b64 s[14:15], s[14:15], exec
	s_or_b64 s[8:9], s[8:9], s[14:15]
	s_andn2_b64 s[10:11], s[10:11], exec
	s_and_b64 s[14:15], s[16:17], exec
	s_or_b64 s[10:11], s[10:11], s[14:15]
	s_or_b64 exec, exec, s[12:13]
	s_and_saveexec_b64 s[12:13], s[10:11]
	s_cbranch_execz .LBB2_28
.LBB2_42:
	s_getpc_b64 s[10:11]
	s_add_u32 s10, s10, _ZZN11__llvm_libc6fputil15quick_get_roundEvE1x@rel32@lo+4
	s_addc_u32 s11, s11, _ZZN11__llvm_libc6fputil15quick_get_roundEvE1x@rel32@hi+12
	v_mov_b32_e32 v1, s10
	v_mov_b32_e32 v2, s11
	flat_load_dword v1, v[1:2] glc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v1, 0x3fc90fdb
	s_andn2_b64 s[8:9], s[8:9], exec
	s_or_b64 exec, exec, s[12:13]
	s_and_saveexec_b64 s[10:11], s[8:9]
	s_cbranch_execnz .LBB2_29
	s_branch .LBB2_30
.Lfunc_end0:
	.size	acosf, .Lfunc_end0-acosf

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

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23:
	s_add_u32 flat_scratch_lo, s8, s11
	s_addc_u32 flat_scratch_hi, s9, 0
	s_add_u32 s0, s0, s11
	v_mov_b32_e32 v16, v0
	s_addc_u32 s1, s1, 0
	v_cmp_eq_u32_e64 s[24:25], 0, v16
	s_mov_b32 s32, 0
	s_and_saveexec_b64 s[8:9], s[24:25]
	s_cbranch_execz .LBB3_2
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v1, 1
	ds_write2_b32 v0, v0, v0 offset0:1 offset1:2
	ds_write_b32 v0, v1 offset:24
.LBB3_2:
	s_or_b64 exec, exec, s[8:9]
	s_load_dwordx4 s[36:39], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s36, 1
	s_cbranch_scc1 .LBB3_15
	s_load_dword s8, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s33, 0xffff, s8
	v_cvt_f32_u32_e32 v0, s33
	s_mul_i32 s37, s10, s33
	s_cmp_ge_i32 s37, s36
	v_rcp_iflag_f32_e32 v0, v0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s8, v0
	s_cbranch_scc1 .LBB3_15
	s_load_dwordx2 s[28:29], s[6:7], 0x10
	s_load_dword s9, s[4:5], 0xc
	s_sub_i32 s4, 0, s33
	s_mul_i32 s4, s4, s8
	s_mul_hi_u32 s4, s8, s4
	s_add_i32 s8, s8, s4
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s4, s9, s8
	s_mul_i32 s4, s4, s33
	s_sub_i32 s4, s9, s4
	s_sub_i32 s5, s4, s33
	s_cmp_ge_u32 s4, s33
	s_cselect_b32 s4, s5, s4
	s_sub_i32 s5, s4, s33
	s_cmp_ge_u32 s4, s33
	s_cselect_b32 s4, s5, s4
	s_sub_i32 s46, s9, s4
	s_add_i32 s4, s33, s37
	s_add_i32 s47, s36, -1
	s_add_i32 s4, s4, -1
	s_min_i32 s34, s4, s47
	s_cmp_gt_i32 s36, 0
	s_cselect_b64 s[4:5], -1, 0
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	s_mov_b32 s35, 0
	v_mov_b32_e32 v19, 0
	v_cmp_ne_u32_e64 s[26:27], 1, v0
	v_mov_b32_e32 v20, 1
	s_getpc_b64 s[40:41]
	s_add_u32 s40, s40, acosf@rel32@lo+4
	s_addc_u32 s41, s41, acosf@rel32@hi+12
	s_branch .LBB3_6
.LBB3_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s34, s46
	s_add_i32 s37, s37, s46
	s_min_i32 s34, s4, s47
	s_cmp_lt_i32 s37, s36
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB3_15
.LBB3_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[24:25]
	s_cbranch_execz .LBB3_8
	v_mov_b32_e32 v0, s33
	ds_write_b32 v19, v0 offset:24
	ds_write2_b32 v19, v20, v20 offset0:1 offset1:2
.LBB3_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[26:27]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB3_13
	ds_read2_b32 v[0:1], v19 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v1, v0
	v_cmp_ne_u32_e64 s[4:5], 0, v0
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v1, 0, v16, vcc
	v_add_u32_e32 v17, s37, v1
	v_ashrrev_i32_e32 v18, 31, v17
	v_cmp_ge_u64_e32 vcc, s[34:35], v[17:18]
	s_and_saveexec_b64 s[42:43], vcc
	s_cbranch_execz .LBB3_12
	ds_read_b32 v1, v19 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v0
	s_mov_b64 s[44:45], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v21, 1, v1, vcc
.LBB3_11:
	v_lshlrev_b64 v[22:23], 2, v[17:18]
	v_mov_b32_e32 v1, s29
	v_add_co_u32_e32 v0, vcc, s28, v22
	v_addc_co_u32_e32 v1, vcc, v1, v23, vcc
	flat_load_dword v0, v[0:1]
	s_swappc_b64 s[30:31], s[40:41]
	v_add_u32_e32 v17, v21, v17
	v_ashrrev_i32_e32 v18, 31, v17
	v_cmp_lt_u64_e32 vcc, s[34:35], v[17:18]
	v_mov_b32_e32 v2, s39
	v_add_co_u32_e64 v1, s[4:5], s38, v22
	v_addc_co_u32_e64 v2, s[4:5], v2, v23, s[4:5]
	s_or_b64 s[44:45], vcc, s[44:45]
	flat_store_dword v[1:2], v0
	s_andn2_b64 exec, exec, s[44:45]
	s_cbranch_execnz .LBB3_11
.LBB3_12:
	s_or_b64 exec, exec, s[42:43]
.LBB3_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[24:25]
	s_cbranch_execz .LBB3_5
	ds_write2_b32 v19, v19, v19 offset0:1 offset1:2
	ds_write_b32 v19, v20 offset:24
	s_branch .LBB3_5
.LBB3_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
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
		.amdhsa_next_free_vgpr 24
		.amdhsa_next_free_sgpr 48
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23, .Lfunc_end3-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23:
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
	s_and_b32 s13, 0xffff, s2
	v_cvt_f32_u32_e32 v1, s13
	s_mul_i32 s8, s8, s13
	s_cmp_ge_i32 s8, s12
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s2, v1
	s_cbranch_scc1 .LBB4_15
	s_load_dwordx2 s[20:21], s[6:7], 0x10
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
	s_sub_i32 s10, s3, s2
	s_add_i32 s2, s13, s8
	s_add_i32 s19, s12, -1
	s_add_i32 s2, s2, -1
	s_min_i32 s6, s2, s19
	s_cmp_gt_i32 s12, 0
	s_cselect_b64 s[2:3], -1, 0
	s_ashr_i32 s9, s8, 31
	s_lshl_b64 s[4:5], s[8:9], 2
	s_add_u32 s14, s14, s4
	s_addc_u32 s9, s15, s5
	s_ashr_i32 s11, s10, 31
	s_lshl_b64 s[16:17], s[10:11], 2
	s_add_u32 s18, s20, s4
	v_cndmask_b32_e64 v1, 0, 1, s[2:3]
	s_mov_b32 s7, 0
	s_addc_u32 s11, s21, s5
	v_mov_b32_e32 v2, 0
	v_cmp_ne_u32_e64 s[2:3], 1, v1
	v_mov_b32_e32 v10, 0x3d034c3c
	v_mov_b32_e32 v11, 0x3d3641b1
	v_mov_b32_e32 v12, 0x3d999bc8
	v_mov_b32_e32 v13, 0x3e2aaaac
	v_mov_b32_e32 v14, 1
	s_branch .LBB4_6
.LBB4_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s6, s10
	s_add_i32 s8, s8, s10
	s_min_i32 s6, s4, s19
	s_add_u32 s14, s14, s16
	s_addc_u32 s9, s9, s17
	s_add_u32 s18, s18, s16
	s_addc_u32 s11, s11, s17
	s_cmp_lt_i32 s8, s12
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB4_15
.LBB4_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB4_8
	v_mov_b32_e32 v1, s13
	ds_write_b32 v2, v1 offset:24
	ds_write2_b32 v2, v14, v14 offset0:1 offset1:2
.LBB4_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB4_13
	ds_read2_b32 v[3:4], v2 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v4, v3
	v_cmp_ne_u32_e64 s[4:5], 0, v3
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v6, 0, v0, vcc
	v_add_u32_e32 v4, s8, v6
	v_ashrrev_i32_e32 v5, 31, v4
	v_cmp_ge_u64_e32 vcc, s[6:7], v[4:5]
	s_and_saveexec_b64 s[20:21], vcc
	s_cbranch_execz .LBB4_12
	ds_read_b32 v4, v2 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v3
	v_lshlrev_b32_e32 v1, 2, v6
	v_mov_b32_e32 v9, v2
	s_mov_b64 s[22:23], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v3, 1, v4, vcc
	v_ashrrev_i32_e32 v4, 31, v3
	v_add_u32_e32 v7, s8, v3
	v_lshlrev_b64 v[4:5], 2, v[3:4]
	v_add_u32_e32 v6, v7, v6
	v_mov_b32_e32 v8, v1
.LBB4_11:
	v_mov_b32_e32 v1, s11
	v_add_co_u32_e32 v15, vcc, s18, v8
	v_addc_co_u32_e32 v16, vcc, v1, v9, vcc
	flat_load_dword v1, v[15:16]
	v_mov_b32_e32 v16, s9
	v_add_co_u32_e32 v15, vcc, s14, v8
	v_ashrrev_i32_e32 v7, 31, v6
	v_addc_co_u32_e32 v16, vcc, v16, v9, vcc
	v_cmp_lt_u64_e32 vcc, s[6:7], v[6:7]
	v_mov_b32_e32 v17, 0x3c5fc5da
	s_or_b64 s[22:23], vcc, s[22:23]
	v_add_co_u32_e64 v8, s[4:5], v8, v4
	v_addc_co_u32_e64 v9, s[4:5], v9, v5, s[4:5]
	v_add_u32_e32 v6, v6, v3
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_fma_f32 v7, |v1|, -0.5, 0.5
	v_mul_f32_e32 v18, v1, v1
	v_cmp_gt_f32_e64 vcc, |v1|, 0.5
	v_cndmask_b32_e32 v7, v18, v7, vcc
	v_fmac_f32_e32 v17, 0x3d1c21a7, v7
	v_fma_f32 v17, v7, v17, v10
	v_sqrt_f32_e32 v18, v7
	v_fma_f32 v17, v7, v17, v11
	v_fma_f32 v17, v7, v17, v12
	v_fma_f32 v17, v7, v17, v13
	v_mul_f32_e32 v7, v7, v17
	v_fmac_f32_e32 v18, v18, v7
	v_add_f32_e32 v17, v18, v18
	v_sub_f32_e32 v18, 0x40490fdb, v17
	v_cmp_gt_f32_e64 s[4:5], 0, v1
	v_fmac_f32_e32 v1, v1, v7
	v_cndmask_b32_e64 v7, v17, v18, s[4:5]
	v_sub_f32_e32 v1, 0x3fc90fdb, v1
	v_cndmask_b32_e32 v1, v1, v7, vcc
	flat_store_dword v[15:16], v1
	s_andn2_b64 exec, exec, s[22:23]
	s_cbranch_execnz .LBB4_11
.LBB4_12:
	s_or_b64 exec, exec, s[20:21]
.LBB4_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB4_5
	ds_write2_b32 v2, v2, v2 offset0:1 offset1:2
	ds_write_b32 v2, v14 offset:24
	s_branch .LBB4_5
.LBB4_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
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
		.amdhsa_next_free_vgpr 19
		.amdhsa_next_free_sgpr 24
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23, .Lfunc_end4-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23

	.type	_ZZN11__llvm_libc6fputil15quick_get_roundEvE1x,@object
	.section	.data._ZZN11__llvm_libc6fputil15quick_get_roundEvE1x,#alloc,#write
	.p2align	2, 0x0
_ZZN11__llvm_libc6fputil15quick_get_roundEvE1x:
	.long	0x33800000
	.size	_ZZN11__llvm_libc6fputil15quick_get_roundEvE1x, 4

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

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11, 1

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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
    .private_segment_fixed_size: 0
    .sgpr_count:     54
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5acosfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23.kd
    .vgpr_count:     24
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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
    .private_segment_fixed_size: 0
    .sgpr_count:     28
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_acos_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23.kd
    .vgpr_count:     19
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata
