	.text
	.amdgcn_target "amdgcn-amd-amdhsa--gfx906"
	.p2align	2
	.type	asinhf,@function
asinhf:
	s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
	v_and_b32_e32 v4, 0x7fffffff, v0
	s_mov_b32 s4, 0x3e800000
	v_cmp_lt_u32_e32 vcc, s4, v4
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[6:7], exec, s[4:5]
	s_cbranch_execnz .LBB2_3
	s_andn2_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execnz .LBB2_9
.LBB2_2:
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v0, v1
	s_waitcnt vmcnt(0)
	s_setpc_b64 s[30:31]
.LBB2_3:
	v_lshrrev_b32_e32 v1, 28, v0
	v_and_b32_e32 v1, 8, v1
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, __const.asinhf.SIGN@rel32@lo+4
	s_addc_u32 s5, s5, __const.asinhf.SIGN@rel32@hi+12
	global_load_dwordx2 v[2:3], v1, s[4:5]
	s_mov_b32 s4, 0x4bdd65a5
	v_cmp_gt_u32_e32 vcc, s4, v4
	s_mov_b64 s[8:9], 0
	s_mov_b64 s[4:5], 0
	s_and_saveexec_b64 s[10:11], vcc
	s_xor_b64 s[10:11], exec, s[10:11]
	s_cbranch_execnz .LBB2_14
	s_andn2_saveexec_b64 s[10:11], s[10:11]
	s_cbranch_execnz .LBB2_23
.LBB2_5:
	s_or_b64 exec, exec, s[10:11]
	s_and_saveexec_b64 s[10:11], s[4:5]
	s_cbranch_execnz .LBB2_74
.LBB2_6:
	s_or_b64 exec, exec, s[10:11]
	s_and_saveexec_b64 s[4:5], s[8:9]
	s_cbranch_execz .LBB2_8
.LBB2_7:
	s_waitcnt vmcnt(0)
	v_cvt_f32_f64_e32 v0, v[2:3]
	v_mul_f32_e32 v1, 0xb3800000, v0
	v_fmac_f32_e32 v1, 0x418f034b, v0
.LBB2_8:
	s_or_b64 exec, exec, s[4:5]
	s_andn2_saveexec_b64 s[4:5], s[6:7]
	s_cbranch_execz .LBB2_2
.LBB2_9:
	s_waitcnt vmcnt(0)
	v_cvt_f64_f32_e32 v[2:3], v0
	s_mov_b32 s6, 0x32800000
	v_cmp_lt_u32_e32 vcc, s6, v4
	s_and_saveexec_b64 s[6:7], vcc
	s_xor_b64 s[6:7], exec, s[6:7]
	s_cbranch_execz .LBB2_11
	v_mul_f64 v[0:1], v[2:3], v[2:3]
	s_mov_b32 s8, 0x2690143d
	v_mov_b32_e32 v4, 0x810b3c4f
	v_mov_b32_e32 v5, 0xbf8c0f47
	s_mov_b32 s9, 0x3f82c860
	v_fma_f64 v[4:5], v[0:1], s[8:9], v[4:5]
	s_mov_b32 s8, 0x1d3fbe78
	s_mov_b32 s9, 0x3f91c0b4
	v_fma_f64 v[4:5], v[0:1], v[4:5], s[8:9]
	s_mov_b32 s8, 0x934266b7
	s_mov_b32 s9, 0xbf96e893
	v_fma_f64 v[4:5], v[0:1], v[4:5], s[8:9]
	s_mov_b32 s8, 0xf82928c6
	s_mov_b32 s9, 0x3f9f1c70
	v_fma_f64 v[4:5], v[0:1], v[4:5], s[8:9]
	s_mov_b32 s8, 0xb5a7622b
	s_mov_b32 s9, 0xbfa6db6d
	v_fma_f64 v[4:5], v[0:1], v[4:5], s[8:9]
	s_mov_b32 s8, 0x33325495
	s_mov_b32 s9, 0x3fb33333
	v_fma_f64 v[4:5], v[0:1], v[4:5], s[8:9]
	s_mov_b32 s8, 0x5555551e
	s_mov_b32 s9, 0xbfc55555
	v_fma_f64 v[4:5], v[0:1], v[4:5], s[8:9]
	v_fma_f64 v[0:1], v[0:1], v[4:5], 0
	v_fma_f64 v[0:1], v[2:3], v[0:1], v[2:3]
	v_cvt_f32_f64_e32 v1, v[0:1]
.LBB2_11:
	s_andn2_saveexec_b64 s[6:7], s[6:7]
	s_mov_b32 s8, 0x55555555
	s_mov_b32 s9, 0xbfc55555
	v_mul_f64 v[5:6], v[2:3], s[8:9]
	v_cmp_eq_u32_e32 vcc, 0, v4
	v_mul_f64 v[5:6], v[5:6], v[2:3]
	v_fma_f64 v[1:2], v[5:6], v[2:3], v[2:3]
	v_cvt_f32_f64_e32 v1, v[1:2]
	v_cndmask_b32_e32 v1, v1, v0, vcc
	s_or_b64 exec, exec, s[6:7]
	s_or_b64 exec, exec, s[4:5]
	v_mov_b32_e32 v0, v1
	s_setpc_b64 s[30:31]
.LBB2_14:
	s_mov_b32 s4, 0x49d29047
	v_cmp_lt_i32_e32 vcc, s4, v4
	s_mov_b64 s[4:5], 0
	s_and_saveexec_b64 s[12:13], vcc
	s_xor_b64 s[12:13], exec, s[12:13]
	s_cbranch_execz .LBB2_18
	s_mov_b32 s4, 0x49d29048
	v_cmp_eq_u32_e32 vcc, s4, v4
	s_mov_b64 s[4:5], -1
	s_and_saveexec_b64 s[14:15], vcc
	s_cbranch_execz .LBB2_17
	s_waitcnt vmcnt(0)
	v_cvt_f32_f64_e32 v4, v[2:3]
	s_xor_b64 s[4:5], exec, -1
	v_mul_f32_e32 v1, 0xb3800000, v4
	v_fmac_f32_e32 v1, 0x4170dc90, v4
.LBB2_17:
	s_or_b64 exec, exec, s[14:15]
	s_and_b64 s[4:5], s[4:5], exec
.LBB2_18:
	s_andn2_saveexec_b64 s[12:13], s[12:13]
	s_cbranch_execz .LBB2_22
	s_mov_b32 s14, 0x45abaf26
	v_cmp_eq_u32_e32 vcc, s14, v4
	s_mov_b64 s[14:15], -1
	s_and_saveexec_b64 s[16:17], vcc
	s_xor_b64 s[16:17], exec, s[16:17]
	s_cbranch_execz .LBB2_21
	s_waitcnt vmcnt(0)
	v_cvt_f32_f64_e32 v4, v[2:3]
	s_xor_b64 s[14:15], exec, -1
	v_mul_f32_e32 v1, 0xb3800000, v4
	v_fmac_f32_e32 v1, 0x4114df65, v4
.LBB2_21:
	s_or_b64 exec, exec, s[16:17]
	s_andn2_b64 s[4:5], s[4:5], exec
	s_and_b64 s[14:15], s[14:15], exec
	s_or_b64 s[4:5], s[4:5], s[14:15]
.LBB2_22:
	s_or_b64 exec, exec, s[12:13]
	s_and_b64 s[4:5], s[4:5], exec
	s_andn2_saveexec_b64 s[10:11], s[10:11]
	s_cbranch_execz .LBB2_5
.LBB2_23:
	s_mov_b32 s8, 0x7f800000
	v_cmp_gt_u32_e32 vcc, s8, v4
	s_mov_b64 s[12:13], 0
	s_mov_b64 s[14:15], s[4:5]
	v_mov_b32_e32 v1, v0
	s_and_saveexec_b64 s[8:9], vcc
	s_cbranch_execz .LBB2_73
	s_mov_b32 s12, 0x5e68984d
	v_cmp_lt_i32_e32 vcc, s12, v4
	s_mov_b64 s[14:15], s[4:5]
	s_and_saveexec_b64 s[12:13], vcc
	s_xor_b64 s[12:13], exec, s[12:13]
	s_cbranch_execz .LBB2_52
	s_mov_b32 s14, 0x65de7ca5
	v_cmp_lt_i32_e32 vcc, s14, v4
	s_mov_b64 s[16:17], s[4:5]
	s_and_saveexec_b64 s[14:15], vcc
	s_xor_b64 s[14:15], exec, s[14:15]
	s_cbranch_execz .LBB2_41
	s_mov_b32 s16, 0x6eb1a8eb
	v_cmp_lt_i32_e32 vcc, s16, v4
	s_mov_b64 s[18:19], s[4:5]
	s_and_saveexec_b64 s[16:17], vcc
	s_xor_b64 s[16:17], exec, s[16:17]
	s_cbranch_execz .LBB2_36
	s_mov_b32 s18, 0x7997f309
	v_cmp_lt_i32_e32 vcc, s18, v4
	s_mov_b64 s[18:19], s[4:5]
	s_and_saveexec_b64 s[20:21], vcc
	s_xor_b64 s[20:21], exec, s[20:21]
	s_cbranch_execz .LBB2_31
	s_mov_b32 s18, 0x7997f30a
	v_cmp_eq_u32_e32 vcc, s18, v4
	s_mov_b64 s[18:19], -1
	s_and_saveexec_b64 s[22:23], vcc
	s_cbranch_execz .LBB2_30
	s_waitcnt vmcnt(0)
	v_cvt_f32_f64_e32 v4, v[2:3]
	s_xor_b64 s[18:19], exec, -1
	v_mul_f32_e32 v1, 0x33800000, v4
	v_fmac_f32_e32 v1, 0x42a28a1b, v4
.LBB2_30:
	s_or_b64 exec, exec, s[22:23]
	s_andn2_b64 s[22:23], s[4:5], exec
	s_and_b64 s[18:19], s[18:19], exec
	s_or_b64 s[18:19], s[22:23], s[18:19]
.LBB2_31:
	s_andn2_saveexec_b64 s[20:21], s[20:21]
	s_cbranch_execz .LBB2_35
	s_mov_b32 s22, 0x6eb1a8ec
	v_cmp_eq_u32_e32 vcc, s22, v4
	s_mov_b64 s[22:23], -1
	s_and_saveexec_b64 s[24:25], vcc
	s_cbranch_execz .LBB2_34
	s_waitcnt vmcnt(0)
	v_cvt_f32_f64_e32 v4, v[2:3]
	s_xor_b64 s[22:23], exec, -1
	v_mul_f32_e32 v1, 0xb3800000, v4
	v_fmac_f32_e32 v1, 0x42845a89, v4
.LBB2_34:
	s_or_b64 exec, exec, s[24:25]
	s_andn2_b64 s[18:19], s[18:19], exec
	s_and_b64 s[22:23], s[22:23], exec
	s_or_b64 s[18:19], s[18:19], s[22:23]
.LBB2_35:
	s_or_b64 exec, exec, s[20:21]
	s_andn2_b64 s[20:21], s[4:5], exec
	s_and_b64 s[18:19], s[18:19], exec
	s_or_b64 s[18:19], s[20:21], s[18:19]
.LBB2_36:
	s_andn2_saveexec_b64 s[16:17], s[16:17]
	s_cbranch_execz .LBB2_40
	s_mov_b32 s20, 0x65de7ca6
	v_cmp_eq_u32_e32 vcc, s20, v4
	s_mov_b64 s[20:21], -1
	s_and_saveexec_b64 s[22:23], vcc
	s_cbranch_execz .LBB2_39
	s_waitcnt vmcnt(0)
	v_cvt_f32_f64_e32 v4, v[2:3]
	s_xor_b64 s[20:21], exec, -1
	v_mul_f32_e32 v1, 0x33800000, v4
	v_fmac_f32_e32 v1, 0x4257b360, v4
.LBB2_39:
	s_or_b64 exec, exec, s[22:23]
	s_andn2_b64 s[18:19], s[18:19], exec
	s_and_b64 s[20:21], s[20:21], exec
	s_or_b64 s[18:19], s[18:19], s[20:21]
.LBB2_40:
	s_or_b64 exec, exec, s[16:17]
	s_andn2_b64 s[16:17], s[4:5], exec
	s_and_b64 s[18:19], s[18:19], exec
	s_or_b64 s[16:17], s[16:17], s[18:19]
.LBB2_41:
	s_andn2_saveexec_b64 s[14:15], s[14:15]
	s_cbranch_execz .LBB2_51
	s_mov_b32 s18, 0x655890d2
	v_cmp_lt_i32_e32 vcc, s18, v4
	s_mov_b64 s[18:19], s[16:17]
	s_and_saveexec_b64 s[20:21], vcc
	s_xor_b64 s[20:21], exec, s[20:21]
	s_cbranch_execz .LBB2_46
	s_mov_b32 s18, 0x655890d3
	v_cmp_eq_u32_e32 vcc, s18, v4
	s_mov_b64 s[18:19], -1
	s_and_saveexec_b64 s[22:23], vcc
	s_cbranch_execz .LBB2_45
	s_waitcnt vmcnt(0)
	v_cvt_f32_f64_e32 v4, v[2:3]
	s_xor_b64 s[18:19], exec, -1
	v_mul_f32_e32 v1, 0xb3800000, v4
	v_fmac_f32_e32 v1, 0x4254d1f9, v4
.LBB2_45:
	s_or_b64 exec, exec, s[22:23]
	s_andn2_b64 s[22:23], s[16:17], exec
	s_and_b64 s[18:19], s[18:19], exec
	s_or_b64 s[18:19], s[22:23], s[18:19]
.LBB2_46:
	s_andn2_saveexec_b64 s[20:21], s[20:21]
	s_cbranch_execz .LBB2_50
	s_mov_b32 s22, 0x5e68984e
	v_cmp_eq_u32_e32 vcc, s22, v4
	s_mov_b64 s[22:23], -1
	s_and_saveexec_b64 s[24:25], vcc
	s_cbranch_execz .LBB2_49
	s_waitcnt vmcnt(0)
	v_cvt_f32_f64_e32 v4, v[2:3]
	s_xor_b64 s[22:23], exec, -1
	v_mul_f32_e32 v1, 0x33800000, v4
	v_fmac_f32_e32 v1, 0x422e4a21, v4
.LBB2_49:
	s_or_b64 exec, exec, s[24:25]
	s_andn2_b64 s[18:19], s[18:19], exec
	s_and_b64 s[22:23], s[22:23], exec
	s_or_b64 s[18:19], s[18:19], s[22:23]
.LBB2_50:
	s_or_b64 exec, exec, s[20:21]
	s_andn2_b64 s[16:17], s[16:17], exec
	s_and_b64 s[18:19], s[18:19], exec
	s_or_b64 s[16:17], s[16:17], s[18:19]
.LBB2_51:
	s_or_b64 exec, exec, s[14:15]
	s_andn2_b64 s[14:15], s[4:5], exec
	s_and_b64 s[16:17], s[16:17], exec
	s_or_b64 s[14:15], s[14:15], s[16:17]
.LBB2_52:
	s_or_saveexec_b64 s[12:13], s[12:13]
	s_mov_b64 s[18:19], 0
	s_xor_b64 exec, exec, s[12:13]
	s_cbranch_execz .LBB2_72
	s_mov_b32 s16, 0x4f8ffb02
	v_cmp_lt_i32_e32 vcc, s16, v4
	s_mov_b64 s[16:17], s[14:15]
	s_and_saveexec_b64 s[18:19], vcc
	s_xor_b64 s[18:19], exec, s[18:19]
	s_cbranch_execz .LBB2_63
	s_mov_b32 s16, 0x5c569e87
	v_cmp_lt_i32_e32 vcc, s16, v4
	s_mov_b64 s[16:17], s[14:15]
	s_and_saveexec_b64 s[20:21], vcc
	s_xor_b64 s[20:21], exec, s[20:21]
	s_cbranch_execz .LBB2_58
	s_mov_b32 s16, 0x5c569e88
	v_cmp_eq_u32_e32 vcc, s16, v4
	s_mov_b64 s[16:17], -1
	s_and_saveexec_b64 s[22:23], vcc
	s_cbranch_execz .LBB2_57
	s_waitcnt vmcnt(0)
	v_cvt_f32_f64_e32 v4, v[2:3]
	s_xor_b64 s[16:17], exec, -1
	v_mul_f32_e32 v1, 0x33800000, v4
	v_fmac_f32_e32 v1, 0x4222e0a3, v4
.LBB2_57:
	s_or_b64 exec, exec, s[22:23]
	s_andn2_b64 s[22:23], s[14:15], exec
	s_and_b64 s[16:17], s[16:17], exec
	s_or_b64 s[16:17], s[22:23], s[16:17]
.LBB2_58:
	s_andn2_saveexec_b64 s[20:21], s[20:21]
	s_cbranch_execz .LBB2_62
	s_mov_b32 s22, 0x4f8ffb03
	v_cmp_eq_u32_e32 vcc, s22, v4
	s_mov_b64 s[22:23], -1
	s_and_saveexec_b64 s[24:25], vcc
	s_cbranch_execz .LBB2_61
	s_waitcnt vmcnt(0)
	v_cvt_f32_f64_e32 v4, v[2:3]
	s_xor_b64 s[22:23], exec, -1
	v_mul_f32_e32 v1, 0x33800000, v4
	v_fmac_f32_e32 v1, 0x41b7ee9a, v4
.LBB2_61:
	s_or_b64 exec, exec, s[24:25]
	s_andn2_b64 s[16:17], s[16:17], exec
	s_and_b64 s[22:23], s[22:23], exec
	s_or_b64 s[16:17], s[16:17], s[22:23]
.LBB2_62:
	s_or_b64 exec, exec, s[20:21]
	s_andn2_b64 s[20:21], s[14:15], exec
	s_and_b64 s[16:17], s[16:17], exec
	s_or_b64 s[16:17], s[20:21], s[16:17]
.LBB2_63:
	s_or_saveexec_b64 s[18:19], s[18:19]
	s_mov_b64 s[22:23], 0
	s_xor_b64 exec, exec, s[18:19]
	s_cbranch_execz .LBB2_71
	s_mov_b32 s20, 0x4c803f2b
	v_cmp_lt_i32_e32 vcc, s20, v4
	s_mov_b64 s[20:21], s[16:17]
	s_and_saveexec_b64 s[22:23], vcc
	s_xor_b64 s[22:23], exec, s[22:23]
	s_cbranch_execz .LBB2_68
	s_mov_b32 s20, 0x4c803f2c
	v_cmp_eq_u32_e32 vcc, s20, v4
	s_mov_b64 s[20:21], -1
	s_and_saveexec_b64 s[24:25], vcc
	s_cbranch_execz .LBB2_67
	s_waitcnt vmcnt(0)
	v_cvt_f32_f64_e32 v4, v[2:3]
	s_xor_b64 s[20:21], exec, -1
	v_mul_f32_e32 v1, 0xb3800000, v4
	v_fmac_f32_e32 v1, 0x4195bc36, v4
.LBB2_67:
	s_or_b64 exec, exec, s[24:25]
	s_andn2_b64 s[24:25], s[16:17], exec
	s_and_b64 s[20:21], s[20:21], exec
	s_or_b64 s[20:21], s[24:25], s[20:21]
.LBB2_68:
	s_or_saveexec_b64 s[22:23], s[22:23]
	s_mov_b64 s[24:25], 0
	s_xor_b64 exec, exec, s[22:23]
	s_mov_b32 s26, 0x4bdd65a5
	v_cmp_ne_u32_e32 vcc, s26, v4
	s_andn2_b64 s[20:21], s[20:21], exec
	s_and_b64 s[26:27], vcc, exec
	s_mov_b64 s[24:25], exec
	s_or_b64 s[20:21], s[20:21], s[26:27]
	s_or_b64 exec, exec, s[22:23]
	s_andn2_b64 s[16:17], s[16:17], exec
	s_and_b64 s[20:21], s[20:21], exec
	s_and_b64 s[22:23], s[24:25], exec
	s_or_b64 s[16:17], s[16:17], s[20:21]
.LBB2_71:
	s_or_b64 exec, exec, s[18:19]
	s_andn2_b64 s[14:15], s[14:15], exec
	s_and_b64 s[16:17], s[16:17], exec
	s_and_b64 s[18:19], s[22:23], exec
	s_or_b64 s[14:15], s[14:15], s[16:17]
.LBB2_72:
	s_or_b64 exec, exec, s[12:13]
	s_andn2_b64 s[16:17], s[4:5], exec
	s_and_b64 s[14:15], s[14:15], exec
	s_and_b64 s[12:13], s[18:19], exec
	s_or_b64 s[14:15], s[16:17], s[14:15]
.LBB2_73:
	s_or_b64 exec, exec, s[8:9]
	s_and_b64 s[8:9], s[12:13], exec
	s_andn2_b64 s[4:5], s[4:5], exec
	s_and_b64 s[12:13], s[14:15], exec
	s_or_b64 s[4:5], s[4:5], s[12:13]
	s_or_b64 exec, exec, s[10:11]
	s_and_saveexec_b64 s[10:11], s[4:5]
	s_cbranch_execz .LBB2_6
.LBB2_74:
	v_cvt_f64_f32_e32 v[0:1], v0
	s_mov_b32 s4, 0
	s_mov_b32 s5, 0x7ff00000
	v_mov_b32_e32 v6, 0
	v_fma_f64 v[4:5], v[0:1], v[0:1], 1.0
	v_and_b32_e32 v7, 0x7ff00000, v5
	v_cmp_ne_u64_e32 vcc, s[4:5], v[6:7]
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[12:13], exec, s[4:5]
	s_cbranch_execz .LBB2_88
	v_and_b32_e32 v7, 0x7fffffff, v5
	v_mov_b32_e32 v6, v4
	v_cmp_ne_u64_e32 vcc, 0, v[6:7]
	s_and_saveexec_b64 s[14:15], vcc
	s_cbranch_execz .LBB2_87
	s_mov_b32 s4, 0
	s_mov_b32 s5, 0x7ff80000
	v_cmp_lt_i64_e32 vcc, -1, v[4:5]
	v_mov_b32_e32 v7, s5
	v_mov_b32_e32 v6, s4
	s_and_saveexec_b64 s[16:17], vcc
	s_cbranch_execz .LBB2_86
	s_mov_b32 s4, -1
	s_mov_b32 s5, 0xfffff
	v_cmp_lt_u64_e32 vcc, s[4:5], v[4:5]
	v_lshrrev_b32_e32 v7, 20, v5
	v_and_b32_e32 v6, 0xfffff, v5
	v_mov_b32_e32 v5, v4
	s_and_saveexec_b64 s[4:5], vcc
	s_xor_b64 s[4:5], exec, s[4:5]
	v_add_u32_e32 v12, 0xfffffc01, v7
	v_or_b32_e32 v6, 0x100000, v6
	s_andn2_saveexec_b64 s[4:5], s[4:5]
	v_ffbh_u32_e32 v4, v5
	v_add_u32_e32 v4, 32, v4
	v_ffbh_u32_e32 v8, v6
	v_min_u32_e32 v4, v4, v8
	v_add_u32_e32 v8, -11, v4
	v_sub_u32_e32 v4, v7, v4
	v_lshlrev_b64 v[5:6], v8, v[5:6]
	v_add_u32_e32 v12, 0xfffffc0d, v4
	s_or_b64 exec, exec, s[4:5]
	v_and_b32_e32 v4, 1, v12
	v_lshlrev_b64 v[4:5], v4, v[5:6]
	s_mov_b32 s4, 0
	s_mov_b32 s5, 0x100000
	v_mov_b32_e32 v6, 0xfff00000
	v_add_co_u32_e32 v10, vcc, 0, v4
	v_mov_b32_e32 v9, s5
	v_addc_co_u32_e32 v11, vcc, v5, v6, vcc
	s_mov_b32 s19, 0x80000
	s_mov_b32 s18, s4
	v_mov_b32_e32 v8, s4
	s_branch .LBB2_83
.LBB2_82:
	v_lshlrev_b64 v[10:11], 1, v[4:5]
	s_lshr_b64 s[4:5], s[18:19], 4
	v_lshlrev_b64 v[8:9], 1, v[6:7]
	v_mov_b32_e32 v13, s5
	v_add_co_u32_e32 v10, vcc, s4, v10
	v_addc_co_u32_e32 v11, vcc, v11, v13, vcc
	v_cmp_lt_u64_e32 vcc, v[8:9], v[10:11]
	v_cndmask_b32_e64 v14, v13, 0, vcc
	v_mov_b32_e32 v13, s4
	v_cndmask_b32_e64 v13, v13, 0, vcc
	v_add_co_u32_e64 v13, s[4:5], v13, v4
	v_cndmask_b32_e64 v10, v10, 0, vcc
	v_addc_co_u32_e64 v14, s[4:5], v14, v5, s[4:5]
	v_cndmask_b32_e64 v11, v11, 0, vcc
	v_sub_co_u32_e32 v8, vcc, v8, v10
	v_subb_co_u32_e32 v9, vcc, v9, v11, vcc
	v_lshlrev_b64 v[10:11], 1, v[13:14]
	s_lshr_b64 s[4:5], s[18:19], 5
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_mov_b32_e32 v15, s5
	v_add_co_u32_e32 v10, vcc, s4, v10
	v_addc_co_u32_e32 v11, vcc, v11, v15, vcc
	v_cmp_lt_u64_e32 vcc, v[8:9], v[10:11]
	v_mov_b32_e32 v16, s4
	v_cndmask_b32_e64 v16, v16, 0, vcc
	v_cndmask_b32_e64 v15, v15, 0, vcc
	v_add_co_u32_e64 v13, s[4:5], v16, v13
	v_cndmask_b32_e64 v10, v10, 0, vcc
	v_addc_co_u32_e64 v14, s[4:5], v15, v14, s[4:5]
	v_cndmask_b32_e64 v11, v11, 0, vcc
	v_sub_co_u32_e32 v8, vcc, v8, v10
	v_subb_co_u32_e32 v9, vcc, v9, v11, vcc
	v_lshlrev_b64 v[10:11], 1, v[13:14]
	s_lshr_b64 s[4:5], s[18:19], 6
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_mov_b32_e32 v15, s5
	v_add_co_u32_e32 v10, vcc, s4, v10
	v_addc_co_u32_e32 v11, vcc, v11, v15, vcc
	v_cmp_lt_u64_e32 vcc, v[8:9], v[10:11]
	v_mov_b32_e32 v16, s4
	v_cndmask_b32_e64 v16, v16, 0, vcc
	v_cndmask_b32_e64 v10, v10, 0, vcc
	v_cndmask_b32_e64 v15, v15, 0, vcc
	v_add_co_u32_e64 v13, s[4:5], v16, v13
	v_cndmask_b32_e64 v11, v11, 0, vcc
	v_sub_co_u32_e32 v8, vcc, v8, v10
	v_addc_co_u32_e64 v14, s[4:5], v15, v14, s[4:5]
	v_subb_co_u32_e32 v9, vcc, v9, v11, vcc
	v_lshlrev_b64 v[10:11], 1, v[8:9]
	v_lshlrev_b64 v[8:9], 1, v[13:14]
	s_lshr_b64 s[4:5], s[18:19], 7
	v_mov_b32_e32 v16, s5
	v_add_co_u32_e32 v15, vcc, s4, v8
	v_addc_co_u32_e32 v16, vcc, v9, v16, vcc
	v_cmp_lt_u64_e32 vcc, v[10:11], v[15:16]
	v_mov_b32_e32 v8, s5
	v_cndmask_b32_e64 v9, v8, 0, vcc
	v_mov_b32_e32 v8, s4
	v_cndmask_b32_e64 v8, v8, 0, vcc
	v_add_co_u32_e64 v8, s[4:5], v8, v13
	v_addc_co_u32_e64 v9, s[4:5], v9, v14, s[4:5]
	v_cndmask_b32_e64 v14, v15, 0, vcc
	v_cndmask_b32_e64 v13, v16, 0, vcc
	v_sub_co_u32_e32 v10, vcc, v10, v14
	v_subb_co_u32_e32 v11, vcc, v11, v13, vcc
	s_lshr_b64 s[18:19], s[18:19], 8
	s_cbranch_execz .LBB2_85
.LBB2_83:
	v_lshlrev_b64 v[6:7], 1, v[8:9]
	v_lshlrev_b64 v[4:5], 1, v[10:11]
	v_mov_b32_e32 v10, s19
	v_add_co_u32_e32 v6, vcc, s18, v6
	v_addc_co_u32_e32 v7, vcc, v7, v10, vcc
	v_cmp_lt_u64_e32 vcc, v[4:5], v[6:7]
	v_mov_b32_e32 v11, s18
	v_cndmask_b32_e64 v11, v11, 0, vcc
	v_cndmask_b32_e64 v10, v10, 0, vcc
	v_add_co_u32_e64 v8, s[4:5], v11, v8
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_addc_co_u32_e64 v9, s[4:5], v10, v9, s[4:5]
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_sub_co_u32_e32 v4, vcc, v4, v6
	v_subb_co_u32_e32 v5, vcc, v5, v7, vcc
	v_lshlrev_b64 v[6:7], 1, v[8:9]
	s_lshr_b64 s[4:5], s[18:19], 1
	v_lshlrev_b64 v[4:5], 1, v[4:5]
	v_mov_b32_e32 v10, s5
	v_add_co_u32_e32 v6, vcc, s4, v6
	v_addc_co_u32_e32 v7, vcc, v7, v10, vcc
	v_cmp_lt_u64_e32 vcc, v[4:5], v[6:7]
	v_mov_b32_e32 v11, s4
	v_cndmask_b32_e64 v11, v11, 0, vcc
	v_cndmask_b32_e64 v10, v10, 0, vcc
	v_add_co_u32_e64 v8, s[4:5], v11, v8
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_addc_co_u32_e64 v9, s[4:5], v10, v9, s[4:5]
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_sub_co_u32_e32 v4, vcc, v4, v6
	v_subb_co_u32_e32 v5, vcc, v5, v7, vcc
	v_lshlrev_b64 v[6:7], 1, v[8:9]
	s_lshr_b64 s[4:5], s[18:19], 2
	v_lshlrev_b64 v[4:5], 1, v[4:5]
	v_mov_b32_e32 v10, s5
	v_add_co_u32_e32 v6, vcc, s4, v6
	v_addc_co_u32_e32 v7, vcc, v7, v10, vcc
	v_cmp_lt_u64_e32 vcc, v[4:5], v[6:7]
	v_mov_b32_e32 v11, s4
	v_cndmask_b32_e64 v11, v11, 0, vcc
	v_cndmask_b32_e64 v6, v6, 0, vcc
	v_cndmask_b32_e64 v10, v10, 0, vcc
	v_add_co_u32_e64 v8, s[4:5], v11, v8
	v_cndmask_b32_e64 v7, v7, 0, vcc
	v_sub_co_u32_e32 v4, vcc, v4, v6
	v_addc_co_u32_e64 v9, s[4:5], v10, v9, s[4:5]
	v_subb_co_u32_e32 v5, vcc, v5, v7, vcc
	v_lshlrev_b64 v[6:7], 1, v[4:5]
	v_lshlrev_b64 v[4:5], 1, v[8:9]
	s_lshr_b64 s[4:5], s[18:19], 3
	v_mov_b32_e32 v11, s5
	v_add_co_u32_e32 v10, vcc, s4, v4
	v_addc_co_u32_e32 v11, vcc, v5, v11, vcc
	v_cmp_lt_u64_e32 vcc, v[6:7], v[10:11]
	v_mov_b32_e32 v4, s5
	v_cndmask_b32_e64 v5, v4, 0, vcc
	v_mov_b32_e32 v4, s4
	v_cndmask_b32_e64 v4, v4, 0, vcc
	v_add_co_u32_e64 v4, s[4:5], v4, v8
	v_addc_co_u32_e64 v5, s[4:5], v5, v9, s[4:5]
	v_cndmask_b32_e64 v9, v10, 0, vcc
	v_cndmask_b32_e64 v8, v11, 0, vcc
	v_cmp_lt_u64_e64 s[4:5], s[18:19], 16
	v_sub_co_u32_e32 v6, vcc, v6, v9
	v_subb_co_u32_e32 v7, vcc, v7, v8, vcc
	s_and_b64 vcc, exec, s[4:5]
	s_cbranch_vccz .LBB2_82
.LBB2_85:
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZZN11__llvm_libc6fputil15quick_get_roundEvE1x@rel32@lo+4
	s_addc_u32 s5, s5, _ZZN11__llvm_libc6fputil15quick_get_roundEvE1x@rel32@hi+12
	v_mov_b32_e32 v9, s5
	v_mov_b32_e32 v8, s4
	flat_load_dword v8, v[8:9] glc
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_lshlrev_b64 v[8:9], 2, v[4:5]
	v_lshlrev_b64 v[6:7], 2, v[6:7]
	v_or_b32_e32 v8, 1, v8
	v_cmp_ge_u64_e32 vcc, v[6:7], v[8:9]
	v_and_b32_e32 v10, 1, v4
	v_cndmask_b32_e32 v8, 0, v8, vcc
	v_cndmask_b32_e32 v9, 0, v9, vcc
	v_sub_co_u32_e64 v8, s[4:5], v6, v8
	v_subb_co_u32_e64 v6, s[4:5], v7, v9, s[4:5]
	v_mov_b32_e32 v9, 0xfff00000
	v_add_co_u32_e64 v4, s[4:5], 0, v4
	v_addc_co_u32_e64 v9, s[4:5], v5, v9, s[4:5]
	v_or_b32_e32 v5, v8, v10
	v_cmp_ne_u64_e64 s[4:5], 0, v[5:6]
	v_lshlrev_b32_e32 v7, 19, v12
	v_and_b32_e32 v7, 0xfff00000, v7
	s_and_b64 s[4:5], vcc, s[4:5]
	v_add_u32_e32 v7, 0x3ff00000, v7
	v_cndmask_b32_e64 v6, 0, 1, s[4:5]
	v_or_b32_e32 v5, v9, v7
	v_add_co_u32_e32 v6, vcc, v4, v6
	v_addc_co_u32_e32 v7, vcc, 0, v5, vcc
.LBB2_86:
	s_or_b64 exec, exec, s[16:17]
	v_mov_b32_e32 v4, v6
	v_mov_b32_e32 v5, v7
.LBB2_87:
	s_or_b64 exec, exec, s[14:15]
.LBB2_88:
	s_andn2_saveexec_b64 s[4:5], s[12:13]
	s_mov_b32 s12, 0
	v_and_b32_e32 v7, 0x800fffff, v5
	v_mov_b32_e32 v6, v4
	s_brev_b32 s13, 1
	v_cmp_ne_u64_e32 vcc, s[12:13], v[6:7]
	v_mov_b32_e32 v8, 0x7ff80000
	v_cndmask_b32_e32 v5, v8, v5, vcc
	v_cndmask_b32_e32 v4, 0, v4, vcc
	s_or_b64 exec, exec, s[4:5]
	s_waitcnt vmcnt(0)
	v_fma_f64 v[0:1], v[0:1], v[2:3], v[4:5]
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN11__llvm_libc10ONE_OVER_FE@rel32@lo+4
	s_addc_u32 s5, s5, _ZN11__llvm_libc10ONE_OVER_FE@rel32@hi+12
	v_mov_b32_e32 v5, s5
	s_mov_b32 s12, 0x45e09c18
	v_mov_b32_e32 v10, 0xfefe562d
	v_mov_b32_e32 v11, 0xbfcfffff
	s_mov_b32 s13, 0x3fc1dc5c
	v_mov_b32_e32 v14, -4
	v_lshrrev_b32_e32 v4, 10, v1
	v_and_b32_e32 v6, 0x3f8, v4
	v_add_co_u32_e32 v4, vcc, s4, v6
	v_addc_co_u32_e32 v5, vcc, 0, v5, vcc
	global_load_dwordx2 v[4:5], v[4:5], off
	s_getpc_b64 s[4:5]
	s_add_u32 s4, s4, _ZN11__llvm_libc5LOG_FE@rel32@lo+4
	s_addc_u32 s5, s5, _ZN11__llvm_libc5LOG_FE@rel32@hi+12
	v_mov_b32_e32 v7, s5
	v_add_co_u32_e32 v6, vcc, s4, v6
	v_addc_co_u32_e32 v7, vcc, 0, v7, vcc
	global_load_dwordx2 v[6:7], v[6:7], off
	v_and_b32_e32 v9, 0x1fff, v1
	v_mov_b32_e32 v8, v0
	v_or_b32_e32 v9, 0x3ff00000, v9
	v_add_f64 v[8:9], v[8:9], -1.0
	s_mov_b32 s4, 0x17d3a50f
	s_mov_b32 s5, 0x3fc99998
	v_mov_b32_e32 v15, 0xbfdfffff
	v_bfe_u32 v0, v1, 20, 11
	v_add_u32_e32 v0, 0xfffffc01, v0
	v_cvt_f64_i32_e32 v[0:1], v0
	s_andn2_b64 s[8:9], s[8:9], exec
	s_waitcnt vmcnt(1)
	v_mul_f64 v[4:5], v[4:5], v[8:9]
	v_mov_b32_e32 v8, 0x7b3f67a5
	v_mov_b32_e32 v9, 0xbfc55431
	v_mul_f64 v[12:13], v[4:5], v[4:5]
	v_fma_f64 v[10:11], v[4:5], s[4:5], v[10:11]
	v_fma_f64 v[8:9], v[4:5], s[12:13], v[8:9]
	s_mov_b32 s4, 0x55552dde
	s_mov_b32 s5, 0x3fd55555
	v_fma_f64 v[14:15], v[4:5], s[4:5], v[14:15]
	s_mov_b32 s4, 0xfefa39ef
	s_mov_b32 s5, 0x3fe62e42
	v_fma_f64 v[8:9], v[12:13], v[8:9], v[10:11]
	v_fma_f64 v[8:9], v[12:13], v[8:9], v[14:15]
	v_fma_f64 v[4:5], v[12:13], v[8:9], v[4:5]
	s_waitcnt vmcnt(0)
	v_add_f64 v[4:5], v[6:7], v[4:5]
	v_fma_f64 v[0:1], v[0:1], s[4:5], v[4:5]
	v_mul_f64 v[0:1], v[2:3], v[0:1]
	v_cvt_f32_f64_e32 v1, v[0:1]
	s_or_b64 exec, exec, s[10:11]
	s_and_saveexec_b64 s[4:5], s[8:9]
	s_cbranch_execnz .LBB2_7
	s_branch .LBB2_8
.Lfunc_end0:
	.size	asinhf, .Lfunc_end0-asinhf

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

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23:
	s_add_u32 flat_scratch_lo, s8, s11
	s_addc_u32 flat_scratch_hi, s9, 0
	s_add_u32 s0, s0, s11
	v_mov_b32_e32 v17, v0
	s_addc_u32 s1, s1, 0
	v_cmp_eq_u32_e64 s[28:29], 0, v17
	s_mov_b32 s32, 0
	s_and_saveexec_b64 s[8:9], s[28:29]
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
	s_load_dwordx2 s[40:41], s[6:7], 0x10
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
	s_sub_i32 s50, s9, s4
	s_add_i32 s4, s33, s37
	s_add_i32 s51, s36, -1
	s_add_i32 s4, s4, -1
	s_min_i32 s42, s4, s51
	s_cmp_gt_i32 s36, 0
	s_cselect_b64 s[4:5], -1, 0
	v_cndmask_b32_e64 v0, 0, 1, s[4:5]
	s_mov_b32 s43, 0
	v_mov_b32_e32 v20, 0
	v_cmp_ne_u32_e64 s[34:35], 1, v0
	v_mov_b32_e32 v21, 1
	s_getpc_b64 s[44:45]
	s_add_u32 s44, s44, asinhf@rel32@lo+4
	s_addc_u32 s45, s45, asinhf@rel32@hi+12
	s_branch .LBB3_6
.LBB3_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s42, s50
	s_add_i32 s37, s37, s50
	s_min_i32 s42, s4, s51
	s_cmp_lt_i32 s37, s36
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB3_15
.LBB3_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[28:29]
	s_cbranch_execz .LBB3_8
	v_mov_b32_e32 v0, s33
	ds_write_b32 v20, v0 offset:24
	ds_write2_b32 v20, v21, v21 offset0:1 offset1:2
.LBB3_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[34:35]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB3_13
	ds_read2_b32 v[0:1], v20 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v1, v0
	v_cmp_ne_u32_e64 s[4:5], 0, v0
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v1, 0, v17, vcc
	v_add_u32_e32 v18, s37, v1
	v_ashrrev_i32_e32 v19, 31, v18
	v_cmp_ge_u64_e32 vcc, s[42:43], v[18:19]
	s_and_saveexec_b64 s[46:47], vcc
	s_cbranch_execz .LBB3_12
	ds_read_b32 v1, v20 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v0
	s_mov_b64 s[48:49], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v22, 1, v1, vcc
.LBB3_11:
	v_lshlrev_b64 v[23:24], 2, v[18:19]
	v_mov_b32_e32 v1, s41
	v_add_co_u32_e32 v0, vcc, s40, v23
	v_addc_co_u32_e32 v1, vcc, v1, v24, vcc
	flat_load_dword v0, v[0:1]
	s_swappc_b64 s[30:31], s[44:45]
	v_add_u32_e32 v18, v22, v18
	v_ashrrev_i32_e32 v19, 31, v18
	v_cmp_lt_u64_e32 vcc, s[42:43], v[18:19]
	v_mov_b32_e32 v2, s39
	v_add_co_u32_e64 v1, s[4:5], s38, v23
	v_addc_co_u32_e64 v2, s[4:5], v2, v24, s[4:5]
	s_or_b64 s[48:49], vcc, s[48:49]
	flat_store_dword v[1:2], v0
	s_andn2_b64 exec, exec, s[48:49]
	s_cbranch_execnz .LBB3_11
.LBB3_12:
	s_or_b64 exec, exec, s[46:47]
.LBB3_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[28:29]
	s_cbranch_execz .LBB3_5
	ds_write2_b32 v20, v20, v20 offset0:1 offset1:2
	ds_write_b32 v20, v21 offset:24
	s_branch .LBB3_5
.LBB3_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
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
		.amdhsa_next_free_vgpr 25
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
.Lfunc_end3:
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23, .Lfunc_end3-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
	.p2align	8
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23,@function
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23:
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
	s_mul_i32 s20, s8, s13
	s_cmp_ge_i32 s20, s12
	v_rcp_iflag_f32_e32 v1, v1
	v_mul_f32_e32 v1, 0x4f7ffffe, v1
	v_cvt_u32_f32_e32 v1, v1
	v_readfirstlane_b32 s2, v1
	s_cbranch_scc1 .LBB4_15
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
	s_sub_i32 s21, s3, s2
	s_add_i32 s2, s13, s20
	s_add_i32 s22, s12, -1
	s_add_i32 s2, s2, -1
	s_min_i32 s10, s2, s22
	s_cmp_gt_i32 s12, 0
	s_cselect_b64 s[2:3], -1, 0
	v_cndmask_b32_e64 v1, 0, 1, s[2:3]
	s_mov_b32 s11, 0
	v_mov_b32_e32 v5, 0
	v_cmp_ne_u32_e64 s[2:3], 1, v1
	s_mov_b32 s23, 0x5f800000
	s_mov_b32 s24, 0x3f2aaaab
	v_mov_b32_e32 v6, 0x3f2aaada
	s_mov_b32 s25, 0x3f317218
	s_mov_b32 s26, 0x39800000
	v_mov_b32_e32 v7, 0x204
	s_brev_b32 s27, -2
	v_mov_b32_e32 v8, 1
	v_mov_b32_e32 v9, 0x200000
	v_mov_b32_e32 v10, 0x1f800000
	s_branch .LBB4_6
.LBB4_5:
	s_or_b64 exec, exec, s[4:5]
	s_add_i32 s4, s10, s21
	s_add_i32 s20, s20, s21
	s_min_i32 s10, s4, s22
	s_cmp_lt_i32 s20, s12
	s_waitcnt lgkmcnt(0)
	s_cbranch_scc0 .LBB4_15
.LBB4_6:
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB4_8
	v_mov_b32_e32 v1, s13
	ds_write_b32 v5, v1 offset:24
	ds_write2_b32 v5, v8, v8 offset0:1 offset1:2
.LBB4_8:
	s_or_b64 exec, exec, s[4:5]
	s_and_b64 vcc, exec, s[2:3]
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_cbranch_vccnz .LBB4_13
	ds_read2_b32 v[3:4], v5 offset0:1 offset1:2
	s_waitcnt lgkmcnt(0)
	v_cmp_eq_u32_e32 vcc, v4, v3
	v_cmp_ne_u32_e64 s[4:5], 0, v3
	s_and_b64 vcc, s[4:5], vcc
	v_cndmask_b32_e32 v1, 0, v0, vcc
	v_add_u32_e32 v1, s20, v1
	v_ashrrev_i32_e32 v2, 31, v1
	v_cmp_ge_u64_e32 vcc, s[10:11], v[1:2]
	s_and_saveexec_b64 s[16:17], vcc
	s_cbranch_execz .LBB4_12
	ds_read_b32 v4, v5 offset:24
	v_cmp_gt_u32_e32 vcc, 2, v3
	s_mov_b64 s[18:19], 0
	s_waitcnt lgkmcnt(0)
	v_cndmask_b32_e32 v11, 1, v4, vcc
.LBB4_11:
	v_lshlrev_b64 v[3:4], 2, v[1:2]
	v_mov_b32_e32 v2, s9
	v_add_co_u32_e32 v12, vcc, s8, v3
	v_addc_co_u32_e32 v13, vcc, v2, v4, vcc
	flat_load_dword v12, v[12:13]
	v_mov_b32_e32 v14, s15
	v_add_co_u32_e32 v3, vcc, s14, v3
	v_addc_co_u32_e32 v4, vcc, v14, v4, vcc
	v_mov_b32_e32 v13, 0x3ecc95a3
	v_add_u32_e32 v1, v11, v1
	v_ashrrev_i32_e32 v2, 31, v1
	v_cmp_lt_u64_e32 vcc, s[10:11], v[1:2]
	s_waitcnt vmcnt(0) lgkmcnt(0)
	v_cmp_ge_f32_e64 s[4:5], |v12|, s23
	v_cndmask_b32_e64 v15, 1.0, v10, s[4:5]
	v_mul_f32_e64 v15, |v12|, v15
	v_cndmask_b32_e64 v14, 1.0, v9, s[4:5]
	v_mul_f32_e32 v17, v15, v15
	v_add_f32_e32 v18, v14, v17
	v_sub_f32_e32 v20, v18, v17
	v_sub_f32_e32 v14, v14, v20
	v_sub_f32_e32 v20, v18, v20
	v_fma_f32 v19, v15, v15, -v17
	v_sub_f32_e32 v17, v17, v20
	v_add_f32_e32 v14, v14, v17
	v_add_f32_e32 v14, v19, v14
	v_add_f32_e32 v17, v18, v14
	v_sqrt_f32_e32 v19, v17
	v_sub_f32_e32 v18, v17, v18
	v_sub_f32_e32 v14, v14, v18
	v_cndmask_b32_e64 v16, 0, 1, s[4:5]
	v_mul_f32_e32 v18, v19, v19
	v_sub_f32_e32 v22, v17, v18
	v_add_f32_e32 v20, v19, v19
	v_sub_f32_e32 v23, v17, v22
	v_fma_f32 v21, v19, v19, -v18
	v_rcp_f32_e32 v20, v20
	v_sub_f32_e32 v18, v23, v18
	v_add_f32_e32 v14, v14, v18
	v_sub_f32_e32 v14, v14, v21
	v_add_f32_e32 v14, v22, v14
	v_mul_f32_e32 v14, v20, v14
	v_cmp_neq_f32_e64 s[4:5], 0, v17
	v_cndmask_b32_e64 v14, 0, v14, s[4:5]
	v_add_f32_e32 v17, v19, v14
	v_sub_f32_e32 v18, v17, v19
	v_add_f32_e32 v19, v15, v17
	v_sub_f32_e32 v14, v14, v18
	v_sub_f32_e32 v18, v19, v15
	v_sub_f32_e32 v20, v19, v18
	v_sub_f32_e32 v17, v17, v18
	v_sub_f32_e32 v15, v15, v20
	v_add_f32_e32 v15, v17, v15
	v_add_f32_e32 v14, v14, v15
	v_add_f32_e32 v15, v19, v14
	v_frexp_mant_f32_e32 v18, v15
	v_sub_f32_e32 v17, v15, v19
	v_frexp_exp_i32_f32_e32 v19, v15
	v_cmp_gt_f32_e64 s[4:5], s24, v18
	v_sub_f32_e32 v14, v14, v17
	v_subbrev_co_u32_e64 v17, s[4:5], 0, v19, s[4:5]
	v_sub_u32_e32 v18, 0, v17
	v_ldexp_f32 v15, v15, v18
	v_lshl_add_u32 v16, v16, 6, v17
	v_ldexp_f32 v14, v14, v18
	v_add_f32_e32 v17, -1.0, v15
	v_add_f32_e32 v18, 1.0, v15
	v_add_f32_e32 v19, 1.0, v17
	v_add_f32_e32 v20, -1.0, v18
	v_cvt_f32_i32_e32 v16, v16
	v_sub_f32_e32 v19, v15, v19
	v_sub_f32_e32 v15, v15, v20
	v_add_f32_e32 v19, v14, v19
	v_add_f32_e32 v14, v14, v15
	v_add_f32_e32 v21, v18, v14
	v_rcp_f32_e32 v23, v21
	v_mul_f32_e32 v15, 0x3f317218, v16
	v_add_f32_e32 v20, v17, v19
	v_fma_f32 v22, v16, s25, -v15
	v_sub_f32_e32 v17, v20, v17
	v_sub_f32_e32 v18, v21, v18
	v_fmac_f32_e32 v22, 0xb102e308, v16
	v_sub_f32_e32 v16, v19, v17
	v_sub_f32_e32 v14, v14, v18
	v_add_f32_e32 v17, v15, v22
	v_mul_f32_e32 v18, v20, v23
	v_sub_f32_e32 v15, v17, v15
	v_mul_f32_e32 v19, v21, v18
	v_sub_f32_e32 v15, v22, v15
	v_fma_f32 v22, v18, v21, -v19
	v_fmac_f32_e32 v22, v18, v14
	v_add_f32_e32 v24, v19, v22
	v_sub_f32_e32 v25, v20, v24
	v_sub_f32_e32 v20, v20, v25
	v_sub_f32_e32 v19, v24, v19
	v_sub_f32_e32 v20, v20, v24
	v_sub_f32_e32 v19, v22, v19
	v_add_f32_e32 v16, v16, v20
	v_sub_f32_e32 v16, v16, v19
	v_add_f32_e32 v19, v25, v16
	v_mul_f32_e32 v20, v23, v19
	v_sub_f32_e32 v22, v19, v25
	v_mul_f32_e32 v24, v21, v20
	v_sub_f32_e32 v16, v16, v22
	v_add_f32_e32 v22, v18, v20
	v_fma_f32 v21, v20, v21, -v24
	v_sub_f32_e32 v18, v22, v18
	v_fmac_f32_e32 v21, v20, v14
	v_sub_f32_e32 v14, v20, v18
	v_add_f32_e32 v18, v24, v21
	v_sub_f32_e32 v20, v18, v24
	v_sub_f32_e32 v24, v19, v18
	v_sub_f32_e32 v19, v19, v24
	v_sub_f32_e32 v18, v19, v18
	v_sub_f32_e32 v20, v21, v20
	v_add_f32_e32 v16, v16, v18
	v_sub_f32_e32 v16, v16, v20
	v_add_f32_e32 v16, v24, v16
	v_mul_f32_e32 v16, v23, v16
	v_add_f32_e32 v14, v14, v16
	v_add_f32_e32 v16, v22, v14
	v_mul_f32_e32 v18, v16, v16
	v_fmac_f32_e32 v13, 0x3e9b6dac, v18
	v_sub_f32_e32 v19, v16, v22
	v_ldexp_f32 v20, v16, 1
	v_mul_f32_e32 v16, v16, v18
	v_fma_f32 v13, v18, v13, v6
	v_mul_f32_e32 v13, v16, v13
	v_add_f32_e32 v16, v20, v13
	v_sub_f32_e32 v14, v14, v19
	v_sub_f32_e32 v18, v16, v20
	v_ldexp_f32 v14, v14, 1
	v_sub_f32_e32 v13, v13, v18
	v_add_f32_e32 v13, v14, v13
	v_add_f32_e32 v14, v16, v13
	v_sub_f32_e32 v16, v14, v16
	v_add_f32_e32 v18, v17, v14
	v_sub_f32_e32 v13, v13, v16
	v_sub_f32_e32 v16, v18, v17
	v_sub_f32_e32 v19, v18, v16
	v_sub_f32_e32 v14, v14, v16
	v_add_f32_e32 v16, v15, v13
	v_sub_f32_e32 v17, v17, v19
	v_sub_f32_e32 v19, v16, v15
	v_add_f32_e32 v14, v14, v17
	v_sub_f32_e32 v17, v16, v19
	v_sub_f32_e32 v13, v13, v19
	v_sub_f32_e32 v15, v15, v17
	v_add_f32_e32 v14, v16, v14
	v_add_f32_e32 v13, v13, v15
	v_add_f32_e32 v15, v18, v14
	v_sub_f32_e32 v16, v15, v18
	v_sub_f32_e32 v14, v14, v16
	v_cmp_lt_f32_e64 s[28:29], |v12|, s26
	v_cmp_class_f32_e64 s[6:7], v12, v7
	v_add_f32_e32 v13, v13, v14
	v_add_f32_e32 v13, v15, v13
	s_or_b64 s[4:5], s[6:7], s[28:29]
	v_cndmask_b32_e64 v13, v13, |v12|, s[4:5]
	s_or_b64 s[18:19], vcc, s[18:19]
	v_bfi_b32 v12, s27, v13, v12
	flat_store_dword v[3:4], v12
	s_andn2_b64 exec, exec, s[18:19]
	s_cbranch_execnz .LBB4_11
.LBB4_12:
	s_or_b64 exec, exec, s[16:17]
.LBB4_13:
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_and_saveexec_b64 s[4:5], s[0:1]
	s_cbranch_execz .LBB4_5
	ds_write2_b32 v5, v5, v5 offset0:1 offset1:2
	ds_write_b32 v5, v8 offset:24
	s_branch .LBB4_5
.LBB4_15:
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.amdhsa_kernel __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
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
		.amdhsa_next_free_sgpr 30
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
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23, .Lfunc_end4-__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23

	.type	__const.asinhf.SIGN,@object
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3, 0x0
__const.asinhf.SIGN:
	.quad	0x3ff0000000000000
	.quad	0xbff0000000000000
	.size	__const.asinhf.SIGN, 16

	.type	_ZZN11__llvm_libc6fputil15quick_get_roundEvE1x,@object
	.section	.data._ZZN11__llvm_libc6fputil15quick_get_roundEvE1x,#alloc,#write
	.p2align	2, 0x0
_ZZN11__llvm_libc6fputil15quick_get_roundEvE1x:
	.long	0x33800000
	.size	_ZZN11__llvm_libc6fputil15quick_get_roundEvE1x, 4

	.type	_ZN11__llvm_libc10ONE_OVER_FE,@object
	.section	.rodata,#alloc
	.p2align	3, 0x0
_ZN11__llvm_libc10ONE_OVER_FE:
	.quad	0x3ff0000000000000
	.quad	0x3fefc07f01fc07f0
	.quad	0x3fef81f81f81f820
	.quad	0x3fef44659e4a4271
	.quad	0x3fef07c1f07c1f08
	.quad	0x3feecc07b301ecc0
	.quad	0x3fee9131abf0b767
	.quad	0x3fee573ac901e574
	.quad	0x3fee1e1e1e1e1e1e
	.quad	0x3fede5d6e3f8868a
	.quad	0x3fedae6076b981db
	.quad	0x3fed77b654b82c34
	.quad	0x3fed41d41d41d41d
	.quad	0x3fed0cb58f6ec074
	.quad	0x3fecd85689039b0b
	.quad	0x3feca4b3055ee191
	.quad	0x3fec71c71c71c71c
	.quad	0x3fec3f8f01c3f8f0
	.quad	0x3fec0e070381c0e0
	.quad	0x3febdd2b899406f7
	.quad	0x3febacf914c1bad0
	.quad	0x3feb7d6c3dda338b
	.quad	0x3feb4e81b4e81b4f
	.quad	0x3feb2036406c80d9
	.quad	0x3feaf286bca1af28
	.quad	0x3feac5701ac5701b
	.quad	0x3fea98ef606a63be
	.quad	0x3fea6d01a6d01a6d
	.quad	0x3fea41a41a41a41a
	.quad	0x3fea16d3f97a4b02
	.quad	0x3fe9ec8e951033d9
	.quad	0x3fe9c2d14ee4a102
	.quad	0x3fe999999999999a
	.quad	0x3fe970e4f80cb872
	.quad	0x3fe948b0fcd6e9e0
	.quad	0x3fe920fb49d0e229
	.quad	0x3fe8f9c18f9c18fa
	.quad	0x3fe8d3018d3018d3
	.quad	0x3fe8acb90f6bf3aa
	.quad	0x3fe886e5f0abb04a
	.quad	0x3fe8618618618618
	.quad	0x3fe83c977ab2bedd
	.quad	0x3fe8181818181818
	.quad	0x3fe7f405fd017f40
	.quad	0x3fe7d05f417d05f4
	.quad	0x3fe7ad2208e0ecc3
	.quad	0x3fe78a4c8178a4c8
	.quad	0x3fe767dce434a9b1
	.quad	0x3fe745d1745d1746
	.quad	0x3fe724287f46debc
	.quad	0x3fe702e05c0b8170
	.quad	0x3fe6e1f76b4337c7
	.quad	0x3fe6c16c16c16c17
	.quad	0x3fe6a13cd1537290
	.quad	0x3fe6816816816817
	.quad	0x3fe661ec6a5122f9
	.quad	0x3fe642c8590b2164
	.quad	0x3fe623fa77016240
	.quad	0x3fe6058160581606
	.quad	0x3fe5e75bb8d015e7
	.quad	0x3fe5c9882b931057
	.quad	0x3fe5ac056b015ac0
	.quad	0x3fe58ed2308158ed
	.quad	0x3fe571ed3c506b3a
	.quad	0x3fe5555555555555
	.quad	0x3fe5390948f40feb
	.quad	0x3fe51d07eae2f815
	.quad	0x3fe5015015015015
	.quad	0x3fe4e5e0a72f0539
	.quad	0x3fe4cab88725af6e
	.quad	0x3fe4afd6a052bf5b
	.quad	0x3fe49539e3b2d067
	.quad	0x3fe47ae147ae147b
	.quad	0x3fe460cbc7f5cf9a
	.quad	0x3fe446f86562d9fb
	.quad	0x3fe42d6625d51f87
	.quad	0x3fe4141414141414
	.quad	0x3fe3fb013fb013fb
	.quad	0x3fe3e22cbce4a902
	.quad	0x3fe3c995a47babe7
	.quad	0x3fe3b13b13b13b14
	.quad	0x3fe3991c2c187f63
	.quad	0x3fe3813813813814
	.quad	0x3fe3698df3de0748
	.quad	0x3fe3521cfb2b78c1
	.quad	0x3fe33ae45b57bcb2
	.quad	0x3fe323e34a2b10bf
	.quad	0x3fe30d190130d190
	.quad	0x3fe2f684bda12f68
	.quad	0x3fe2e025c04b8097
	.quad	0x3fe2c9fb4d812ca0
	.quad	0x3fe2b404ad012b40
	.quad	0x3fe29e4129e4129e
	.quad	0x3fe288b01288b013
	.quad	0x3fe27350b8812735
	.quad	0x3fe25e22708092f1
	.quad	0x3fe2492492492492
	.quad	0x3fe23456789abcdf
	.quad	0x3fe21fb78121fb78
	.quad	0x3fe20b470c67c0d9
	.quad	0x3fe1f7047dc11f70
	.quad	0x3fe1e2ef3b3fb874
	.quad	0x3fe1cf06ada2811d
	.quad	0x3fe1bb4a4046ed29
	.quad	0x3fe1a7b9611a7b96
	.quad	0x3fe19453808ca29c
	.quad	0x3fe1811811811812
	.quad	0x3fe16e0689427379
	.quad	0x3fe15b1e5f75270d
	.quad	0x3fe1485f0e0acd3b
	.quad	0x3fe135c81135c811
	.quad	0x3fe12358e75d3033
	.quad	0x3fe1111111111111
	.quad	0x3fe0fef010fef011
	.quad	0x3fe0ecf56be69c90
	.quad	0x3fe0db20a88f4696
	.quad	0x3fe0c9714fbcda3b
	.quad	0x3fe0b7e6ec259dc8
	.quad	0x3fe0a6810a6810a7
	.quad	0x3fe0953f39010954
	.quad	0x3fe0842108421084
	.quad	0x3fe073260a47f7c6
	.quad	0x3fe0624dd2f1a9fc
	.quad	0x3fe05197f7d73404
	.quad	0x3fe0410410410410
	.quad	0x3fe03091b51f5e1a
	.quad	0x3fe0204081020408
	.quad	0x3fe0101010101010
	.size	_ZN11__llvm_libc10ONE_OVER_FE, 1024

	.type	_ZN11__llvm_libc5LOG_FE,@object
	.p2align	3, 0x0
_ZN11__llvm_libc5LOG_FE:
	.quad	0x0000000000000000
	.quad	0x3f7fe02a6b106788
	.quad	0x3f8fc0a8b0fc03e3
	.quad	0x3f97b91b07d5b11a
	.quad	0x3f9f829b0e783300
	.quad	0x3fa39e87b9febd5f
	.quad	0x3fa77458f632dcfc
	.quad	0x3fab42dd711971be
	.quad	0x3faf0a30c01162a6
	.quad	0x3fb16536eea37ae0
	.quad	0x3fb341d7961bd1d0
	.quad	0x3fb51b073f06183f
	.quad	0x3fb6f0d28ae56b4b
	.quad	0x3fb8c345d6319b20
	.quad	0x3fba926d3a4ad563
	.quad	0x3fbc5e548f5bc743
	.quad	0x3fbe27076e2af2e5
	.quad	0x3fbfec9131dbeaba
	.quad	0x3fc0d77e7cd08e59
	.quad	0x3fc1b72ad52f67a0
	.quad	0x3fc29552f81ff523
	.quad	0x3fc371fc201e8f74
	.quad	0x3fc44d2b6ccb7d1e
	.quad	0x3fc526e5e3a1b437
	.quad	0x3fc5ff3070a793d3
	.quad	0x3fc6d60fe719d21c
	.quad	0x3fc7ab890210d909
	.quad	0x3fc87fa06520c910
	.quad	0x3fc9525a9cf456b4
	.quad	0x3fca23bc1fe2b563
	.quad	0x3fcaf3c94e80bff2
	.quad	0x3fcbc286742d8cd6
	.quad	0x3fcc8ff7c79a9a21
	.quad	0x3fcd5c216b4fbb91
	.quad	0x3fce27076e2af2e5
	.quad	0x3fcef0adcbdc5936
	.quad	0x3fcfb9186d5e3e2a
	.quad	0x3fd0402594b4d040
	.quad	0x3fd0a324e27390e3
	.quad	0x3fd1058bf9ae4ad5
	.quad	0x3fd1675cababa60e
	.quad	0x3fd1c898c16999fa
	.quad	0x3fd22941fbcf7965
	.quad	0x3fd2895a13de86a3
	.quad	0x3fd2e8e2bae11d30
	.quad	0x3fd347dd9a987d54
	.quad	0x3fd3a64c556945e9
	.quad	0x3fd404308686a7e3
	.quad	0x3fd4618bc21c5ec2
	.quad	0x3fd4be5f957778a0
	.quad	0x3fd51aad872df82d
	.quad	0x3fd5767717455a6c
	.quad	0x3fd5d1bdbf5809ca
	.quad	0x3fd62c82f2b9c795
	.quad	0x3fd686c81e9b14ae
	.quad	0x3fd6e08eaa2ba1e3
	.quad	0x3fd739d7f6bbd006
	.quad	0x3fd792a55fdd47a2
	.quad	0x3fd7eaf83b82afc3
	.quad	0x3fd842d1da1e8b17
	.quad	0x3fd89a3386c1425a
	.quad	0x3fd8f11e873662c7
	.quad	0x3fd947941c2116fa
	.quad	0x3fd99d958117e08a
	.quad	0x3fd9f323ecbf984b
	.quad	0x3fda484090e5bb0a
	.quad	0x3fda9cec9a9a0849
	.quad	0x3fdaf1293247786b
	.quad	0x3fdb44f77bcc8f62
	.quad	0x3fdb9858969310fb
	.quad	0x3fdbeb4d9da71b7b
	.quad	0x3fdc3dd7a7cdad4d
	.quad	0x3fdc8ff7c79a9a21
	.quad	0x3fdce1af0b85f3eb
	.quad	0x3fdd32fe7e00ebd5
	.quad	0x3fdd83e7258a2f3e
	.quad	0x3fddd46a04c1c4a0
	.quad	0x3fde24881a7c6c26
	.quad	0x3fde744261d68787
	.quad	0x3fdec399d2468cc0
	.quad	0x3fdf128f5faf06ec
	.quad	0x3fdf6123fa7028ac
	.quad	0x3fdfaf588f78f31e
	.quad	0x3fdffd2e0857f498
	.quad	0x3fe02552a5a5d0fe
	.quad	0x3fe04bdf9da926d2
	.quad	0x3fe0723e5c1cdf40
	.quad	0x3fe0986f4f573520
	.quad	0x3fe0be72e4252a82
	.quad	0x3fe0e44985d1cc8b
	.quad	0x3fe109f39e2d4c96
	.quad	0x3fe12f719593efbc
	.quad	0x3fe154c3d2f4d5e9
	.quad	0x3fe179eabbd899a0
	.quad	0x3fe19ee6b467c96e
	.quad	0x3fe1c3b81f713c24
	.quad	0x3fe1e85f5e7040d0
	.quad	0x3fe20cdcd192ab6d
	.quad	0x3fe23130d7bebf42
	.quad	0x3fe2555bce98f7cb
	.quad	0x3fe2795e1289b11a
	.quad	0x3fe29d37fec2b08a
	.quad	0x3fe2c0e9ed448e8b
	.quad	0x3fe2e47436e40268
	.quad	0x3fe307d7334f10be
	.quad	0x3fe32b1339121d71
	.quad	0x3fe34e289d9ce1d3
	.quad	0x3fe37117b54747b5
	.quad	0x3fe393e0d3562a19
	.quad	0x3fe3b68449fffc22
	.quad	0x3fe3d9026a7156fa
	.quad	0x3fe3fb5b84d16f42
	.quad	0x3fe41d8fe84672ae
	.quad	0x3fe43f9fe2f9ce67
	.quad	0x3fe4618bc21c5ec2
	.quad	0x3fe48353d1ea88df
	.quad	0x3fe4a4f85db03ebb
	.quad	0x3fe4c679afccee39
	.quad	0x3fe4e7d811b75bb0
	.quad	0x3fe50913cc01686b
	.quad	0x3fe52a2d265bc5aa
	.quad	0x3fe54b2467999497
	.quad	0x3fe56bf9d5b3f399
	.quad	0x3fe58cadb5cd7989
	.quad	0x3fe5ad404c359f2c
	.quad	0x3fe5cdb1dc6c1764
	.quad	0x3fe5ee02a9241675
	.quad	0x3fe60e32f44788d8
	.size	_ZN11__llvm_libc5LOG_FE, 1024

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

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_exec_mode, 1

	.protected	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode
	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode:
	.byte	2
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_exec_mode, 1

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

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism.12,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism.12
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism.12:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIiEEvRNS_5ArrayIT_EES2_S2__l28_nested_parallelism.12, 1

	.type	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.13,@object
	.weak	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.13
__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.13:
	.byte	0
	.size	__omp_offloading_4f_5896da36__ZN7gpumath13uniform_rangeIfEEvRNS_5ArrayIT_EES2_S2__l14_nested_parallelism.13, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.14,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.14
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.14:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23_nested_parallelism.14, 1

	.type	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.15,@object
	.weak	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.15
__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.15:
	.byte	0
	.size	__omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23_nested_parallelism.15, 1

	.no_dead_strip	__omp_rtl_device_environment
	.section	".linker-options",#exclude
	.ident	"clang version 17.0.0 (https://github.com/llvm/llvm-project.git 123545e9e59f765afa6ddf3b6f07191509604e94)"
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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23
    .private_segment_fixed_size: 0
    .sgpr_count:     58
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXcvPFffEadL_Z6asinhfEEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS4_IT_EE_l23.kd
    .vgpr_count:     25
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
    .name:           __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23
    .private_segment_fixed_size: 0
    .sgpr_count:     34
    .sgpr_spill_count: 0
    .symbol:         __omp_offloading_4f_5896da37__ZN7gpumath13apply_fun_gpuIfXadL_Z16__ocml_asinh_f32EEJfEEEdRSt5tupleIJDpNS_5ArrayIT1_EEEERNS2_IT_EE_l23.kd
    .vgpr_count:     26
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.target:   amdgcn-amd-amdhsa--gfx906
amdhsa.version:
  - 1
  - 1
...

	.end_amdgpu_metadata
