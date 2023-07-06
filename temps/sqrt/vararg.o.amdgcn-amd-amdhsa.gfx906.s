	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.p2align	2
	.type	sqrt.internalized,@function
sqrt.internalized:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s4, 0
	s_mov_b32 s5, 0x7ff00000
	v_and_b32_e32 v3, 0x7ff00000, v1
	v_mov_b32_e32 v2, 0
	v_cmp_ne_u64_e32 vcc, s[4:5], v[2:3]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[6:7], exec, s[4:5]
	s_cbranch_execnz .LBB3_3
	s_andn2_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execnz .LBB3_16
.LBB3_2:
	s_or_b64 exec, exec, s[4:5]
	s_setpc_b64 s[30:31]
.LBB3_3:
	v_and_b32_e32 v3, 0x7fffffff, v1
	v_mov_b32_e32 v2, v0
	v_cmp_ne_u64_e32 vcc, 0, v[2:3]
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execz .LBB3_15
	s_mov_b32 s4, 0
	v_cmp_lt_i64_e32 vcc, -1, v[0:1]
	s_mov_b32 s5, 0x7ff80000
	v_mov_b32_e32 v2, s4
	v_mov_b32_e32 v3, s5
	s_and_saveexec_b64 s[10:11], vcc
	s_cbranch_execz .LBB3_14
	s_mov_b32 s4, -1
	s_mov_b32 s5, 0xfffff
	v_cmp_lt_u64_e32 vcc, s[4:5], v[0:1]
	v_lshrrev_b32_e32 v3, 20, v1
	v_and_b32_e32 v2, 0xfffff, v1
	v_mov_b32_e32 v1, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	v_add_u32_e32 v8, 0xfffffc01, v3
	v_or_b32_e32 v2, 0x100000, v2
	s_andn2_saveexec_b64 s[4:5], s[4:5]
	v_ffbh_u32_e32 v0, v1
	v_add_u32_e32 v0, 32, v0
	v_ffbh_u32_e32 v4, v2
	v_min_u32_e32 v0, v0, v4
	v_add_u32_e32 v4, -11, v0
	v_sub_u32_e32 v0, v3, v0
	v_lshlrev_b64 v[1:2], v4, v[1:2]
	v_add_u32_e32 v8, 0xfffffc0d, v0
	s_or_b64 exec, exec, s[4:5]
	v_and_b32_e32 v0, 1, v8
	v_lshlrev_b64 v[0:1], v0, v[1:2]
	s_mov_b32 s4, 0
	s_mov_b32 s5, 0x100000
	v_mov_b32_e32 v2, 0xfff00000
	v_add_co_u32_e32 v6, vcc, 0, v0
	v_mov_b32_e32 v4, s4
	v_addc_co_u32_e32 v7, vcc, v1, v2, vcc
	s_mov_b32 s13, 0x80000
	s_mov_b32 s12, s4
	v_mov_b32_e32 v5, s5
	s_branch .LBB3_11
.LBB3_10:
	v_lshlrev_b64 v[6:7], 1, v[0:1]
	s_lshr_b64 s[4:5], s[12:13], 4
	v_lshlrev_b64 v[4:5], 1, v[2:3]
	v_mov_b32_e32 v9, s5
	v_add_co_u32_e32 v6, vcc, s4, v6
	v_addc_co_u32_e32 v7, vcc, v7, v9, vcc
	v_cmp_lt_u64_e32 vcc, v[4:5], v[6:7]
	v_cndmask_b32_e64 v10, v9, 0, vcc
	v_mov_b32_e32 v9, s4
	v_cndmask_b32_e64 v9, v9, 0, vcc
	v_add_co_u32_e64 v9, s[4:5], v9, v0
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_addc_co_u32_e64 v10, s[4:5], v10, v1, s[4:5]
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_sub_co_u32_e32 v4, vcc, v4, v6
	v_subb_co_u32_e32 v5, vcc, v5, v7, vcc
	v_lshlrev_b64 v[6:7], 1, v[9:10]
	s_lshr_b64 s[4:5], s[12:13], 5
	v_lshlrev_b64 v[4:5], 1, v[4:5]
	v_mov_b32_e32 v11, s5
	v_add_co_u32_e32 v6, vcc, s4, v6
	v_addc_co_u32_e32 v7, vcc, v7, v11, vcc
	v_cmp_lt_u64_e32 vcc, v[4:5], v[6:7]
	v_mov_b32_e32 v12, s4
	v_cndmask_b32_e64 v12, v12, 0, vcc
	v_cndmask_b32_e64 v11, v11, 0, vcc
	v_add_co_u32_e64 v9, s[4:5], v12, v9
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_addc_co_u32_e64 v10, s[4:5], v11, v10, s[4:5]
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_sub_co_u32_e32 v4, vcc, v4, v6
	v_subb_co_u32_e32 v5, vcc, v5, v7, vcc
	v_lshlrev_b64 v[6:7], 1, v[9:10]
	s_lshr_b64 s[4:5], s[12:13], 6
	v_lshlrev_b64 v[4:5], 1, v[4:5]
	v_mov_b32_e32 v11, s5
	v_add_co_u32_e32 v6, vcc, s4, v6
	v_addc_co_u32_e32 v7, vcc, v7, v11, vcc
	v_cmp_lt_u64_e32 vcc, v[4:5], v[6:7]
	v_mov_b32_e32 v12, s4
	v_cndmask_b32_e64 v12, v12, 0, vcc
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_cndmask_b32_e64 v11, v11, 0, vcc
	v_add_co_u32_e64 v9, s[4:5], v12, v9
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_sub_co_u32_e32 v4, vcc, v4, v6
	v_addc_co_u32_e64 v10, s[4:5], v11, v10, s[4:5]
	v_subb_co_u32_e32 v5, vcc, v5, v7, vcc
	v_lshlrev_b64 v[6:7], 1, v[4:5]
	v_lshlrev_b64 v[4:5], 1, v[9:10]
	s_lshr_b64 s[4:5], s[12:13], 7
	v_mov_b32_e32 v12, s5
	v_add_co_u32_e32 v11, vcc, s4, v4
	v_addc_co_u32_e32 v12, vcc, v5, v12, vcc
	v_cmp_lt_u64_e32 vcc, v[6:7], v[11:12]
	v_mov_b32_e32 v4, s5
	v_cndmask_b32_e64 v5, v4, 0, vcc
	v_mov_b32_e32 v4, s4
	v_cndmask_b32_e64 v4, v4, 0, vcc
	v_add_co_u32_e64 v4, s[4:5], v4, v9
	v_addc_co_u32_e64 v5, s[4:5], v5, v10, s[4:5]
	v_cndmask_b32_e64 v10, v11, 0, vcc
	v_cndmask_b32_e64 v9, v12, 0, vcc
	v_sub_co_u32_e32 v6, vcc, v6, v10
	v_subb_co_u32_e32 v7, vcc, v7, v9, vcc
	s_lshr_b64 s[12:13], s[12:13], 8
	s_cbranch_execz .LBB3_13
.LBB3_11:
	v_lshlrev_b64 v[2:3], 1, v[4:5]
	v_lshlrev_b64 v[0:1], 1, v[6:7]
	v_mov_b32_e32 v6, s13
	v_add_co_u32_e32 v2, vcc, s12, v2
	v_addc_co_u32_e32 v3, vcc, v3, v6, vcc
	v_cmp_lt_u64_e32 vcc, v[0:1], v[2:3]
	v_mov_b32_e32 v7, s12
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_add_co_u32_e64 v4, s[4:5], v7, v4
	v_cndmask_b32_e64 v2, v2, 0, vcc
	v_addc_co_u32_e64 v5, s[4:5], v6, v5, s[4:5]
	v_cndmask_b32_e64 v3, v3, 0, vcc
	v_sub_co_u32_e32 v0, vcc, v0, v2
	v_subb_co_u32_e32 v1, vcc, v1, v3, vcc
	v_lshlrev_b64 v[2:3], 1, v[4:5]
	s_lshr_b64 s[4:5], s[12:13], 1
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v6, s5
	v_add_co_u32_e32 v2, vcc, s4, v2
	v_addc_co_u32_e32 v3, vcc, v3, v6, vcc
	v_cmp_lt_u64_e32 vcc, v[0:1], v[2:3]
	v_mov_b32_e32 v7, s4
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_add_co_u32_e64 v4, s[4:5], v7, v4
	v_cndmask_b32_e64 v2, v2, 0, vcc
	v_addc_co_u32_e64 v5, s[4:5], v6, v5, s[4:5]
	v_cndmask_b32_e64 v3, v3, 0, vcc
	v_sub_co_u32_e32 v0, vcc, v0, v2
	v_subb_co_u32_e32 v1, vcc, v1, v3, vcc
	v_lshlrev_b64 v[2:3], 1, v[4:5]
	s_lshr_b64 s[4:5], s[12:13], 2
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v6, s5
	v_add_co_u32_e32 v2, vcc, s4, v2
	v_addc_co_u32_e32 v3, vcc, v3, v6, vcc
	v_cmp_lt_u64_e32 vcc, v[0:1], v[2:3]
	v_mov_b32_e32 v7, s4
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_cndmask_b32_e64 v2, v2, 0, vcc
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_add_co_u32_e64 v4, s[4:5], v7, v4
	v_cndmask_b32_e64 v3, v3, 0, vcc
	v_sub_co_u32_e32 v0, vcc, v0, v2
	v_addc_co_u32_e64 v5, s[4:5], v6, v5, s[4:5]
	v_subb_co_u32_e32 v1, vcc, v1, v3, vcc
	v_lshlrev_b64 v[2:3], 1, v[0:1]
	v_lshlrev_b64 v[0:1], 1, v[4:5]
	s_lshr_b64 s[4:5], s[12:13], 3
	v_mov_b32_e32 v7, s5
	v_add_co_u32_e32 v6, vcc, s4, v0
	v_addc_co_u32_e32 v7, vcc, v1, v7, vcc
	v_cmp_lt_u64_e32 vcc, v[2:3], v[6:7]
	v_mov_b32_e32 v0, s5
	v_cndmask_b32_e64 v1, v0, 0, vcc
	v_mov_b32_e32 v0, s4
	v_cndmask_b32_e64 v0, v0, 0, vcc
	v_add_co_u32_e64 v0, s[4:5], v0, v4
	v_addc_co_u32_e64 v1, s[4:5], v1, v5, s[4:5]
	v_cndmask_b32_e64 v5, v6, 0, vcc
	v_cndmask_b32_e64 v4, v7, 0, vcc
	v_cmp_lt_u64_e64 s[4:5], s[12:13], 16
	v_sub_co_u32_e32 v2, vcc, v2, v5
	v_subb_co_u32_e32 v3, vcc, v3, v4, vcc
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB3_10
.LBB3_13:
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZZN11__llvm_libc6fputil15quick_get_roundEvE1x@rel32@lo+4
	s_addc_u32 s5, s5, _ZZN11__llvm_libc6fputil15quick_get_roundEvE1x@rel32@hi+12
	v_mov_b32_e32 v4, s4
	v_mov_b32_e32 v5, s5
	flat_load_dword v4, v[4:5] glc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshlrev_b64 v[4:5], 2, v[0:1]
	v_lshlrev_b64 v[2:3], 2, v[2:3]
	v_or_b32_e32 v4, 1, v4
	v_cmp_ge_u64_e32 vcc, v[2:3], v[4:5]
	v_and_b32_e32 v6, 1, v0
	v_cndmask_b32_e32 v4, 0, v4, vcc
	v_cndmask_b32_e32 v5, 0, v5, vcc
	v_sub_co_u32_e64 v4, s[4:5], v2, v4
	v_subb_co_u32_e64 v2, s[4:5], v3, v5, s[4:5]
	v_mov_b32_e32 v5, 0xfff00000
	v_add_co_u32_e64 v0, s[4:5], 0, v0
	v_addc_co_u32_e64 v5, s[4:5], v1, v5, s[4:5]
	v_or_b32_e32 v1, v4, v6
	v_cmp_ne_u64_e64 s[4:5], 0, v[1:2]
	v_lshlrev_b32_e32 v3, 19, v8
	v_and_b32_e32 v3, 0xfff00000, v3
	s_and_b64 s[4:5], vcc, s[4:5]
	v_add_u32_e32 v3, 0x3ff00000, v3
	v_cndmask_b32_e64 v2, 0, 1, s[4:5]
	v_or_b32_e32 v1, v5, v3
	v_add_co_u32_e32 v2, vcc, v0, v2
	v_addc_co_u32_e32 v3, vcc, 0, v1, vcc
.LBB3_14:
	s_or_b64 exec, exec, s[10:11]
	v_mov_b32_e32 v0, v2
	v_mov_b32_e32 v1, v3
.LBB3_15:
	s_or_b64 exec, exec, s[8:9]
	s_andn2_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execz .LBB3_2
.LBB3_16:
	s_mov_b32 s6, 0
	v_and_b32_e32 v3, 0x800fffff, v1
	v_mov_b32_e32 v2, v0
	s_brev_b32 s7, 1
	v_cmp_ne_u64_e32 vcc, s[6:7], v[2:3]
	v_mov_b32_e32 v4, 0x7ff80000
	v_cndmask_b32_e32 v1, v4, v1, vcc
	v_cndmask_b32_e32 v0, 0, v0, vcc
	s_or_b64 exec, exec, s[4:5]
	s_setpc_b64 s[30:31]
.Lfunc_end0:
	.size	sqrt.internalized, .Lfunc_end0-sqrt.internalized

	.hidden	sqrt
	.globl	sqrt
	.p2align	2
	.type	sqrt,@function
sqrt:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	s_mov_b32 s4, 0
	s_mov_b32 s5, 0x7ff00000
	v_and_b32_e32 v3, 0x7ff00000, v1
	v_mov_b32_e32 v2, 0
	v_cmp_ne_u64_e32 vcc, s[4:5], v[2:3]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[6:7], exec, s[4:5]
	s_cbranch_execnz .LBB0_3
	s_andn2_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execnz .LBB0_16
.LBB0_2:
	s_or_b64 exec, exec, s[4:5]
	s_setpc_b64 s[30:31]
.LBB0_3:
	v_and_b32_e32 v3, 0x7fffffff, v1
	v_mov_b32_e32 v2, v0
	v_cmp_ne_u64_e32 vcc, 0, v[2:3]
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execz .LBB0_15
	s_mov_b32 s4, 0
	v_cmp_lt_i64_e32 vcc, -1, v[0:1]
	s_mov_b32 s5, 0x7ff80000
	v_mov_b32_e32 v2, s4
	v_mov_b32_e32 v3, s5
	s_and_saveexec_b64 s[10:11], vcc
	s_cbranch_execz .LBB0_14
	s_mov_b32 s4, -1
	s_mov_b32 s5, 0xfffff
	v_cmp_lt_u64_e32 vcc, s[4:5], v[0:1]
	v_lshrrev_b32_e32 v3, 20, v1
	v_and_b32_e32 v2, 0xfffff, v1
	v_mov_b32_e32 v1, v0
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	v_add_u32_e32 v8, 0xfffffc01, v3
	v_or_b32_e32 v2, 0x100000, v2
	s_andn2_saveexec_b64 s[4:5], s[4:5]
	v_ffbh_u32_e32 v0, v1
	v_add_u32_e32 v0, 32, v0
	v_ffbh_u32_e32 v4, v2
	v_min_u32_e32 v0, v0, v4
	v_add_u32_e32 v4, -11, v0
	v_sub_u32_e32 v0, v3, v0
	v_lshlrev_b64 v[1:2], v4, v[1:2]
	v_add_u32_e32 v8, 0xfffffc0d, v0
	s_or_b64 exec, exec, s[4:5]
	v_and_b32_e32 v0, 1, v8
	v_lshlrev_b64 v[0:1], v0, v[1:2]
	s_mov_b32 s4, 0
	s_mov_b32 s5, 0x100000
	v_mov_b32_e32 v2, 0xfff00000
	v_add_co_u32_e32 v6, vcc, 0, v0
	v_mov_b32_e32 v4, s4
	v_addc_co_u32_e32 v7, vcc, v1, v2, vcc
	s_mov_b32 s13, 0x80000
	s_mov_b32 s12, s4
	v_mov_b32_e32 v5, s5
	s_branch .LBB0_11
.LBB0_10:
	v_lshlrev_b64 v[6:7], 1, v[0:1]
	s_lshr_b64 s[4:5], s[12:13], 4
	v_lshlrev_b64 v[4:5], 1, v[2:3]
	v_mov_b32_e32 v9, s5
	v_add_co_u32_e32 v6, vcc, s4, v6
	v_addc_co_u32_e32 v7, vcc, v7, v9, vcc
	v_cmp_lt_u64_e32 vcc, v[4:5], v[6:7]
	v_cndmask_b32_e64 v10, v9, 0, vcc
	v_mov_b32_e32 v9, s4
	v_cndmask_b32_e64 v9, v9, 0, vcc
	v_add_co_u32_e64 v9, s[4:5], v9, v0
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_addc_co_u32_e64 v10, s[4:5], v10, v1, s[4:5]
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_sub_co_u32_e32 v4, vcc, v4, v6
	v_subb_co_u32_e32 v5, vcc, v5, v7, vcc
	v_lshlrev_b64 v[6:7], 1, v[9:10]
	s_lshr_b64 s[4:5], s[12:13], 5
	v_lshlrev_b64 v[4:5], 1, v[4:5]
	v_mov_b32_e32 v11, s5
	v_add_co_u32_e32 v6, vcc, s4, v6
	v_addc_co_u32_e32 v7, vcc, v7, v11, vcc
	v_cmp_lt_u64_e32 vcc, v[4:5], v[6:7]
	v_mov_b32_e32 v12, s4
	v_cndmask_b32_e64 v12, v12, 0, vcc
	v_cndmask_b32_e64 v11, v11, 0, vcc
	v_add_co_u32_e64 v9, s[4:5], v12, v9
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_addc_co_u32_e64 v10, s[4:5], v11, v10, s[4:5]
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_sub_co_u32_e32 v4, vcc, v4, v6
	v_subb_co_u32_e32 v5, vcc, v5, v7, vcc
	v_lshlrev_b64 v[6:7], 1, v[9:10]
	s_lshr_b64 s[4:5], s[12:13], 6
	v_lshlrev_b64 v[4:5], 1, v[4:5]
	v_mov_b32_e32 v11, s5
	v_add_co_u32_e32 v6, vcc, s4, v6
	v_addc_co_u32_e32 v7, vcc, v7, v11, vcc
	v_cmp_lt_u64_e32 vcc, v[4:5], v[6:7]
	v_mov_b32_e32 v12, s4
	v_cndmask_b32_e64 v12, v12, 0, vcc
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_cndmask_b32_e64 v11, v11, 0, vcc
	v_add_co_u32_e64 v9, s[4:5], v12, v9
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_sub_co_u32_e32 v4, vcc, v4, v6
	v_addc_co_u32_e64 v10, s[4:5], v11, v10, s[4:5]
	v_subb_co_u32_e32 v5, vcc, v5, v7, vcc
	v_lshlrev_b64 v[6:7], 1, v[4:5]
	v_lshlrev_b64 v[4:5], 1, v[9:10]
	s_lshr_b64 s[4:5], s[12:13], 7
	v_mov_b32_e32 v12, s5
	v_add_co_u32_e32 v11, vcc, s4, v4
	v_addc_co_u32_e32 v12, vcc, v5, v12, vcc
	v_cmp_lt_u64_e32 vcc, v[6:7], v[11:12]
	v_mov_b32_e32 v4, s5
	v_cndmask_b32_e64 v5, v4, 0, vcc
	v_mov_b32_e32 v4, s4
	v_cndmask_b32_e64 v4, v4, 0, vcc
	v_add_co_u32_e64 v4, s[4:5], v4, v9
	v_addc_co_u32_e64 v5, s[4:5], v5, v10, s[4:5]
	v_cndmask_b32_e64 v10, v11, 0, vcc
	v_cndmask_b32_e64 v9, v12, 0, vcc
	v_sub_co_u32_e32 v6, vcc, v6, v10
	v_subb_co_u32_e32 v7, vcc, v7, v9, vcc
	s_lshr_b64 s[12:13], s[12:13], 8
	s_cbranch_execz .LBB0_13
.LBB0_11:
	v_lshlrev_b64 v[2:3], 1, v[4:5]
	v_lshlrev_b64 v[0:1], 1, v[6:7]
	v_mov_b32_e32 v6, s13
	v_add_co_u32_e32 v2, vcc, s12, v2
	v_addc_co_u32_e32 v3, vcc, v3, v6, vcc
	v_cmp_lt_u64_e32 vcc, v[0:1], v[2:3]
	v_mov_b32_e32 v7, s12
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_add_co_u32_e64 v4, s[4:5], v7, v4
	v_cndmask_b32_e64 v2, v2, 0, vcc
	v_addc_co_u32_e64 v5, s[4:5], v6, v5, s[4:5]
	v_cndmask_b32_e64 v3, v3, 0, vcc
	v_sub_co_u32_e32 v0, vcc, v0, v2
	v_subb_co_u32_e32 v1, vcc, v1, v3, vcc
	v_lshlrev_b64 v[2:3], 1, v[4:5]
	s_lshr_b64 s[4:5], s[12:13], 1
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v6, s5
	v_add_co_u32_e32 v2, vcc, s4, v2
	v_addc_co_u32_e32 v3, vcc, v3, v6, vcc
	v_cmp_lt_u64_e32 vcc, v[0:1], v[2:3]
	v_mov_b32_e32 v7, s4
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_add_co_u32_e64 v4, s[4:5], v7, v4
	v_cndmask_b32_e64 v2, v2, 0, vcc
	v_addc_co_u32_e64 v5, s[4:5], v6, v5, s[4:5]
	v_cndmask_b32_e64 v3, v3, 0, vcc
	v_sub_co_u32_e32 v0, vcc, v0, v2
	v_subb_co_u32_e32 v1, vcc, v1, v3, vcc
	v_lshlrev_b64 v[2:3], 1, v[4:5]
	s_lshr_b64 s[4:5], s[12:13], 2
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v6, s5
	v_add_co_u32_e32 v2, vcc, s4, v2
	v_addc_co_u32_e32 v3, vcc, v3, v6, vcc
	v_cmp_lt_u64_e32 vcc, v[0:1], v[2:3]
	v_mov_b32_e32 v7, s4
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_cndmask_b32_e64 v2, v2, 0, vcc
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_add_co_u32_e64 v4, s[4:5], v7, v4
	v_cndmask_b32_e64 v3, v3, 0, vcc
	v_sub_co_u32_e32 v0, vcc, v0, v2
	v_addc_co_u32_e64 v5, s[4:5], v6, v5, s[4:5]
	v_subb_co_u32_e32 v1, vcc, v1, v3, vcc
	v_lshlrev_b64 v[2:3], 1, v[0:1]
	v_lshlrev_b64 v[0:1], 1, v[4:5]
	s_lshr_b64 s[4:5], s[12:13], 3
	v_mov_b32_e32 v7, s5
	v_add_co_u32_e32 v6, vcc, s4, v0
	v_addc_co_u32_e32 v7, vcc, v1, v7, vcc
	v_cmp_lt_u64_e32 vcc, v[2:3], v[6:7]
	v_mov_b32_e32 v0, s5
	v_cndmask_b32_e64 v1, v0, 0, vcc
	v_mov_b32_e32 v0, s4
	v_cndmask_b32_e64 v0, v0, 0, vcc
	v_add_co_u32_e64 v0, s[4:5], v0, v4
	v_addc_co_u32_e64 v1, s[4:5], v1, v5, s[4:5]
	v_cndmask_b32_e64 v5, v6, 0, vcc
	v_cndmask_b32_e64 v4, v7, 0, vcc
	v_cmp_lt_u64_e64 s[4:5], s[12:13], 16
	v_sub_co_u32_e32 v2, vcc, v2, v5
	v_subb_co_u32_e32 v3, vcc, v3, v4, vcc
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB0_10
.LBB0_13:
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZZN11__llvm_libc6fputil15quick_get_roundEvE1x@rel32@lo+4
	s_addc_u32 s5, s5, _ZZN11__llvm_libc6fputil15quick_get_roundEvE1x@rel32@hi+12
	v_mov_b32_e32 v4, s4
	v_mov_b32_e32 v5, s5
	flat_load_dword v4, v[4:5] glc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshlrev_b32_e32 v4, 19, v8
	v_and_b32_e32 v4, 0xfff00000, v4
	v_mov_b32_e32 v5, 0xfff00000
	v_add_co_u32_e32 v6, vcc, 0, v0
	v_addc_co_u32_e32 v7, vcc, v1, v5, vcc
	v_add_u32_e32 v8, 0x3ff00000, v4
	v_lshlrev_b64 v[4:5], 2, v[0:1]
	v_lshlrev_b64 v[1:2], 2, v[2:3]
	v_or_b32_e32 v4, 1, v4
	v_cmp_ge_u64_e32 vcc, v[1:2], v[4:5]
	v_and_b32_e32 v0, 1, v0
	v_cndmask_b32_e32 v4, 0, v4, vcc
	v_cndmask_b32_e32 v3, 0, v5, vcc
	v_sub_co_u32_e64 v4, s[4:5], v1, v4
	v_subb_co_u32_e64 v1, s[4:5], v2, v3, s[4:5]
	v_or_b32_e32 v0, v4, v0
	v_cmp_ne_u64_e64 s[4:5], 0, v[0:1]
	v_or_b32_e32 v0, v7, v8
	s_and_b64 s[4:5], vcc, s[4:5]
	v_cndmask_b32_e64 v1, 0, 1, s[4:5]
	v_add_co_u32_e32 v2, vcc, v6, v1
	v_addc_co_u32_e32 v3, vcc, 0, v0, vcc
.LBB0_14:
	s_or_b64 exec, exec, s[10:11]
	v_mov_b32_e32 v0, v2
	v_mov_b32_e32 v1, v3
.LBB0_15:
	s_or_b64 exec, exec, s[8:9]
	s_andn2_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execz .LBB0_2
.LBB0_16:
	s_mov_b32 s6, 0
	v_and_b32_e32 v3, 0x800fffff, v1
	v_mov_b32_e32 v2, v0
	s_brev_b32 s7, 1
	v_cmp_ne_u64_e32 vcc, s[6:7], v[2:3]
	v_mov_b32_e32 v4, 0x7ff80000
	v_cndmask_b32_e32 v1, v4, v1, vcc
	v_cndmask_b32_e32 v0, 0, v0, vcc
	s_or_b64 exec, exec, s[4:5]
	s_setpc_b64 s[30:31]
.Lfunc_end1:
	.size	sqrt, .Lfunc_end1-sqrt

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28
	.p2align	8
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28,@function
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28:
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
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, 1
	ds_write2_b32 v1, v1, v1 offset0:1 offset1:2
	ds_write_b32 v1, v2 offset:24
.LBB2_2:
	s_or_b64 exec, exec, s[0:1]
	s_load_dwordx8 s[12:19], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_load_dword s20, s[12:13], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s20, 1
	s_cbranch_scc1 .LBB2_14
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
	s_cbranch_scc1 .LBB2_14
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
	s_branch .LBB2_6
.LBB2_5:
	s_or_b64 exec, exec, s[0:1]
	s_add_u32 s6, s6, s8
	s_addc_u32 s7, s7, s9
	s_add_i32 s0, s4, s8
	s_min_i32 s4, s0, s22
	s_cmp_lt_i32 s6, s20
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_scc0 .LBB2_14
.LBB2_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB2_8
	v_mov_b32_e32 v1, s21
	ds_write_b32 v9, v1 offset:24
	ds_write2_b32 v9, v10, v10 offset0:1 offset1:2
.LBB2_8:
	s_or_b64 exec, exec, s[0:1]
	v_mov_b32_e32 v1, s12
	v_mov_b32_e32 v2, s13
	s_waitcnt lgkmcnt(0)
	s_barrier
	flat_load_dword v1, v[1:2]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_lt_i32_e64 s[0:1], 0, v1
	s_and_saveexec_b64 s[10:11], s[0:1]
	s_cbranch_execz .LBB2_12
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
	s_cbranch_execz .LBB2_12
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
.LBB2_11:
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
	s_cbranch_execnz .LBB2_11
.LBB2_12:
	s_or_b64 exec, exec, s[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[0:1], vcc
	s_cbranch_execz .LBB2_5
	ds_write2_b32 v9, v9, v9 offset0:1 offset1:2
	ds_write_b32 v9, v10 offset:24
	s_branch .LBB2_5
.LBB2_14:
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
.Lfunc_end3:
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14, .Lfunc_end3-__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23:
	s_add_u32 flat_scratch_lo, s8, s11
	s_addc_u32 flat_scratch_hi, s9, 0
	s_add_u32 s0, s0, s11
	v_mov_b32_e32 v13, v0
	s_addc_u32 s1, s1, 0
	v_cmp_eq_u32_e64 s[14:15], 0, v13
	s_mov_b32 s32, 0
	s_and_saveexec_b64 s[8:9], s[14:15]
	s_cbranch_execz .LBB4_2
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v1, 1
	ds_write2_b32 v0, v0, v0 offset0:1 offset1:2
	ds_write_b32 v0, v1 offset:24
.LBB4_2:
	s_or_b64 exec, exec, s[8:9]
	s_load_dwordx4 s[20:23], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s20, 1
	s_cbranch_scc1 .LBB4_15
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
	s_cbranch_scc1 .LBB4_15
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
	v_mov_b32_e32 v16, 0
	v_cmp_ne_u32_e64 s[16:17], 1, v0
	v_mov_b32_e32 v17, 1
	s_getpc_b64 s[26:27]
	s_add_u32 s26, s26, sqrt.internalized@rel32@lo+4
	s_addc_u32 s27, s27, sqrt.internalized@rel32@hi+12
	s_branch .LBB4_6
.LBB4_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s24, s36
	s_add_i32 s33, s33, s36
	s_min_i32 s24, s4, s37
	s_cmp_lt_i32 s33, s20
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB4_15
.LBB4_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[14:15]
	s_cbranch_execz .LBB4_8
	v_mov_b32_e32 v0, s21
	ds_write_b32 v16, v0 offset:24
	ds_write2_b32 v16, v17, v17 offset0:1 offset1:2
.LBB4_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[16:17]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB4_13
	ds_read2_b32 v[0:1], v16 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v1, v0
	v_cmp_ne_u32_e64 s[4:5], 0, v0
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v1, 0, v13, vcc
	v_add_u32_e32 v14, s33, v1
	v_ashrrev_i32_e32 v15, 31, v14
	v_cmp_ge_u64_e32 vcc, s[24:25], v[14:15]
	s_and_saveexec_b64 s[28:29], vcc
	s_cbranch_execz .LBB4_12
	ds_read_b32 v1, v16 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v0
	s_mov_b64 s[34:35], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v18, 1, v1, vcc
.LBB4_11:
	v_lshlrev_b64 v[19:20], 3, v[14:15]
	v_mov_b32_e32 v1, s19
	v_add_co_u32_e32 v0, vcc, s18, v19
	v_addc_co_u32_e32 v1, vcc, v1, v20, vcc
	flat_load_dwordx2 v[0:1], v[0:1]
	s_swappc_b64 s[30:31], s[26:27]
	v_add_u32_e32 v14, v18, v14
	v_ashrrev_i32_e32 v15, 31, v14
	v_cmp_lt_u64_e32 vcc, s[24:25], v[14:15]
	v_mov_b32_e32 v3, s23
	v_add_co_u32_e64 v2, s[4:5], s22, v19
	v_addc_co_u32_e64 v3, s[4:5], v3, v20, s[4:5]
	s_or_b64 s[34:35], vcc, s[34:35]
	flat_store_dwordx2 v[2:3], v[0:1]
	s_andn2_b64 exec, exec, s[34:35]
	s_cbranch_execnz .LBB4_11
.LBB4_12:
	s_or_b64 exec, exec, s[28:29]
.LBB4_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[14:15]
	s_cbranch_execz .LBB4_5
	ds_write2_b32 v16, v16, v16 offset0:1 offset1:2
	ds_write_b32 v16, v17 offset:24
	s_branch .LBB4_5
.LBB4_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
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
.Lfunc_end4:
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23, .Lfunc_end4-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23:
	v_cmp_eq_u32_e64 s[0:1], 0, v0
	s_and_saveexec_b64 s[2:3], s[0:1]
	s_cbranch_execz .LBB5_2
	v_mov_b32_e32 v1, 0
	v_mov_b32_e32 v2, 1
	ds_write2_b32 v1, v1, v1 offset0:1 offset1:2
	ds_write_b32 v1, v2 offset:24
.LBB5_2:
	s_or_b64 exec, exec, s[2:3]
	s_load_dwordx4 s[12:15], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s12, 1
	s_cbranch_scc1 .LBB5_15
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
	s_cbranch_scc1 .LBB5_15
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
	s_branch .LBB5_6
.LBB5_5:
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
	s_cbranch_scc0 .LBB5_15
.LBB5_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB5_8
	v_mov_b32_e32 v2, s23
	ds_write_b32 v1, v2 offset:24
	ds_write2_b32 v1, v11, v11 offset0:1 offset1:2
.LBB5_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB5_13
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
	s_cbranch_execz .LBB5_12
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
.LBB5_11:
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
	s_cbranch_execnz .LBB5_11
.LBB5_12:
	s_or_b64 exec, exec, s[24:25]
.LBB5_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB5_5
	ds_write2_b32 v1, v1, v1 offset0:1 offset1:2
	ds_write_b32 v1, v11 offset:24
	s_branch .LBB5_5
.LBB5_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
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
.Lfunc_end5:
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23, .Lfunc_end5-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23

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

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIdEEvRNS_5ArrayIT_EES2_S2__l14_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11, 1

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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
    .private_segment_fixed_size: 0
    .sgpr_count:     44
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXcvPFddEadL_Z4sqrtEEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23.kd
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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
    .private_segment_fixed_size: 0
    .sgpr_count:     33
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIdXadL_Z15__ocml_sqrt_f64EEJdEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23.kd
    .vgpr_count:     24
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata
