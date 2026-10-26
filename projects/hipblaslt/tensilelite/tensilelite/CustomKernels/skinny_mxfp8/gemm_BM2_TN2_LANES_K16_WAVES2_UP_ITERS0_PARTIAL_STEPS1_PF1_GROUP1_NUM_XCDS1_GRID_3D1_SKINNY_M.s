.amdgcn_target "amdgcn-amd-amdhsa--gfx950"
.text
.protected gemm_BM2_TN2_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_M
.globl gemm_BM2_TN2_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_M
.p2align 8
.type gemm_BM2_TN2_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_M,@function
gemm_BM2_TN2_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_M:
s_load_dword s66, s[0:1], 96
s_load_dword s56, s[0:1], 88
s_load_dword s57, s[0:1], 92
s_load_dword s6, s[0:1], 72
s_load_dword s5, s[0:1], 68
s_load_dword s65, s[0:1], 64
s_load_dword s64, s[0:1], 60
s_load_dword s63, s[0:1], 56
s_load_dword s62, s[0:1], 52
s_load_dword s61, s[0:1], 48
s_load_dwordx2 s[28:29], s[0:1], 40
s_load_dwordx2 s[74:75], s[0:1], 32
s_load_dwordx2 s[72:73], s[0:1], 24
s_load_dwordx2 s[70:71], s[0:1], 16
s_load_dwordx2 s[68:69], s[0:1], 8
s_load_dwordx2 s[24:25], s[0:1], 0
s_waitcnt lgkmcnt(0)
s_add_u32 s79, s5, 3
s_lshr_b32 s79, s79, 2
s_lshl_b32 s79, s79, 2
s_add_u32 s67, s64, -1
s_mul_i32 s67, s67, s62
s_add_u32 s67, s67, s79
s_add_u32 s76, s65, -1
s_mul_i32 s76, s76, s63
s_add_u32 s76, s76, s79
s_add_u32 s58, s5, 255
s_lshr_b32 s58, s58, 8
s_lshl_b32 s58, s58, 8
s_add_u32 s77, s64, 31
s_lshr_b32 s77, s77, 5
s_mul_i32 s77, s77, s58
s_add_u32 s78, s65, 31
s_lshr_b32 s78, s78, 5
s_mul_i32 s78, s78, s58
s_lshl_b32 s26, s65, 1
s_add_u32 s26, s26, -2
s_mul_i32 s26, s26, s61
s_lshl_b32 s79, s64, 1
s_add_u32 s26, s26, s79
s_mul_i32 s30, s64, s66
s_mul_i32 s30, s30, s65
s_lshl_b32 s30, s30, 2
s_mul_i32 s7, s64, s65
s_cmp_le_u32 s64, s65
s_cselect_b64 s[8:9], s[68:69], s[70:71]
s_cselect_b32 s10, s67, s76
s_cselect_b64 s[12:13], s[70:71], s[68:69]
s_cselect_b32 s14, s76, s67
s_cselect_b64 s[16:17], s[72:73], s[74:75]
s_cselect_b32 s18, s77, s78
s_cselect_b64 s[20:21], s[74:75], s[72:73]
s_cselect_b32 s22, s78, s77
s_cselect_b32 s59, s62, s63
s_cselect_b32 s60, s63, s62
s_cselect_b32 s32, 1, s61
s_cselect_b32 s33, s61, 1
s_cselect_b32 s34, 1, s64
s_cselect_b32 s35, s64, 1
s_cselect_b32 s38, 1, 0
s_min_u32 s36, s64, s65
s_max_u32 s37, s64, s65
s_mov_b32 s11, 131072
s_mov_b32 s15, 131072
s_mov_b32 s19, 131072
s_mov_b32 s23, 131072
s_mov_b32 s27, 131072
s_mov_b32 s31, 131072
s_mul_i32 s61, s4, s6
s_add_u32 s43, s61, s6
s_min_i32 s43, s43, s5
s_ashr_i32 s62, s43, 10
s_add_u32 s42, s61, 1023
s_ashr_i32 s42, s42, 10
s_sub_u32 s40, s62, s42
s_max_i32 s40, s40, 0
s_mul_i32 s64, s57, s4
s_add_u32 s64, s64, s3
s_mul_i32 s64, s64, s56
s_add_u32 s64, s64, s2
s_add_u32 s65, s6, 1023
s_lshr_b32 s65, s65, 10
s_lshr_b32 s66, s64, 4
s_add_u32 s66, s66, s64
s_abs_i32 s68, s65
s_abs_i32 s69, s66
s_xor_b32 s70, s66, s65
s_ashr_i32 s70, s70, 31
v_cvt_f32_u32 v87, s68
v_rcp_iflag_f32 v87, v87
s_sub_u32 s71, 0, s68
v_mul_f32 v87, 0x4f7ffffe, v87
v_cvt_u32_f32 v87, v87
s_nop 0
v_readfirstlane_b32 s72, v87
s_mul_i32 s73, s71, s72
s_mul_hi_u32 s73, s72, s73
s_add_u32 s72, s72, s73
s_mul_hi_u32 s71, s69, s72
s_mul_i32 s73, s71, s68
s_sub_u32 s73, s69, s73
s_add_u32 s74, s71, 1
s_sub_u32 s75, s73, s68
s_cmp_ge_u32 s73, s68
s_cselect_b32 s71, s74, s71
s_cselect_b32 s73, s75, s73
s_add_u32 s74, s71, 1
s_cmp_ge_u32 s73, s68
s_cselect_b32 s71, s74, s71
s_xor_b32 s71, s71, s70
s_sub_u32 s67, s71, s70
s_mul_i32 s67, s67, s65
s_sub_u32 s63, s66, s67
s_cmp_lt_u32 s63, s40
s_cselect_b32 s41, s63, 0
s_lshl_b32 s39, s3, 1
s_lshr_b32 s63, s2, 3
s_and_b32 s63, 1, s63
s_and_b32 s64, 7, s2
s_lshl_b32 s64, s64, 1
s_add_u32 s63, s63, s64
s_and_b32 s64, -16, s2
s_add_u32 s63, s63, s64
s_and_b32 s64, -16, s56
s_cmp_lt_u32 s2, s64
s_cselect_b32 s2, s63, s2
v_and_b32 v87, 63, v0
v_and_b32 v88, 15, v0
v_lshrrev_b32 v1, 4, v0
v_lshlrev_b32 v1, 1, v1
s_mul_i32 s61, s2, 16
v_add_u32 v1, s61, v1
v_and_b32 v84, 7, v88
v_lshrrev_b32 v84, 1, v84
v_lshlrev_b32 v84, 2, v84
v_lshrrev_b32 v89, 3, v88
v_lshlrev_b32 v89, 5, v89
v_add_u32 v84, v84, v89
v_lshrrev_b32 v89, 4, v87
v_add_u32 v84, v84, v89
v_lshlrev_b32 v84, 2, v84
v_add_u32 v85, 64, v84
v_lshrrev_b32 v89, 3, v88
v_lshlrev_b32 v89, 9, v89
v_and_b32 v90, 7, v88
v_lshlrev_b32 v90, 4, v90
v_add_u32 v89, v89, v90
v_lshrrev_b32 v88, 2, v87
v_and_b32 v90, 3, v88
v_lshlrev_b32 v90, 6, v90
v_lshrrev_b32 v91, 3, v88
v_lshlrev_b32 v91, 9, v91
v_add_u32 v90, v90, v91
v_and_b32 v91, 7, v88
v_lshrrev_b32 v91, 2, v91
v_lshlrev_b32 v91, 8, v91
v_add_u32 v90, v90, v91
v_lshrrev_b32 v88, 6, v0
v_lshlrev_b32 v88, 2, v88
v_and_b32 v91, 3, v87
v_add_u32 v88, v88, v91
v_lshlrev_b32 v88, 1, v88
s_mul_i32 s61, s2, 16
v_add_u32 v88, s61, v88
v_and_b32 v0, 15, v0
s_add_u32 s61, s39, 0
s_cmp_lt_u32 s61, s36
s_cselect_b64 s[48:49], -1, 0
s_mul_i32 s61, s61, s59
v_add_u32 v74, s61, v89
v_cndmask_b32 v74, -1, v74, s[48:49]
s_add_u32 s61, s39, 1
s_cmp_lt_u32 s61, s36
s_cselect_b64 s[50:51], -1, 0
s_mul_i32 s61, s61, s59
v_add_u32 v75, s61, v89
v_cndmask_b32 v75, -1, v75, s[50:51]
v_add_u32 v87, 0, v1
v_cmp_lt_u32 s[52:53], v87, s37
s_nop 1
v_mul_lo_u32 v87, v87, s60
v_add_u32 v76, v87, v89
v_cndmask_b32 v76, -1, v76, s[52:53]
v_add_u32 v87, 1, v1
v_cmp_lt_u32 s[54:55], v87, s37
s_nop 1
v_mul_lo_u32 v87, v87, s60
v_add_u32 v77, v87, v89
v_cndmask_b32 v77, -1, v77, s[54:55]
v_and_b32 v86, -256, v90
s_add_u32 s61, s39, 0
s_lshr_b32 s62, s61, 5
s_mul_i32 s62, s62, s58
s_and_b32 s61, 15, s61
s_lshl_b32 s61, s61, 2
s_add_u32 s62, s62, s61
v_add_u32 v78, s62, v90
v_cndmask_b32 v78, -1, v78, s[48:49]
s_add_u32 s61, s39, 1
s_lshr_b32 s62, s61, 5
s_mul_i32 s62, s62, s58
s_and_b32 s61, 15, s61
s_lshl_b32 s61, s61, 2
s_add_u32 s62, s62, s61
v_add_u32 v79, s62, v90
v_cndmask_b32 v79, -1, v79, s[50:51]
v_add_u32 v87, 0, v88
v_cmp_lt_u32 s[62:63], v87, s37
s_nop 1
v_lshrrev_b32 v89, 5, v87
v_mul_lo_u32 v89, v89, s58
v_and_b32 v87, 15, v87
v_lshlrev_b32 v87, 2, v87
v_add_u32 v89, v89, v87
v_add_u32 v80, v89, v90
v_cndmask_b32 v80, -1, v80, s[62:63]
v_add_u32 v87, 1, v88
v_cmp_lt_u32 s[62:63], v87, s37
s_nop 1
v_lshrrev_b32 v89, 5, v87
v_mul_lo_u32 v89, v89, s58
v_and_b32 v87, 15, v87
v_lshlrev_b32 v87, 2, v87
v_add_u32 v89, v89, v87
v_add_u32 v81, v89, v90
v_cndmask_b32 v81, -1, v81, s[62:63]
s_lshr_b32 s61, s39, 4
s_and_b32 s61, 1, s61
s_mul_i32 s61, s61, 16843009
s_add_u32 s61, s61, 100925952
v_mov_b32 v82, s61
v_lshrrev_b32 v83, 4, v1
v_and_b32 v83, 1, v83
v_mov_b32 v87, 16843009
v_mul_lo_u32 v83, v83, v87
v_add_u32 v83, 100925952, v83
v_mov_b32 v70, 0
v_mov_b32 v71, 0
v_mov_b32 v72, 0
v_mov_b32 v73, 0
s_sub_u32 s57, s41, s40
s_cmp_ge_u32 s41, s40
s_cselect_b32 s56, s57, s41
s_add_u32 s57, s42, s56
s_lshl_b32 s57, s57, 10
buffer_load_dword v66, v78, s[16:19], s57 offen offset:0
buffer_load_dword v67, v79, s[16:19], s57 offen offset:0
buffer_load_dword v68, v80, s[20:23], s57 offen offset:0
buffer_load_dword v69, v81, s[20:23], s57 offen offset:0
buffer_load_dwordx4 v[2:5], v74, s[8:11], s57 offen offset:0
buffer_load_dwordx4 v[6:9], v75, s[8:11], s57 offen offset:0
buffer_load_dwordx4 v[10:13], v76, s[12:15], s57 offen offset:0
buffer_load_dwordx4 v[14:17], v77, s[12:15], s57 offen offset:0
s_add_u32 s58, s57, 128
buffer_load_dwordx4 v[18:21], v74, s[8:11], s58 offen offset:0
buffer_load_dwordx4 v[22:25], v75, s[8:11], s58 offen offset:0
buffer_load_dwordx4 v[26:29], v76, s[12:15], s58 offen offset:0
buffer_load_dwordx4 v[30:33], v77, s[12:15], s58 offen offset:0
s_add_u32 s58, s57, 256
buffer_load_dwordx4 v[34:37], v74, s[8:11], s58 offen offset:0
buffer_load_dwordx4 v[38:41], v75, s[8:11], s58 offen offset:0
buffer_load_dwordx4 v[42:45], v76, s[12:15], s58 offen offset:0
buffer_load_dwordx4 v[46:49], v77, s[12:15], s58 offen offset:0
s_add_u32 s58, s57, 384
buffer_load_dwordx4 v[50:53], v74, s[8:11], s58 offen offset:0
buffer_load_dwordx4 v[54:57], v75, s[8:11], s58 offen offset:0
buffer_load_dwordx4 v[58:61], v76, s[12:15], s58 offen offset:0
buffer_load_dwordx4 v[62:65], v77, s[12:15], s58 offen offset:0
s_add_u32 s56, s40, -1
s_max_i32 s56, s56, 0
s_add_u32 s57, s41, 1
s_lshl_b32 s44, s42, 10
s_add_u32 s45, s44, 128
s_add_u32 s46, s44, 256
s_add_u32 s47, s44, 384
s_cmp_gt_i32 s56, 0
s_mov_b32 s58, 0
s_cbranch_scc0 label_kloop_end_1
label_kloop_0:
s_add_u32 s59, s58, s57
s_sub_u32 s60, s59, s40
s_cmp_ge_u32 s59, s40
s_cselect_b32 s59, s60, s59
s_waitcnt vmcnt(19)
ds_bpermute_b32 v87, v84, v66
ds_bpermute_b32 v66, v85, v66
s_waitcnt vmcnt(18)
ds_bpermute_b32 v88, v84, v67
ds_bpermute_b32 v67, v85, v67
s_waitcnt vmcnt(17)
ds_bpermute_b32 v89, v84, v68
ds_bpermute_b32 v68, v85, v68
s_waitcnt vmcnt(16)
ds_bpermute_b32 v90, v84, v69
ds_bpermute_b32 v69, v85, v69
s_waitcnt lgkmcnt(6)
v_perm_b32 v87, v66, v87, v82
s_waitcnt lgkmcnt(4)
v_perm_b32 v88, v67, v88, v82
s_waitcnt lgkmcnt(2)
v_perm_b32 v89, v68, v89, v83
s_waitcnt lgkmcnt(0)
v_perm_b32 v90, v69, v90, v83
s_add_u32 s60, s42, s59
s_lshl_b32 s60, s60, 10
buffer_load_dword v66, v78, s[16:19], s60 offen offset:0
buffer_load_dword v67, v79, s[16:19], s60 offen offset:0
buffer_load_dword v68, v80, s[20:23], s60 offen offset:0
buffer_load_dword v69, v81, s[20:23], s60 offen offset:0
v_lshlrev_b32 v91, 23, v87
v_and_b32 v91, 2139095040, v91
v_lshlrev_b32 v92, 23, v88
v_and_b32 v92, 2139095040, v92
v_lshlrev_b32 v93, 23, v89
v_and_b32 v93, 2139095040, v93
v_lshlrev_b32 v94, 23, v90
v_and_b32 v94, 2139095040, v94
s_waitcnt vmcnt(19)
v_cvt_scalef32_pk_bf16_fp8 v95, v2, v91
s_waitcnt vmcnt(18)
v_cvt_scalef32_pk_bf16_fp8 v96, v6, v92
s_waitcnt vmcnt(17)
v_cvt_scalef32_pk_bf16_fp8 v97, v10, v93
s_waitcnt vmcnt(16)
v_cvt_scalef32_pk_bf16_fp8 v98, v14, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v2, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v6, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v10, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v14, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v3, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v7, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v11, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v15, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v3, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v7, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v11, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v15, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v4, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v8, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v12, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v16, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v4, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v8, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v12, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v16, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v5, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v9, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v13, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v17, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v5, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v9, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v13, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v17, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
buffer_load_dwordx4 v[2:5], v74, s[8:11], s60 offen offset:0
buffer_load_dwordx4 v[6:9], v75, s[8:11], s60 offen offset:0
buffer_load_dwordx4 v[10:13], v76, s[12:15], s60 offen offset:0
buffer_load_dwordx4 v[14:17], v77, s[12:15], s60 offen offset:0
v_lshlrev_b32 v91, 15, v87
v_and_b32 v91, 2139095040, v91
v_lshlrev_b32 v92, 15, v88
v_and_b32 v92, 2139095040, v92
v_lshlrev_b32 v93, 15, v89
v_and_b32 v93, 2139095040, v93
v_lshlrev_b32 v94, 15, v90
v_and_b32 v94, 2139095040, v94
s_waitcnt vmcnt(19)
v_cvt_scalef32_pk_bf16_fp8 v95, v18, v91
s_waitcnt vmcnt(18)
v_cvt_scalef32_pk_bf16_fp8 v96, v22, v92
s_waitcnt vmcnt(17)
v_cvt_scalef32_pk_bf16_fp8 v97, v26, v93
s_waitcnt vmcnt(16)
v_cvt_scalef32_pk_bf16_fp8 v98, v30, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v18, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v22, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v26, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v30, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v19, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v23, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v27, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v31, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v19, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v23, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v27, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v31, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v20, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v24, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v28, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v32, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v20, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v24, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v28, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v32, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v21, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v25, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v29, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v33, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v21, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v25, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v29, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v33, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
s_lshl_b32 s59, s59, 10
s_add_u32 s61, s45, s59
buffer_load_dwordx4 v[18:21], v74, s[8:11], s61 offen offset:0
buffer_load_dwordx4 v[22:25], v75, s[8:11], s61 offen offset:0
buffer_load_dwordx4 v[26:29], v76, s[12:15], s61 offen offset:0
buffer_load_dwordx4 v[30:33], v77, s[12:15], s61 offen offset:0
v_lshlrev_b32 v91, 7, v87
v_and_b32 v91, 2139095040, v91
v_lshlrev_b32 v92, 7, v88
v_and_b32 v92, 2139095040, v92
v_lshlrev_b32 v93, 7, v89
v_and_b32 v93, 2139095040, v93
v_lshlrev_b32 v94, 7, v90
v_and_b32 v94, 2139095040, v94
s_waitcnt vmcnt(19)
v_cvt_scalef32_pk_bf16_fp8 v95, v34, v91
s_waitcnt vmcnt(18)
v_cvt_scalef32_pk_bf16_fp8 v96, v38, v92
s_waitcnt vmcnt(17)
v_cvt_scalef32_pk_bf16_fp8 v97, v42, v93
s_waitcnt vmcnt(16)
v_cvt_scalef32_pk_bf16_fp8 v98, v46, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v34, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v38, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v42, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v46, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v35, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v39, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v43, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v47, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v35, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v39, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v43, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v47, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v36, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v40, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v44, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v48, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v36, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v40, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v44, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v48, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v37, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v41, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v45, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v49, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v37, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v41, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v45, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v49, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
s_add_u32 s61, s46, s59
buffer_load_dwordx4 v[34:37], v74, s[8:11], s61 offen offset:0
buffer_load_dwordx4 v[38:41], v75, s[8:11], s61 offen offset:0
buffer_load_dwordx4 v[42:45], v76, s[12:15], s61 offen offset:0
buffer_load_dwordx4 v[46:49], v77, s[12:15], s61 offen offset:0
v_lshrrev_b32 v91, 1, v87
v_and_b32 v91, 2139095040, v91
v_lshrrev_b32 v92, 1, v88
v_and_b32 v92, 2139095040, v92
v_lshrrev_b32 v93, 1, v89
v_and_b32 v93, 2139095040, v93
v_lshrrev_b32 v94, 1, v90
v_and_b32 v94, 2139095040, v94
s_waitcnt vmcnt(19)
v_cvt_scalef32_pk_bf16_fp8 v95, v50, v91
s_waitcnt vmcnt(18)
v_cvt_scalef32_pk_bf16_fp8 v96, v54, v92
s_waitcnt vmcnt(17)
v_cvt_scalef32_pk_bf16_fp8 v97, v58, v93
s_waitcnt vmcnt(16)
v_cvt_scalef32_pk_bf16_fp8 v98, v62, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v50, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v54, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v58, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v62, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v51, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v55, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v59, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v63, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v51, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v55, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v59, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v63, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v52, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v56, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v60, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v64, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v52, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v56, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v60, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v64, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v53, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v57, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v61, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v65, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v53, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v57, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v61, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v65, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
s_add_u32 s61, s47, s59
buffer_load_dwordx4 v[50:53], v74, s[8:11], s61 offen offset:0
buffer_load_dwordx4 v[54:57], v75, s[8:11], s61 offen offset:0
buffer_load_dwordx4 v[58:61], v76, s[12:15], s61 offen offset:0
buffer_load_dwordx4 v[62:65], v77, s[12:15], s61 offen offset:0
s_add_u32 s58, s58, 1
s_cmp_lt_i32 s58, s56
s_cbranch_scc1 label_kloop_0
label_kloop_end_1:
s_sub_u32 s57, s40, s56
s_cmp_eq_i32 s57, 1
s_cbranch_scc0 label_arm_end_2
s_waitcnt vmcnt(19)
ds_bpermute_b32 v87, v84, v66
ds_bpermute_b32 v66, v85, v66
s_waitcnt vmcnt(18)
ds_bpermute_b32 v88, v84, v67
ds_bpermute_b32 v67, v85, v67
s_waitcnt vmcnt(17)
ds_bpermute_b32 v89, v84, v68
ds_bpermute_b32 v68, v85, v68
s_waitcnt vmcnt(16)
ds_bpermute_b32 v90, v84, v69
ds_bpermute_b32 v69, v85, v69
s_waitcnt lgkmcnt(6)
v_perm_b32 v87, v66, v87, v82
s_waitcnt lgkmcnt(4)
v_perm_b32 v88, v67, v88, v82
s_waitcnt lgkmcnt(2)
v_perm_b32 v89, v68, v89, v83
s_waitcnt lgkmcnt(0)
v_perm_b32 v90, v69, v90, v83
v_lshlrev_b32 v91, 23, v87
v_and_b32 v91, 2139095040, v91
v_lshlrev_b32 v92, 23, v88
v_and_b32 v92, 2139095040, v92
v_lshlrev_b32 v93, 23, v89
v_and_b32 v93, 2139095040, v93
v_lshlrev_b32 v94, 23, v90
v_and_b32 v94, 2139095040, v94
s_waitcnt vmcnt(15)
v_cvt_scalef32_pk_bf16_fp8 v95, v2, v91
s_waitcnt vmcnt(14)
v_cvt_scalef32_pk_bf16_fp8 v96, v6, v92
s_waitcnt vmcnt(13)
v_cvt_scalef32_pk_bf16_fp8 v97, v10, v93
s_waitcnt vmcnt(12)
v_cvt_scalef32_pk_bf16_fp8 v98, v14, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v2, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v6, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v10, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v14, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v3, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v7, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v11, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v15, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v3, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v7, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v11, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v15, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v4, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v8, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v12, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v16, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v4, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v8, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v12, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v16, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v5, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v9, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v13, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v17, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v5, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v9, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v13, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v17, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_lshlrev_b32 v91, 15, v87
v_and_b32 v91, 2139095040, v91
v_lshlrev_b32 v92, 15, v88
v_and_b32 v92, 2139095040, v92
v_lshlrev_b32 v93, 15, v89
v_and_b32 v93, 2139095040, v93
v_lshlrev_b32 v94, 15, v90
v_and_b32 v94, 2139095040, v94
s_waitcnt vmcnt(11)
v_cvt_scalef32_pk_bf16_fp8 v95, v18, v91
s_waitcnt vmcnt(10)
v_cvt_scalef32_pk_bf16_fp8 v96, v22, v92
s_waitcnt vmcnt(9)
v_cvt_scalef32_pk_bf16_fp8 v97, v26, v93
s_waitcnt vmcnt(8)
v_cvt_scalef32_pk_bf16_fp8 v98, v30, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v18, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v22, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v26, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v30, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v19, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v23, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v27, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v31, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v19, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v23, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v27, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v31, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v20, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v24, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v28, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v32, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v20, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v24, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v28, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v32, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v21, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v25, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v29, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v33, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v21, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v25, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v29, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v33, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_lshlrev_b32 v91, 7, v87
v_and_b32 v91, 2139095040, v91
v_lshlrev_b32 v92, 7, v88
v_and_b32 v92, 2139095040, v92
v_lshlrev_b32 v93, 7, v89
v_and_b32 v93, 2139095040, v93
v_lshlrev_b32 v94, 7, v90
v_and_b32 v94, 2139095040, v94
s_waitcnt vmcnt(7)
v_cvt_scalef32_pk_bf16_fp8 v95, v34, v91
s_waitcnt vmcnt(6)
v_cvt_scalef32_pk_bf16_fp8 v96, v38, v92
s_waitcnt vmcnt(5)
v_cvt_scalef32_pk_bf16_fp8 v97, v42, v93
s_waitcnt vmcnt(4)
v_cvt_scalef32_pk_bf16_fp8 v98, v46, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v34, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v38, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v42, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v46, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v35, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v39, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v43, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v47, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v35, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v39, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v43, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v47, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v36, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v40, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v44, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v48, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v36, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v40, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v44, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v48, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v37, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v41, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v45, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v49, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v37, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v41, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v45, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v49, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_lshrrev_b32 v91, 1, v87
v_and_b32 v91, 2139095040, v91
v_lshrrev_b32 v92, 1, v88
v_and_b32 v92, 2139095040, v92
v_lshrrev_b32 v93, 1, v89
v_and_b32 v93, 2139095040, v93
v_lshrrev_b32 v94, 1, v90
v_and_b32 v94, 2139095040, v94
s_waitcnt vmcnt(3)
v_cvt_scalef32_pk_bf16_fp8 v95, v50, v91
s_waitcnt vmcnt(2)
v_cvt_scalef32_pk_bf16_fp8 v96, v54, v92
s_waitcnt vmcnt(1)
v_cvt_scalef32_pk_bf16_fp8 v97, v58, v93
s_waitcnt vmcnt(0)
v_cvt_scalef32_pk_bf16_fp8 v98, v62, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v50, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v54, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v58, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v62, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v51, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v55, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v59, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v63, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v51, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v55, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v59, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v63, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v52, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v56, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v60, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v64, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v52, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v56, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v60, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v64, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v53, v91
v_cvt_scalef32_pk_bf16_fp8 v96, v57, v92
v_cvt_scalef32_pk_bf16_fp8 v97, v61, v93
v_cvt_scalef32_pk_bf16_fp8 v98, v65, v94
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
v_cvt_scalef32_pk_bf16_fp8 v95, v53, v91 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v96, v57, v92 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v97, v61, v93 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v98, v65, v94 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v95, v97, v70
v_dot2_f32_bf16 v71, v95, v98, v71
v_dot2_f32_bf16 v72, v96, v97, v72
v_dot2_f32_bf16 v73, v96, v98, v73
label_arm_end_2:
s_and_b32 s56, 1023, s43
s_cbranch_scc0 label_step_end_3
s_sub_u32 s57, s43, s56
s_sub_u32 s58, s5, s57
v_lshrrev_b32 v87, 3, v0
v_lshlrev_b32 v87, 9, v87
v_and_b32 v88, 7, v0
v_lshlrev_b32 v88, 4, v88
v_add_u32 v87, v87, v88
v_sub_u32 v88, s58, v86
v_add_u32 v88, -1, v88
v_ashrrev_i32 v88, 31, v88
v_or_b32 v89, v78, v88
buffer_load_dword v66, v89, s[16:19], s57 offen offset:0
v_or_b32 v89, v79, v88
buffer_load_dword v67, v89, s[16:19], s57 offen offset:0
v_or_b32 v89, v80, v88
buffer_load_dword v68, v89, s[20:23], s57 offen offset:0
v_or_b32 v89, v81, v88
buffer_load_dword v69, v89, s[20:23], s57 offen offset:0
s_lshr_b32 s59, s56, 7
s_and_b32 s59, 3, s59
s_lshl_b32 s59, 1, s59
s_and_b32 s60, 15, s56
s_cselect_b32 s59, s59, 0
v_sub_u32 v88, s56, v87
s_bitcmp1_b32 s59, 0
s_cbranch_scc0 label_step_load_4
v_add_u32 v90, -1, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 4, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
v_or_b32 v89, v74, v90
buffer_load_dword v2, v89, s[8:11], s57 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v2, v2, v91
v_or_b32 v89, v75, v90
buffer_load_dword v6, v89, s[8:11], s57 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v6, v6, v91
v_or_b32 v89, v76, v90
buffer_load_dword v10, v89, s[12:15], s57 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v10, v10, v91
v_or_b32 v89, v77, v90
buffer_load_dword v14, v89, s[12:15], s57 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v14, v14, v91
v_add_u32 v90, -5, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 8, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
s_add_u32 s60, s57, 4
v_or_b32 v89, v74, v90
buffer_load_dword v3, v89, s[8:11], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v3, v3, v91
v_or_b32 v89, v75, v90
buffer_load_dword v7, v89, s[8:11], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v7, v7, v91
v_or_b32 v89, v76, v90
buffer_load_dword v11, v89, s[12:15], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v11, v11, v91
v_or_b32 v89, v77, v90
buffer_load_dword v15, v89, s[12:15], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v15, v15, v91
v_add_u32 v90, -9, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 12, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
s_add_u32 s60, s57, 8
v_or_b32 v89, v74, v90
buffer_load_dword v4, v89, s[8:11], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v4, v4, v91
v_or_b32 v89, v75, v90
buffer_load_dword v8, v89, s[8:11], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v8, v8, v91
v_or_b32 v89, v76, v90
buffer_load_dword v12, v89, s[12:15], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v12, v12, v91
v_or_b32 v89, v77, v90
buffer_load_dword v16, v89, s[12:15], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v16, v16, v91
v_add_u32 v90, -13, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 16, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
s_add_u32 s60, s57, 12
v_or_b32 v89, v74, v90
buffer_load_dword v5, v89, s[8:11], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v5, v5, v91
v_or_b32 v89, v75, v90
buffer_load_dword v9, v89, s[8:11], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v9, v9, v91
v_or_b32 v89, v76, v90
buffer_load_dword v13, v89, s[12:15], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v13, v13, v91
v_or_b32 v89, v77, v90
buffer_load_dword v17, v89, s[12:15], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v17, v17, v91
s_branch label_step_chunk_end_6
label_step_load_4:
s_cmp_ge_i32 s56, 16
s_cbranch_scc0 label_step_zero_5
v_add_u32 v89, -16, v88
v_ashrrev_i32 v89, 31, v89
v_or_b32 v90, v74, v89
buffer_load_dwordx4 v[2:5], v90, s[8:11], s57 offen offset:0
v_or_b32 v90, v75, v89
buffer_load_dwordx4 v[6:9], v90, s[8:11], s57 offen offset:0
v_or_b32 v90, v76, v89
buffer_load_dwordx4 v[10:13], v90, s[12:15], s57 offen offset:0
v_or_b32 v90, v77, v89
buffer_load_dwordx4 v[14:17], v90, s[12:15], s57 offen offset:0
s_branch label_step_chunk_end_6
label_step_zero_5:
s_waitcnt vmcnt(16)
v_mov_b32 v2, 0
v_mov_b32 v3, 0
v_mov_b32 v4, 0
v_mov_b32 v5, 0
v_mov_b32 v6, 0
v_mov_b32 v7, 0
v_mov_b32 v8, 0
v_mov_b32 v9, 0
v_mov_b32 v10, 0
v_mov_b32 v11, 0
v_mov_b32 v12, 0
v_mov_b32 v13, 0
v_mov_b32 v14, 0
v_mov_b32 v15, 0
v_mov_b32 v16, 0
v_mov_b32 v17, 0
label_step_chunk_end_6:
s_add_u32 s60, s57, 128
s_add_u32 s61, s56, -128
v_sub_u32 v88, s61, v87
s_bitcmp1_b32 s59, 1
s_cbranch_scc0 label_step_load_7
v_add_u32 v90, -1, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 4, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
v_or_b32 v89, v74, v90
buffer_load_dword v18, v89, s[8:11], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v18, v18, v91
v_or_b32 v89, v75, v90
buffer_load_dword v22, v89, s[8:11], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v22, v22, v91
v_or_b32 v89, v76, v90
buffer_load_dword v26, v89, s[12:15], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v26, v26, v91
v_or_b32 v89, v77, v90
buffer_load_dword v30, v89, s[12:15], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v30, v30, v91
v_add_u32 v90, -5, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 8, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
s_add_u32 s62, s60, 4
v_or_b32 v89, v74, v90
buffer_load_dword v19, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v19, v19, v91
v_or_b32 v89, v75, v90
buffer_load_dword v23, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v23, v23, v91
v_or_b32 v89, v76, v90
buffer_load_dword v27, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v27, v27, v91
v_or_b32 v89, v77, v90
buffer_load_dword v31, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v31, v31, v91
v_add_u32 v90, -9, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 12, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
s_add_u32 s62, s60, 8
v_or_b32 v89, v74, v90
buffer_load_dword v20, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v20, v20, v91
v_or_b32 v89, v75, v90
buffer_load_dword v24, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v24, v24, v91
v_or_b32 v89, v76, v90
buffer_load_dword v28, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v28, v28, v91
v_or_b32 v89, v77, v90
buffer_load_dword v32, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v32, v32, v91
v_add_u32 v90, -13, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 16, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
s_add_u32 s62, s60, 12
v_or_b32 v89, v74, v90
buffer_load_dword v21, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v21, v21, v91
v_or_b32 v89, v75, v90
buffer_load_dword v25, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v25, v25, v91
v_or_b32 v89, v76, v90
buffer_load_dword v29, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v29, v29, v91
v_or_b32 v89, v77, v90
buffer_load_dword v33, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v33, v33, v91
s_branch label_step_chunk_end_9
label_step_load_7:
s_cmp_ge_i32 s61, 16
s_cbranch_scc0 label_step_zero_8
v_add_u32 v89, -16, v88
v_ashrrev_i32 v89, 31, v89
v_or_b32 v90, v74, v89
buffer_load_dwordx4 v[18:21], v90, s[8:11], s60 offen offset:0
v_or_b32 v90, v75, v89
buffer_load_dwordx4 v[22:25], v90, s[8:11], s60 offen offset:0
v_or_b32 v90, v76, v89
buffer_load_dwordx4 v[26:29], v90, s[12:15], s60 offen offset:0
v_or_b32 v90, v77, v89
buffer_load_dwordx4 v[30:33], v90, s[12:15], s60 offen offset:0
s_branch label_step_chunk_end_9
label_step_zero_8:
s_waitcnt vmcnt(12)
v_mov_b32 v18, 0
v_mov_b32 v19, 0
v_mov_b32 v20, 0
v_mov_b32 v21, 0
v_mov_b32 v22, 0
v_mov_b32 v23, 0
v_mov_b32 v24, 0
v_mov_b32 v25, 0
v_mov_b32 v26, 0
v_mov_b32 v27, 0
v_mov_b32 v28, 0
v_mov_b32 v29, 0
v_mov_b32 v30, 0
v_mov_b32 v31, 0
v_mov_b32 v32, 0
v_mov_b32 v33, 0
label_step_chunk_end_9:
s_add_u32 s60, s57, 256
s_add_u32 s61, s56, -256
v_sub_u32 v88, s61, v87
s_bitcmp1_b32 s59, 2
s_cbranch_scc0 label_step_load_10
v_add_u32 v90, -1, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 4, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
v_or_b32 v89, v74, v90
buffer_load_dword v34, v89, s[8:11], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v34, v34, v91
v_or_b32 v89, v75, v90
buffer_load_dword v38, v89, s[8:11], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v38, v38, v91
v_or_b32 v89, v76, v90
buffer_load_dword v42, v89, s[12:15], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v42, v42, v91
v_or_b32 v89, v77, v90
buffer_load_dword v46, v89, s[12:15], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v46, v46, v91
v_add_u32 v90, -5, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 8, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
s_add_u32 s62, s60, 4
v_or_b32 v89, v74, v90
buffer_load_dword v35, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v35, v35, v91
v_or_b32 v89, v75, v90
buffer_load_dword v39, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v39, v39, v91
v_or_b32 v89, v76, v90
buffer_load_dword v43, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v43, v43, v91
v_or_b32 v89, v77, v90
buffer_load_dword v47, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v47, v47, v91
v_add_u32 v90, -9, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 12, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
s_add_u32 s62, s60, 8
v_or_b32 v89, v74, v90
buffer_load_dword v36, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v36, v36, v91
v_or_b32 v89, v75, v90
buffer_load_dword v40, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v40, v40, v91
v_or_b32 v89, v76, v90
buffer_load_dword v44, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v44, v44, v91
v_or_b32 v89, v77, v90
buffer_load_dword v48, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v48, v48, v91
v_add_u32 v90, -13, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 16, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
s_add_u32 s62, s60, 12
v_or_b32 v89, v74, v90
buffer_load_dword v37, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v37, v37, v91
v_or_b32 v89, v75, v90
buffer_load_dword v41, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v41, v41, v91
v_or_b32 v89, v76, v90
buffer_load_dword v45, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v45, v45, v91
v_or_b32 v89, v77, v90
buffer_load_dword v49, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v49, v49, v91
s_branch label_step_chunk_end_12
label_step_load_10:
s_cmp_ge_i32 s61, 16
s_cbranch_scc0 label_step_zero_11
v_add_u32 v89, -16, v88
v_ashrrev_i32 v89, 31, v89
v_or_b32 v90, v74, v89
buffer_load_dwordx4 v[34:37], v90, s[8:11], s60 offen offset:0
v_or_b32 v90, v75, v89
buffer_load_dwordx4 v[38:41], v90, s[8:11], s60 offen offset:0
v_or_b32 v90, v76, v89
buffer_load_dwordx4 v[42:45], v90, s[12:15], s60 offen offset:0
v_or_b32 v90, v77, v89
buffer_load_dwordx4 v[46:49], v90, s[12:15], s60 offen offset:0
s_branch label_step_chunk_end_12
label_step_zero_11:
s_waitcnt vmcnt(8)
v_mov_b32 v34, 0
v_mov_b32 v35, 0
v_mov_b32 v36, 0
v_mov_b32 v37, 0
v_mov_b32 v38, 0
v_mov_b32 v39, 0
v_mov_b32 v40, 0
v_mov_b32 v41, 0
v_mov_b32 v42, 0
v_mov_b32 v43, 0
v_mov_b32 v44, 0
v_mov_b32 v45, 0
v_mov_b32 v46, 0
v_mov_b32 v47, 0
v_mov_b32 v48, 0
v_mov_b32 v49, 0
label_step_chunk_end_12:
s_add_u32 s60, s57, 384
s_add_u32 s61, s56, -384
v_sub_u32 v88, s61, v87
s_bitcmp1_b32 s59, 3
s_cbranch_scc0 label_step_load_13
v_add_u32 v90, -1, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 4, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
v_or_b32 v89, v74, v90
buffer_load_dword v50, v89, s[8:11], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v50, v50, v91
v_or_b32 v89, v75, v90
buffer_load_dword v54, v89, s[8:11], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v54, v54, v91
v_or_b32 v89, v76, v90
buffer_load_dword v58, v89, s[12:15], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v58, v58, v91
v_or_b32 v89, v77, v90
buffer_load_dword v62, v89, s[12:15], s60 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v62, v62, v91
v_add_u32 v90, -5, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 8, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
s_add_u32 s62, s60, 4
v_or_b32 v89, v74, v90
buffer_load_dword v51, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v51, v51, v91
v_or_b32 v89, v75, v90
buffer_load_dword v55, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v55, v55, v91
v_or_b32 v89, v76, v90
buffer_load_dword v59, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v59, v59, v91
v_or_b32 v89, v77, v90
buffer_load_dword v63, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v63, v63, v91
v_add_u32 v90, -9, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 12, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
s_add_u32 s62, s60, 8
v_or_b32 v89, v74, v90
buffer_load_dword v52, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v52, v52, v91
v_or_b32 v89, v75, v90
buffer_load_dword v56, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v56, v56, v91
v_or_b32 v89, v76, v90
buffer_load_dword v60, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v60, v60, v91
v_or_b32 v89, v77, v90
buffer_load_dword v64, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v64, v64, v91
v_add_u32 v90, -13, v88
v_ashrrev_i32 v90, 31, v90
v_sub_u32 v91, 16, v88
v_max_i32 v91, 0, v91
v_min_i32 v91, 3, v91
v_lshlrev_b32 v91, 3, v91
v_lshrrev_b32 v91, v91, -1
s_add_u32 s62, s60, 12
v_or_b32 v89, v74, v90
buffer_load_dword v53, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v53, v53, v91
v_or_b32 v89, v75, v90
buffer_load_dword v57, v89, s[8:11], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v57, v57, v91
v_or_b32 v89, v76, v90
buffer_load_dword v61, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v61, v61, v91
v_or_b32 v89, v77, v90
buffer_load_dword v65, v89, s[12:15], s62 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v65, v65, v91
s_branch label_step_chunk_end_15
label_step_load_13:
s_cmp_ge_i32 s61, 16
s_cbranch_scc0 label_step_zero_14
v_add_u32 v89, -16, v88
v_ashrrev_i32 v89, 31, v89
v_or_b32 v90, v74, v89
buffer_load_dwordx4 v[50:53], v90, s[8:11], s60 offen offset:0
v_or_b32 v90, v75, v89
buffer_load_dwordx4 v[54:57], v90, s[8:11], s60 offen offset:0
v_or_b32 v90, v76, v89
buffer_load_dwordx4 v[58:61], v90, s[12:15], s60 offen offset:0
v_or_b32 v90, v77, v89
buffer_load_dwordx4 v[62:65], v90, s[12:15], s60 offen offset:0
s_branch label_step_chunk_end_15
label_step_zero_14:
s_waitcnt vmcnt(4)
v_mov_b32 v50, 0
v_mov_b32 v51, 0
v_mov_b32 v52, 0
v_mov_b32 v53, 0
v_mov_b32 v54, 0
v_mov_b32 v55, 0
v_mov_b32 v56, 0
v_mov_b32 v57, 0
v_mov_b32 v58, 0
v_mov_b32 v59, 0
v_mov_b32 v60, 0
v_mov_b32 v61, 0
v_mov_b32 v62, 0
v_mov_b32 v63, 0
v_mov_b32 v64, 0
v_mov_b32 v65, 0
label_step_chunk_end_15:
s_waitcnt vmcnt(3)
ds_bpermute_b32 v74, v84, v66
ds_bpermute_b32 v66, v85, v66
s_waitcnt vmcnt(2)
ds_bpermute_b32 v75, v84, v67
ds_bpermute_b32 v67, v85, v67
s_waitcnt vmcnt(1)
ds_bpermute_b32 v76, v84, v68
ds_bpermute_b32 v68, v85, v68
s_waitcnt vmcnt(0)
ds_bpermute_b32 v77, v84, v69
ds_bpermute_b32 v69, v85, v69
s_waitcnt lgkmcnt(6)
v_perm_b32 v74, v66, v74, v82
s_waitcnt lgkmcnt(4)
v_perm_b32 v75, v67, v75, v82
s_waitcnt lgkmcnt(2)
v_perm_b32 v76, v68, v76, v83
s_waitcnt lgkmcnt(0)
v_perm_b32 v77, v69, v77, v83
v_lshlrev_b32 v78, 23, v74
v_and_b32 v78, 2139095040, v78
v_lshlrev_b32 v79, 23, v75
v_and_b32 v79, 2139095040, v79
v_lshlrev_b32 v80, 23, v76
v_and_b32 v80, 2139095040, v80
v_lshlrev_b32 v81, 23, v77
v_and_b32 v81, 2139095040, v81
v_cvt_scalef32_pk_bf16_fp8 v86, v2, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v6, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v10, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v14, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v2, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v6, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v10, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v14, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v3, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v7, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v11, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v15, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v3, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v7, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v11, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v15, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v4, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v8, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v12, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v16, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v4, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v8, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v12, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v16, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v5, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v9, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v13, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v17, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v5, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v9, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v13, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v17, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_lshlrev_b32 v78, 15, v74
v_and_b32 v78, 2139095040, v78
v_lshlrev_b32 v79, 15, v75
v_and_b32 v79, 2139095040, v79
v_lshlrev_b32 v80, 15, v76
v_and_b32 v80, 2139095040, v80
v_lshlrev_b32 v81, 15, v77
v_and_b32 v81, 2139095040, v81
v_cvt_scalef32_pk_bf16_fp8 v86, v18, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v22, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v26, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v30, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v18, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v22, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v26, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v30, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v19, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v23, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v27, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v31, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v19, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v23, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v27, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v31, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v20, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v24, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v28, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v32, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v20, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v24, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v28, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v32, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v21, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v25, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v29, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v33, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v21, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v25, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v29, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v33, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_lshlrev_b32 v78, 7, v74
v_and_b32 v78, 2139095040, v78
v_lshlrev_b32 v79, 7, v75
v_and_b32 v79, 2139095040, v79
v_lshlrev_b32 v80, 7, v76
v_and_b32 v80, 2139095040, v80
v_lshlrev_b32 v81, 7, v77
v_and_b32 v81, 2139095040, v81
v_cvt_scalef32_pk_bf16_fp8 v86, v34, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v38, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v42, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v46, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v34, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v38, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v42, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v46, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v35, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v39, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v43, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v47, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v35, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v39, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v43, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v47, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v36, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v40, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v44, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v48, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v36, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v40, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v44, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v48, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v37, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v41, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v45, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v49, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v37, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v41, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v45, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v49, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_lshrrev_b32 v78, 1, v74
v_and_b32 v78, 2139095040, v78
v_lshrrev_b32 v79, 1, v75
v_and_b32 v79, 2139095040, v79
v_lshrrev_b32 v80, 1, v76
v_and_b32 v80, 2139095040, v80
v_lshrrev_b32 v81, 1, v77
v_and_b32 v81, 2139095040, v81
v_cvt_scalef32_pk_bf16_fp8 v86, v50, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v54, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v58, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v62, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v50, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v54, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v58, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v62, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v51, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v55, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v59, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v63, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v51, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v55, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v59, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v63, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v52, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v56, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v60, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v64, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v52, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v56, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v60, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v64, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v53, v78
v_cvt_scalef32_pk_bf16_fp8 v87, v57, v79
v_cvt_scalef32_pk_bf16_fp8 v88, v61, v80
v_cvt_scalef32_pk_bf16_fp8 v89, v65, v81
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
v_cvt_scalef32_pk_bf16_fp8 v86, v53, v78 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v87, v57, v79 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v88, v61, v80 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v89, v65, v81 op_sel:[1,0,0]
v_dot2_f32_bf16 v70, v86, v88, v70
v_dot2_f32_bf16 v71, v86, v89, v71
v_dot2_f32_bf16 v72, v87, v88, v72
v_dot2_f32_bf16 v73, v87, v89, v73
label_step_end_3:
s_cmp_eq_u32 s38, 1
s_cbranch_scc0 label_orientation_b_16
s_waitcnt vmcnt(14)
v_add_f32 v2, v70, v70 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v2, v2, v2 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v2, v2, v2 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v2, v2, v2 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v4, v71, v71 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v3, v72, v72 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v5, v73, v73 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v5, v5, v5 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v5, v5, v5 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v5, v5, v5 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
s_add_u32 s59, s3, 1
s_lshl_b32 s59, s59, 1
s_add_u32 s60, s2, 1
s_lshl_b32 s60, s60, 4
s_cmp_le_u32 s59, s36
s_cselect_b32 s61, 1, 0
s_cmp_le_u32 s60, s37
s_cselect_b32 s62, 1, 0
s_and_b32 s58, s61, s62
v_cmp_eq_i32 s[56:57], 0, v0
s_cmp_le_u32 s5, s6
s_cbranch_scc0 label_workspace_18
s_cmp_eq_u32 s58, 1
s_cbranch_scc1 label_vector_20
s_mul_i32 s59, s39, s32
v_mul_lo_u32 v7, s33, v1
v_lshrrev_b32 v2, 16, v2
v_add_u32 v6, s59, v7
v_lshlrev_b32 v6, 1, v6
s_and_b64 s[62:63], s[48:49], s[52:53]
s_and_b64 s[62:63], s[62:63], s[56:57]
v_cndmask_b32 v6, -1, v6, s[62:63]
buffer_store_short v2, v6, s[24:27], 0 offen offset:0
v_lshrrev_b32 v4, 16, v4
s_mov_b32 s61, s59
s_mov_b32 s60, s33
s_add_u32 s61, s61, s60
v_add_u32 v6, s61, v7
v_lshlrev_b32 v6, 1, v6
s_and_b64 s[62:63], s[48:49], s[54:55]
s_and_b64 s[62:63], s[62:63], s[56:57]
v_cndmask_b32 v6, -1, v6, s[62:63]
buffer_store_short v4, v6, s[24:27], 0 offen offset:0
v_lshrrev_b32 v3, 16, v3
s_mov_b32 s61, s59
s_mov_b32 s60, s32
s_add_u32 s61, s61, s60
v_add_u32 v6, s61, v7
v_lshlrev_b32 v6, 1, v6
s_and_b64 s[62:63], s[50:51], s[52:53]
s_and_b64 s[62:63], s[62:63], s[56:57]
v_cndmask_b32 v6, -1, v6, s[62:63]
buffer_store_short v3, v6, s[24:27], 0 offen offset:0
v_lshrrev_b32 v5, 16, v5
s_mov_b32 s61, s59
s_mov_b32 s60, s32
s_add_u32 s61, s61, s60
s_mov_b32 s60, s33
s_add_u32 s61, s61, s60
v_add_u32 v6, s61, v7
v_lshlrev_b32 v6, 1, v6
s_and_b64 s[62:63], s[50:51], s[54:55]
s_and_b64 s[62:63], s[62:63], s[56:57]
v_cndmask_b32 v6, -1, v6, s[62:63]
buffer_store_short v5, v6, s[24:27], 0 offen offset:0
s_branch label_tile_stored_21
label_vector_20:
s_mul_i32 s59, s39, s32
v_mul_lo_u32 v7, s33, v1
v_add_u32 v6, s59, v7
v_lshlrev_b32 v6, 1, v6
v_cndmask_b32 v6, -1, v6, s[56:57]
v_lshrrev_b32 v2, 16, v2
v_lshrrev_b32 v3, 16, v3
v_pack_b32_f16 v2, v2, v3
buffer_store_dword v2, v6, s[24:27], 0 offen offset:0
s_mov_b32 s61, s59
s_mov_b32 s60, s33
s_add_u32 s61, s61, s60
v_add_u32 v6, s61, v7
v_lshlrev_b32 v6, 1, v6
v_cndmask_b32 v6, -1, v6, s[56:57]
v_lshrrev_b32 v4, 16, v4
v_lshrrev_b32 v5, 16, v5
v_pack_b32_f16 v4, v4, v5
buffer_store_dword v4, v6, s[24:27], 0 offen offset:0
label_tile_stored_21:
s_branch label_stored_19
label_workspace_18:
s_mul_i32 s59, s4, s7
s_cmp_eq_u32 s58, 1
s_cbranch_scc1 label_vector_22
s_mul_i32 s60, s39, s34
s_add_u32 s60, s60, s59
v_mul_lo_u32 v7, s35, v1
v_add_u32 v6, s60, v7
v_lshlrev_b32 v6, 2, v6
s_and_b64 s[64:65], s[48:49], s[52:53]
s_and_b64 s[64:65], s[64:65], s[56:57]
v_cndmask_b32 v6, -1, v6, s[64:65]
buffer_store_dword v2, v6, s[28:31], 0 offen offset:0
s_mov_b32 s62, s60
s_mov_b32 s61, s35
s_add_u32 s62, s62, s61
v_add_u32 v6, s62, v7
v_lshlrev_b32 v6, 2, v6
s_and_b64 s[64:65], s[48:49], s[54:55]
s_and_b64 s[64:65], s[64:65], s[56:57]
v_cndmask_b32 v6, -1, v6, s[64:65]
buffer_store_dword v4, v6, s[28:31], 0 offen offset:0
s_mov_b32 s62, s60
s_mov_b32 s61, s34
s_add_u32 s62, s62, s61
v_add_u32 v6, s62, v7
v_lshlrev_b32 v6, 2, v6
s_and_b64 s[64:65], s[50:51], s[52:53]
s_and_b64 s[64:65], s[64:65], s[56:57]
v_cndmask_b32 v6, -1, v6, s[64:65]
buffer_store_dword v3, v6, s[28:31], 0 offen offset:0
s_mov_b32 s62, s60
s_mov_b32 s61, s34
s_add_u32 s62, s62, s61
s_mov_b32 s61, s35
s_add_u32 s62, s62, s61
v_add_u32 v6, s62, v7
v_lshlrev_b32 v6, 2, v6
s_and_b64 s[64:65], s[50:51], s[54:55]
s_and_b64 s[64:65], s[64:65], s[56:57]
v_cndmask_b32 v6, -1, v6, s[64:65]
buffer_store_dword v5, v6, s[28:31], 0 offen offset:0
s_branch label_tile_stored_23
label_vector_22:
s_mul_i32 s60, s39, s34
s_add_u32 s60, s60, s59
v_mul_lo_u32 v7, s35, v1
v_add_u32 v6, s60, v7
v_lshlrev_b32 v6, 2, v6
v_cndmask_b32 v6, -1, v6, s[56:57]
buffer_store_dwordx2 v[2:3], v6, s[28:31], 0 offen offset:0
s_mov_b32 s62, s60
s_mov_b32 s61, s35
s_add_u32 s62, s62, s61
v_add_u32 v6, s62, v7
v_lshlrev_b32 v6, 2, v6
v_cndmask_b32 v6, -1, v6, s[56:57]
buffer_store_dwordx2 v[4:5], v6, s[28:31], 0 offen offset:0
label_tile_stored_23:
label_stored_19:
s_branch label_epilogue_end_17
label_orientation_b_16:
s_waitcnt vmcnt(14)
v_add_f32 v2, v70, v70 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v2, v2, v2 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v2, v2, v2 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v2, v2, v2 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v3, v71, v71 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v4, v72, v72 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v5, v73, v73 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v5, v5, v5 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v5, v5, v5 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v5, v5, v5 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
s_add_u32 s59, s3, 1
s_lshl_b32 s59, s59, 1
s_add_u32 s60, s2, 1
s_lshl_b32 s60, s60, 4
s_cmp_le_u32 s59, s36
s_cselect_b32 s61, 1, 0
s_cmp_le_u32 s60, s37
s_cselect_b32 s62, 1, 0
s_and_b32 s58, s61, s62
v_cmp_eq_i32 s[56:57], 0, v0
s_cmp_le_u32 s5, s6
s_cbranch_scc0 label_workspace_24
s_cmp_eq_u32 s58, 1
s_cbranch_scc1 label_vector_26
s_mul_i32 s59, s39, s32
v_mul_lo_u32 v7, s33, v1
v_lshrrev_b32 v2, 16, v2
v_add_u32 v6, s59, v7
v_lshlrev_b32 v6, 1, v6
s_and_b64 s[62:63], s[48:49], s[52:53]
s_and_b64 s[62:63], s[62:63], s[56:57]
v_cndmask_b32 v6, -1, v6, s[62:63]
buffer_store_short v2, v6, s[24:27], 0 offen offset:0
v_lshrrev_b32 v3, 16, v3
s_mov_b32 s61, s59
s_mov_b32 s60, s33
s_add_u32 s61, s61, s60
v_add_u32 v6, s61, v7
v_lshlrev_b32 v6, 1, v6
s_and_b64 s[62:63], s[48:49], s[54:55]
s_and_b64 s[62:63], s[62:63], s[56:57]
v_cndmask_b32 v6, -1, v6, s[62:63]
buffer_store_short v3, v6, s[24:27], 0 offen offset:0
v_lshrrev_b32 v4, 16, v4
s_mov_b32 s61, s59
s_mov_b32 s60, s32
s_add_u32 s61, s61, s60
v_add_u32 v6, s61, v7
v_lshlrev_b32 v6, 1, v6
s_and_b64 s[62:63], s[50:51], s[52:53]
s_and_b64 s[62:63], s[62:63], s[56:57]
v_cndmask_b32 v6, -1, v6, s[62:63]
buffer_store_short v4, v6, s[24:27], 0 offen offset:0
v_lshrrev_b32 v5, 16, v5
s_mov_b32 s61, s59
s_mov_b32 s60, s32
s_add_u32 s61, s61, s60
s_mov_b32 s60, s33
s_add_u32 s61, s61, s60
v_add_u32 v6, s61, v7
v_lshlrev_b32 v6, 1, v6
s_and_b64 s[62:63], s[50:51], s[54:55]
s_and_b64 s[62:63], s[62:63], s[56:57]
v_cndmask_b32 v6, -1, v6, s[62:63]
buffer_store_short v5, v6, s[24:27], 0 offen offset:0
s_branch label_tile_stored_27
label_vector_26:
s_mul_i32 s59, s39, s32
v_mul_lo_u32 v7, s33, v1
v_add_u32 v6, s59, v7
v_lshlrev_b32 v6, 1, v6
v_cndmask_b32 v6, -1, v6, s[56:57]
v_lshrrev_b32 v2, 16, v2
v_lshrrev_b32 v3, 16, v3
v_pack_b32_f16 v2, v2, v3
buffer_store_dword v2, v6, s[24:27], 0 offen offset:0
s_mov_b32 s61, s59
s_mov_b32 s60, s32
s_add_u32 s61, s61, s60
v_add_u32 v6, s61, v7
v_lshlrev_b32 v6, 1, v6
v_cndmask_b32 v6, -1, v6, s[56:57]
v_lshrrev_b32 v4, 16, v4
v_lshrrev_b32 v5, 16, v5
v_pack_b32_f16 v4, v4, v5
buffer_store_dword v4, v6, s[24:27], 0 offen offset:0
label_tile_stored_27:
s_branch label_stored_25
label_workspace_24:
s_mul_i32 s59, s4, s7
s_cmp_eq_u32 s58, 1
s_cbranch_scc1 label_vector_28
s_mul_i32 s60, s39, s34
s_add_u32 s60, s60, s59
v_mul_lo_u32 v7, s35, v1
v_add_u32 v6, s60, v7
v_lshlrev_b32 v6, 2, v6
s_and_b64 s[64:65], s[48:49], s[52:53]
s_and_b64 s[64:65], s[64:65], s[56:57]
v_cndmask_b32 v6, -1, v6, s[64:65]
buffer_store_dword v2, v6, s[28:31], 0 offen offset:0
s_mov_b32 s62, s60
s_mov_b32 s61, s35
s_add_u32 s62, s62, s61
v_add_u32 v6, s62, v7
v_lshlrev_b32 v6, 2, v6
s_and_b64 s[64:65], s[48:49], s[54:55]
s_and_b64 s[64:65], s[64:65], s[56:57]
v_cndmask_b32 v6, -1, v6, s[64:65]
buffer_store_dword v3, v6, s[28:31], 0 offen offset:0
s_mov_b32 s62, s60
s_mov_b32 s61, s34
s_add_u32 s62, s62, s61
v_add_u32 v6, s62, v7
v_lshlrev_b32 v6, 2, v6
s_and_b64 s[64:65], s[50:51], s[52:53]
s_and_b64 s[64:65], s[64:65], s[56:57]
v_cndmask_b32 v6, -1, v6, s[64:65]
buffer_store_dword v4, v6, s[28:31], 0 offen offset:0
s_mov_b32 s62, s60
s_mov_b32 s61, s34
s_add_u32 s62, s62, s61
s_mov_b32 s61, s35
s_add_u32 s62, s62, s61
v_add_u32 v6, s62, v7
v_lshlrev_b32 v6, 2, v6
s_and_b64 s[64:65], s[50:51], s[54:55]
s_and_b64 s[64:65], s[64:65], s[56:57]
v_cndmask_b32 v6, -1, v6, s[64:65]
buffer_store_dword v5, v6, s[28:31], 0 offen offset:0
s_branch label_tile_stored_29
label_vector_28:
s_mul_i32 s60, s39, s34
s_add_u32 s60, s60, s59
v_mul_lo_u32 v7, s35, v1
v_add_u32 v6, s60, v7
v_lshlrev_b32 v6, 2, v6
v_cndmask_b32 v6, -1, v6, s[56:57]
buffer_store_dwordx2 v[2:3], v6, s[28:31], 0 offen offset:0
s_mov_b32 s62, s60
s_mov_b32 s61, s34
s_add_u32 s62, s62, s61
v_add_u32 v6, s62, v7
v_lshlrev_b32 v6, 2, v6
v_cndmask_b32 v6, -1, v6, s[56:57]
buffer_store_dwordx2 v[4:5], v6, s[28:31], 0 offen offset:0
label_tile_stored_29:
label_stored_25:
label_epilogue_end_17:
s_endpgm
.Lgemm_BM2_TN2_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_end:
.size gemm_BM2_TN2_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_M, .Lgemm_BM2_TN2_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_end - gemm_BM2_TN2_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_M
.rodata
.p2align 6
.amdhsa_kernel gemm_BM2_TN2_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_M
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_kernarg_size 104
  .amdhsa_accum_offset 104
  .amdhsa_next_free_vgpr 104
  .amdhsa_next_free_sgpr 80
  .amdhsa_group_segment_fixed_size 0
  .amdhsa_private_segment_fixed_size 0
  .amdhsa_system_sgpr_workgroup_id_x 1
  .amdhsa_system_sgpr_workgroup_id_y 1
  .amdhsa_system_sgpr_workgroup_id_z 1
  .amdhsa_system_vgpr_workitem_id 0
  .amdhsa_float_denorm_mode_32 3
  .amdhsa_float_denorm_mode_16_64 3
.end_amdhsa_kernel
.amdgpu_metadata
---
custom.config:
  Source:
    Origin: skinny_mxfp8
    Repository: "TensileLite C++ skinny GEMM emitter, unmerged branch users/fabianmcg/skinny-gemm-integration @1875cdd9d22"
  Version: 1.0.0
  Features:
    SupportsUserArgs: false
    SupportsBias: false
    SupportsActivation: false
    SupportsScaleAlpha: false
    SupportsGSU: false
  InternalSupportParams:
    KernArgsVersion: 0
  ProblemType:
    OperationType: GEMM
    DataType: F8
    DestDataType: b
    ComputeDataType: s
    HighPrecisionAccumulate: True
    TransposeA: True
    TransposeB: False
    UseBeta: True
    Batched: True
    UseBias: 0
    Activation: False
    UseScaleAlphaVec: 0
    MXBlockA: 32
    MXBlockB: 32
  CustomKernel:
    args: [ { type: address, semantic: AddressD },
            { type: address, semantic: AddressA },
            { type: address, semantic: AddressB },
            { type: address, semantic: AddressMXScaleA },
            { type: address, semantic: AddressMXScaleB },
            { type: uint64, semantic: ConstantZero },
            { type: int32, semantic: StrideD0 },
            { type: int32, semantic: StrideA0 },
            { type: int32, semantic: StrideB0 },
            { type: int32, semantic: SizeFree0 },
            { type: int32, semantic: SizeFree1 },
            { type: int32, semantic: SizeSum },
            { type: int32, semantic: SizeSum } ]
    macrotile: [2, 16, 1024]
    threads: [128, 1, 1]
    grid: [TilesY, TilesX, Batch]
  MatrixInstruction: [16, 16, 16, 1]
  EnableMatrixInstruction: True
  MIWaveTile: [1, 1]
  AssertSummationElementMultiple: 256
  AssertSizeEqual: { 2: 1 }
  AssertSizeGreaterThan: { 0: 0, 1: 0, 3: 0 }
  AssertSizeLessThan: { 0: 5, 1: 1048577 }
  AssertStrideAEqual: { 0: 1 }
  AssertStrideBEqual: { 0: 1 }
  AssertStrideDEqual: { 0: 1 }
  AssertStrideAMultiple: { 1: 4 }
  AssertStrideBMultiple: { 1: 4 }
  StaggerU: 0
  MXScaleFormat: HostPreSwizzle
  WavefrontSize: 64
amdhsa.version: [1, 2]
amdhsa.target: amdgcn-amd-amdhsa--gfx950
amdhsa.kernels:
  - .name: gemm_BM2_TN2_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_M
    .symbol: gemm_BM2_TN2_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_M.kd
    .kernarg_segment_size: 104
    .kernarg_segment_align: 8
    .group_segment_fixed_size: 0
    .private_segment_fixed_size: 0
    .max_flat_workgroup_size: 128
    .wavefront_size: 64
    .sgpr_count: 86
    .vgpr_count: 104
    .agpr_count: 0
    .sgpr_spill_count: 0
    .vgpr_spill_count: 0
    .args:
      - .name: D
        .size: 8
        .offset: 0
        .value_kind: global_buffer
        .address_space: global
      - .name: A
        .size: 8
        .offset: 8
        .value_kind: global_buffer
        .address_space: global
      - .name: B
        .size: 8
        .offset: 16
        .value_kind: global_buffer
        .address_space: global
      - .name: scalesA
        .size: 8
        .offset: 24
        .value_kind: global_buffer
        .address_space: global
      - .name: scalesB
        .size: 8
        .offset: 32
        .value_kind: global_buffer
        .address_space: global
      - .name: ws
        .size: 8
        .offset: 40
        .value_kind: global_buffer
        .address_space: global
      - .name: ldD
        .size: 4
        .offset: 48
        .value_kind: by_value
      - .name: ldA
        .size: 4
        .offset: 52
        .value_kind: by_value
      - .name: ldB
        .size: 4
        .offset: 56
        .value_kind: by_value
      - .name: m
        .size: 4
        .offset: 60
        .value_kind: by_value
      - .name: n
        .size: 4
        .offset: 64
        .value_kind: by_value
      - .name: k
        .size: 4
        .offset: 68
        .value_kind: by_value
      - .name: spk
        .size: 4
        .offset: 72
        .value_kind: by_value
      - .size: 4
        .offset: 76
        .value_kind: hidden_group_size_x
      - .size: 4
        .offset: 80
        .value_kind: hidden_group_size_y
      - .size: 4
        .offset: 84
        .value_kind: hidden_group_size_z
      - .size: 4
        .offset: 88
        .value_kind: hidden_block_count_x
      - .size: 4
        .offset: 92
        .value_kind: hidden_block_count_y
      - .size: 4
        .offset: 96
        .value_kind: hidden_block_count_z
...
.end_amdgpu_metadata
