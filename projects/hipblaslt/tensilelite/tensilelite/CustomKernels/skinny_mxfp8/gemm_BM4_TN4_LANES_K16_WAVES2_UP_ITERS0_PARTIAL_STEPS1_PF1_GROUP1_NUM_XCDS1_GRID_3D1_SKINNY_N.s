.amdgcn_target "amdgcn-amd-amdhsa--gfx950"
.text
.protected gemm_BM4_TN4_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N
.globl gemm_BM4_TN4_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N
.p2align 8
.type gemm_BM4_TN4_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N,@function
gemm_BM4_TN4_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N:
s_load_dword s74, s[0:1], 96
s_load_dword s64, s[0:1], 88
s_load_dword s65, s[0:1], 92
s_load_dword s6, s[0:1], 72
s_load_dword s5, s[0:1], 68
s_load_dword s73, s[0:1], 64
s_load_dword s72, s[0:1], 60
s_load_dword s71, s[0:1], 56
s_load_dword s70, s[0:1], 52
s_load_dword s69, s[0:1], 48
s_load_dwordx2 s[28:29], s[0:1], 40
s_load_dwordx2 s[82:83], s[0:1], 32
s_load_dwordx2 s[80:81], s[0:1], 24
s_load_dwordx2 s[78:79], s[0:1], 16
s_load_dwordx2 s[76:77], s[0:1], 8
s_load_dwordx2 s[24:25], s[0:1], 0
s_waitcnt lgkmcnt(0)
s_add_u32 s87, s5, 3
s_lshr_b32 s87, s87, 2
s_lshl_b32 s87, s87, 2
s_add_u32 s75, s72, -1
s_mul_i32 s75, s75, s70
s_add_u32 s75, s75, s87
s_add_u32 s84, s73, -1
s_mul_i32 s84, s84, s71
s_add_u32 s84, s84, s87
s_add_u32 s66, s5, 255
s_lshr_b32 s66, s66, 8
s_lshl_b32 s66, s66, 8
s_add_u32 s85, s72, 31
s_lshr_b32 s85, s85, 5
s_mul_i32 s85, s85, s66
s_add_u32 s86, s73, 31
s_lshr_b32 s86, s86, 5
s_mul_i32 s86, s86, s66
s_lshl_b32 s26, s73, 1
s_add_u32 s26, s26, -2
s_mul_i32 s26, s26, s69
s_lshl_b32 s87, s72, 1
s_add_u32 s26, s26, s87
s_mul_i32 s30, s72, s74
s_mul_i32 s30, s30, s73
s_lshl_b32 s30, s30, 2
s_mul_i32 s7, s72, s73
s_cmp_le_u32 s72, s73
s_cselect_b64 s[8:9], s[76:77], s[78:79]
s_cselect_b32 s10, s75, s84
s_cselect_b64 s[12:13], s[78:79], s[76:77]
s_cselect_b32 s14, s84, s75
s_cselect_b64 s[16:17], s[80:81], s[82:83]
s_cselect_b32 s18, s85, s86
s_cselect_b64 s[20:21], s[82:83], s[80:81]
s_cselect_b32 s22, s86, s85
s_cselect_b32 s67, s70, s71
s_cselect_b32 s68, s71, s70
s_cselect_b32 s32, 1, s69
s_cselect_b32 s33, s69, 1
s_cselect_b32 s34, 1, s72
s_cselect_b32 s35, s72, 1
s_cselect_b32 s38, 1, 0
s_min_u32 s36, s72, s73
s_max_u32 s37, s72, s73
s_mov_b32 s11, 131072
s_mov_b32 s15, 131072
s_mov_b32 s19, 131072
s_mov_b32 s23, 131072
s_mov_b32 s27, 131072
s_mov_b32 s31, 131072
s_mul_i32 s69, s4, s6
s_add_u32 s43, s69, s6
s_min_i32 s43, s43, s5
s_ashr_i32 s70, s43, 10
s_add_u32 s42, s69, 1023
s_ashr_i32 s42, s42, 10
s_sub_u32 s40, s70, s42
s_max_i32 s40, s40, 0
s_mul_i32 s72, s65, s4
s_add_u32 s72, s72, s3
s_mul_i32 s72, s72, s64
s_add_u32 s72, s72, s2
s_add_u32 s73, s6, 1023
s_lshr_b32 s73, s73, 10
s_lshr_b32 s74, s72, 4
s_add_u32 s74, s74, s72
s_abs_i32 s76, s73
s_abs_i32 s77, s74
s_xor_b32 s78, s74, s73
s_ashr_i32 s78, s78, 31
v_cvt_f32_u32 v175, s76
v_rcp_iflag_f32 v175, v175
s_sub_u32 s79, 0, s76
v_mul_f32 v175, 0x4f7ffffe, v175
v_cvt_u32_f32 v175, v175
s_nop 0
v_readfirstlane_b32 s80, v175
s_mul_i32 s81, s79, s80
s_mul_hi_u32 s81, s80, s81
s_add_u32 s80, s80, s81
s_mul_hi_u32 s79, s77, s80
s_mul_i32 s81, s79, s76
s_sub_u32 s81, s77, s81
s_add_u32 s82, s79, 1
s_sub_u32 s83, s81, s76
s_cmp_ge_u32 s81, s76
s_cselect_b32 s79, s82, s79
s_cselect_b32 s81, s83, s81
s_add_u32 s82, s79, 1
s_cmp_ge_u32 s81, s76
s_cselect_b32 s79, s82, s79
s_xor_b32 s79, s79, s78
s_sub_u32 s75, s79, s78
s_mul_i32 s75, s75, s73
s_sub_u32 s71, s74, s75
s_cmp_lt_u32 s71, s40
s_cselect_b32 s41, s71, 0
s_lshl_b32 s39, s3, 2
v_and_b32 v175, 63, v0
v_and_b32 v176, 15, v0
v_lshrrev_b32 v1, 4, v0
v_lshlrev_b32 v1, 2, v1
s_mul_i32 s69, s2, 32
v_add_u32 v1, s69, v1
v_and_b32 v172, 7, v176
v_lshrrev_b32 v172, 1, v172
v_lshlrev_b32 v172, 2, v172
v_lshrrev_b32 v177, 3, v176
v_lshlrev_b32 v177, 5, v177
v_add_u32 v172, v172, v177
v_lshrrev_b32 v177, 4, v175
v_add_u32 v172, v172, v177
v_lshlrev_b32 v172, 2, v172
v_add_u32 v173, 64, v172
v_lshrrev_b32 v177, 3, v176
v_lshlrev_b32 v177, 9, v177
v_and_b32 v178, 7, v176
v_lshlrev_b32 v178, 4, v178
v_add_u32 v177, v177, v178
v_lshrrev_b32 v176, 2, v175
v_and_b32 v178, 3, v176
v_lshlrev_b32 v178, 6, v178
v_lshrrev_b32 v179, 3, v176
v_lshlrev_b32 v179, 9, v179
v_add_u32 v178, v178, v179
v_and_b32 v179, 7, v176
v_lshrrev_b32 v179, 2, v179
v_lshlrev_b32 v179, 8, v179
v_add_u32 v178, v178, v179
v_lshrrev_b32 v176, 6, v0
v_lshlrev_b32 v176, 2, v176
v_and_b32 v179, 3, v175
v_add_u32 v176, v176, v179
v_lshlrev_b32 v176, 2, v176
s_mul_i32 s69, s2, 32
v_add_u32 v176, s69, v176
v_and_b32 v0, 15, v0
s_add_u32 s69, s39, 0
s_cmp_lt_u32 s69, s36
s_cselect_b64 s[48:49], -1, 0
s_mul_i32 s69, s69, s67
v_add_u32 v154, s69, v177
v_cndmask_b32 v154, -1, v154, s[48:49]
s_add_u32 s69, s39, 1
s_cmp_lt_u32 s69, s36
s_cselect_b64 s[50:51], -1, 0
s_mul_i32 s69, s69, s67
v_add_u32 v155, s69, v177
v_cndmask_b32 v155, -1, v155, s[50:51]
s_add_u32 s69, s39, 2
s_cmp_lt_u32 s69, s36
s_cselect_b64 s[52:53], -1, 0
s_mul_i32 s69, s69, s67
v_add_u32 v156, s69, v177
v_cndmask_b32 v156, -1, v156, s[52:53]
s_add_u32 s69, s39, 3
s_cmp_lt_u32 s69, s36
s_cselect_b64 s[54:55], -1, 0
s_mul_i32 s69, s69, s67
v_add_u32 v157, s69, v177
v_cndmask_b32 v157, -1, v157, s[54:55]
v_add_u32 v175, 0, v1
v_cmp_lt_u32 s[56:57], v175, s37
s_nop 1
v_mul_lo_u32 v175, v175, s68
v_add_u32 v158, v175, v177
v_cndmask_b32 v158, -1, v158, s[56:57]
v_add_u32 v175, 1, v1
v_cmp_lt_u32 s[58:59], v175, s37
s_nop 1
v_mul_lo_u32 v175, v175, s68
v_add_u32 v159, v175, v177
v_cndmask_b32 v159, -1, v159, s[58:59]
v_add_u32 v175, 2, v1
v_cmp_lt_u32 s[60:61], v175, s37
s_nop 1
v_mul_lo_u32 v175, v175, s68
v_add_u32 v160, v175, v177
v_cndmask_b32 v160, -1, v160, s[60:61]
v_add_u32 v175, 3, v1
v_cmp_lt_u32 s[62:63], v175, s37
s_nop 1
v_mul_lo_u32 v175, v175, s68
v_add_u32 v161, v175, v177
v_cndmask_b32 v161, -1, v161, s[62:63]
v_and_b32 v174, -256, v178
s_add_u32 s69, s39, 0
s_lshr_b32 s70, s69, 5
s_mul_i32 s70, s70, s66
s_and_b32 s69, 15, s69
s_lshl_b32 s69, s69, 2
s_add_u32 s70, s70, s69
v_add_u32 v162, s70, v178
v_cndmask_b32 v162, -1, v162, s[48:49]
s_add_u32 s69, s39, 1
s_lshr_b32 s70, s69, 5
s_mul_i32 s70, s70, s66
s_and_b32 s69, 15, s69
s_lshl_b32 s69, s69, 2
s_add_u32 s70, s70, s69
v_add_u32 v163, s70, v178
v_cndmask_b32 v163, -1, v163, s[50:51]
s_add_u32 s69, s39, 2
s_lshr_b32 s70, s69, 5
s_mul_i32 s70, s70, s66
s_and_b32 s69, 15, s69
s_lshl_b32 s69, s69, 2
s_add_u32 s70, s70, s69
v_add_u32 v164, s70, v178
v_cndmask_b32 v164, -1, v164, s[52:53]
s_add_u32 s69, s39, 3
s_lshr_b32 s70, s69, 5
s_mul_i32 s70, s70, s66
s_and_b32 s69, 15, s69
s_lshl_b32 s69, s69, 2
s_add_u32 s70, s70, s69
v_add_u32 v165, s70, v178
v_cndmask_b32 v165, -1, v165, s[54:55]
v_add_u32 v175, 0, v176
v_cmp_lt_u32 s[70:71], v175, s37
s_nop 1
v_lshrrev_b32 v177, 5, v175
v_mul_lo_u32 v177, v177, s66
v_and_b32 v175, 15, v175
v_lshlrev_b32 v175, 2, v175
v_add_u32 v177, v177, v175
v_add_u32 v166, v177, v178
v_cndmask_b32 v166, -1, v166, s[70:71]
v_add_u32 v175, 1, v176
v_cmp_lt_u32 s[70:71], v175, s37
s_nop 1
v_lshrrev_b32 v177, 5, v175
v_mul_lo_u32 v177, v177, s66
v_and_b32 v175, 15, v175
v_lshlrev_b32 v175, 2, v175
v_add_u32 v177, v177, v175
v_add_u32 v167, v177, v178
v_cndmask_b32 v167, -1, v167, s[70:71]
v_add_u32 v175, 2, v176
v_cmp_lt_u32 s[70:71], v175, s37
s_nop 1
v_lshrrev_b32 v177, 5, v175
v_mul_lo_u32 v177, v177, s66
v_and_b32 v175, 15, v175
v_lshlrev_b32 v175, 2, v175
v_add_u32 v177, v177, v175
v_add_u32 v168, v177, v178
v_cndmask_b32 v168, -1, v168, s[70:71]
v_add_u32 v175, 3, v176
v_cmp_lt_u32 s[70:71], v175, s37
s_nop 1
v_lshrrev_b32 v177, 5, v175
v_mul_lo_u32 v177, v177, s66
v_and_b32 v175, 15, v175
v_lshlrev_b32 v175, 2, v175
v_add_u32 v177, v177, v175
v_add_u32 v169, v177, v178
v_cndmask_b32 v169, -1, v169, s[70:71]
s_lshr_b32 s69, s39, 4
s_and_b32 s69, 1, s69
s_mul_i32 s69, s69, 16843009
s_add_u32 s69, s69, 100925952
v_mov_b32 v170, s69
v_lshrrev_b32 v171, 4, v1
v_and_b32 v171, 1, v171
v_mov_b32 v175, 16843009
v_mul_lo_u32 v171, v171, v175
v_add_u32 v171, 100925952, v171
v_mov_b32 v138, 0
v_mov_b32 v139, 0
v_mov_b32 v140, 0
v_mov_b32 v141, 0
v_mov_b32 v142, 0
v_mov_b32 v143, 0
v_mov_b32 v144, 0
v_mov_b32 v145, 0
v_mov_b32 v146, 0
v_mov_b32 v147, 0
v_mov_b32 v148, 0
v_mov_b32 v149, 0
v_mov_b32 v150, 0
v_mov_b32 v151, 0
v_mov_b32 v152, 0
v_mov_b32 v153, 0
s_sub_u32 s65, s41, s40
s_cmp_ge_u32 s41, s40
s_cselect_b32 s64, s65, s41
s_add_u32 s65, s42, s64
s_lshl_b32 s65, s65, 10
buffer_load_dword v130, v162, s[16:19], s65 offen offset:0
buffer_load_dword v131, v163, s[16:19], s65 offen offset:0
buffer_load_dword v132, v164, s[16:19], s65 offen offset:0
buffer_load_dword v133, v165, s[16:19], s65 offen offset:0
buffer_load_dword v134, v166, s[20:23], s65 offen offset:0
buffer_load_dword v135, v167, s[20:23], s65 offen offset:0
buffer_load_dword v136, v168, s[20:23], s65 offen offset:0
buffer_load_dword v137, v169, s[20:23], s65 offen offset:0
buffer_load_dwordx4 v[2:5], v154, s[8:11], s65 offen offset:0
buffer_load_dwordx4 v[6:9], v155, s[8:11], s65 offen offset:0
buffer_load_dwordx4 v[10:13], v156, s[8:11], s65 offen offset:0
buffer_load_dwordx4 v[14:17], v157, s[8:11], s65 offen offset:0
buffer_load_dwordx4 v[18:21], v158, s[12:15], s65 offen offset:0
buffer_load_dwordx4 v[22:25], v159, s[12:15], s65 offen offset:0
buffer_load_dwordx4 v[26:29], v160, s[12:15], s65 offen offset:0
buffer_load_dwordx4 v[30:33], v161, s[12:15], s65 offen offset:0
s_add_u32 s66, s65, 128
buffer_load_dwordx4 v[34:37], v154, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[38:41], v155, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[42:45], v156, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[46:49], v157, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[50:53], v158, s[12:15], s66 offen offset:0
buffer_load_dwordx4 v[54:57], v159, s[12:15], s66 offen offset:0
buffer_load_dwordx4 v[58:61], v160, s[12:15], s66 offen offset:0
buffer_load_dwordx4 v[62:65], v161, s[12:15], s66 offen offset:0
s_add_u32 s66, s65, 256
buffer_load_dwordx4 v[66:69], v154, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[70:73], v155, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[74:77], v156, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[78:81], v157, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[82:85], v158, s[12:15], s66 offen offset:0
buffer_load_dwordx4 v[86:89], v159, s[12:15], s66 offen offset:0
buffer_load_dwordx4 v[90:93], v160, s[12:15], s66 offen offset:0
buffer_load_dwordx4 v[94:97], v161, s[12:15], s66 offen offset:0
s_add_u32 s66, s65, 384
buffer_load_dwordx4 v[98:101], v154, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[102:105], v155, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[106:109], v156, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[110:113], v157, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[114:117], v158, s[12:15], s66 offen offset:0
buffer_load_dwordx4 v[118:121], v159, s[12:15], s66 offen offset:0
buffer_load_dwordx4 v[122:125], v160, s[12:15], s66 offen offset:0
buffer_load_dwordx4 v[126:129], v161, s[12:15], s66 offen offset:0
s_add_u32 s64, s40, -1
s_max_i32 s64, s64, 0
s_add_u32 s65, s41, 1
s_lshl_b32 s44, s42, 10
s_add_u32 s45, s44, 128
s_add_u32 s46, s44, 256
s_add_u32 s47, s44, 384
s_cmp_gt_i32 s64, 0
s_mov_b32 s66, 0
s_cbranch_scc0 label_kloop_end_1
label_kloop_0:
s_add_u32 s67, s66, s65
s_sub_u32 s68, s67, s40
s_cmp_ge_u32 s67, s40
s_cselect_b32 s67, s68, s67
s_waitcnt vmcnt(39)
ds_bpermute_b32 v175, v172, v130
ds_bpermute_b32 v130, v173, v130
s_waitcnt vmcnt(38)
ds_bpermute_b32 v176, v172, v131
ds_bpermute_b32 v131, v173, v131
s_waitcnt vmcnt(37)
ds_bpermute_b32 v177, v172, v132
ds_bpermute_b32 v132, v173, v132
s_waitcnt vmcnt(36)
ds_bpermute_b32 v178, v172, v133
ds_bpermute_b32 v133, v173, v133
s_waitcnt vmcnt(35)
ds_bpermute_b32 v179, v172, v134
ds_bpermute_b32 v134, v173, v134
s_waitcnt vmcnt(34)
ds_bpermute_b32 v180, v172, v135
ds_bpermute_b32 v135, v173, v135
s_waitcnt vmcnt(33)
ds_bpermute_b32 v181, v172, v136
ds_bpermute_b32 v136, v173, v136
s_waitcnt vmcnt(32)
ds_bpermute_b32 v182, v172, v137
ds_bpermute_b32 v137, v173, v137
s_waitcnt lgkmcnt(14)
v_perm_b32 v175, v130, v175, v170
s_waitcnt lgkmcnt(12)
v_perm_b32 v176, v131, v176, v170
s_waitcnt lgkmcnt(10)
v_perm_b32 v177, v132, v177, v170
s_waitcnt lgkmcnt(8)
v_perm_b32 v178, v133, v178, v170
s_waitcnt lgkmcnt(6)
v_perm_b32 v179, v134, v179, v171
s_waitcnt lgkmcnt(4)
v_perm_b32 v180, v135, v180, v171
s_waitcnt lgkmcnt(2)
v_perm_b32 v181, v136, v181, v171
s_waitcnt lgkmcnt(0)
v_perm_b32 v182, v137, v182, v171
s_add_u32 s68, s42, s67
s_lshl_b32 s68, s68, 10
buffer_load_dword v130, v162, s[16:19], s68 offen offset:0
buffer_load_dword v131, v163, s[16:19], s68 offen offset:0
buffer_load_dword v132, v164, s[16:19], s68 offen offset:0
buffer_load_dword v133, v165, s[16:19], s68 offen offset:0
buffer_load_dword v134, v166, s[20:23], s68 offen offset:0
buffer_load_dword v135, v167, s[20:23], s68 offen offset:0
buffer_load_dword v136, v168, s[20:23], s68 offen offset:0
buffer_load_dword v137, v169, s[20:23], s68 offen offset:0
v_lshlrev_b32 v183, 23, v175
v_and_b32 v183, 2139095040, v183
v_lshlrev_b32 v184, 23, v176
v_and_b32 v184, 2139095040, v184
v_lshlrev_b32 v185, 23, v177
v_and_b32 v185, 2139095040, v185
v_lshlrev_b32 v186, 23, v178
v_and_b32 v186, 2139095040, v186
v_lshlrev_b32 v187, 23, v179
v_and_b32 v187, 2139095040, v187
v_lshlrev_b32 v188, 23, v180
v_and_b32 v188, 2139095040, v188
v_lshlrev_b32 v189, 23, v181
v_and_b32 v189, 2139095040, v189
v_lshlrev_b32 v190, 23, v182
v_and_b32 v190, 2139095040, v190
s_waitcnt vmcnt(39)
v_cvt_scalef32_pk_bf16_fp8 v191, v2, v183
s_waitcnt vmcnt(38)
v_cvt_scalef32_pk_bf16_fp8 v192, v6, v184
s_waitcnt vmcnt(37)
v_cvt_scalef32_pk_bf16_fp8 v193, v10, v185
s_waitcnt vmcnt(36)
v_cvt_scalef32_pk_bf16_fp8 v194, v14, v186
s_waitcnt vmcnt(35)
v_cvt_scalef32_pk_bf16_fp8 v195, v18, v187
s_waitcnt vmcnt(34)
v_cvt_scalef32_pk_bf16_fp8 v196, v22, v188
s_waitcnt vmcnt(33)
v_cvt_scalef32_pk_bf16_fp8 v197, v26, v189
s_waitcnt vmcnt(32)
v_cvt_scalef32_pk_bf16_fp8 v198, v30, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v2, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v6, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v10, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v14, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v18, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v22, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v26, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v30, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v3, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v7, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v11, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v15, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v19, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v23, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v27, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v31, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v3, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v7, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v11, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v15, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v19, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v23, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v27, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v31, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v4, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v8, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v12, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v16, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v20, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v24, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v28, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v32, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v4, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v8, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v12, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v16, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v20, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v24, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v28, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v32, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v5, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v9, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v13, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v17, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v21, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v25, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v29, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v33, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v5, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v9, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v13, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v17, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v21, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v25, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v29, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v33, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
buffer_load_dwordx4 v[2:5], v154, s[8:11], s68 offen offset:0
buffer_load_dwordx4 v[6:9], v155, s[8:11], s68 offen offset:0
buffer_load_dwordx4 v[10:13], v156, s[8:11], s68 offen offset:0
buffer_load_dwordx4 v[14:17], v157, s[8:11], s68 offen offset:0
buffer_load_dwordx4 v[18:21], v158, s[12:15], s68 offen offset:0
buffer_load_dwordx4 v[22:25], v159, s[12:15], s68 offen offset:0
buffer_load_dwordx4 v[26:29], v160, s[12:15], s68 offen offset:0
buffer_load_dwordx4 v[30:33], v161, s[12:15], s68 offen offset:0
v_lshlrev_b32 v183, 15, v175
v_and_b32 v183, 2139095040, v183
v_lshlrev_b32 v184, 15, v176
v_and_b32 v184, 2139095040, v184
v_lshlrev_b32 v185, 15, v177
v_and_b32 v185, 2139095040, v185
v_lshlrev_b32 v186, 15, v178
v_and_b32 v186, 2139095040, v186
v_lshlrev_b32 v187, 15, v179
v_and_b32 v187, 2139095040, v187
v_lshlrev_b32 v188, 15, v180
v_and_b32 v188, 2139095040, v188
v_lshlrev_b32 v189, 15, v181
v_and_b32 v189, 2139095040, v189
v_lshlrev_b32 v190, 15, v182
v_and_b32 v190, 2139095040, v190
s_waitcnt vmcnt(39)
v_cvt_scalef32_pk_bf16_fp8 v191, v34, v183
s_waitcnt vmcnt(38)
v_cvt_scalef32_pk_bf16_fp8 v192, v38, v184
s_waitcnt vmcnt(37)
v_cvt_scalef32_pk_bf16_fp8 v193, v42, v185
s_waitcnt vmcnt(36)
v_cvt_scalef32_pk_bf16_fp8 v194, v46, v186
s_waitcnt vmcnt(35)
v_cvt_scalef32_pk_bf16_fp8 v195, v50, v187
s_waitcnt vmcnt(34)
v_cvt_scalef32_pk_bf16_fp8 v196, v54, v188
s_waitcnt vmcnt(33)
v_cvt_scalef32_pk_bf16_fp8 v197, v58, v189
s_waitcnt vmcnt(32)
v_cvt_scalef32_pk_bf16_fp8 v198, v62, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v34, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v38, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v42, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v46, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v50, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v54, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v58, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v62, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v35, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v39, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v43, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v47, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v51, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v55, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v59, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v63, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v35, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v39, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v43, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v47, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v51, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v55, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v59, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v63, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v36, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v40, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v44, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v48, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v52, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v56, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v60, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v64, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v36, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v40, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v44, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v48, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v52, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v56, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v60, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v64, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v37, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v41, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v45, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v49, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v53, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v57, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v61, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v65, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v37, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v41, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v45, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v49, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v53, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v57, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v61, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v65, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
s_lshl_b32 s67, s67, 10
s_add_u32 s69, s45, s67
buffer_load_dwordx4 v[34:37], v154, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[38:41], v155, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[42:45], v156, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[46:49], v157, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[50:53], v158, s[12:15], s69 offen offset:0
buffer_load_dwordx4 v[54:57], v159, s[12:15], s69 offen offset:0
buffer_load_dwordx4 v[58:61], v160, s[12:15], s69 offen offset:0
buffer_load_dwordx4 v[62:65], v161, s[12:15], s69 offen offset:0
v_lshlrev_b32 v183, 7, v175
v_and_b32 v183, 2139095040, v183
v_lshlrev_b32 v184, 7, v176
v_and_b32 v184, 2139095040, v184
v_lshlrev_b32 v185, 7, v177
v_and_b32 v185, 2139095040, v185
v_lshlrev_b32 v186, 7, v178
v_and_b32 v186, 2139095040, v186
v_lshlrev_b32 v187, 7, v179
v_and_b32 v187, 2139095040, v187
v_lshlrev_b32 v188, 7, v180
v_and_b32 v188, 2139095040, v188
v_lshlrev_b32 v189, 7, v181
v_and_b32 v189, 2139095040, v189
v_lshlrev_b32 v190, 7, v182
v_and_b32 v190, 2139095040, v190
s_waitcnt vmcnt(39)
v_cvt_scalef32_pk_bf16_fp8 v191, v66, v183
s_waitcnt vmcnt(38)
v_cvt_scalef32_pk_bf16_fp8 v192, v70, v184
s_waitcnt vmcnt(37)
v_cvt_scalef32_pk_bf16_fp8 v193, v74, v185
s_waitcnt vmcnt(36)
v_cvt_scalef32_pk_bf16_fp8 v194, v78, v186
s_waitcnt vmcnt(35)
v_cvt_scalef32_pk_bf16_fp8 v195, v82, v187
s_waitcnt vmcnt(34)
v_cvt_scalef32_pk_bf16_fp8 v196, v86, v188
s_waitcnt vmcnt(33)
v_cvt_scalef32_pk_bf16_fp8 v197, v90, v189
s_waitcnt vmcnt(32)
v_cvt_scalef32_pk_bf16_fp8 v198, v94, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v66, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v70, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v74, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v78, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v82, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v86, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v90, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v94, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v67, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v71, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v75, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v79, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v83, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v87, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v91, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v95, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v67, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v71, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v75, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v79, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v83, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v87, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v91, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v95, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v68, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v72, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v76, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v80, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v84, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v88, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v92, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v96, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v68, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v72, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v76, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v80, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v84, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v88, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v92, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v96, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v69, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v73, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v77, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v81, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v85, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v89, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v93, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v97, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v69, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v73, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v77, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v81, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v85, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v89, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v93, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v97, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
s_add_u32 s69, s46, s67
buffer_load_dwordx4 v[66:69], v154, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[70:73], v155, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[74:77], v156, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[78:81], v157, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[82:85], v158, s[12:15], s69 offen offset:0
buffer_load_dwordx4 v[86:89], v159, s[12:15], s69 offen offset:0
buffer_load_dwordx4 v[90:93], v160, s[12:15], s69 offen offset:0
buffer_load_dwordx4 v[94:97], v161, s[12:15], s69 offen offset:0
v_lshrrev_b32 v183, 1, v175
v_and_b32 v183, 2139095040, v183
v_lshrrev_b32 v184, 1, v176
v_and_b32 v184, 2139095040, v184
v_lshrrev_b32 v185, 1, v177
v_and_b32 v185, 2139095040, v185
v_lshrrev_b32 v186, 1, v178
v_and_b32 v186, 2139095040, v186
v_lshrrev_b32 v187, 1, v179
v_and_b32 v187, 2139095040, v187
v_lshrrev_b32 v188, 1, v180
v_and_b32 v188, 2139095040, v188
v_lshrrev_b32 v189, 1, v181
v_and_b32 v189, 2139095040, v189
v_lshrrev_b32 v190, 1, v182
v_and_b32 v190, 2139095040, v190
s_waitcnt vmcnt(39)
v_cvt_scalef32_pk_bf16_fp8 v191, v98, v183
s_waitcnt vmcnt(38)
v_cvt_scalef32_pk_bf16_fp8 v192, v102, v184
s_waitcnt vmcnt(37)
v_cvt_scalef32_pk_bf16_fp8 v193, v106, v185
s_waitcnt vmcnt(36)
v_cvt_scalef32_pk_bf16_fp8 v194, v110, v186
s_waitcnt vmcnt(35)
v_cvt_scalef32_pk_bf16_fp8 v195, v114, v187
s_waitcnt vmcnt(34)
v_cvt_scalef32_pk_bf16_fp8 v196, v118, v188
s_waitcnt vmcnt(33)
v_cvt_scalef32_pk_bf16_fp8 v197, v122, v189
s_waitcnt vmcnt(32)
v_cvt_scalef32_pk_bf16_fp8 v198, v126, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v98, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v102, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v106, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v110, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v114, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v118, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v122, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v126, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v99, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v103, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v107, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v111, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v115, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v119, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v123, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v127, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v99, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v103, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v107, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v111, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v115, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v119, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v123, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v127, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v100, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v104, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v108, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v112, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v116, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v120, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v124, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v128, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v100, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v104, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v108, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v112, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v116, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v120, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v124, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v128, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v101, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v105, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v109, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v113, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v117, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v121, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v125, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v129, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v101, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v105, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v109, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v113, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v117, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v121, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v125, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v129, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
s_add_u32 s69, s47, s67
buffer_load_dwordx4 v[98:101], v154, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[102:105], v155, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[106:109], v156, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[110:113], v157, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[114:117], v158, s[12:15], s69 offen offset:0
buffer_load_dwordx4 v[118:121], v159, s[12:15], s69 offen offset:0
buffer_load_dwordx4 v[122:125], v160, s[12:15], s69 offen offset:0
buffer_load_dwordx4 v[126:129], v161, s[12:15], s69 offen offset:0
s_add_u32 s66, s66, 1
s_cmp_lt_i32 s66, s64
s_cbranch_scc1 label_kloop_0
label_kloop_end_1:
s_sub_u32 s65, s40, s64
s_cmp_eq_i32 s65, 1
s_cbranch_scc0 label_arm_end_2
s_waitcnt vmcnt(39)
ds_bpermute_b32 v175, v172, v130
ds_bpermute_b32 v130, v173, v130
s_waitcnt vmcnt(38)
ds_bpermute_b32 v176, v172, v131
ds_bpermute_b32 v131, v173, v131
s_waitcnt vmcnt(37)
ds_bpermute_b32 v177, v172, v132
ds_bpermute_b32 v132, v173, v132
s_waitcnt vmcnt(36)
ds_bpermute_b32 v178, v172, v133
ds_bpermute_b32 v133, v173, v133
s_waitcnt vmcnt(35)
ds_bpermute_b32 v179, v172, v134
ds_bpermute_b32 v134, v173, v134
s_waitcnt vmcnt(34)
ds_bpermute_b32 v180, v172, v135
ds_bpermute_b32 v135, v173, v135
s_waitcnt vmcnt(33)
ds_bpermute_b32 v181, v172, v136
ds_bpermute_b32 v136, v173, v136
s_waitcnt vmcnt(32)
ds_bpermute_b32 v182, v172, v137
ds_bpermute_b32 v137, v173, v137
s_waitcnt lgkmcnt(14)
v_perm_b32 v175, v130, v175, v170
s_waitcnt lgkmcnt(12)
v_perm_b32 v176, v131, v176, v170
s_waitcnt lgkmcnt(10)
v_perm_b32 v177, v132, v177, v170
s_waitcnt lgkmcnt(8)
v_perm_b32 v178, v133, v178, v170
s_waitcnt lgkmcnt(6)
v_perm_b32 v179, v134, v179, v171
s_waitcnt lgkmcnt(4)
v_perm_b32 v180, v135, v180, v171
s_waitcnt lgkmcnt(2)
v_perm_b32 v181, v136, v181, v171
s_waitcnt lgkmcnt(0)
v_perm_b32 v182, v137, v182, v171
v_lshlrev_b32 v183, 23, v175
v_and_b32 v183, 2139095040, v183
v_lshlrev_b32 v184, 23, v176
v_and_b32 v184, 2139095040, v184
v_lshlrev_b32 v185, 23, v177
v_and_b32 v185, 2139095040, v185
v_lshlrev_b32 v186, 23, v178
v_and_b32 v186, 2139095040, v186
v_lshlrev_b32 v187, 23, v179
v_and_b32 v187, 2139095040, v187
v_lshlrev_b32 v188, 23, v180
v_and_b32 v188, 2139095040, v188
v_lshlrev_b32 v189, 23, v181
v_and_b32 v189, 2139095040, v189
v_lshlrev_b32 v190, 23, v182
v_and_b32 v190, 2139095040, v190
s_waitcnt vmcnt(31)
v_cvt_scalef32_pk_bf16_fp8 v191, v2, v183
s_waitcnt vmcnt(30)
v_cvt_scalef32_pk_bf16_fp8 v192, v6, v184
s_waitcnt vmcnt(29)
v_cvt_scalef32_pk_bf16_fp8 v193, v10, v185
s_waitcnt vmcnt(28)
v_cvt_scalef32_pk_bf16_fp8 v194, v14, v186
s_waitcnt vmcnt(27)
v_cvt_scalef32_pk_bf16_fp8 v195, v18, v187
s_waitcnt vmcnt(26)
v_cvt_scalef32_pk_bf16_fp8 v196, v22, v188
s_waitcnt vmcnt(25)
v_cvt_scalef32_pk_bf16_fp8 v197, v26, v189
s_waitcnt vmcnt(24)
v_cvt_scalef32_pk_bf16_fp8 v198, v30, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v2, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v6, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v10, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v14, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v18, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v22, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v26, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v30, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v3, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v7, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v11, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v15, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v19, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v23, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v27, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v31, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v3, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v7, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v11, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v15, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v19, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v23, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v27, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v31, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v4, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v8, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v12, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v16, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v20, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v24, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v28, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v32, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v4, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v8, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v12, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v16, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v20, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v24, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v28, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v32, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v5, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v9, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v13, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v17, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v21, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v25, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v29, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v33, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v5, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v9, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v13, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v17, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v21, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v25, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v29, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v33, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_lshlrev_b32 v183, 15, v175
v_and_b32 v183, 2139095040, v183
v_lshlrev_b32 v184, 15, v176
v_and_b32 v184, 2139095040, v184
v_lshlrev_b32 v185, 15, v177
v_and_b32 v185, 2139095040, v185
v_lshlrev_b32 v186, 15, v178
v_and_b32 v186, 2139095040, v186
v_lshlrev_b32 v187, 15, v179
v_and_b32 v187, 2139095040, v187
v_lshlrev_b32 v188, 15, v180
v_and_b32 v188, 2139095040, v188
v_lshlrev_b32 v189, 15, v181
v_and_b32 v189, 2139095040, v189
v_lshlrev_b32 v190, 15, v182
v_and_b32 v190, 2139095040, v190
s_waitcnt vmcnt(23)
v_cvt_scalef32_pk_bf16_fp8 v191, v34, v183
s_waitcnt vmcnt(22)
v_cvt_scalef32_pk_bf16_fp8 v192, v38, v184
s_waitcnt vmcnt(21)
v_cvt_scalef32_pk_bf16_fp8 v193, v42, v185
s_waitcnt vmcnt(20)
v_cvt_scalef32_pk_bf16_fp8 v194, v46, v186
s_waitcnt vmcnt(19)
v_cvt_scalef32_pk_bf16_fp8 v195, v50, v187
s_waitcnt vmcnt(18)
v_cvt_scalef32_pk_bf16_fp8 v196, v54, v188
s_waitcnt vmcnt(17)
v_cvt_scalef32_pk_bf16_fp8 v197, v58, v189
s_waitcnt vmcnt(16)
v_cvt_scalef32_pk_bf16_fp8 v198, v62, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v34, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v38, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v42, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v46, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v50, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v54, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v58, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v62, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v35, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v39, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v43, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v47, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v51, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v55, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v59, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v63, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v35, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v39, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v43, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v47, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v51, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v55, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v59, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v63, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v36, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v40, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v44, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v48, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v52, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v56, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v60, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v64, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v36, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v40, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v44, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v48, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v52, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v56, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v60, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v64, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v37, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v41, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v45, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v49, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v53, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v57, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v61, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v65, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v37, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v41, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v45, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v49, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v53, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v57, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v61, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v65, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_lshlrev_b32 v183, 7, v175
v_and_b32 v183, 2139095040, v183
v_lshlrev_b32 v184, 7, v176
v_and_b32 v184, 2139095040, v184
v_lshlrev_b32 v185, 7, v177
v_and_b32 v185, 2139095040, v185
v_lshlrev_b32 v186, 7, v178
v_and_b32 v186, 2139095040, v186
v_lshlrev_b32 v187, 7, v179
v_and_b32 v187, 2139095040, v187
v_lshlrev_b32 v188, 7, v180
v_and_b32 v188, 2139095040, v188
v_lshlrev_b32 v189, 7, v181
v_and_b32 v189, 2139095040, v189
v_lshlrev_b32 v190, 7, v182
v_and_b32 v190, 2139095040, v190
s_waitcnt vmcnt(15)
v_cvt_scalef32_pk_bf16_fp8 v191, v66, v183
s_waitcnt vmcnt(14)
v_cvt_scalef32_pk_bf16_fp8 v192, v70, v184
s_waitcnt vmcnt(13)
v_cvt_scalef32_pk_bf16_fp8 v193, v74, v185
s_waitcnt vmcnt(12)
v_cvt_scalef32_pk_bf16_fp8 v194, v78, v186
s_waitcnt vmcnt(11)
v_cvt_scalef32_pk_bf16_fp8 v195, v82, v187
s_waitcnt vmcnt(10)
v_cvt_scalef32_pk_bf16_fp8 v196, v86, v188
s_waitcnt vmcnt(9)
v_cvt_scalef32_pk_bf16_fp8 v197, v90, v189
s_waitcnt vmcnt(8)
v_cvt_scalef32_pk_bf16_fp8 v198, v94, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v66, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v70, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v74, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v78, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v82, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v86, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v90, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v94, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v67, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v71, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v75, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v79, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v83, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v87, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v91, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v95, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v67, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v71, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v75, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v79, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v83, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v87, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v91, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v95, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v68, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v72, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v76, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v80, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v84, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v88, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v92, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v96, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v68, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v72, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v76, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v80, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v84, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v88, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v92, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v96, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v69, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v73, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v77, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v81, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v85, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v89, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v93, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v97, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v69, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v73, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v77, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v81, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v85, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v89, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v93, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v97, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_lshrrev_b32 v183, 1, v175
v_and_b32 v183, 2139095040, v183
v_lshrrev_b32 v184, 1, v176
v_and_b32 v184, 2139095040, v184
v_lshrrev_b32 v185, 1, v177
v_and_b32 v185, 2139095040, v185
v_lshrrev_b32 v186, 1, v178
v_and_b32 v186, 2139095040, v186
v_lshrrev_b32 v187, 1, v179
v_and_b32 v187, 2139095040, v187
v_lshrrev_b32 v188, 1, v180
v_and_b32 v188, 2139095040, v188
v_lshrrev_b32 v189, 1, v181
v_and_b32 v189, 2139095040, v189
v_lshrrev_b32 v190, 1, v182
v_and_b32 v190, 2139095040, v190
s_waitcnt vmcnt(7)
v_cvt_scalef32_pk_bf16_fp8 v191, v98, v183
s_waitcnt vmcnt(6)
v_cvt_scalef32_pk_bf16_fp8 v192, v102, v184
s_waitcnt vmcnt(5)
v_cvt_scalef32_pk_bf16_fp8 v193, v106, v185
s_waitcnt vmcnt(4)
v_cvt_scalef32_pk_bf16_fp8 v194, v110, v186
s_waitcnt vmcnt(3)
v_cvt_scalef32_pk_bf16_fp8 v195, v114, v187
s_waitcnt vmcnt(2)
v_cvt_scalef32_pk_bf16_fp8 v196, v118, v188
s_waitcnt vmcnt(1)
v_cvt_scalef32_pk_bf16_fp8 v197, v122, v189
s_waitcnt vmcnt(0)
v_cvt_scalef32_pk_bf16_fp8 v198, v126, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v98, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v102, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v106, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v110, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v114, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v118, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v122, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v126, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v99, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v103, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v107, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v111, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v115, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v119, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v123, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v127, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v99, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v103, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v107, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v111, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v115, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v119, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v123, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v127, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v100, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v104, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v108, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v112, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v116, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v120, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v124, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v128, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v100, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v104, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v108, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v112, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v116, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v120, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v124, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v128, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v101, v183
v_cvt_scalef32_pk_bf16_fp8 v192, v105, v184
v_cvt_scalef32_pk_bf16_fp8 v193, v109, v185
v_cvt_scalef32_pk_bf16_fp8 v194, v113, v186
v_cvt_scalef32_pk_bf16_fp8 v195, v117, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v121, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v125, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v129, v190
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
v_cvt_scalef32_pk_bf16_fp8 v191, v101, v183 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v192, v105, v184 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v193, v109, v185 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v194, v113, v186 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v195, v117, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v121, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v125, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v129, v190 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v191, v195, v138
v_dot2_f32_bf16 v139, v191, v196, v139
v_dot2_f32_bf16 v140, v191, v197, v140
v_dot2_f32_bf16 v141, v191, v198, v141
v_dot2_f32_bf16 v142, v192, v195, v142
v_dot2_f32_bf16 v143, v192, v196, v143
v_dot2_f32_bf16 v144, v192, v197, v144
v_dot2_f32_bf16 v145, v192, v198, v145
v_dot2_f32_bf16 v146, v193, v195, v146
v_dot2_f32_bf16 v147, v193, v196, v147
v_dot2_f32_bf16 v148, v193, v197, v148
v_dot2_f32_bf16 v149, v193, v198, v149
v_dot2_f32_bf16 v150, v194, v195, v150
v_dot2_f32_bf16 v151, v194, v196, v151
v_dot2_f32_bf16 v152, v194, v197, v152
v_dot2_f32_bf16 v153, v194, v198, v153
label_arm_end_2:
s_and_b32 s64, 1023, s43
s_cbranch_scc0 label_step_end_3
s_sub_u32 s65, s43, s64
s_sub_u32 s66, s5, s65
v_lshrrev_b32 v175, 3, v0
v_lshlrev_b32 v175, 9, v175
v_and_b32 v176, 7, v0
v_lshlrev_b32 v176, 4, v176
v_add_u32 v175, v175, v176
v_sub_u32 v176, s66, v174
v_add_u32 v176, -1, v176
v_ashrrev_i32 v176, 31, v176
v_or_b32 v177, v162, v176
buffer_load_dword v130, v177, s[16:19], s65 offen offset:0
v_or_b32 v177, v163, v176
buffer_load_dword v131, v177, s[16:19], s65 offen offset:0
v_or_b32 v177, v164, v176
buffer_load_dword v132, v177, s[16:19], s65 offen offset:0
v_or_b32 v177, v165, v176
buffer_load_dword v133, v177, s[16:19], s65 offen offset:0
v_or_b32 v177, v166, v176
buffer_load_dword v134, v177, s[20:23], s65 offen offset:0
v_or_b32 v177, v167, v176
buffer_load_dword v135, v177, s[20:23], s65 offen offset:0
v_or_b32 v177, v168, v176
buffer_load_dword v136, v177, s[20:23], s65 offen offset:0
v_or_b32 v177, v169, v176
buffer_load_dword v137, v177, s[20:23], s65 offen offset:0
s_lshr_b32 s67, s64, 7
s_and_b32 s67, 3, s67
s_lshl_b32 s67, 1, s67
s_and_b32 s68, 15, s64
s_cselect_b32 s67, s67, 0
v_sub_u32 v176, s64, v175
s_bitcmp1_b32 s67, 0
s_cbranch_scc0 label_step_load_4
v_add_u32 v178, -1, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 4, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
v_or_b32 v177, v154, v178
buffer_load_dword v2, v177, s[8:11], s65 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v2, v2, v179
v_or_b32 v177, v155, v178
buffer_load_dword v6, v177, s[8:11], s65 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v6, v6, v179
v_or_b32 v177, v156, v178
buffer_load_dword v10, v177, s[8:11], s65 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v10, v10, v179
v_or_b32 v177, v157, v178
buffer_load_dword v14, v177, s[8:11], s65 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v14, v14, v179
v_or_b32 v177, v158, v178
buffer_load_dword v18, v177, s[12:15], s65 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v18, v18, v179
v_or_b32 v177, v159, v178
buffer_load_dword v22, v177, s[12:15], s65 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v22, v22, v179
v_or_b32 v177, v160, v178
buffer_load_dword v26, v177, s[12:15], s65 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v26, v26, v179
v_or_b32 v177, v161, v178
buffer_load_dword v30, v177, s[12:15], s65 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v30, v30, v179
v_add_u32 v178, -5, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 8, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
s_add_u32 s68, s65, 4
v_or_b32 v177, v154, v178
buffer_load_dword v3, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v3, v3, v179
v_or_b32 v177, v155, v178
buffer_load_dword v7, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v7, v7, v179
v_or_b32 v177, v156, v178
buffer_load_dword v11, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v11, v11, v179
v_or_b32 v177, v157, v178
buffer_load_dword v15, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v15, v15, v179
v_or_b32 v177, v158, v178
buffer_load_dword v19, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v19, v19, v179
v_or_b32 v177, v159, v178
buffer_load_dword v23, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v23, v23, v179
v_or_b32 v177, v160, v178
buffer_load_dword v27, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v27, v27, v179
v_or_b32 v177, v161, v178
buffer_load_dword v31, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v31, v31, v179
v_add_u32 v178, -9, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 12, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
s_add_u32 s68, s65, 8
v_or_b32 v177, v154, v178
buffer_load_dword v4, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v4, v4, v179
v_or_b32 v177, v155, v178
buffer_load_dword v8, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v8, v8, v179
v_or_b32 v177, v156, v178
buffer_load_dword v12, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v12, v12, v179
v_or_b32 v177, v157, v178
buffer_load_dword v16, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v16, v16, v179
v_or_b32 v177, v158, v178
buffer_load_dword v20, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v20, v20, v179
v_or_b32 v177, v159, v178
buffer_load_dword v24, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v24, v24, v179
v_or_b32 v177, v160, v178
buffer_load_dword v28, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v28, v28, v179
v_or_b32 v177, v161, v178
buffer_load_dword v32, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v32, v32, v179
v_add_u32 v178, -13, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 16, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
s_add_u32 s68, s65, 12
v_or_b32 v177, v154, v178
buffer_load_dword v5, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v5, v5, v179
v_or_b32 v177, v155, v178
buffer_load_dword v9, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v9, v9, v179
v_or_b32 v177, v156, v178
buffer_load_dword v13, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v13, v13, v179
v_or_b32 v177, v157, v178
buffer_load_dword v17, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v17, v17, v179
v_or_b32 v177, v158, v178
buffer_load_dword v21, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v21, v21, v179
v_or_b32 v177, v159, v178
buffer_load_dword v25, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v25, v25, v179
v_or_b32 v177, v160, v178
buffer_load_dword v29, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v29, v29, v179
v_or_b32 v177, v161, v178
buffer_load_dword v33, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v33, v33, v179
s_branch label_step_chunk_end_6
label_step_load_4:
s_cmp_ge_i32 s64, 16
s_cbranch_scc0 label_step_zero_5
v_add_u32 v177, -16, v176
v_ashrrev_i32 v177, 31, v177
v_or_b32 v178, v154, v177
buffer_load_dwordx4 v[2:5], v178, s[8:11], s65 offen offset:0
v_or_b32 v178, v155, v177
buffer_load_dwordx4 v[6:9], v178, s[8:11], s65 offen offset:0
v_or_b32 v178, v156, v177
buffer_load_dwordx4 v[10:13], v178, s[8:11], s65 offen offset:0
v_or_b32 v178, v157, v177
buffer_load_dwordx4 v[14:17], v178, s[8:11], s65 offen offset:0
v_or_b32 v178, v158, v177
buffer_load_dwordx4 v[18:21], v178, s[12:15], s65 offen offset:0
v_or_b32 v178, v159, v177
buffer_load_dwordx4 v[22:25], v178, s[12:15], s65 offen offset:0
v_or_b32 v178, v160, v177
buffer_load_dwordx4 v[26:29], v178, s[12:15], s65 offen offset:0
v_or_b32 v178, v161, v177
buffer_load_dwordx4 v[30:33], v178, s[12:15], s65 offen offset:0
s_branch label_step_chunk_end_6
label_step_zero_5:
s_waitcnt vmcnt(32)
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
label_step_chunk_end_6:
s_add_u32 s68, s65, 128
s_add_u32 s69, s64, -128
v_sub_u32 v176, s69, v175
s_bitcmp1_b32 s67, 1
s_cbranch_scc0 label_step_load_7
v_add_u32 v178, -1, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 4, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
v_or_b32 v177, v154, v178
buffer_load_dword v34, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v34, v34, v179
v_or_b32 v177, v155, v178
buffer_load_dword v38, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v38, v38, v179
v_or_b32 v177, v156, v178
buffer_load_dword v42, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v42, v42, v179
v_or_b32 v177, v157, v178
buffer_load_dword v46, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v46, v46, v179
v_or_b32 v177, v158, v178
buffer_load_dword v50, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v50, v50, v179
v_or_b32 v177, v159, v178
buffer_load_dword v54, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v54, v54, v179
v_or_b32 v177, v160, v178
buffer_load_dword v58, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v58, v58, v179
v_or_b32 v177, v161, v178
buffer_load_dword v62, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v62, v62, v179
v_add_u32 v178, -5, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 8, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
s_add_u32 s70, s68, 4
v_or_b32 v177, v154, v178
buffer_load_dword v35, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v35, v35, v179
v_or_b32 v177, v155, v178
buffer_load_dword v39, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v39, v39, v179
v_or_b32 v177, v156, v178
buffer_load_dword v43, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v43, v43, v179
v_or_b32 v177, v157, v178
buffer_load_dword v47, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v47, v47, v179
v_or_b32 v177, v158, v178
buffer_load_dword v51, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v51, v51, v179
v_or_b32 v177, v159, v178
buffer_load_dword v55, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v55, v55, v179
v_or_b32 v177, v160, v178
buffer_load_dword v59, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v59, v59, v179
v_or_b32 v177, v161, v178
buffer_load_dword v63, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v63, v63, v179
v_add_u32 v178, -9, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 12, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
s_add_u32 s70, s68, 8
v_or_b32 v177, v154, v178
buffer_load_dword v36, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v36, v36, v179
v_or_b32 v177, v155, v178
buffer_load_dword v40, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v40, v40, v179
v_or_b32 v177, v156, v178
buffer_load_dword v44, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v44, v44, v179
v_or_b32 v177, v157, v178
buffer_load_dword v48, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v48, v48, v179
v_or_b32 v177, v158, v178
buffer_load_dword v52, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v52, v52, v179
v_or_b32 v177, v159, v178
buffer_load_dword v56, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v56, v56, v179
v_or_b32 v177, v160, v178
buffer_load_dword v60, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v60, v60, v179
v_or_b32 v177, v161, v178
buffer_load_dword v64, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v64, v64, v179
v_add_u32 v178, -13, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 16, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
s_add_u32 s70, s68, 12
v_or_b32 v177, v154, v178
buffer_load_dword v37, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v37, v37, v179
v_or_b32 v177, v155, v178
buffer_load_dword v41, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v41, v41, v179
v_or_b32 v177, v156, v178
buffer_load_dword v45, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v45, v45, v179
v_or_b32 v177, v157, v178
buffer_load_dword v49, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v49, v49, v179
v_or_b32 v177, v158, v178
buffer_load_dword v53, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v53, v53, v179
v_or_b32 v177, v159, v178
buffer_load_dword v57, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v57, v57, v179
v_or_b32 v177, v160, v178
buffer_load_dword v61, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v61, v61, v179
v_or_b32 v177, v161, v178
buffer_load_dword v65, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v65, v65, v179
s_branch label_step_chunk_end_9
label_step_load_7:
s_cmp_ge_i32 s69, 16
s_cbranch_scc0 label_step_zero_8
v_add_u32 v177, -16, v176
v_ashrrev_i32 v177, 31, v177
v_or_b32 v178, v154, v177
buffer_load_dwordx4 v[34:37], v178, s[8:11], s68 offen offset:0
v_or_b32 v178, v155, v177
buffer_load_dwordx4 v[38:41], v178, s[8:11], s68 offen offset:0
v_or_b32 v178, v156, v177
buffer_load_dwordx4 v[42:45], v178, s[8:11], s68 offen offset:0
v_or_b32 v178, v157, v177
buffer_load_dwordx4 v[46:49], v178, s[8:11], s68 offen offset:0
v_or_b32 v178, v158, v177
buffer_load_dwordx4 v[50:53], v178, s[12:15], s68 offen offset:0
v_or_b32 v178, v159, v177
buffer_load_dwordx4 v[54:57], v178, s[12:15], s68 offen offset:0
v_or_b32 v178, v160, v177
buffer_load_dwordx4 v[58:61], v178, s[12:15], s68 offen offset:0
v_or_b32 v178, v161, v177
buffer_load_dwordx4 v[62:65], v178, s[12:15], s68 offen offset:0
s_branch label_step_chunk_end_9
label_step_zero_8:
s_waitcnt vmcnt(24)
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
label_step_chunk_end_9:
s_add_u32 s68, s65, 256
s_add_u32 s69, s64, -256
v_sub_u32 v176, s69, v175
s_bitcmp1_b32 s67, 2
s_cbranch_scc0 label_step_load_10
v_add_u32 v178, -1, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 4, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
v_or_b32 v177, v154, v178
buffer_load_dword v66, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v66, v66, v179
v_or_b32 v177, v155, v178
buffer_load_dword v70, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v70, v70, v179
v_or_b32 v177, v156, v178
buffer_load_dword v74, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v74, v74, v179
v_or_b32 v177, v157, v178
buffer_load_dword v78, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v78, v78, v179
v_or_b32 v177, v158, v178
buffer_load_dword v82, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v82, v82, v179
v_or_b32 v177, v159, v178
buffer_load_dword v86, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v86, v86, v179
v_or_b32 v177, v160, v178
buffer_load_dword v90, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v90, v90, v179
v_or_b32 v177, v161, v178
buffer_load_dword v94, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v94, v94, v179
v_add_u32 v178, -5, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 8, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
s_add_u32 s70, s68, 4
v_or_b32 v177, v154, v178
buffer_load_dword v67, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v67, v67, v179
v_or_b32 v177, v155, v178
buffer_load_dword v71, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v71, v71, v179
v_or_b32 v177, v156, v178
buffer_load_dword v75, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v75, v75, v179
v_or_b32 v177, v157, v178
buffer_load_dword v79, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v79, v79, v179
v_or_b32 v177, v158, v178
buffer_load_dword v83, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v83, v83, v179
v_or_b32 v177, v159, v178
buffer_load_dword v87, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v87, v87, v179
v_or_b32 v177, v160, v178
buffer_load_dword v91, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v91, v91, v179
v_or_b32 v177, v161, v178
buffer_load_dword v95, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v95, v95, v179
v_add_u32 v178, -9, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 12, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
s_add_u32 s70, s68, 8
v_or_b32 v177, v154, v178
buffer_load_dword v68, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v68, v68, v179
v_or_b32 v177, v155, v178
buffer_load_dword v72, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v72, v72, v179
v_or_b32 v177, v156, v178
buffer_load_dword v76, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v76, v76, v179
v_or_b32 v177, v157, v178
buffer_load_dword v80, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v80, v80, v179
v_or_b32 v177, v158, v178
buffer_load_dword v84, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v84, v84, v179
v_or_b32 v177, v159, v178
buffer_load_dword v88, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v88, v88, v179
v_or_b32 v177, v160, v178
buffer_load_dword v92, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v92, v92, v179
v_or_b32 v177, v161, v178
buffer_load_dword v96, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v96, v96, v179
v_add_u32 v178, -13, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 16, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
s_add_u32 s70, s68, 12
v_or_b32 v177, v154, v178
buffer_load_dword v69, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v69, v69, v179
v_or_b32 v177, v155, v178
buffer_load_dword v73, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v73, v73, v179
v_or_b32 v177, v156, v178
buffer_load_dword v77, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v77, v77, v179
v_or_b32 v177, v157, v178
buffer_load_dword v81, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v81, v81, v179
v_or_b32 v177, v158, v178
buffer_load_dword v85, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v85, v85, v179
v_or_b32 v177, v159, v178
buffer_load_dword v89, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v89, v89, v179
v_or_b32 v177, v160, v178
buffer_load_dword v93, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v93, v93, v179
v_or_b32 v177, v161, v178
buffer_load_dword v97, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v97, v97, v179
s_branch label_step_chunk_end_12
label_step_load_10:
s_cmp_ge_i32 s69, 16
s_cbranch_scc0 label_step_zero_11
v_add_u32 v177, -16, v176
v_ashrrev_i32 v177, 31, v177
v_or_b32 v178, v154, v177
buffer_load_dwordx4 v[66:69], v178, s[8:11], s68 offen offset:0
v_or_b32 v178, v155, v177
buffer_load_dwordx4 v[70:73], v178, s[8:11], s68 offen offset:0
v_or_b32 v178, v156, v177
buffer_load_dwordx4 v[74:77], v178, s[8:11], s68 offen offset:0
v_or_b32 v178, v157, v177
buffer_load_dwordx4 v[78:81], v178, s[8:11], s68 offen offset:0
v_or_b32 v178, v158, v177
buffer_load_dwordx4 v[82:85], v178, s[12:15], s68 offen offset:0
v_or_b32 v178, v159, v177
buffer_load_dwordx4 v[86:89], v178, s[12:15], s68 offen offset:0
v_or_b32 v178, v160, v177
buffer_load_dwordx4 v[90:93], v178, s[12:15], s68 offen offset:0
v_or_b32 v178, v161, v177
buffer_load_dwordx4 v[94:97], v178, s[12:15], s68 offen offset:0
s_branch label_step_chunk_end_12
label_step_zero_11:
s_waitcnt vmcnt(16)
v_mov_b32 v66, 0
v_mov_b32 v67, 0
v_mov_b32 v68, 0
v_mov_b32 v69, 0
v_mov_b32 v70, 0
v_mov_b32 v71, 0
v_mov_b32 v72, 0
v_mov_b32 v73, 0
v_mov_b32 v74, 0
v_mov_b32 v75, 0
v_mov_b32 v76, 0
v_mov_b32 v77, 0
v_mov_b32 v78, 0
v_mov_b32 v79, 0
v_mov_b32 v80, 0
v_mov_b32 v81, 0
v_mov_b32 v82, 0
v_mov_b32 v83, 0
v_mov_b32 v84, 0
v_mov_b32 v85, 0
v_mov_b32 v86, 0
v_mov_b32 v87, 0
v_mov_b32 v88, 0
v_mov_b32 v89, 0
v_mov_b32 v90, 0
v_mov_b32 v91, 0
v_mov_b32 v92, 0
v_mov_b32 v93, 0
v_mov_b32 v94, 0
v_mov_b32 v95, 0
v_mov_b32 v96, 0
v_mov_b32 v97, 0
label_step_chunk_end_12:
s_add_u32 s68, s65, 384
s_add_u32 s69, s64, -384
v_sub_u32 v176, s69, v175
s_bitcmp1_b32 s67, 3
s_cbranch_scc0 label_step_load_13
v_add_u32 v178, -1, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 4, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
v_or_b32 v177, v154, v178
buffer_load_dword v98, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v98, v98, v179
v_or_b32 v177, v155, v178
buffer_load_dword v102, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v102, v102, v179
v_or_b32 v177, v156, v178
buffer_load_dword v106, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v106, v106, v179
v_or_b32 v177, v157, v178
buffer_load_dword v110, v177, s[8:11], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v110, v110, v179
v_or_b32 v177, v158, v178
buffer_load_dword v114, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v114, v114, v179
v_or_b32 v177, v159, v178
buffer_load_dword v118, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v118, v118, v179
v_or_b32 v177, v160, v178
buffer_load_dword v122, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v122, v122, v179
v_or_b32 v177, v161, v178
buffer_load_dword v126, v177, s[12:15], s68 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v126, v126, v179
v_add_u32 v178, -5, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 8, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
s_add_u32 s70, s68, 4
v_or_b32 v177, v154, v178
buffer_load_dword v99, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v99, v99, v179
v_or_b32 v177, v155, v178
buffer_load_dword v103, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v103, v103, v179
v_or_b32 v177, v156, v178
buffer_load_dword v107, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v107, v107, v179
v_or_b32 v177, v157, v178
buffer_load_dword v111, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v111, v111, v179
v_or_b32 v177, v158, v178
buffer_load_dword v115, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v115, v115, v179
v_or_b32 v177, v159, v178
buffer_load_dword v119, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v119, v119, v179
v_or_b32 v177, v160, v178
buffer_load_dword v123, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v123, v123, v179
v_or_b32 v177, v161, v178
buffer_load_dword v127, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v127, v127, v179
v_add_u32 v178, -9, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 12, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
s_add_u32 s70, s68, 8
v_or_b32 v177, v154, v178
buffer_load_dword v100, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v100, v100, v179
v_or_b32 v177, v155, v178
buffer_load_dword v104, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v104, v104, v179
v_or_b32 v177, v156, v178
buffer_load_dword v108, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v108, v108, v179
v_or_b32 v177, v157, v178
buffer_load_dword v112, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v112, v112, v179
v_or_b32 v177, v158, v178
buffer_load_dword v116, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v116, v116, v179
v_or_b32 v177, v159, v178
buffer_load_dword v120, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v120, v120, v179
v_or_b32 v177, v160, v178
buffer_load_dword v124, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v124, v124, v179
v_or_b32 v177, v161, v178
buffer_load_dword v128, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v128, v128, v179
v_add_u32 v178, -13, v176
v_ashrrev_i32 v178, 31, v178
v_sub_u32 v179, 16, v176
v_max_i32 v179, 0, v179
v_min_i32 v179, 3, v179
v_lshlrev_b32 v179, 3, v179
v_lshrrev_b32 v179, v179, -1
s_add_u32 s70, s68, 12
v_or_b32 v177, v154, v178
buffer_load_dword v101, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v101, v101, v179
v_or_b32 v177, v155, v178
buffer_load_dword v105, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v105, v105, v179
v_or_b32 v177, v156, v178
buffer_load_dword v109, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v109, v109, v179
v_or_b32 v177, v157, v178
buffer_load_dword v113, v177, s[8:11], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v113, v113, v179
v_or_b32 v177, v158, v178
buffer_load_dword v117, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v117, v117, v179
v_or_b32 v177, v159, v178
buffer_load_dword v121, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v121, v121, v179
v_or_b32 v177, v160, v178
buffer_load_dword v125, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v125, v125, v179
v_or_b32 v177, v161, v178
buffer_load_dword v129, v177, s[12:15], s70 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v129, v129, v179
s_branch label_step_chunk_end_15
label_step_load_13:
s_cmp_ge_i32 s69, 16
s_cbranch_scc0 label_step_zero_14
v_add_u32 v177, -16, v176
v_ashrrev_i32 v177, 31, v177
v_or_b32 v178, v154, v177
buffer_load_dwordx4 v[98:101], v178, s[8:11], s68 offen offset:0
v_or_b32 v178, v155, v177
buffer_load_dwordx4 v[102:105], v178, s[8:11], s68 offen offset:0
v_or_b32 v178, v156, v177
buffer_load_dwordx4 v[106:109], v178, s[8:11], s68 offen offset:0
v_or_b32 v178, v157, v177
buffer_load_dwordx4 v[110:113], v178, s[8:11], s68 offen offset:0
v_or_b32 v178, v158, v177
buffer_load_dwordx4 v[114:117], v178, s[12:15], s68 offen offset:0
v_or_b32 v178, v159, v177
buffer_load_dwordx4 v[118:121], v178, s[12:15], s68 offen offset:0
v_or_b32 v178, v160, v177
buffer_load_dwordx4 v[122:125], v178, s[12:15], s68 offen offset:0
v_or_b32 v178, v161, v177
buffer_load_dwordx4 v[126:129], v178, s[12:15], s68 offen offset:0
s_branch label_step_chunk_end_15
label_step_zero_14:
s_waitcnt vmcnt(8)
v_mov_b32 v98, 0
v_mov_b32 v99, 0
v_mov_b32 v100, 0
v_mov_b32 v101, 0
v_mov_b32 v102, 0
v_mov_b32 v103, 0
v_mov_b32 v104, 0
v_mov_b32 v105, 0
v_mov_b32 v106, 0
v_mov_b32 v107, 0
v_mov_b32 v108, 0
v_mov_b32 v109, 0
v_mov_b32 v110, 0
v_mov_b32 v111, 0
v_mov_b32 v112, 0
v_mov_b32 v113, 0
v_mov_b32 v114, 0
v_mov_b32 v115, 0
v_mov_b32 v116, 0
v_mov_b32 v117, 0
v_mov_b32 v118, 0
v_mov_b32 v119, 0
v_mov_b32 v120, 0
v_mov_b32 v121, 0
v_mov_b32 v122, 0
v_mov_b32 v123, 0
v_mov_b32 v124, 0
v_mov_b32 v125, 0
v_mov_b32 v126, 0
v_mov_b32 v127, 0
v_mov_b32 v128, 0
v_mov_b32 v129, 0
label_step_chunk_end_15:
s_waitcnt vmcnt(7)
ds_bpermute_b32 v154, v172, v130
ds_bpermute_b32 v130, v173, v130
s_waitcnt vmcnt(6)
ds_bpermute_b32 v155, v172, v131
ds_bpermute_b32 v131, v173, v131
s_waitcnt vmcnt(5)
ds_bpermute_b32 v156, v172, v132
ds_bpermute_b32 v132, v173, v132
s_waitcnt vmcnt(4)
ds_bpermute_b32 v157, v172, v133
ds_bpermute_b32 v133, v173, v133
s_waitcnt vmcnt(3)
ds_bpermute_b32 v158, v172, v134
ds_bpermute_b32 v134, v173, v134
s_waitcnt vmcnt(2)
ds_bpermute_b32 v159, v172, v135
ds_bpermute_b32 v135, v173, v135
s_waitcnt vmcnt(1)
ds_bpermute_b32 v160, v172, v136
ds_bpermute_b32 v136, v173, v136
s_waitcnt vmcnt(0)
ds_bpermute_b32 v161, v172, v137
ds_bpermute_b32 v137, v173, v137
s_waitcnt lgkmcnt(14)
v_perm_b32 v154, v130, v154, v170
s_waitcnt lgkmcnt(12)
v_perm_b32 v155, v131, v155, v170
s_waitcnt lgkmcnt(10)
v_perm_b32 v156, v132, v156, v170
s_waitcnt lgkmcnt(8)
v_perm_b32 v157, v133, v157, v170
s_waitcnt lgkmcnt(6)
v_perm_b32 v158, v134, v158, v171
s_waitcnt lgkmcnt(4)
v_perm_b32 v159, v135, v159, v171
s_waitcnt lgkmcnt(2)
v_perm_b32 v160, v136, v160, v171
s_waitcnt lgkmcnt(0)
v_perm_b32 v161, v137, v161, v171
v_lshlrev_b32 v162, 23, v154
v_and_b32 v162, 2139095040, v162
v_lshlrev_b32 v163, 23, v155
v_and_b32 v163, 2139095040, v163
v_lshlrev_b32 v164, 23, v156
v_and_b32 v164, 2139095040, v164
v_lshlrev_b32 v165, 23, v157
v_and_b32 v165, 2139095040, v165
v_lshlrev_b32 v166, 23, v158
v_and_b32 v166, 2139095040, v166
v_lshlrev_b32 v167, 23, v159
v_and_b32 v167, 2139095040, v167
v_lshlrev_b32 v168, 23, v160
v_and_b32 v168, 2139095040, v168
v_lshlrev_b32 v169, 23, v161
v_and_b32 v169, 2139095040, v169
v_cvt_scalef32_pk_bf16_fp8 v174, v2, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v6, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v10, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v14, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v18, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v22, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v26, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v30, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v2, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v6, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v10, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v14, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v18, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v22, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v26, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v30, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v3, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v7, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v11, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v15, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v19, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v23, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v27, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v31, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v3, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v7, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v11, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v15, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v19, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v23, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v27, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v31, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v4, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v8, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v12, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v16, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v20, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v24, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v28, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v32, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v4, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v8, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v12, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v16, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v20, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v24, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v28, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v32, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v5, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v9, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v13, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v17, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v21, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v25, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v29, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v33, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v5, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v9, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v13, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v17, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v21, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v25, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v29, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v33, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_lshlrev_b32 v162, 15, v154
v_and_b32 v162, 2139095040, v162
v_lshlrev_b32 v163, 15, v155
v_and_b32 v163, 2139095040, v163
v_lshlrev_b32 v164, 15, v156
v_and_b32 v164, 2139095040, v164
v_lshlrev_b32 v165, 15, v157
v_and_b32 v165, 2139095040, v165
v_lshlrev_b32 v166, 15, v158
v_and_b32 v166, 2139095040, v166
v_lshlrev_b32 v167, 15, v159
v_and_b32 v167, 2139095040, v167
v_lshlrev_b32 v168, 15, v160
v_and_b32 v168, 2139095040, v168
v_lshlrev_b32 v169, 15, v161
v_and_b32 v169, 2139095040, v169
v_cvt_scalef32_pk_bf16_fp8 v174, v34, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v38, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v42, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v46, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v50, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v54, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v58, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v62, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v34, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v38, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v42, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v46, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v50, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v54, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v58, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v62, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v35, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v39, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v43, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v47, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v51, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v55, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v59, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v63, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v35, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v39, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v43, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v47, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v51, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v55, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v59, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v63, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v36, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v40, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v44, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v48, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v52, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v56, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v60, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v64, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v36, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v40, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v44, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v48, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v52, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v56, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v60, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v64, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v37, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v41, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v45, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v49, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v53, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v57, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v61, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v65, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v37, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v41, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v45, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v49, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v53, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v57, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v61, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v65, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_lshlrev_b32 v162, 7, v154
v_and_b32 v162, 2139095040, v162
v_lshlrev_b32 v163, 7, v155
v_and_b32 v163, 2139095040, v163
v_lshlrev_b32 v164, 7, v156
v_and_b32 v164, 2139095040, v164
v_lshlrev_b32 v165, 7, v157
v_and_b32 v165, 2139095040, v165
v_lshlrev_b32 v166, 7, v158
v_and_b32 v166, 2139095040, v166
v_lshlrev_b32 v167, 7, v159
v_and_b32 v167, 2139095040, v167
v_lshlrev_b32 v168, 7, v160
v_and_b32 v168, 2139095040, v168
v_lshlrev_b32 v169, 7, v161
v_and_b32 v169, 2139095040, v169
v_cvt_scalef32_pk_bf16_fp8 v174, v66, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v70, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v74, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v78, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v82, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v86, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v90, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v94, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v66, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v70, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v74, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v78, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v82, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v86, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v90, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v94, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v67, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v71, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v75, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v79, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v83, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v87, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v91, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v95, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v67, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v71, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v75, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v79, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v83, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v87, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v91, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v95, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v68, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v72, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v76, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v80, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v84, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v88, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v92, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v96, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v68, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v72, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v76, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v80, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v84, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v88, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v92, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v96, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v69, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v73, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v77, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v81, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v85, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v89, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v93, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v97, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v69, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v73, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v77, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v81, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v85, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v89, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v93, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v97, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_lshrrev_b32 v162, 1, v154
v_and_b32 v162, 2139095040, v162
v_lshrrev_b32 v163, 1, v155
v_and_b32 v163, 2139095040, v163
v_lshrrev_b32 v164, 1, v156
v_and_b32 v164, 2139095040, v164
v_lshrrev_b32 v165, 1, v157
v_and_b32 v165, 2139095040, v165
v_lshrrev_b32 v166, 1, v158
v_and_b32 v166, 2139095040, v166
v_lshrrev_b32 v167, 1, v159
v_and_b32 v167, 2139095040, v167
v_lshrrev_b32 v168, 1, v160
v_and_b32 v168, 2139095040, v168
v_lshrrev_b32 v169, 1, v161
v_and_b32 v169, 2139095040, v169
v_cvt_scalef32_pk_bf16_fp8 v174, v98, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v102, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v106, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v110, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v114, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v118, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v122, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v126, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v98, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v102, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v106, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v110, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v114, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v118, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v122, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v126, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v99, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v103, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v107, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v111, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v115, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v119, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v123, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v127, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v99, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v103, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v107, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v111, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v115, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v119, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v123, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v127, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v100, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v104, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v108, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v112, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v116, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v120, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v124, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v128, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v100, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v104, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v108, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v112, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v116, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v120, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v124, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v128, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v101, v162
v_cvt_scalef32_pk_bf16_fp8 v175, v105, v163
v_cvt_scalef32_pk_bf16_fp8 v176, v109, v164
v_cvt_scalef32_pk_bf16_fp8 v177, v113, v165
v_cvt_scalef32_pk_bf16_fp8 v178, v117, v166
v_cvt_scalef32_pk_bf16_fp8 v179, v121, v167
v_cvt_scalef32_pk_bf16_fp8 v180, v125, v168
v_cvt_scalef32_pk_bf16_fp8 v181, v129, v169
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
v_cvt_scalef32_pk_bf16_fp8 v174, v101, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v175, v105, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v176, v109, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v177, v113, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v178, v117, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v179, v121, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v125, v168 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v129, v169 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v174, v178, v138
v_dot2_f32_bf16 v139, v174, v179, v139
v_dot2_f32_bf16 v140, v174, v180, v140
v_dot2_f32_bf16 v141, v174, v181, v141
v_dot2_f32_bf16 v142, v175, v178, v142
v_dot2_f32_bf16 v143, v175, v179, v143
v_dot2_f32_bf16 v144, v175, v180, v144
v_dot2_f32_bf16 v145, v175, v181, v145
v_dot2_f32_bf16 v146, v176, v178, v146
v_dot2_f32_bf16 v147, v176, v179, v147
v_dot2_f32_bf16 v148, v176, v180, v148
v_dot2_f32_bf16 v149, v176, v181, v149
v_dot2_f32_bf16 v150, v177, v178, v150
v_dot2_f32_bf16 v151, v177, v179, v151
v_dot2_f32_bf16 v152, v177, v180, v152
v_dot2_f32_bf16 v153, v177, v181, v153
label_step_end_3:
s_cmp_eq_u32 s38, 1
s_cbranch_scc0 label_orientation_b_16
s_waitcnt vmcnt(27)
v_add_f32 v2, v138, v138 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v2, v2, v2 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v2, v2, v2 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v2, v2, v2 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v6, v139, v139 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v6, v6, v6 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v6, v6, v6 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v6, v6, v6 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v10, v140, v140 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v10, v10, v10 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v10, v10, v10 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v10, v10, v10 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v14, v141, v141 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v14, v14, v14 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v14, v14, v14 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v14, v14, v14 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v3, v142, v142 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v7, v143, v143 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v7, v7, v7 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v7, v7, v7 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v7, v7, v7 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v11, v144, v144 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v11, v11, v11 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v11, v11, v11 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v11, v11, v11 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v15, v145, v145 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v15, v15, v15 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v15, v15, v15 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v15, v15, v15 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v4, v146, v146 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v8, v147, v147 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v8, v8, v8 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v8, v8, v8 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v8, v8, v8 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v12, v148, v148 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v12, v12, v12 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v12, v12, v12 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v12, v12, v12 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v16, v149, v149 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v16, v16, v16 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v16, v16, v16 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v16, v16, v16 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v5, v150, v150 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v5, v5, v5 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v5, v5, v5 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v5, v5, v5 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v9, v151, v151 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v9, v9, v9 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v9, v9, v9 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v9, v9, v9 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v13, v152, v152 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v13, v13, v13 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v13, v13, v13 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v13, v13, v13 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v17, v153, v153 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v17, v17, v17 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v17, v17, v17 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v17, v17, v17 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
s_add_u32 s67, s3, 1
s_lshl_b32 s67, s67, 2
s_add_u32 s68, s2, 1
s_lshl_b32 s68, s68, 5
s_cmp_le_u32 s67, s36
s_cselect_b32 s69, 1, 0
s_cmp_le_u32 s68, s37
s_cselect_b32 s70, 1, 0
s_and_b32 s66, s69, s70
v_cmp_eq_i32 s[64:65], 0, v0
s_cmp_le_u32 s5, s6
s_cbranch_scc0 label_workspace_18
s_cmp_eq_u32 s66, 1
s_cbranch_scc1 label_vector_20
s_mul_i32 s67, s39, s32
v_mul_lo_u32 v19, s33, v1
v_lshrrev_b32 v2, 16, v2
v_add_u32 v18, s67, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[48:49], s[56:57]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v2, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v6, 16, v6
s_mov_b32 s69, s67
s_mov_b32 s68, s33
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[48:49], s[58:59]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v6, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v10, 16, v10
s_mov_b32 s69, s67
s_lshl_b32 s68, s33, 1
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[48:49], s[60:61]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v10, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v14, 16, v14
s_mov_b32 s69, s67
s_mul_i32 s68, s33, 3
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[48:49], s[62:63]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v14, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v3, 16, v3
s_mov_b32 s69, s67
s_mov_b32 s68, s32
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[50:51], s[56:57]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v3, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v7, 16, v7
s_mov_b32 s69, s67
s_mov_b32 s68, s32
s_add_u32 s69, s69, s68
s_mov_b32 s68, s33
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[50:51], s[58:59]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v7, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v11, 16, v11
s_mov_b32 s69, s67
s_mov_b32 s68, s32
s_add_u32 s69, s69, s68
s_lshl_b32 s68, s33, 1
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[50:51], s[60:61]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v11, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v15, 16, v15
s_mov_b32 s69, s67
s_mov_b32 s68, s32
s_add_u32 s69, s69, s68
s_mul_i32 s68, s33, 3
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[50:51], s[62:63]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v15, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v4, 16, v4
s_mov_b32 s69, s67
s_lshl_b32 s68, s32, 1
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[52:53], s[56:57]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v4, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v8, 16, v8
s_mov_b32 s69, s67
s_lshl_b32 s68, s32, 1
s_add_u32 s69, s69, s68
s_mov_b32 s68, s33
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[52:53], s[58:59]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v8, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v12, 16, v12
s_mov_b32 s69, s67
s_lshl_b32 s68, s32, 1
s_add_u32 s69, s69, s68
s_lshl_b32 s68, s33, 1
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[52:53], s[60:61]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v12, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v16, 16, v16
s_mov_b32 s69, s67
s_lshl_b32 s68, s32, 1
s_add_u32 s69, s69, s68
s_mul_i32 s68, s33, 3
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[52:53], s[62:63]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v16, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v5, 16, v5
s_mov_b32 s69, s67
s_mul_i32 s68, s32, 3
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[54:55], s[56:57]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v5, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v9, 16, v9
s_mov_b32 s69, s67
s_mul_i32 s68, s32, 3
s_add_u32 s69, s69, s68
s_mov_b32 s68, s33
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[54:55], s[58:59]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v9, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v13, 16, v13
s_mov_b32 s69, s67
s_mul_i32 s68, s32, 3
s_add_u32 s69, s69, s68
s_lshl_b32 s68, s33, 1
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[54:55], s[60:61]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v13, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v17, 16, v17
s_mov_b32 s69, s67
s_mul_i32 s68, s32, 3
s_add_u32 s69, s69, s68
s_mul_i32 s68, s33, 3
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[54:55], s[62:63]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v17, v18, s[24:27], 0 offen offset:0
s_branch label_tile_stored_21
label_vector_20:
s_mul_i32 s67, s39, s32
v_mul_lo_u32 v19, s33, v1
v_add_u32 v18, s67, v19
v_lshlrev_b32 v18, 1, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
v_lshrrev_b32 v2, 16, v2
v_lshrrev_b32 v3, 16, v3
v_lshrrev_b32 v4, 16, v4
v_lshrrev_b32 v5, 16, v5
v_pack_b32_f16 v2, v2, v3
v_pack_b32_f16 v3, v4, v5
buffer_store_dwordx2 v[2:3], v18, s[24:27], 0 offen offset:0
s_mov_b32 s69, s67
s_mov_b32 s68, s33
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
v_lshrrev_b32 v6, 16, v6
v_lshrrev_b32 v7, 16, v7
v_lshrrev_b32 v8, 16, v8
v_lshrrev_b32 v9, 16, v9
v_pack_b32_f16 v6, v6, v7
v_pack_b32_f16 v7, v8, v9
buffer_store_dwordx2 v[6:7], v18, s[24:27], 0 offen offset:0
s_mov_b32 s69, s67
s_lshl_b32 s68, s33, 1
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
v_lshrrev_b32 v10, 16, v10
v_lshrrev_b32 v11, 16, v11
v_lshrrev_b32 v12, 16, v12
v_lshrrev_b32 v13, 16, v13
v_pack_b32_f16 v10, v10, v11
v_pack_b32_f16 v11, v12, v13
buffer_store_dwordx2 v[10:11], v18, s[24:27], 0 offen offset:0
s_mov_b32 s69, s67
s_mul_i32 s68, s33, 3
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
v_lshrrev_b32 v14, 16, v14
v_lshrrev_b32 v15, 16, v15
v_lshrrev_b32 v16, 16, v16
v_lshrrev_b32 v17, 16, v17
v_pack_b32_f16 v14, v14, v15
v_pack_b32_f16 v15, v16, v17
buffer_store_dwordx2 v[14:15], v18, s[24:27], 0 offen offset:0
label_tile_stored_21:
s_branch label_stored_19
label_workspace_18:
s_mul_i32 s67, s4, s7
s_cmp_eq_u32 s66, 1
s_cbranch_scc1 label_vector_22
s_mul_i32 s68, s39, s34
s_add_u32 s68, s68, s67
v_mul_lo_u32 v19, s35, v1
v_add_u32 v18, s68, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[48:49], s[56:57]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v2, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mov_b32 s69, s35
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[48:49], s[58:59]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v6, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_lshl_b32 s69, s35, 1
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[48:49], s[60:61]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v10, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mul_i32 s69, s35, 3
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[48:49], s[62:63]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v14, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[50:51], s[56:57]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v3, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
s_mov_b32 s69, s35
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[50:51], s[58:59]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v7, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s35, 1
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[50:51], s[60:61]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v11, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
s_mul_i32 s69, s35, 3
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[50:51], s[62:63]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v15, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[52:53], s[56:57]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v4, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
s_mov_b32 s69, s35
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[52:53], s[58:59]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v8, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s35, 1
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[52:53], s[60:61]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v12, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
s_mul_i32 s69, s35, 3
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[52:53], s[62:63]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v16, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[54:55], s[56:57]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v5, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
s_mov_b32 s69, s35
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[54:55], s[58:59]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v9, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s35, 1
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[54:55], s[60:61]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v13, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
s_mul_i32 s69, s35, 3
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[54:55], s[62:63]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v17, v18, s[28:31], 0 offen offset:0
s_branch label_tile_stored_23
label_vector_22:
s_mul_i32 s68, s39, s34
s_add_u32 s68, s68, s67
v_mul_lo_u32 v19, s35, v1
v_add_u32 v18, s68, v19
v_lshlrev_b32 v18, 2, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
buffer_store_dwordx4 v[2:5], v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mov_b32 s69, s35
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
buffer_store_dwordx4 v[6:9], v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_lshl_b32 s69, s35, 1
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
buffer_store_dwordx4 v[10:13], v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mul_i32 s69, s35, 3
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
buffer_store_dwordx4 v[14:17], v18, s[28:31], 0 offen offset:0
label_tile_stored_23:
label_stored_19:
s_branch label_epilogue_end_17
label_orientation_b_16:
s_waitcnt vmcnt(27)
v_add_f32 v2, v138, v138 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v2, v2, v2 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v2, v2, v2 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v2, v2, v2 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v3, v139, v139 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v4, v140, v140 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v5, v141, v141 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v5, v5, v5 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v5, v5, v5 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v5, v5, v5 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v6, v142, v142 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v6, v6, v6 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v6, v6, v6 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v6, v6, v6 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v7, v143, v143 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v7, v7, v7 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v7, v7, v7 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v7, v7, v7 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v8, v144, v144 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v8, v8, v8 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v8, v8, v8 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v8, v8, v8 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v9, v145, v145 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v9, v9, v9 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v9, v9, v9 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v9, v9, v9 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v10, v146, v146 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v10, v10, v10 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v10, v10, v10 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v10, v10, v10 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v11, v147, v147 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v11, v11, v11 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v11, v11, v11 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v11, v11, v11 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v12, v148, v148 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v12, v12, v12 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v12, v12, v12 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v12, v12, v12 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v13, v149, v149 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v13, v13, v13 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v13, v13, v13 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v13, v13, v13 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v14, v150, v150 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v14, v14, v14 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v14, v14, v14 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v14, v14, v14 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v15, v151, v151 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v15, v15, v15 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v15, v15, v15 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v15, v15, v15 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v16, v152, v152 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v16, v16, v16 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v16, v16, v16 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v16, v16, v16 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_add_f32 v17, v153, v153 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v17, v17, v17 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v17, v17, v17 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v17, v17, v17 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
s_add_u32 s67, s3, 1
s_lshl_b32 s67, s67, 2
s_add_u32 s68, s2, 1
s_lshl_b32 s68, s68, 5
s_cmp_le_u32 s67, s36
s_cselect_b32 s69, 1, 0
s_cmp_le_u32 s68, s37
s_cselect_b32 s70, 1, 0
s_and_b32 s66, s69, s70
v_cmp_eq_i32 s[64:65], 0, v0
s_cmp_le_u32 s5, s6
s_cbranch_scc0 label_workspace_24
s_cmp_eq_u32 s66, 1
s_cbranch_scc1 label_vector_26
s_mul_i32 s67, s39, s32
v_mul_lo_u32 v19, s33, v1
v_lshrrev_b32 v2, 16, v2
v_add_u32 v18, s67, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[48:49], s[56:57]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v2, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v3, 16, v3
s_mov_b32 s69, s67
s_mov_b32 s68, s33
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[48:49], s[58:59]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v3, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v4, 16, v4
s_mov_b32 s69, s67
s_lshl_b32 s68, s33, 1
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[48:49], s[60:61]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v4, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v5, 16, v5
s_mov_b32 s69, s67
s_mul_i32 s68, s33, 3
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[48:49], s[62:63]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v5, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v6, 16, v6
s_mov_b32 s69, s67
s_mov_b32 s68, s32
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[50:51], s[56:57]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v6, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v7, 16, v7
s_mov_b32 s69, s67
s_mov_b32 s68, s32
s_add_u32 s69, s69, s68
s_mov_b32 s68, s33
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[50:51], s[58:59]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v7, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v8, 16, v8
s_mov_b32 s69, s67
s_mov_b32 s68, s32
s_add_u32 s69, s69, s68
s_lshl_b32 s68, s33, 1
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[50:51], s[60:61]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v8, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v9, 16, v9
s_mov_b32 s69, s67
s_mov_b32 s68, s32
s_add_u32 s69, s69, s68
s_mul_i32 s68, s33, 3
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[50:51], s[62:63]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v9, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v10, 16, v10
s_mov_b32 s69, s67
s_lshl_b32 s68, s32, 1
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[52:53], s[56:57]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v10, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v11, 16, v11
s_mov_b32 s69, s67
s_lshl_b32 s68, s32, 1
s_add_u32 s69, s69, s68
s_mov_b32 s68, s33
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[52:53], s[58:59]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v11, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v12, 16, v12
s_mov_b32 s69, s67
s_lshl_b32 s68, s32, 1
s_add_u32 s69, s69, s68
s_lshl_b32 s68, s33, 1
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[52:53], s[60:61]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v12, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v13, 16, v13
s_mov_b32 s69, s67
s_lshl_b32 s68, s32, 1
s_add_u32 s69, s69, s68
s_mul_i32 s68, s33, 3
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[52:53], s[62:63]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v13, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v14, 16, v14
s_mov_b32 s69, s67
s_mul_i32 s68, s32, 3
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[54:55], s[56:57]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v14, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v15, 16, v15
s_mov_b32 s69, s67
s_mul_i32 s68, s32, 3
s_add_u32 s69, s69, s68
s_mov_b32 s68, s33
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[54:55], s[58:59]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v15, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v16, 16, v16
s_mov_b32 s69, s67
s_mul_i32 s68, s32, 3
s_add_u32 s69, s69, s68
s_lshl_b32 s68, s33, 1
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[54:55], s[60:61]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v16, v18, s[24:27], 0 offen offset:0
v_lshrrev_b32 v17, 16, v17
s_mov_b32 s69, s67
s_mul_i32 s68, s32, 3
s_add_u32 s69, s69, s68
s_mul_i32 s68, s33, 3
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
s_and_b64 s[70:71], s[54:55], s[62:63]
s_and_b64 s[70:71], s[70:71], s[64:65]
v_cndmask_b32 v18, -1, v18, s[70:71]
buffer_store_short v17, v18, s[24:27], 0 offen offset:0
s_branch label_tile_stored_27
label_vector_26:
s_mul_i32 s67, s39, s32
v_mul_lo_u32 v19, s33, v1
v_add_u32 v18, s67, v19
v_lshlrev_b32 v18, 1, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
v_lshrrev_b32 v2, 16, v2
v_lshrrev_b32 v3, 16, v3
v_lshrrev_b32 v4, 16, v4
v_lshrrev_b32 v5, 16, v5
v_pack_b32_f16 v2, v2, v3
v_pack_b32_f16 v3, v4, v5
buffer_store_dwordx2 v[2:3], v18, s[24:27], 0 offen offset:0
s_mov_b32 s69, s67
s_mov_b32 s68, s32
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
v_lshrrev_b32 v6, 16, v6
v_lshrrev_b32 v7, 16, v7
v_lshrrev_b32 v8, 16, v8
v_lshrrev_b32 v9, 16, v9
v_pack_b32_f16 v6, v6, v7
v_pack_b32_f16 v7, v8, v9
buffer_store_dwordx2 v[6:7], v18, s[24:27], 0 offen offset:0
s_mov_b32 s69, s67
s_lshl_b32 s68, s32, 1
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
v_lshrrev_b32 v10, 16, v10
v_lshrrev_b32 v11, 16, v11
v_lshrrev_b32 v12, 16, v12
v_lshrrev_b32 v13, 16, v13
v_pack_b32_f16 v10, v10, v11
v_pack_b32_f16 v11, v12, v13
buffer_store_dwordx2 v[10:11], v18, s[24:27], 0 offen offset:0
s_mov_b32 s69, s67
s_mul_i32 s68, s32, 3
s_add_u32 s69, s69, s68
v_add_u32 v18, s69, v19
v_lshlrev_b32 v18, 1, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
v_lshrrev_b32 v14, 16, v14
v_lshrrev_b32 v15, 16, v15
v_lshrrev_b32 v16, 16, v16
v_lshrrev_b32 v17, 16, v17
v_pack_b32_f16 v14, v14, v15
v_pack_b32_f16 v15, v16, v17
buffer_store_dwordx2 v[14:15], v18, s[24:27], 0 offen offset:0
label_tile_stored_27:
s_branch label_stored_25
label_workspace_24:
s_mul_i32 s67, s4, s7
s_cmp_eq_u32 s66, 1
s_cbranch_scc1 label_vector_28
s_mul_i32 s68, s39, s34
s_add_u32 s68, s68, s67
v_mul_lo_u32 v19, s35, v1
v_add_u32 v18, s68, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[48:49], s[56:57]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v2, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mov_b32 s69, s35
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[48:49], s[58:59]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v3, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_lshl_b32 s69, s35, 1
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[48:49], s[60:61]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v4, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mul_i32 s69, s35, 3
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[48:49], s[62:63]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v5, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[50:51], s[56:57]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v6, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
s_mov_b32 s69, s35
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[50:51], s[58:59]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v7, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s35, 1
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[50:51], s[60:61]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v8, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
s_mul_i32 s69, s35, 3
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[50:51], s[62:63]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v9, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[52:53], s[56:57]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v10, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
s_mov_b32 s69, s35
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[52:53], s[58:59]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v11, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s35, 1
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[52:53], s[60:61]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v12, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
s_mul_i32 s69, s35, 3
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[52:53], s[62:63]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v13, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[54:55], s[56:57]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v14, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
s_mov_b32 s69, s35
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[54:55], s[58:59]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v15, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s35, 1
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[54:55], s[60:61]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v16, v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
s_mul_i32 s69, s35, 3
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
s_and_b64 s[72:73], s[54:55], s[62:63]
s_and_b64 s[72:73], s[72:73], s[64:65]
v_cndmask_b32 v18, -1, v18, s[72:73]
buffer_store_dword v17, v18, s[28:31], 0 offen offset:0
s_branch label_tile_stored_29
label_vector_28:
s_mul_i32 s68, s39, s34
s_add_u32 s68, s68, s67
v_mul_lo_u32 v19, s35, v1
v_add_u32 v18, s68, v19
v_lshlrev_b32 v18, 2, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
buffer_store_dwordx4 v[2:5], v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
buffer_store_dwordx4 v[6:9], v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
buffer_store_dwordx4 v[10:13], v18, s[28:31], 0 offen offset:0
s_mov_b32 s70, s68
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
v_add_u32 v18, s70, v19
v_lshlrev_b32 v18, 2, v18
v_cndmask_b32 v18, -1, v18, s[64:65]
buffer_store_dwordx4 v[14:17], v18, s[28:31], 0 offen offset:0
label_tile_stored_29:
label_stored_25:
label_epilogue_end_17:
s_endpgm
.Lgemm_BM4_TN4_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_end:
.size gemm_BM4_TN4_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N, .Lgemm_BM4_TN4_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_end - gemm_BM4_TN4_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N
.rodata
.p2align 6
.amdhsa_kernel gemm_BM4_TN4_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_kernarg_size 104
  .amdhsa_accum_offset 200
  .amdhsa_next_free_vgpr 200
  .amdhsa_next_free_sgpr 88
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
    macrotile: [32, 4, 1024]
    threads: [128, 1, 1]
    grid: [TilesX, TilesY, Batch]
  MatrixInstruction: [16, 16, 16, 1]
  EnableMatrixInstruction: True
  MIWaveTile: [2, 1]
  AssertSummationElementMultiple: 256
  AssertSizeEqual: { 2: 1 }
  AssertSizeGreaterThan: { 1: 0, 0: 0, 3: 0 }
  AssertSizeLessThan: { 0: 1048577, 1: 5 }
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
  - .name: gemm_BM4_TN4_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N
    .symbol: gemm_BM4_TN4_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N.kd
    .kernarg_segment_size: 104
    .kernarg_segment_align: 8
    .group_segment_fixed_size: 0
    .private_segment_fixed_size: 0
    .max_flat_workgroup_size: 128
    .wavefront_size: 64
    .sgpr_count: 94
    .vgpr_count: 200
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
