	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.p2align	2
	.type	exp2f.internalized,@function
exp2f.internalized:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	v_and_b32_e32 v2, 0x7fffffff, v0
	v_add_u32_e32 v1, 0xbd000000, v2
	s_mov_b32 s4, 0xfa000001
	v_cmp_gt_u32_e32 vcc, s4, v1
	s_mov_b64 s[10:11], -1
	s_mov_b64 s[4:5], 0
	s_mov_b64 s[6:7], 0
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execnz .LBB3_5
	s_or_b64 exec, exec, s[8:9]
	s_and_saveexec_b64 s[8:9], s[10:11]
	s_cbranch_execnz .LBB3_14
.LBB3_2:
	s_or_b64 exec, exec, s[8:9]
	s_and_saveexec_b64 s[8:9], s[4:5]
	s_xor_b64 s[4:5], exec, s[8:9]
	s_cbranch_execnz .LBB3_15
.LBB3_3:
	s_or_b64 exec, exec, s[4:5]
	s_and_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execnz .LBB3_20
.LBB3_4:
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v0, v1
	s_setpc_b64 s[30:31]
.LBB3_5:
	s_mov_b32 s4, 0x3d000000
	v_cmp_lt_u32_e32 vcc, s4, v2
	s_mov_b64 s[10:11], 0
	s_mov_b64 s[6:7], -1
	s_mov_b64 s[12:13], 0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz .LBB3_13
	v_cmp_lt_i32_e32 vcc, -1, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz .LBB3_10
	s_mov_b32 s10, 0x7f800000
	v_cmp_gt_u32_e32 vcc, s10, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_cbranch_execz .LBB3_9
	s_getpc_b64 s[12:13]
	s_add_u32 s12, s12, _ZZN11__llvm_libc6fputil15quick_get_roundEvE1x@rel32@lo+4
	s_addc_u32 s13, s13, _ZZN11__llvm_libc6fputil15quick_get_roundEvE1x@rel32@hi+12
	v_mov_b32_e32 v3, s12
	v_mov_b32_e32 v4, s13
	flat_load_dword v1, v[3:4] glc
	s_waitcnt vmcnt(0)
.LBB3_9:
	s_or_b64 exec, exec, s[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v1, 0x7f800000, v0
.LBB3_10:
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_mov_b64 s[10:11], 0
	s_mov_b64 s[12:13], 0
	s_xor_b64 exec, exec, s[6:7]
	s_mov_b32 s10, 0xc3160000
	v_cmp_gt_u32_e32 vcc, s10, v0
	s_mov_b64 s[12:13], exec
	s_and_b64 s[10:11], vcc, exec
	s_or_b64 exec, exec, s[6:7]
	s_xor_b64 s[6:7], exec, -1
	s_and_b64 s[12:13], s[12:13], exec
	s_and_b64 s[10:11], s[10:11], exec
.LBB3_13:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 s[6:7], s[6:7], exec
	s_and_b64 s[4:5], s[12:13], exec
	s_orn2_b64 s[10:11], s[10:11], exec
	s_or_b64 exec, exec, s[8:9]
	s_and_saveexec_b64 s[8:9], s[10:11]
	s_cbranch_execz .LBB3_2
.LBB3_14:
	s_mov_b32 s10, 0
	v_cmp_gt_f32_e32 vcc, 0, v0
	v_cndmask_b32_e64 v3, 0, 1, vcc
	v_mov_b32_e32 v4, s10
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	s_getpc_b64 s[10:11]
	s_add_u32 s10, s10, __const.exp2f.HALF@rel32@lo+4
	s_addc_u32 s11, s11, __const.exp2f.HALF@rel32@hi+12
	v_mov_b32_e32 v1, s11
	v_add_co_u32_e32 v3, vcc, s10, v3
	v_addc_co_u32_e32 v4, vcc, v4, v1, vcc
	global_load_dword v1, v[3:4], off
	s_getpc_b64 s[10:11]
	s_add_u32 s10, s10, _ZN11__llvm_libc7ExpBase9EXP_2_MIDE@rel32@lo+4
	s_addc_u32 s11, s11, _ZN11__llvm_libc7ExpBase9EXP_2_MIDE@rel32@hi+12
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v5, 0xff8131c4
	v_mov_b32_e32 v6, 0x3fcebfbd
	s_mov_b32 s12, 0x91198529
	v_mov_b32_e32 v7, 0xbee74b2a
	s_mov_b32 s13, 0x3f55d880
	s_andn2_b64 s[4:5], s[4:5], exec
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v1, 0x42000000, v0
	v_cvt_i32_f32_e32 v1, v1
	v_and_b32_e32 v3, 31, v1
	v_lshlrev_b32_e32 v3, 3, v3
	global_load_dwordx2 v[3:4], v3, s[10:11]
	v_cvt_f32_i32_e32 v9, v1
	s_mov_b32 s10, 0xd7061695
	s_mov_b32 s11, 0x3fac6b08
	v_lshlrev_b32_e32 v1, 15, v1
	v_fmac_f32_e32 v8, 0xbd000000, v9
	v_cvt_f64_f32_e32 v[9:10], v8
	v_mov_b32_e32 v8, 0x3f83b2b1
	v_and_b32_e32 v1, 0xfff00000, v1
	v_fma_f64 v[5:6], v[9:10], s[10:11], v[5:6]
	s_mov_b32 s10, 0xfefa39ef
	s_mov_b32 s11, 0x3fe62e42
	v_mul_f64 v[11:12], v[9:10], v[9:10]
	v_fma_f64 v[7:8], v[9:10], s[12:13], v[7:8]
	v_fma_f64 v[9:10], v[9:10], s[10:11], 1.0
	v_fma_f64 v[5:6], v[11:12], v[7:8], v[5:6]
	s_waitcnt vmcnt(0)
	v_add_co_u32_e32 v3, vcc, 0, v3
	v_addc_co_u32_e32 v4, vcc, v1, v4, vcc
	v_mul_f64 v[7:8], v[11:12], v[3:4]
	v_mul_f64 v[3:4], v[9:10], v[3:4]
	v_fma_f64 v[3:4], v[5:6], v[7:8], v[3:4]
	v_cvt_f32_f64_e32 v1, v[3:4]
	s_or_b64 exec, exec, s[8:9]
	s_and_saveexec_b64 s[8:9], s[4:5]
	s_xor_b64 s[4:5], exec, s[8:9]
	s_cbranch_execz .LBB3_3
.LBB3_15:
	s_mov_b32 s8, 0x7f800000
	v_cmp_ne_u32_e32 vcc, s8, v2
	v_mov_b32_e32 v1, 0
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execz .LBB3_19
	s_mov_b32 s10, 0x7f800001
	v_cmp_gt_u32_e32 vcc, s10, v2
	v_mov_b32_e32 v1, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_cbranch_execz .LBB3_18
	s_mov_b64 s[12:13], src_private_base
	v_lshrrev_b32_e64 v3, 6, s32
	v_mov_b32_e32 v4, s13
	v_mov_b32_e32 v1, 0x33000000
	flat_store_dword v[3:4], v1
	s_waitcnt vmcnt(0)
	flat_load_dword v1, v[3:4] glc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v1, 0
.LBB3_18:
	s_or_b64 exec, exec, s[10:11]
.LBB3_19:
	s_or_b64 exec, exec, s[8:9]
	s_or_b64 exec, exec, s[4:5]
	s_and_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execz .LBB3_4
.LBB3_20:
	s_mov_b32 s6, 0x32800000
	v_cmp_lt_u32_e32 vcc, s6, v2
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz .LBB3_26
	s_mov_b32 s8, 0x38428937
	v_and_b32_e32 v1, 0x38428937, v0
	v_cmp_eq_u32_e32 vcc, s8, v1
	s_mov_b64 s[12:13], -1
	s_mov_b64 s[10:11], 0
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execnz .LBB3_29
	s_or_b64 exec, exec, s[8:9]
	v_mov_b32_e32 v1, s18
	s_and_saveexec_b64 s[8:9], s[12:13]
	s_cbranch_execnz .LBB3_36
.LBB3_23:
	s_or_b64 exec, exec, s[8:9]
	s_and_saveexec_b64 s[8:9], s[10:11]
	s_cbranch_execz .LBB3_25
.LBB3_24:
	s_mov_b64 s[10:11], src_private_base
	v_lshrrev_b32_e64 v2, 6, s32
	v_add_u32_e32 v2, 4, v2
	v_mov_b32_e32 v3, s11
	v_mov_b32_e32 v1, 0x3f7ac6b1
	flat_store_dword v[2:3], v1
	s_waitcnt vmcnt(0)
	flat_load_dword v0, v[2:3] glc
	s_waitcnt vmcnt(0)
	flat_store_dword v[2:3], v1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v0, v[2:3] glc
	s_waitcnt vmcnt(0)
.LBB3_25:
	s_or_b64 exec, exec, s[8:9]
.LBB3_26:
	s_andn2_saveexec_b64 s[6:7], s[6:7]
	s_cbranch_execz .LBB3_28
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v1, 1.0, v0
.LBB3_28:
	s_or_b64 exec, exec, s[6:7]
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v0, v1
	s_setpc_b64 s[30:31]
.LBB3_29:
	s_mov_b32 s10, 0x3b429d36
	v_cmp_lt_i32_e32 vcc, s10, v0
	s_mov_b64 s[10:11], 0
	s_mov_b64 s[14:15], 0
	s_and_saveexec_b64 s[12:13], vcc
	s_xor_b64 s[12:13], exec, s[12:13]
	s_cbranch_execz .LBB3_33
	s_mov_b32 s14, 0x3b429d37
	v_cmp_eq_u32_e32 vcc, s14, v0
	s_mov_b64 s[16:17], -1
	s_and_saveexec_b64 s[14:15], vcc
	s_cbranch_execz .LBB3_32
	s_mov_b64 s[16:17], src_private_base
	v_lshrrev_b32_e64 v1, 6, s32
	v_add_u32_e32 v1, 8, v1
	v_mov_b32_e32 v2, s17
	v_mov_b32_e32 v3, 0x3f804385
	flat_store_dword v[1:2], v3
	s_waitcnt vmcnt(0)
	flat_load_dword v4, v[1:2] glc
	s_waitcnt vmcnt(0)
	s_mov_b32 s18, 0x3f804385
	flat_store_dword v[1:2], v3
	s_waitcnt vmcnt(0)
	flat_load_dword v1, v[1:2] glc
	s_waitcnt vmcnt(0)
	s_xor_b64 s[16:17], exec, -1
.LBB3_32:
	s_or_b64 exec, exec, s[14:15]
	s_and_b64 s[14:15], s[16:17], exec
.LBB3_33:
	s_andn2_saveexec_b64 s[12:13], s[12:13]
	s_mov_b32 s16, 0xbcf3a937
	v_cmp_ne_u32_e32 vcc, s16, v0
	s_andn2_b64 s[14:15], s[14:15], exec
	s_and_b64 s[16:17], vcc, exec
	s_mov_b64 s[10:11], exec
	s_or_b64 s[14:15], s[14:15], s[16:17]
	s_or_b64 exec, exec, s[12:13]
	s_and_b64 s[10:11], s[10:11], exec
	s_orn2_b64 s[12:13], s[14:15], exec
	s_or_b64 exec, exec, s[8:9]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, s18
	s_and_saveexec_b64 s[8:9], s[12:13]
	s_cbranch_execz .LBB3_23
.LBB3_36:
	v_cvt_f64_f32_e32 v[0:1], v0
	s_mov_b32 s12, 0x6fc92f5d
	v_mov_b32_e32 v2, 0xd6f2d7aa
	v_mov_b32_e32 v3, 0x3fac6b08
	s_mov_b32 s13, 0x3f83b2ab
	v_fma_f64 v[2:3], v[0:1], s[12:13], v[2:3]
	s_mov_b32 s12, 0xe61e6af1
	v_mov_b32_e32 v6, 0xcfe27125
	v_mov_b32_e32 v7, 0x3f55d897
	s_mov_b32 s13, 0x3f243090
	v_mul_f64 v[4:5], v[0:1], v[0:1]
	v_fma_f64 v[6:7], v[0:1], s[12:13], v[6:7]
	s_mov_b32 s12, 0xff82c57b
	v_mov_b32_e32 v8, 0xfefa39f3
	v_mov_b32_e32 v9, 0x3fe62e42
	s_mov_b32 s13, 0x3fcebfbd
	v_fma_f64 v[8:9], v[0:1], s[12:13], v[8:9]
	s_andn2_b64 s[10:11], s[10:11], exec
	v_fma_f64 v[2:3], v[4:5], v[6:7], v[2:3]
	v_fma_f64 v[2:3], v[4:5], v[2:3], v[8:9]
	v_fma_f64 v[0:1], v[2:3], v[0:1], 1.0
	v_cvt_f32_f64_e32 v1, v[0:1]
	s_or_b64 exec, exec, s[8:9]
	s_and_saveexec_b64 s[8:9], s[10:11]
	s_cbranch_execnz .LBB3_24
	s_branch .LBB3_25
.Lfunc_end0:
	.size	exp2f.internalized, .Lfunc_end0-exp2f.internalized

	.hidden	exp2f
	.globl	exp2f
	.p2align	2
	.type	exp2f,@function
exp2f:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	v_and_b32_e32 v2, 0x7fffffff, v0
	v_add_u32_e32 v1, 0xbd000000, v2
	s_mov_b32 s4, 0xfa000001
	v_cmp_gt_u32_e32 vcc, s4, v1
	s_mov_b64 s[10:11], -1
	s_mov_b64 s[4:5], 0
	s_mov_b64 s[6:7], 0
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execnz .LBB0_5
	s_or_b64 exec, exec, s[8:9]
	s_and_saveexec_b64 s[8:9], s[10:11]
	s_cbranch_execnz .LBB0_14
.LBB0_2:
	s_or_b64 exec, exec, s[8:9]
	s_and_saveexec_b64 s[8:9], s[4:5]
	s_xor_b64 s[4:5], exec, s[8:9]
	s_cbranch_execnz .LBB0_15
.LBB0_3:
	s_or_b64 exec, exec, s[4:5]
	s_and_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execnz .LBB0_20
.LBB0_4:
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v0, v1
	s_setpc_b64 s[30:31]
.LBB0_5:
	s_mov_b32 s4, 0x3d000000
	v_cmp_lt_u32_e32 vcc, s4, v2
	s_mov_b64 s[10:11], 0
	s_mov_b64 s[6:7], -1
	s_mov_b64 s[12:13], 0
	s_and_saveexec_b64 s[4:5], vcc
	s_cbranch_execz .LBB0_13
	v_cmp_lt_i32_e32 vcc, -1, v0
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz .LBB0_10
	s_mov_b32 s10, 0x7f800000
	v_cmp_gt_u32_e32 vcc, s10, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_cbranch_execz .LBB0_9
	s_getpc_b64 s[12:13]
	s_add_u32 s12, s12, _ZZN11__llvm_libc6fputil15quick_get_roundEvE1x@rel32@lo+4
	s_addc_u32 s13, s13, _ZZN11__llvm_libc6fputil15quick_get_roundEvE1x@rel32@hi+12
	v_mov_b32_e32 v3, s12
	v_mov_b32_e32 v4, s13
	flat_load_dword v1, v[3:4] glc
	s_waitcnt vmcnt(0)
.LBB0_9:
	s_or_b64 exec, exec, s[10:11]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v1, 0x7f800000, v0
.LBB0_10:
	s_or_saveexec_b64 s[6:7], s[6:7]
	s_mov_b64 s[10:11], 0
	s_mov_b64 s[12:13], 0
	s_xor_b64 exec, exec, s[6:7]
	s_mov_b32 s10, 0xc3160000
	v_cmp_gt_u32_e32 vcc, s10, v0
	s_mov_b64 s[12:13], exec
	s_and_b64 s[10:11], vcc, exec
	s_or_b64 exec, exec, s[6:7]
	s_xor_b64 s[6:7], exec, -1
	s_and_b64 s[12:13], s[12:13], exec
	s_and_b64 s[10:11], s[10:11], exec
.LBB0_13:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 s[6:7], s[6:7], exec
	s_and_b64 s[4:5], s[12:13], exec
	s_orn2_b64 s[10:11], s[10:11], exec
	s_or_b64 exec, exec, s[8:9]
	s_and_saveexec_b64 s[8:9], s[10:11]
	s_cbranch_execz .LBB0_2
.LBB0_14:
	s_mov_b32 s10, 0
	v_cmp_gt_f32_e32 vcc, 0, v0
	v_cndmask_b32_e64 v3, 0, 1, vcc
	v_mov_b32_e32 v4, s10
	v_lshlrev_b64 v[3:4], 2, v[3:4]
	s_getpc_b64 s[10:11]
	s_add_u32 s10, s10, __const.exp2f.HALF@rel32@lo+4
	s_addc_u32 s11, s11, __const.exp2f.HALF@rel32@hi+12
	v_mov_b32_e32 v1, s11
	v_add_co_u32_e32 v3, vcc, s10, v3
	v_addc_co_u32_e32 v4, vcc, v4, v1, vcc
	global_load_dword v1, v[3:4], off
	s_getpc_b64 s[10:11]
	s_add_u32 s10, s10, _ZN11__llvm_libc7ExpBase9EXP_2_MIDE@rel32@lo+4
	s_addc_u32 s11, s11, _ZN11__llvm_libc7ExpBase9EXP_2_MIDE@rel32@hi+12
	v_mov_b32_e32 v8, v0
	v_mov_b32_e32 v5, 0xff8131c4
	v_mov_b32_e32 v6, 0x3fcebfbd
	s_mov_b32 s12, 0x91198529
	v_mov_b32_e32 v7, 0xbee74b2a
	s_mov_b32 s13, 0x3f55d880
	s_andn2_b64 s[4:5], s[4:5], exec
	s_waitcnt vmcnt(0)
	v_fmac_f32_e32 v1, 0x42000000, v0
	v_cvt_i32_f32_e32 v1, v1
	v_and_b32_e32 v3, 31, v1
	v_lshlrev_b32_e32 v3, 3, v3
	global_load_dwordx2 v[3:4], v3, s[10:11]
	v_cvt_f32_i32_e32 v9, v1
	s_mov_b32 s10, 0xd7061695
	s_mov_b32 s11, 0x3fac6b08
	v_lshlrev_b32_e32 v1, 15, v1
	v_fmac_f32_e32 v8, 0xbd000000, v9
	v_cvt_f64_f32_e32 v[9:10], v8
	v_mov_b32_e32 v8, 0x3f83b2b1
	v_and_b32_e32 v1, 0xfff00000, v1
	v_fma_f64 v[5:6], v[9:10], s[10:11], v[5:6]
	s_mov_b32 s10, 0xfefa39ef
	s_mov_b32 s11, 0x3fe62e42
	v_mul_f64 v[11:12], v[9:10], v[9:10]
	v_fma_f64 v[7:8], v[9:10], s[12:13], v[7:8]
	v_fma_f64 v[9:10], v[9:10], s[10:11], 1.0
	v_fma_f64 v[5:6], v[11:12], v[7:8], v[5:6]
	s_waitcnt vmcnt(0)
	v_add_co_u32_e32 v3, vcc, 0, v3
	v_addc_co_u32_e32 v4, vcc, v1, v4, vcc
	v_mul_f64 v[7:8], v[11:12], v[3:4]
	v_mul_f64 v[3:4], v[9:10], v[3:4]
	v_fma_f64 v[3:4], v[5:6], v[7:8], v[3:4]
	v_cvt_f32_f64_e32 v1, v[3:4]
	s_or_b64 exec, exec, s[8:9]
	s_and_saveexec_b64 s[8:9], s[4:5]
	s_xor_b64 s[4:5], exec, s[8:9]
	s_cbranch_execz .LBB0_3
.LBB0_15:
	s_mov_b32 s8, 0x7f800000
	v_cmp_ne_u32_e32 vcc, s8, v2
	v_mov_b32_e32 v1, 0
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execz .LBB0_19
	s_mov_b32 s10, 0x7f800001
	v_cmp_gt_u32_e32 vcc, s10, v2
	v_mov_b32_e32 v1, v0
	s_and_saveexec_b64 s[10:11], vcc
	s_cbranch_execz .LBB0_18
	s_mov_b64 s[12:13], src_private_base
	v_lshrrev_b32_e64 v3, 6, s32
	v_mov_b32_e32 v4, s13
	v_mov_b32_e32 v1, 0x33000000
	flat_store_dword v[3:4], v1
	s_waitcnt vmcnt(0)
	flat_load_dword v1, v[3:4] glc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v1, 0
.LBB0_18:
	s_or_b64 exec, exec, s[10:11]
.LBB0_19:
	s_or_b64 exec, exec, s[8:9]
	s_or_b64 exec, exec, s[4:5]
	s_and_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execz .LBB0_4
.LBB0_20:
	s_mov_b32 s6, 0x32800000
	v_cmp_lt_u32_e32 vcc, s6, v2
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz .LBB0_26
	s_mov_b32 s8, 0x38428937
	v_and_b32_e32 v1, 0x38428937, v0
	v_cmp_eq_u32_e32 vcc, s8, v1
	s_mov_b64 s[12:13], -1
	s_mov_b64 s[10:11], 0
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execnz .LBB0_29
	s_or_b64 exec, exec, s[8:9]
	v_mov_b32_e32 v1, s18
	s_and_saveexec_b64 s[8:9], s[12:13]
	s_cbranch_execnz .LBB0_36
.LBB0_23:
	s_or_b64 exec, exec, s[8:9]
	s_and_saveexec_b64 s[8:9], s[10:11]
	s_cbranch_execz .LBB0_25
.LBB0_24:
	s_mov_b64 s[10:11], src_private_base
	v_lshrrev_b32_e64 v2, 6, s32
	v_add_u32_e32 v2, 4, v2
	v_mov_b32_e32 v3, s11
	v_mov_b32_e32 v1, 0x3f7ac6b1
	flat_store_dword v[2:3], v1
	s_waitcnt vmcnt(0)
	flat_load_dword v0, v[2:3] glc
	s_waitcnt vmcnt(0)
	flat_store_dword v[2:3], v1
	s_waitcnt vmcnt(0) lgkmcnt(0)
	flat_load_dword v0, v[2:3] glc
	s_waitcnt vmcnt(0)
.LBB0_25:
	s_or_b64 exec, exec, s[8:9]
.LBB0_26:
	s_andn2_saveexec_b64 s[6:7], s[6:7]
	s_cbranch_execz .LBB0_28
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_add_f32_e32 v1, 1.0, v0
.LBB0_28:
	s_or_b64 exec, exec, s[6:7]
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_mov_b32_e32 v0, v1
	s_setpc_b64 s[30:31]
.LBB0_29:
	s_mov_b32 s10, 0x3b429d36
	v_cmp_lt_i32_e32 vcc, s10, v0
	s_mov_b64 s[10:11], 0
	s_mov_b64 s[14:15], 0
	s_and_saveexec_b64 s[12:13], vcc
	s_xor_b64 s[12:13], exec, s[12:13]
	s_cbranch_execz .LBB0_33
	s_mov_b32 s14, 0x3b429d37
	v_cmp_eq_u32_e32 vcc, s14, v0
	s_mov_b64 s[16:17], -1
	s_and_saveexec_b64 s[14:15], vcc
	s_cbranch_execz .LBB0_32
	s_mov_b64 s[16:17], src_private_base
	v_lshrrev_b32_e64 v1, 6, s32
	v_add_u32_e32 v1, 8, v1
	v_mov_b32_e32 v2, s17
	v_mov_b32_e32 v3, 0x3f804385
	flat_store_dword v[1:2], v3
	s_waitcnt vmcnt(0)
	flat_load_dword v4, v[1:2] glc
	s_waitcnt vmcnt(0)
	s_mov_b32 s18, 0x3f804385
	flat_store_dword v[1:2], v3
	s_waitcnt vmcnt(0)
	flat_load_dword v1, v[1:2] glc
	s_waitcnt vmcnt(0)
	s_xor_b64 s[16:17], exec, -1
.LBB0_32:
	s_or_b64 exec, exec, s[14:15]
	s_and_b64 s[14:15], s[16:17], exec
.LBB0_33:
	s_andn2_saveexec_b64 s[12:13], s[12:13]
	s_mov_b32 s16, 0xbcf3a937
	v_cmp_ne_u32_e32 vcc, s16, v0
	s_andn2_b64 s[14:15], s[14:15], exec
	s_and_b64 s[16:17], vcc, exec
	s_mov_b64 s[10:11], exec
	s_or_b64 s[14:15], s[14:15], s[16:17]
	s_or_b64 exec, exec, s[12:13]
	s_and_b64 s[10:11], s[10:11], exec
	s_orn2_b64 s[12:13], s[14:15], exec
	s_or_b64 exec, exec, s[8:9]
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v1, s18
	s_and_saveexec_b64 s[8:9], s[12:13]
	s_cbranch_execz .LBB0_23
.LBB0_36:
	v_cvt_f64_f32_e32 v[0:1], v0
	s_mov_b32 s12, 0x6fc92f5d
	v_mov_b32_e32 v2, 0xd6f2d7aa
	v_mov_b32_e32 v3, 0x3fac6b08
	s_mov_b32 s13, 0x3f83b2ab
	v_fma_f64 v[2:3], v[0:1], s[12:13], v[2:3]
	s_mov_b32 s12, 0xe61e6af1
	v_mov_b32_e32 v6, 0xcfe27125
	v_mov_b32_e32 v7, 0x3f55d897
	s_mov_b32 s13, 0x3f243090
	v_mul_f64 v[4:5], v[0:1], v[0:1]
	v_fma_f64 v[6:7], v[0:1], s[12:13], v[6:7]
	s_mov_b32 s12, 0xff82c57b
	v_mov_b32_e32 v8, 0xfefa39f3
	v_mov_b32_e32 v9, 0x3fe62e42
	s_mov_b32 s13, 0x3fcebfbd
	v_fma_f64 v[8:9], v[0:1], s[12:13], v[8:9]
	s_andn2_b64 s[10:11], s[10:11], exec
	v_fma_f64 v[2:3], v[4:5], v[6:7], v[2:3]
	v_fma_f64 v[2:3], v[4:5], v[2:3], v[8:9]
	v_fma_f64 v[0:1], v[2:3], v[0:1], 1.0
	v_cvt_f32_f64_e32 v1, v[0:1]
	s_or_b64 exec, exec, s[8:9]
	s_and_saveexec_b64 s[8:9], s[10:11]
	s_cbranch_execnz .LBB0_24
	s_branch .LBB0_25
.Lfunc_end1:
	.size	exp2f, .Lfunc_end1-exp2f

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

	.protected	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14
	.p2align	8
	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14,@function
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14:
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
	v_lshlrev_b64 v[5:6], 2, v[4:5]
	v_ashrrev_i32_e32 v4, 31, v3
	v_mov_b32_e32 v2, s15
	v_add_co_u32_e64 v5, s[0:1], s14, v5
	v_lshlrev_b64 v[7:8], 2, v[3:4]
	v_addc_co_u32_e64 v6, s[0:1], v2, v6, s[0:1]
.LBB2_11:
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
.Lfunc_end3:
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14, .Lfunc_end3-__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23:
	s_add_u32 flat_scratch_lo, s8, s11
	s_addc_u32 flat_scratch_hi, s9, 0
	s_add_u32 s0, s0, s11
	v_mov_b32_e32 v13, v0
	s_addc_u32 s1, s1, 0
	v_cmp_eq_u32_e64 s[20:21], 0, v13
	s_mov_b32 s32, 0
	s_and_saveexec_b64 s[8:9], s[20:21]
	s_cbranch_execz .LBB4_2
	v_mov_b32_e32 v0, 0
	v_mov_b32_e32 v1, 1
	ds_write2_b32 v0, v0, v0 offset0:1 offset1:2
	ds_write_b32 v0, v1 offset:24
.LBB4_2:
	s_or_b64 exec, exec, s[8:9]
	s_load_dwordx4 s[24:27], s[6:7], 0x0
	s_waitcnt lgkmcnt(0)
	s_cmp_lt_i32 s24, 1
	s_cbranch_scc1 .LBB4_15
	s_load_dword s8, s[4:5], 0x4
	s_waitcnt lgkmcnt(0)
	s_and_b32 s19, 0xffff, s8
	v_cvt_f32_u32_e32 v0, s19
	s_mul_i32 s25, s10, s19
	s_cmp_ge_i32 s25, s24
	v_rcp_iflag_f32_e32 v0, v0
	v_mul_f32_e32 v0, 0x4f7ffffe, v0
	v_cvt_u32_f32_e32 v0, v0
	v_readfirstlane_b32 s8, v0
	s_cbranch_scc1 .LBB4_15
	s_load_dwordx2 s[28:29], s[6:7], 0x10
	s_load_dword s9, s[4:5], 0xc
	s_sub_i32 s4, 0, s19
	s_mul_i32 s4, s4, s8
	s_mul_hi_u32 s4, s8, s4
	s_add_i32 s8, s8, s4
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s4, s9, s8
	s_mul_i32 s4, s4, s19
	s_sub_i32 s4, s9, s4
	s_sub_i32 s5, s4, s19
	s_cmp_ge_u32 s4, s19
	s_cselect_b32 s4, s5, s4
	s_sub_i32 s5, s4, s19
	s_cmp_ge_u32 s4, s19
	s_cselect_b32 s4, s5, s4
	s_sub_i32 s33, s9, s4
	s_add_i32 s4, s19, s25
	s_add_i32 s42, s24, -1
	s_add_i32 s4, s4, -1
	s_min_i32 s34, s4, s42
	s_cmp_gt_i32 s24, 0
	s_cselect_b64 s[4:5], -1, 0
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	s_mov_b32 s35, 0
	v_mov_b32_e32 v16, 0
	v_cmp_ne_u32_e64 s[22:23], 1, v0
	v_mov_b32_e32 v17, 1
	s_getpc_b64 s[36:37]
	s_add_u32 s36, s36, exp2f.internalized@rel32@lo+4
	s_addc_u32 s37, s37, exp2f.internalized@rel32@hi+12
	s_branch .LBB4_6
.LBB4_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s34, s33
	s_add_i32 s25, s25, s33
	s_min_i32 s34, s4, s42
	s_cmp_lt_i32 s25, s24
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB4_15
.LBB4_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[20:21]
	s_cbranch_execz .LBB4_8
	v_mov_b32_e32 v0, s19
	ds_write_b32 v16, v0 offset:24
	ds_write2_b32 v16, v17, v17 offset0:1 offset1:2
.LBB4_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[22:23]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB4_13
	ds_read2_b32 v[0:1], v16 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v1, v0
	v_cmp_ne_u32_e64 s[4:5], 0, v0
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v1, 0, v13, vcc
	v_add_u32_e32 v14, s25, v1
	v_ashrrev_i32_e32 v15, 31, v14
	v_cmp_ge_u64_e32 vcc, s[34:35], v[14:15]
	s_and_saveexec_b64 s[38:39], vcc
	s_cbranch_execz .LBB4_12
	ds_read_b32 v1, v16 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v0
	s_mov_b64 s[40:41], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v18, 1, v1, vcc
.LBB4_11:
	v_lshlrev_b64 v[19:20], 2, v[14:15]
	v_mov_b32_e32 v1, s29
	v_add_co_u32_e32 v0, vcc, s28, v19
	v_addc_co_u32_e32 v1, vcc, v1, v20, vcc
	flat_load_dword v0, v[0:1]
	s_swappc_b64 s[30:31], s[36:37]
	v_add_u32_e32 v14, v18, v14
	v_ashrrev_i32_e32 v15, 31, v14
	v_cmp_lt_u64_e32 vcc, s[34:35], v[14:15]
	v_mov_b32_e32 v2, s27
	v_add_co_u32_e64 v1, s[4:5], s26, v19
	v_addc_co_u32_e64 v2, s[4:5], v2, v20, s[4:5]
	s_or_b64 s[40:41], vcc, s[40:41]
	flat_store_dword v[1:2], v0
	s_andn2_b64 exec, exec, s[40:41]
	s_cbranch_execnz .LBB4_11
.LBB4_12:
	s_or_b64 exec, exec, s[38:39]
.LBB4_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[20:21]
	s_cbranch_execz .LBB4_5
	ds_write2_b32 v16, v16, v16 offset0:1 offset1:2
	ds_write_b32 v16, v17 offset:24
	s_branch .LBB4_5
.LBB4_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
		.amdhsa_group_segment_fixed_size 40
		.amdhsa_private_segment_fixed_size 16
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
		.amdhsa_next_free_vgpr 21
		.amdhsa_next_free_sgpr 43
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23, .Lfunc_end4-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23:
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
	s_and_b32 s21, 0xffff, s2
	v_cvt_f32_u32_e32 v1, s21
	s_mul_i32 s8, s8, s21
	s_cmp_ge_i32 s8, s12
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s2, v1
	s_cbranch_scc1 .LBB5_15
	s_load_dwordx2 s[22:23], s[6:7], 0x10
	s_load_dword s3, s[4:5], 0xc
	s_sub_i32 s4, 0, s21
	s_mul_i32 s4, s4, s2
	s_mul_hi_u32 s4, s2, s4
	s_add_i32 s2, s2, s4
	s_waitcnt lgkmcnt(0)
	s_mul_hi_u32 s2, s3, s2
	s_mul_i32 s2, s2, s21
	s_sub_i32 s2, s3, s2
	s_sub_i32 s4, s2, s21
	s_cmp_ge_u32 s2, s21
	s_cselect_b32 s2, s4, s2
	s_sub_i32 s4, s2, s21
	s_cmp_ge_u32 s2, s21
	s_cselect_b32 s2, s4, s2
	s_sub_i32 s16, s3, s2
	s_add_i32 s2, s21, s8
	s_add_i32 s26, s12, -1
	s_add_i32 s2, s2, -1
	s_min_i32 s10, s2, s26
	s_cmp_gt_i32 s12, 0
	s_cselect_b64 s[2:3], -1, 0
	s_ashr_i32 s9, s8, 31
	s_lshl_b64 s[4:5], s[8:9], 2
	s_add_u32 s14, s14, s4
	s_addc_u32 s9, s15, s5
	s_ashr_i32 s17, s16, 31
	s_lshl_b64 s[18:19], s[16:17], 2
	s_add_u32 s20, s22, s4
	v_cndmask_b32_e64 v1, 0, 1, s[2:3]
	s_mov_b32 s11, 0
	s_addc_u32 s13, s23, s5
	v_mov_b32_e32 v2, 0
	v_cmp_ne_u32_e64 s[2:3], 1, v1
	s_mov_b32 s15, 0xc2fc0000
	v_mov_b32_e32 v10, 1
	v_mov_b32_e32 v11, 0x1f800000
	v_mov_b32_e32 v12, 0x42800000
	s_branch .LBB5_6
.LBB5_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s10, s16
	s_add_i32 s8, s8, s16
	s_min_i32 s10, s4, s26
	s_add_u32 s14, s14, s18
	s_addc_u32 s9, s9, s19
	s_add_u32 s20, s20, s18
	s_addc_u32 s13, s13, s19
	s_cmp_lt_i32 s8, s12
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB5_15
.LBB5_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB5_8
	v_mov_b32_e32 v1, s21
	ds_write_b32 v2, v1 offset:24
	ds_write2_b32 v2, v10, v10 offset0:1 offset1:2
.LBB5_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB5_13
	ds_read2_b32 v[3:4], v2 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v4, v3
	v_cmp_ne_u32_e64 s[4:5], 0, v3
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v6, 0, v0, vcc
	v_add_u32_e32 v4, s8, v6
	v_ashrrev_i32_e32 v5, 31, v4
	v_cmp_ge_u64_e32 vcc, s[10:11], v[4:5]
	s_and_saveexec_b64 s[22:23], vcc
	s_cbranch_execz .LBB5_12
	ds_read_b32 v4, v2 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v3
	v_lshlrev_b32_e32 v1, 2, v6
	v_mov_b32_e32 v9, v2
	s_mov_b64 s[24:25], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v3, 1, v4, vcc
	v_ashrrev_i32_e32 v4, 31, v3
	v_add_u32_e32 v7, s8, v3
	v_lshlrev_b64 v[4:5], 2, v[3:4]
	v_add_u32_e32 v6, v7, v6
	v_mov_b32_e32 v8, v1
.LBB5_11:
	v_mov_b32_e32 v1, s13
	v_add_co_u32_e32 v13, vcc, s20, v8
	v_addc_co_u32_e32 v14, vcc, v1, v9, vcc
	flat_load_dword v1, v[13:14]
	v_mov_b32_e32 v14, s9
	v_add_co_u32_e32 v13, vcc, s14, v8
	v_ashrrev_i32_e32 v7, 31, v6
	v_addc_co_u32_e32 v14, vcc, v14, v9, vcc
	v_cmp_lt_u64_e32 vcc, s[10:11], v[6:7]
	v_add_co_u32_e64 v8, s[4:5], v8, v4
	v_addc_co_u32_e64 v9, s[4:5], v9, v5, s[4:5]
	v_add_u32_e32 v6, v6, v3
	s_or_b64 s[24:25], vcc, s[24:25]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_gt_f32_e64 s[6:7], s15, v1
	v_cndmask_b32_e64 v15, 0, v12, s[6:7]
	v_add_f32_e32 v1, v1, v15
	v_exp_f32_e32 v1, v1
	v_cndmask_b32_e64 v7, 1.0, v11, s[6:7]
	v_mul_f32_e32 v1, v7, v1
	flat_store_dword v[13:14], v1
	s_andn2_b64 exec, exec, s[24:25]
	s_cbranch_execnz .LBB5_11
.LBB5_12:
	s_or_b64 exec, exec, s[22:23]
.LBB5_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB5_5
	ds_write2_b32 v2, v2, v2 offset0:1 offset1:2
	ds_write_b32 v2, v10 offset:24
	s_branch .LBB5_5
.LBB5_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
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
		.amdhsa_next_free_vgpr 16
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23, .Lfunc_end5-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23

	.type	__const.exp2f.HALF,@object
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2, 0x0
__const.exp2f.HALF:
	.long	0x3f000000
	.long	0xbf000000
	.size	__const.exp2f.HALF, 8

	.type	_ZN11__llvm_libc7ExpBase9EXP_2_MIDE,@object
	.section	.rodata._ZN11__llvm_libc7ExpBase9EXP_2_MIDE,#alloc
	.p2align	3, 0x0
_ZN11__llvm_libc7ExpBase9EXP_2_MIDE:
	.quad	4607182418800017408
	.quad	4607281034790536564
	.quad	4607381810190059791
	.quad	4607484792283487057
	.quad	4607590029391122811
	.quad	4607697570891348394
	.quad	4607807467243790904
	.quad	4607919770012999393
	.quad	4608034531892639509
	.quad	4608151806730217931
	.quad	4608271649552348194
	.quad	4608394116590569773
	.quad	4608519265307732519
	.quad	4608647154424958850
	.quad	4608777843949196329
	.quad	4608911395201373573
	.quad	4609047870845172685
	.quad	4609187334916431732
	.quad	4609329852853191047
	.quad	4609475491526397459
	.quad	4609624319271280859
	.quad	4609776405919417829
	.quad	4609931822831497360
	.quad	4610090642930804061
	.quad	4610252940737434541
	.quad	4610418792403263047
	.quad	4610588275747672732
	.quad	4610761470294069353
	.quad	4610938457307194503
	.quad	4611119319831255903
	.quad	4611304142728892634
	.quad	4611493012720993600
	.size	_ZN11__llvm_libc7ExpBase9EXP_2_MIDE, 256

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

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.10, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.11, 1

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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
    .private_segment_fixed_size: 16
    .sgpr_count:     49
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z5exp2fEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23.kd
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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
    .private_segment_fixed_size: 0
    .sgpr_count:     31
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z15__ocml_exp2_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23.kd
    .vgpr_count:     16
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata
