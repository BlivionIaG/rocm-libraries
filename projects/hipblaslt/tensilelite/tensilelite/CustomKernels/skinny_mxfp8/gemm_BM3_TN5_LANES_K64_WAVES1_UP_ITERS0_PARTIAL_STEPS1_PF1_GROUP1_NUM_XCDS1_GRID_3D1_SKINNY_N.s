.amdgcn_target "amdgcn-amd-amdhsa--gfx950"
.text
.protected gemm_BM3_TN5_LANES_K64_WAVES1_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N
.globl gemm_BM3_TN5_LANES_K64_WAVES1_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N
.p2align 8
.type gemm_BM3_TN5_LANES_K64_WAVES1_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N,@function
gemm_BM3_TN5_LANES_K64_WAVES1_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N:
s_load_dword s75, s[0:1], 96
s_load_dword s49, s[0:1], 88
s_load_dword s66, s[0:1], 92
s_load_dword s7, s[0:1], 72
s_load_dword s6, s[0:1], 68
s_load_dword s74, s[0:1], 64
s_load_dword s73, s[0:1], 60
s_load_dword s72, s[0:1], 56
s_load_dword s71, s[0:1], 52
s_load_dword s70, s[0:1], 48
s_load_dwordx2 s[28:29], s[0:1], 40
s_load_dwordx2 s[82:83], s[0:1], 32
s_load_dwordx2 s[80:81], s[0:1], 24
s_load_dwordx2 s[78:79], s[0:1], 16
s_load_dwordx2 s[76:77], s[0:1], 8
s_load_dwordx2 s[24:25], s[0:1], 0
s_waitcnt lgkmcnt(0)
s_add_u32 s88, s6, 3
s_lshr_b32 s88, s88, 2
s_lshl_b32 s88, s88, 2
s_add_u32 s84, s73, -1
s_mul_i32 s84, s84, s71
s_add_u32 s84, s84, s88
s_add_u32 s85, s74, -1
s_mul_i32 s85, s85, s72
s_add_u32 s85, s85, s88
s_add_u32 s67, s6, 255
s_lshr_b32 s67, s67, 8
s_lshl_b32 s67, s67, 8
s_add_u32 s86, s73, 31
s_lshr_b32 s86, s86, 5
s_mul_i32 s86, s86, s67
s_add_u32 s87, s74, 31
s_lshr_b32 s87, s87, 5
s_mul_i32 s87, s87, s67
s_lshl_b32 s26, s74, 1
s_add_u32 s26, s26, -2
s_mul_i32 s26, s26, s70
s_lshl_b32 s88, s73, 1
s_add_u32 s26, s26, s88
s_mul_i32 s30, s73, s75
s_mul_i32 s30, s30, s74
s_lshl_b32 s30, s30, 2
s_mul_i32 s32, s73, s74
s_cmp_le_u32 s73, s74
s_cselect_b64 s[8:9], s[76:77], s[78:79]
s_cselect_b32 s10, s84, s85
s_cselect_b64 s[12:13], s[78:79], s[76:77]
s_cselect_b32 s14, s85, s84
s_cselect_b64 s[16:17], s[80:81], s[82:83]
s_cselect_b32 s18, s86, s87
s_cselect_b64 s[20:21], s[82:83], s[80:81]
s_cselect_b32 s22, s87, s86
s_cselect_b32 s68, s71, s72
s_cselect_b32 s69, s72, s71
s_cselect_b32 s33, 1, s70
s_cselect_b32 s34, s70, 1
s_cselect_b32 s35, 1, s73
s_cselect_b32 s36, s73, 1
s_cselect_b32 s39, 1, 0
s_min_u32 s37, s73, s74
s_max_u32 s38, s73, s74
s_mov_b32 s11, 131072
s_mov_b32 s15, 131072
s_mov_b32 s19, 131072
s_mov_b32 s23, 131072
s_mov_b32 s27, 131072
s_mov_b32 s31, 131072
s_mul_i32 s70, s4, s7
s_add_u32 s44, s70, s7
s_min_i32 s44, s44, s6
s_ashr_i32 s71, s44, 12
s_add_u32 s43, s70, 4095
s_ashr_i32 s43, s43, 12
s_sub_u32 s41, s71, s43
s_max_i32 s41, s41, 0
s_mul_i32 s73, s66, s4
s_add_u32 s73, s73, s3
s_mul_i32 s73, s73, s49
s_add_u32 s73, s73, s2
s_add_u32 s74, s7, 4095
s_lshr_b32 s74, s74, 12
s_lshr_b32 s75, s73, 4
s_add_u32 s75, s75, s73
s_abs_i32 s77, s74
s_abs_i32 s78, s75
s_xor_b32 s79, s75, s74
s_ashr_i32 s79, s79, 31
v_cvt_f32_u32 v179, s77
v_rcp_iflag_f32 v179, v179
s_sub_u32 s80, 0, s77
v_mul_f32 v179, 0x4f7ffffe, v179
v_cvt_u32_f32 v179, v179
s_nop 0
v_readfirstlane_b32 s81, v179
s_mul_i32 s82, s80, s81
s_mul_hi_u32 s82, s81, s82
s_add_u32 s81, s81, s82
s_mul_hi_u32 s80, s78, s81
s_mul_i32 s82, s80, s77
s_sub_u32 s82, s78, s82
s_add_u32 s83, s80, 1
s_sub_u32 s84, s82, s77
s_cmp_ge_u32 s82, s77
s_cselect_b32 s80, s83, s80
s_cselect_b32 s82, s84, s82
s_add_u32 s83, s80, 1
s_cmp_ge_u32 s82, s77
s_cselect_b32 s80, s83, s80
s_xor_b32 s80, s80, s79
s_sub_u32 s76, s80, s79
s_mul_i32 s76, s76, s74
s_sub_u32 s72, s75, s76
s_cmp_lt_u32 s72, s41
s_cselect_b32 s42, s72, 0
s_mul_i32 s40, s3, 3
s_mul_i32 s5, s2, 5
v_and_b32 v177, 7, v0
v_lshrrev_b32 v177, 1, v177
v_lshrrev_b32 v179, 3, v0
v_lshlrev_b32 v179, 3, v179
v_add_u32 v177, v177, v179
v_lshlrev_b32 v177, 2, v177
v_add_u32 v178, 16, v177
v_lshrrev_b32 v179, 3, v0
v_lshlrev_b32 v179, 9, v179
v_and_b32 v180, 7, v0
v_lshlrev_b32 v180, 4, v180
v_add_u32 v179, v179, v180
v_and_b32 v180, 3, v0
v_lshlrev_b32 v180, 6, v180
v_lshrrev_b32 v181, 3, v0
v_lshlrev_b32 v181, 9, v181
v_add_u32 v180, v180, v181
v_and_b32 v181, 7, v0
v_lshrrev_b32 v181, 2, v181
v_lshlrev_b32 v181, 8, v181
v_add_u32 v180, v180, v181
s_mul_i32 s70, s2, 5
s_add_u32 s71, s40, 0
s_cmp_lt_u32 s71, s37
s_cselect_b64 s[50:51], -1, 0
s_mul_i32 s71, s71, s68
v_add_u32 v153, s71, v179
v_cndmask_b32 v153, -1, v153, s[50:51]
s_add_u32 s71, s40, 1
s_cmp_lt_u32 s71, s37
s_cselect_b64 s[52:53], -1, 0
s_mul_i32 s71, s71, s68
v_add_u32 v154, s71, v179
v_cndmask_b32 v154, -1, v154, s[52:53]
s_add_u32 s71, s40, 2
s_cmp_lt_u32 s71, s37
s_cselect_b64 s[54:55], -1, 0
s_mul_i32 s71, s71, s68
v_add_u32 v155, s71, v179
v_cndmask_b32 v155, -1, v155, s[54:55]
s_add_u32 s71, s5, 0
s_cmp_lt_u32 s71, s38
s_cselect_b64 s[56:57], -1, 0
s_mul_i32 s71, s71, s69
v_add_u32 v156, s71, v179
v_cndmask_b32 v156, -1, v156, s[56:57]
s_add_u32 s71, s5, 1
s_cmp_lt_u32 s71, s38
s_cselect_b64 s[58:59], -1, 0
s_mul_i32 s71, s71, s69
v_add_u32 v157, s71, v179
v_cndmask_b32 v157, -1, v157, s[58:59]
s_add_u32 s71, s5, 2
s_cmp_lt_u32 s71, s38
s_cselect_b64 s[60:61], -1, 0
s_mul_i32 s71, s71, s69
v_add_u32 v158, s71, v179
v_cndmask_b32 v158, -1, v158, s[60:61]
s_add_u32 s71, s5, 3
s_cmp_lt_u32 s71, s38
s_cselect_b64 s[62:63], -1, 0
s_mul_i32 s71, s71, s69
v_add_u32 v159, s71, v179
v_cndmask_b32 v159, -1, v159, s[62:63]
s_add_u32 s71, s5, 4
s_cmp_lt_u32 s71, s38
s_cselect_b64 s[64:65], -1, 0
s_mul_i32 s71, s71, s69
v_add_u32 v160, s71, v179
v_cndmask_b32 v160, -1, v160, s[64:65]
v_and_b32 v1, -256, v180
s_add_u32 s71, s40, 0
s_lshr_b32 s72, s71, 5
s_mul_i32 s72, s72, s67
s_and_b32 s71, 15, s71
s_lshl_b32 s71, s71, 2
s_add_u32 s72, s72, s71
v_add_u32 v161, s72, v180
v_cndmask_b32 v161, -1, v161, s[50:51]
s_add_u32 s71, s40, 1
s_lshr_b32 s72, s71, 5
s_mul_i32 s72, s72, s67
s_and_b32 s71, 15, s71
s_lshl_b32 s71, s71, 2
s_add_u32 s72, s72, s71
v_add_u32 v162, s72, v180
v_cndmask_b32 v162, -1, v162, s[52:53]
s_add_u32 s71, s40, 2
s_lshr_b32 s72, s71, 5
s_mul_i32 s72, s72, s67
s_and_b32 s71, 15, s71
s_lshl_b32 s71, s71, 2
s_add_u32 s72, s72, s71
v_add_u32 v163, s72, v180
v_cndmask_b32 v163, -1, v163, s[54:55]
s_add_u32 s71, s70, 0
s_cmp_lt_u32 s71, s38
s_cselect_b64 s[72:73], -1, 0
s_lshr_b32 s74, s71, 5
s_mul_i32 s74, s74, s67
s_and_b32 s71, 15, s71
s_lshl_b32 s71, s71, 2
s_add_u32 s74, s74, s71
v_add_u32 v164, s74, v180
v_cndmask_b32 v164, -1, v164, s[72:73]
s_add_u32 s71, s70, 1
s_cmp_lt_u32 s71, s38
s_cselect_b64 s[72:73], -1, 0
s_lshr_b32 s74, s71, 5
s_mul_i32 s74, s74, s67
s_and_b32 s71, 15, s71
s_lshl_b32 s71, s71, 2
s_add_u32 s74, s74, s71
v_add_u32 v165, s74, v180
v_cndmask_b32 v165, -1, v165, s[72:73]
s_add_u32 s71, s70, 2
s_cmp_lt_u32 s71, s38
s_cselect_b64 s[72:73], -1, 0
s_lshr_b32 s74, s71, 5
s_mul_i32 s74, s74, s67
s_and_b32 s71, 15, s71
s_lshl_b32 s71, s71, 2
s_add_u32 s74, s74, s71
v_add_u32 v166, s74, v180
v_cndmask_b32 v166, -1, v166, s[72:73]
s_add_u32 s71, s70, 3
s_cmp_lt_u32 s71, s38
s_cselect_b64 s[72:73], -1, 0
s_lshr_b32 s74, s71, 5
s_mul_i32 s74, s74, s67
s_and_b32 s71, 15, s71
s_lshl_b32 s71, s71, 2
s_add_u32 s74, s74, s71
v_add_u32 v167, s74, v180
v_cndmask_b32 v167, -1, v167, s[72:73]
s_add_u32 s71, s70, 4
s_cmp_lt_u32 s71, s38
s_cselect_b64 s[72:73], -1, 0
s_lshr_b32 s74, s71, 5
s_mul_i32 s74, s74, s67
s_and_b32 s71, 15, s71
s_lshl_b32 s71, s71, 2
s_add_u32 s74, s74, s71
v_add_u32 v168, s74, v180
v_cndmask_b32 v168, -1, v168, s[72:73]
s_add_u32 s71, s40, 0
s_lshr_b32 s72, s71, 4
s_and_b32 s72, 1, s72
s_mul_i32 s72, s72, 16843009
s_add_u32 s72, s72, 100925952
v_mov_b32 v169, s72
s_add_u32 s71, s40, 1
s_lshr_b32 s72, s71, 4
s_and_b32 s72, 1, s72
s_mul_i32 s72, s72, 16843009
s_add_u32 s72, s72, 100925952
v_mov_b32 v170, s72
s_add_u32 s71, s40, 2
s_lshr_b32 s72, s71, 4
s_and_b32 s72, 1, s72
s_mul_i32 s72, s72, 16843009
s_add_u32 s72, s72, 100925952
v_mov_b32 v171, s72
s_add_u32 s71, s5, 0
s_lshr_b32 s72, s71, 4
s_and_b32 s72, 1, s72
s_mul_i32 s72, s72, 16843009
s_add_u32 s72, s72, 100925952
v_mov_b32 v172, s72
s_add_u32 s71, s5, 1
s_lshr_b32 s72, s71, 4
s_and_b32 s72, 1, s72
s_mul_i32 s72, s72, 16843009
s_add_u32 s72, s72, 100925952
v_mov_b32 v173, s72
s_add_u32 s71, s5, 2
s_lshr_b32 s72, s71, 4
s_and_b32 s72, 1, s72
s_mul_i32 s72, s72, 16843009
s_add_u32 s72, s72, 100925952
v_mov_b32 v174, s72
s_add_u32 s71, s5, 3
s_lshr_b32 s72, s71, 4
s_and_b32 s72, 1, s72
s_mul_i32 s72, s72, 16843009
s_add_u32 s72, s72, 100925952
v_mov_b32 v175, s72
s_add_u32 s71, s5, 4
s_lshr_b32 s72, s71, 4
s_and_b32 s72, 1, s72
s_mul_i32 s72, s72, 16843009
s_add_u32 s72, s72, 100925952
v_mov_b32 v176, s72
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
s_sub_u32 s66, s42, s41
s_cmp_ge_u32 s42, s41
s_cselect_b32 s49, s66, s42
s_add_u32 s66, s43, s49
s_lshl_b32 s66, s66, 12
buffer_load_dword v130, v161, s[16:19], s66 offen offset:0
buffer_load_dword v131, v162, s[16:19], s66 offen offset:0
buffer_load_dword v132, v163, s[16:19], s66 offen offset:0
buffer_load_dword v133, v164, s[20:23], s66 offen offset:0
buffer_load_dword v134, v165, s[20:23], s66 offen offset:0
buffer_load_dword v135, v166, s[20:23], s66 offen offset:0
buffer_load_dword v136, v167, s[20:23], s66 offen offset:0
buffer_load_dword v137, v168, s[20:23], s66 offen offset:0
buffer_load_dwordx4 v[2:5], v153, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[6:9], v154, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[10:13], v155, s[8:11], s66 offen offset:0
buffer_load_dwordx4 v[14:17], v156, s[12:15], s66 offen offset:0
buffer_load_dwordx4 v[18:21], v157, s[12:15], s66 offen offset:0
buffer_load_dwordx4 v[22:25], v158, s[12:15], s66 offen offset:0
buffer_load_dwordx4 v[26:29], v159, s[12:15], s66 offen offset:0
buffer_load_dwordx4 v[30:33], v160, s[12:15], s66 offen offset:0
s_add_u32 s67, s66, 128
buffer_load_dwordx4 v[34:37], v153, s[8:11], s67 offen offset:0
buffer_load_dwordx4 v[38:41], v154, s[8:11], s67 offen offset:0
buffer_load_dwordx4 v[42:45], v155, s[8:11], s67 offen offset:0
buffer_load_dwordx4 v[46:49], v156, s[12:15], s67 offen offset:0
buffer_load_dwordx4 v[50:53], v157, s[12:15], s67 offen offset:0
buffer_load_dwordx4 v[54:57], v158, s[12:15], s67 offen offset:0
buffer_load_dwordx4 v[58:61], v159, s[12:15], s67 offen offset:0
buffer_load_dwordx4 v[62:65], v160, s[12:15], s67 offen offset:0
s_add_u32 s67, s66, 256
buffer_load_dwordx4 v[66:69], v153, s[8:11], s67 offen offset:0
buffer_load_dwordx4 v[70:73], v154, s[8:11], s67 offen offset:0
buffer_load_dwordx4 v[74:77], v155, s[8:11], s67 offen offset:0
buffer_load_dwordx4 v[78:81], v156, s[12:15], s67 offen offset:0
buffer_load_dwordx4 v[82:85], v157, s[12:15], s67 offen offset:0
buffer_load_dwordx4 v[86:89], v158, s[12:15], s67 offen offset:0
buffer_load_dwordx4 v[90:93], v159, s[12:15], s67 offen offset:0
buffer_load_dwordx4 v[94:97], v160, s[12:15], s67 offen offset:0
s_add_u32 s67, s66, 384
buffer_load_dwordx4 v[98:101], v153, s[8:11], s67 offen offset:0
buffer_load_dwordx4 v[102:105], v154, s[8:11], s67 offen offset:0
buffer_load_dwordx4 v[106:109], v155, s[8:11], s67 offen offset:0
buffer_load_dwordx4 v[110:113], v156, s[12:15], s67 offen offset:0
buffer_load_dwordx4 v[114:117], v157, s[12:15], s67 offen offset:0
buffer_load_dwordx4 v[118:121], v158, s[12:15], s67 offen offset:0
buffer_load_dwordx4 v[122:125], v159, s[12:15], s67 offen offset:0
buffer_load_dwordx4 v[126:129], v160, s[12:15], s67 offen offset:0
s_add_u32 s49, s41, -1
s_max_i32 s49, s49, 0
s_add_u32 s66, s42, 1
s_lshl_b32 s45, s43, 12
s_add_u32 s46, s45, 128
s_add_u32 s47, s45, 256
s_add_u32 s48, s45, 384
s_cmp_gt_i32 s49, 0
s_mov_b32 s67, 0
s_cbranch_scc0 label_kloop_end_1
label_kloop_0:
s_add_u32 s68, s67, s66
s_sub_u32 s69, s68, s41
s_cmp_ge_u32 s68, s41
s_cselect_b32 s68, s69, s68
s_waitcnt vmcnt(39)
ds_bpermute_b32 v179, v177, v130
ds_bpermute_b32 v130, v178, v130
s_waitcnt vmcnt(38)
ds_bpermute_b32 v180, v177, v131
ds_bpermute_b32 v131, v178, v131
s_waitcnt vmcnt(37)
ds_bpermute_b32 v181, v177, v132
ds_bpermute_b32 v132, v178, v132
s_waitcnt vmcnt(36)
ds_bpermute_b32 v182, v177, v133
ds_bpermute_b32 v133, v178, v133
s_waitcnt vmcnt(35)
ds_bpermute_b32 v183, v177, v134
ds_bpermute_b32 v134, v178, v134
s_waitcnt vmcnt(34)
ds_bpermute_b32 v184, v177, v135
ds_bpermute_b32 v135, v178, v135
s_waitcnt vmcnt(33)
ds_bpermute_b32 v185, v177, v136
ds_bpermute_b32 v136, v178, v136
s_waitcnt vmcnt(32)
ds_bpermute_b32 v186, v177, v137
ds_bpermute_b32 v137, v178, v137
s_waitcnt lgkmcnt(14)
v_perm_b32 v179, v130, v179, v169
s_waitcnt lgkmcnt(12)
v_perm_b32 v180, v131, v180, v170
s_waitcnt lgkmcnt(10)
v_perm_b32 v181, v132, v181, v171
s_waitcnt lgkmcnt(8)
v_perm_b32 v182, v133, v182, v172
s_waitcnt lgkmcnt(6)
v_perm_b32 v183, v134, v183, v173
s_waitcnt lgkmcnt(4)
v_perm_b32 v184, v135, v184, v174
s_waitcnt lgkmcnt(2)
v_perm_b32 v185, v136, v185, v175
s_waitcnt lgkmcnt(0)
v_perm_b32 v186, v137, v186, v176
s_add_u32 s69, s43, s68
s_lshl_b32 s69, s69, 12
buffer_load_dword v130, v161, s[16:19], s69 offen offset:0
buffer_load_dword v131, v162, s[16:19], s69 offen offset:0
buffer_load_dword v132, v163, s[16:19], s69 offen offset:0
buffer_load_dword v133, v164, s[20:23], s69 offen offset:0
buffer_load_dword v134, v165, s[20:23], s69 offen offset:0
buffer_load_dword v135, v166, s[20:23], s69 offen offset:0
buffer_load_dword v136, v167, s[20:23], s69 offen offset:0
buffer_load_dword v137, v168, s[20:23], s69 offen offset:0
v_lshlrev_b32 v187, 23, v179
v_and_b32 v187, 2139095040, v187
v_lshlrev_b32 v188, 23, v180
v_and_b32 v188, 2139095040, v188
v_lshlrev_b32 v189, 23, v181
v_and_b32 v189, 2139095040, v189
v_lshlrev_b32 v190, 23, v182
v_and_b32 v190, 2139095040, v190
v_lshlrev_b32 v191, 23, v183
v_and_b32 v191, 2139095040, v191
v_lshlrev_b32 v192, 23, v184
v_and_b32 v192, 2139095040, v192
v_lshlrev_b32 v193, 23, v185
v_and_b32 v193, 2139095040, v193
v_lshlrev_b32 v194, 23, v186
v_and_b32 v194, 2139095040, v194
s_waitcnt vmcnt(39)
v_cvt_scalef32_pk_bf16_fp8 v195, v2, v187
s_waitcnt vmcnt(38)
v_cvt_scalef32_pk_bf16_fp8 v196, v6, v188
s_waitcnt vmcnt(37)
v_cvt_scalef32_pk_bf16_fp8 v197, v10, v189
s_waitcnt vmcnt(36)
v_cvt_scalef32_pk_bf16_fp8 v198, v14, v190
s_waitcnt vmcnt(35)
v_cvt_scalef32_pk_bf16_fp8 v199, v18, v191
s_waitcnt vmcnt(34)
v_cvt_scalef32_pk_bf16_fp8 v200, v22, v192
s_waitcnt vmcnt(33)
v_cvt_scalef32_pk_bf16_fp8 v201, v26, v193
s_waitcnt vmcnt(32)
v_cvt_scalef32_pk_bf16_fp8 v202, v30, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v2, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v6, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v10, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v14, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v18, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v22, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v26, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v30, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v3, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v7, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v11, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v15, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v19, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v23, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v27, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v31, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v3, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v7, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v11, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v15, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v19, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v23, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v27, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v31, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v4, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v8, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v12, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v16, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v20, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v24, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v28, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v32, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v4, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v8, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v12, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v16, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v20, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v24, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v28, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v32, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v5, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v9, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v13, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v17, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v21, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v25, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v29, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v33, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v5, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v9, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v13, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v17, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v21, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v25, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v29, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v33, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
buffer_load_dwordx4 v[2:5], v153, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[6:9], v154, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[10:13], v155, s[8:11], s69 offen offset:0
buffer_load_dwordx4 v[14:17], v156, s[12:15], s69 offen offset:0
buffer_load_dwordx4 v[18:21], v157, s[12:15], s69 offen offset:0
buffer_load_dwordx4 v[22:25], v158, s[12:15], s69 offen offset:0
buffer_load_dwordx4 v[26:29], v159, s[12:15], s69 offen offset:0
buffer_load_dwordx4 v[30:33], v160, s[12:15], s69 offen offset:0
v_lshlrev_b32 v187, 15, v179
v_and_b32 v187, 2139095040, v187
v_lshlrev_b32 v188, 15, v180
v_and_b32 v188, 2139095040, v188
v_lshlrev_b32 v189, 15, v181
v_and_b32 v189, 2139095040, v189
v_lshlrev_b32 v190, 15, v182
v_and_b32 v190, 2139095040, v190
v_lshlrev_b32 v191, 15, v183
v_and_b32 v191, 2139095040, v191
v_lshlrev_b32 v192, 15, v184
v_and_b32 v192, 2139095040, v192
v_lshlrev_b32 v193, 15, v185
v_and_b32 v193, 2139095040, v193
v_lshlrev_b32 v194, 15, v186
v_and_b32 v194, 2139095040, v194
s_waitcnt vmcnt(39)
v_cvt_scalef32_pk_bf16_fp8 v195, v34, v187
s_waitcnt vmcnt(38)
v_cvt_scalef32_pk_bf16_fp8 v196, v38, v188
s_waitcnt vmcnt(37)
v_cvt_scalef32_pk_bf16_fp8 v197, v42, v189
s_waitcnt vmcnt(36)
v_cvt_scalef32_pk_bf16_fp8 v198, v46, v190
s_waitcnt vmcnt(35)
v_cvt_scalef32_pk_bf16_fp8 v199, v50, v191
s_waitcnt vmcnt(34)
v_cvt_scalef32_pk_bf16_fp8 v200, v54, v192
s_waitcnt vmcnt(33)
v_cvt_scalef32_pk_bf16_fp8 v201, v58, v193
s_waitcnt vmcnt(32)
v_cvt_scalef32_pk_bf16_fp8 v202, v62, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v34, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v38, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v42, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v46, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v50, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v54, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v58, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v62, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v35, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v39, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v43, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v47, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v51, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v55, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v59, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v63, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v35, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v39, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v43, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v47, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v51, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v55, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v59, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v63, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v36, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v40, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v44, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v48, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v52, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v56, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v60, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v64, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v36, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v40, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v44, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v48, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v52, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v56, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v60, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v64, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v37, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v41, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v45, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v49, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v53, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v57, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v61, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v65, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v37, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v41, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v45, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v49, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v53, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v57, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v61, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v65, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
s_lshl_b32 s68, s68, 12
s_add_u32 s70, s46, s68
buffer_load_dwordx4 v[34:37], v153, s[8:11], s70 offen offset:0
buffer_load_dwordx4 v[38:41], v154, s[8:11], s70 offen offset:0
buffer_load_dwordx4 v[42:45], v155, s[8:11], s70 offen offset:0
buffer_load_dwordx4 v[46:49], v156, s[12:15], s70 offen offset:0
buffer_load_dwordx4 v[50:53], v157, s[12:15], s70 offen offset:0
buffer_load_dwordx4 v[54:57], v158, s[12:15], s70 offen offset:0
buffer_load_dwordx4 v[58:61], v159, s[12:15], s70 offen offset:0
buffer_load_dwordx4 v[62:65], v160, s[12:15], s70 offen offset:0
v_lshlrev_b32 v187, 7, v179
v_and_b32 v187, 2139095040, v187
v_lshlrev_b32 v188, 7, v180
v_and_b32 v188, 2139095040, v188
v_lshlrev_b32 v189, 7, v181
v_and_b32 v189, 2139095040, v189
v_lshlrev_b32 v190, 7, v182
v_and_b32 v190, 2139095040, v190
v_lshlrev_b32 v191, 7, v183
v_and_b32 v191, 2139095040, v191
v_lshlrev_b32 v192, 7, v184
v_and_b32 v192, 2139095040, v192
v_lshlrev_b32 v193, 7, v185
v_and_b32 v193, 2139095040, v193
v_lshlrev_b32 v194, 7, v186
v_and_b32 v194, 2139095040, v194
s_waitcnt vmcnt(39)
v_cvt_scalef32_pk_bf16_fp8 v195, v66, v187
s_waitcnt vmcnt(38)
v_cvt_scalef32_pk_bf16_fp8 v196, v70, v188
s_waitcnt vmcnt(37)
v_cvt_scalef32_pk_bf16_fp8 v197, v74, v189
s_waitcnt vmcnt(36)
v_cvt_scalef32_pk_bf16_fp8 v198, v78, v190
s_waitcnt vmcnt(35)
v_cvt_scalef32_pk_bf16_fp8 v199, v82, v191
s_waitcnt vmcnt(34)
v_cvt_scalef32_pk_bf16_fp8 v200, v86, v192
s_waitcnt vmcnt(33)
v_cvt_scalef32_pk_bf16_fp8 v201, v90, v193
s_waitcnt vmcnt(32)
v_cvt_scalef32_pk_bf16_fp8 v202, v94, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v66, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v70, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v74, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v78, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v82, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v86, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v90, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v94, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v67, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v71, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v75, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v79, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v83, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v87, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v91, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v95, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v67, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v71, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v75, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v79, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v83, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v87, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v91, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v95, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v68, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v72, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v76, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v80, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v84, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v88, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v92, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v96, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v68, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v72, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v76, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v80, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v84, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v88, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v92, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v96, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v69, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v73, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v77, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v81, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v85, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v89, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v93, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v97, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v69, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v73, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v77, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v81, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v85, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v89, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v93, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v97, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
s_add_u32 s70, s47, s68
buffer_load_dwordx4 v[66:69], v153, s[8:11], s70 offen offset:0
buffer_load_dwordx4 v[70:73], v154, s[8:11], s70 offen offset:0
buffer_load_dwordx4 v[74:77], v155, s[8:11], s70 offen offset:0
buffer_load_dwordx4 v[78:81], v156, s[12:15], s70 offen offset:0
buffer_load_dwordx4 v[82:85], v157, s[12:15], s70 offen offset:0
buffer_load_dwordx4 v[86:89], v158, s[12:15], s70 offen offset:0
buffer_load_dwordx4 v[90:93], v159, s[12:15], s70 offen offset:0
buffer_load_dwordx4 v[94:97], v160, s[12:15], s70 offen offset:0
v_lshrrev_b32 v187, 1, v179
v_and_b32 v187, 2139095040, v187
v_lshrrev_b32 v188, 1, v180
v_and_b32 v188, 2139095040, v188
v_lshrrev_b32 v189, 1, v181
v_and_b32 v189, 2139095040, v189
v_lshrrev_b32 v190, 1, v182
v_and_b32 v190, 2139095040, v190
v_lshrrev_b32 v191, 1, v183
v_and_b32 v191, 2139095040, v191
v_lshrrev_b32 v192, 1, v184
v_and_b32 v192, 2139095040, v192
v_lshrrev_b32 v193, 1, v185
v_and_b32 v193, 2139095040, v193
v_lshrrev_b32 v194, 1, v186
v_and_b32 v194, 2139095040, v194
s_waitcnt vmcnt(39)
v_cvt_scalef32_pk_bf16_fp8 v195, v98, v187
s_waitcnt vmcnt(38)
v_cvt_scalef32_pk_bf16_fp8 v196, v102, v188
s_waitcnt vmcnt(37)
v_cvt_scalef32_pk_bf16_fp8 v197, v106, v189
s_waitcnt vmcnt(36)
v_cvt_scalef32_pk_bf16_fp8 v198, v110, v190
s_waitcnt vmcnt(35)
v_cvt_scalef32_pk_bf16_fp8 v199, v114, v191
s_waitcnt vmcnt(34)
v_cvt_scalef32_pk_bf16_fp8 v200, v118, v192
s_waitcnt vmcnt(33)
v_cvt_scalef32_pk_bf16_fp8 v201, v122, v193
s_waitcnt vmcnt(32)
v_cvt_scalef32_pk_bf16_fp8 v202, v126, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v98, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v102, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v106, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v110, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v114, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v118, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v122, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v126, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v99, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v103, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v107, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v111, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v115, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v119, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v123, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v127, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v99, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v103, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v107, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v111, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v115, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v119, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v123, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v127, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v100, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v104, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v108, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v112, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v116, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v120, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v124, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v128, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v100, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v104, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v108, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v112, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v116, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v120, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v124, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v128, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v101, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v105, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v109, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v113, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v117, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v121, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v125, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v129, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v101, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v105, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v109, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v113, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v117, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v121, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v125, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v129, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
s_add_u32 s70, s48, s68
buffer_load_dwordx4 v[98:101], v153, s[8:11], s70 offen offset:0
buffer_load_dwordx4 v[102:105], v154, s[8:11], s70 offen offset:0
buffer_load_dwordx4 v[106:109], v155, s[8:11], s70 offen offset:0
buffer_load_dwordx4 v[110:113], v156, s[12:15], s70 offen offset:0
buffer_load_dwordx4 v[114:117], v157, s[12:15], s70 offen offset:0
buffer_load_dwordx4 v[118:121], v158, s[12:15], s70 offen offset:0
buffer_load_dwordx4 v[122:125], v159, s[12:15], s70 offen offset:0
buffer_load_dwordx4 v[126:129], v160, s[12:15], s70 offen offset:0
s_add_u32 s67, s67, 1
s_cmp_lt_i32 s67, s49
s_cbranch_scc1 label_kloop_0
label_kloop_end_1:
s_sub_u32 s66, s41, s49
s_cmp_eq_i32 s66, 1
s_cbranch_scc0 label_arm_end_2
s_waitcnt vmcnt(39)
ds_bpermute_b32 v179, v177, v130
ds_bpermute_b32 v130, v178, v130
s_waitcnt vmcnt(38)
ds_bpermute_b32 v180, v177, v131
ds_bpermute_b32 v131, v178, v131
s_waitcnt vmcnt(37)
ds_bpermute_b32 v181, v177, v132
ds_bpermute_b32 v132, v178, v132
s_waitcnt vmcnt(36)
ds_bpermute_b32 v182, v177, v133
ds_bpermute_b32 v133, v178, v133
s_waitcnt vmcnt(35)
ds_bpermute_b32 v183, v177, v134
ds_bpermute_b32 v134, v178, v134
s_waitcnt vmcnt(34)
ds_bpermute_b32 v184, v177, v135
ds_bpermute_b32 v135, v178, v135
s_waitcnt vmcnt(33)
ds_bpermute_b32 v185, v177, v136
ds_bpermute_b32 v136, v178, v136
s_waitcnt vmcnt(32)
ds_bpermute_b32 v186, v177, v137
ds_bpermute_b32 v137, v178, v137
s_waitcnt lgkmcnt(14)
v_perm_b32 v179, v130, v179, v169
s_waitcnt lgkmcnt(12)
v_perm_b32 v180, v131, v180, v170
s_waitcnt lgkmcnt(10)
v_perm_b32 v181, v132, v181, v171
s_waitcnt lgkmcnt(8)
v_perm_b32 v182, v133, v182, v172
s_waitcnt lgkmcnt(6)
v_perm_b32 v183, v134, v183, v173
s_waitcnt lgkmcnt(4)
v_perm_b32 v184, v135, v184, v174
s_waitcnt lgkmcnt(2)
v_perm_b32 v185, v136, v185, v175
s_waitcnt lgkmcnt(0)
v_perm_b32 v186, v137, v186, v176
v_lshlrev_b32 v187, 23, v179
v_and_b32 v187, 2139095040, v187
v_lshlrev_b32 v188, 23, v180
v_and_b32 v188, 2139095040, v188
v_lshlrev_b32 v189, 23, v181
v_and_b32 v189, 2139095040, v189
v_lshlrev_b32 v190, 23, v182
v_and_b32 v190, 2139095040, v190
v_lshlrev_b32 v191, 23, v183
v_and_b32 v191, 2139095040, v191
v_lshlrev_b32 v192, 23, v184
v_and_b32 v192, 2139095040, v192
v_lshlrev_b32 v193, 23, v185
v_and_b32 v193, 2139095040, v193
v_lshlrev_b32 v194, 23, v186
v_and_b32 v194, 2139095040, v194
s_waitcnt vmcnt(31)
v_cvt_scalef32_pk_bf16_fp8 v195, v2, v187
s_waitcnt vmcnt(30)
v_cvt_scalef32_pk_bf16_fp8 v196, v6, v188
s_waitcnt vmcnt(29)
v_cvt_scalef32_pk_bf16_fp8 v197, v10, v189
s_waitcnt vmcnt(28)
v_cvt_scalef32_pk_bf16_fp8 v198, v14, v190
s_waitcnt vmcnt(27)
v_cvt_scalef32_pk_bf16_fp8 v199, v18, v191
s_waitcnt vmcnt(26)
v_cvt_scalef32_pk_bf16_fp8 v200, v22, v192
s_waitcnt vmcnt(25)
v_cvt_scalef32_pk_bf16_fp8 v201, v26, v193
s_waitcnt vmcnt(24)
v_cvt_scalef32_pk_bf16_fp8 v202, v30, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v2, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v6, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v10, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v14, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v18, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v22, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v26, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v30, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v3, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v7, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v11, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v15, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v19, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v23, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v27, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v31, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v3, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v7, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v11, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v15, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v19, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v23, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v27, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v31, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v4, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v8, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v12, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v16, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v20, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v24, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v28, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v32, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v4, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v8, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v12, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v16, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v20, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v24, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v28, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v32, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v5, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v9, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v13, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v17, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v21, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v25, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v29, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v33, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v5, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v9, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v13, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v17, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v21, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v25, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v29, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v33, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_lshlrev_b32 v187, 15, v179
v_and_b32 v187, 2139095040, v187
v_lshlrev_b32 v188, 15, v180
v_and_b32 v188, 2139095040, v188
v_lshlrev_b32 v189, 15, v181
v_and_b32 v189, 2139095040, v189
v_lshlrev_b32 v190, 15, v182
v_and_b32 v190, 2139095040, v190
v_lshlrev_b32 v191, 15, v183
v_and_b32 v191, 2139095040, v191
v_lshlrev_b32 v192, 15, v184
v_and_b32 v192, 2139095040, v192
v_lshlrev_b32 v193, 15, v185
v_and_b32 v193, 2139095040, v193
v_lshlrev_b32 v194, 15, v186
v_and_b32 v194, 2139095040, v194
s_waitcnt vmcnt(23)
v_cvt_scalef32_pk_bf16_fp8 v195, v34, v187
s_waitcnt vmcnt(22)
v_cvt_scalef32_pk_bf16_fp8 v196, v38, v188
s_waitcnt vmcnt(21)
v_cvt_scalef32_pk_bf16_fp8 v197, v42, v189
s_waitcnt vmcnt(20)
v_cvt_scalef32_pk_bf16_fp8 v198, v46, v190
s_waitcnt vmcnt(19)
v_cvt_scalef32_pk_bf16_fp8 v199, v50, v191
s_waitcnt vmcnt(18)
v_cvt_scalef32_pk_bf16_fp8 v200, v54, v192
s_waitcnt vmcnt(17)
v_cvt_scalef32_pk_bf16_fp8 v201, v58, v193
s_waitcnt vmcnt(16)
v_cvt_scalef32_pk_bf16_fp8 v202, v62, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v34, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v38, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v42, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v46, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v50, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v54, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v58, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v62, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v35, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v39, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v43, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v47, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v51, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v55, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v59, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v63, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v35, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v39, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v43, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v47, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v51, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v55, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v59, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v63, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v36, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v40, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v44, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v48, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v52, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v56, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v60, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v64, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v36, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v40, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v44, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v48, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v52, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v56, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v60, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v64, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v37, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v41, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v45, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v49, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v53, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v57, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v61, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v65, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v37, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v41, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v45, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v49, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v53, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v57, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v61, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v65, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_lshlrev_b32 v187, 7, v179
v_and_b32 v187, 2139095040, v187
v_lshlrev_b32 v188, 7, v180
v_and_b32 v188, 2139095040, v188
v_lshlrev_b32 v189, 7, v181
v_and_b32 v189, 2139095040, v189
v_lshlrev_b32 v190, 7, v182
v_and_b32 v190, 2139095040, v190
v_lshlrev_b32 v191, 7, v183
v_and_b32 v191, 2139095040, v191
v_lshlrev_b32 v192, 7, v184
v_and_b32 v192, 2139095040, v192
v_lshlrev_b32 v193, 7, v185
v_and_b32 v193, 2139095040, v193
v_lshlrev_b32 v194, 7, v186
v_and_b32 v194, 2139095040, v194
s_waitcnt vmcnt(15)
v_cvt_scalef32_pk_bf16_fp8 v195, v66, v187
s_waitcnt vmcnt(14)
v_cvt_scalef32_pk_bf16_fp8 v196, v70, v188
s_waitcnt vmcnt(13)
v_cvt_scalef32_pk_bf16_fp8 v197, v74, v189
s_waitcnt vmcnt(12)
v_cvt_scalef32_pk_bf16_fp8 v198, v78, v190
s_waitcnt vmcnt(11)
v_cvt_scalef32_pk_bf16_fp8 v199, v82, v191
s_waitcnt vmcnt(10)
v_cvt_scalef32_pk_bf16_fp8 v200, v86, v192
s_waitcnt vmcnt(9)
v_cvt_scalef32_pk_bf16_fp8 v201, v90, v193
s_waitcnt vmcnt(8)
v_cvt_scalef32_pk_bf16_fp8 v202, v94, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v66, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v70, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v74, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v78, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v82, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v86, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v90, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v94, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v67, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v71, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v75, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v79, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v83, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v87, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v91, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v95, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v67, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v71, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v75, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v79, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v83, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v87, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v91, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v95, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v68, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v72, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v76, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v80, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v84, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v88, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v92, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v96, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v68, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v72, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v76, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v80, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v84, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v88, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v92, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v96, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v69, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v73, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v77, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v81, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v85, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v89, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v93, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v97, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v69, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v73, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v77, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v81, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v85, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v89, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v93, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v97, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_lshrrev_b32 v187, 1, v179
v_and_b32 v187, 2139095040, v187
v_lshrrev_b32 v188, 1, v180
v_and_b32 v188, 2139095040, v188
v_lshrrev_b32 v189, 1, v181
v_and_b32 v189, 2139095040, v189
v_lshrrev_b32 v190, 1, v182
v_and_b32 v190, 2139095040, v190
v_lshrrev_b32 v191, 1, v183
v_and_b32 v191, 2139095040, v191
v_lshrrev_b32 v192, 1, v184
v_and_b32 v192, 2139095040, v192
v_lshrrev_b32 v193, 1, v185
v_and_b32 v193, 2139095040, v193
v_lshrrev_b32 v194, 1, v186
v_and_b32 v194, 2139095040, v194
s_waitcnt vmcnt(7)
v_cvt_scalef32_pk_bf16_fp8 v195, v98, v187
s_waitcnt vmcnt(6)
v_cvt_scalef32_pk_bf16_fp8 v196, v102, v188
s_waitcnt vmcnt(5)
v_cvt_scalef32_pk_bf16_fp8 v197, v106, v189
s_waitcnt vmcnt(4)
v_cvt_scalef32_pk_bf16_fp8 v198, v110, v190
s_waitcnt vmcnt(3)
v_cvt_scalef32_pk_bf16_fp8 v199, v114, v191
s_waitcnt vmcnt(2)
v_cvt_scalef32_pk_bf16_fp8 v200, v118, v192
s_waitcnt vmcnt(1)
v_cvt_scalef32_pk_bf16_fp8 v201, v122, v193
s_waitcnt vmcnt(0)
v_cvt_scalef32_pk_bf16_fp8 v202, v126, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v98, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v102, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v106, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v110, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v114, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v118, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v122, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v126, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v99, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v103, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v107, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v111, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v115, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v119, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v123, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v127, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v99, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v103, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v107, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v111, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v115, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v119, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v123, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v127, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v100, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v104, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v108, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v112, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v116, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v120, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v124, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v128, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v100, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v104, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v108, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v112, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v116, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v120, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v124, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v128, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v101, v187
v_cvt_scalef32_pk_bf16_fp8 v196, v105, v188
v_cvt_scalef32_pk_bf16_fp8 v197, v109, v189
v_cvt_scalef32_pk_bf16_fp8 v198, v113, v190
v_cvt_scalef32_pk_bf16_fp8 v199, v117, v191
v_cvt_scalef32_pk_bf16_fp8 v200, v121, v192
v_cvt_scalef32_pk_bf16_fp8 v201, v125, v193
v_cvt_scalef32_pk_bf16_fp8 v202, v129, v194
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
v_cvt_scalef32_pk_bf16_fp8 v195, v101, v187 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v196, v105, v188 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v197, v109, v189 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v198, v113, v190 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v199, v117, v191 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v200, v121, v192 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v201, v125, v193 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v202, v129, v194 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v195, v198, v138
v_dot2_f32_bf16 v139, v195, v199, v139
v_dot2_f32_bf16 v140, v195, v200, v140
v_dot2_f32_bf16 v141, v195, v201, v141
v_dot2_f32_bf16 v142, v195, v202, v142
v_dot2_f32_bf16 v143, v196, v198, v143
v_dot2_f32_bf16 v144, v196, v199, v144
v_dot2_f32_bf16 v145, v196, v200, v145
v_dot2_f32_bf16 v146, v196, v201, v146
v_dot2_f32_bf16 v147, v196, v202, v147
v_dot2_f32_bf16 v148, v197, v198, v148
v_dot2_f32_bf16 v149, v197, v199, v149
v_dot2_f32_bf16 v150, v197, v200, v150
v_dot2_f32_bf16 v151, v197, v201, v151
v_dot2_f32_bf16 v152, v197, v202, v152
label_arm_end_2:
s_and_b32 s49, 4095, s44
s_cbranch_scc0 label_step_end_3
s_sub_u32 s66, s44, s49
s_sub_u32 s67, s6, s66
v_lshrrev_b32 v179, 3, v0
v_lshlrev_b32 v179, 9, v179
v_and_b32 v180, 7, v0
v_lshlrev_b32 v180, 4, v180
v_add_u32 v179, v179, v180
v_sub_u32 v180, s67, v1
v_add_u32 v180, -1, v180
v_ashrrev_i32 v180, 31, v180
v_or_b32 v181, v161, v180
buffer_load_dword v130, v181, s[16:19], s66 offen offset:0
v_or_b32 v181, v162, v180
buffer_load_dword v131, v181, s[16:19], s66 offen offset:0
v_or_b32 v181, v163, v180
buffer_load_dword v132, v181, s[16:19], s66 offen offset:0
v_or_b32 v181, v164, v180
buffer_load_dword v133, v181, s[20:23], s66 offen offset:0
v_or_b32 v181, v165, v180
buffer_load_dword v134, v181, s[20:23], s66 offen offset:0
v_or_b32 v181, v166, v180
buffer_load_dword v135, v181, s[20:23], s66 offen offset:0
v_or_b32 v181, v167, v180
buffer_load_dword v136, v181, s[20:23], s66 offen offset:0
v_or_b32 v181, v168, v180
buffer_load_dword v137, v181, s[20:23], s66 offen offset:0
s_lshr_b32 s68, s49, 7
s_and_b32 s68, 3, s68
s_lshl_b32 s68, 1, s68
s_and_b32 s69, 15, s49
s_cselect_b32 s68, s68, 0
v_sub_u32 v180, s49, v179
s_bitcmp1_b32 s68, 0
s_cbranch_scc0 label_step_load_4
v_add_u32 v182, -1, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 4, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
v_or_b32 v181, v153, v182
buffer_load_dword v2, v181, s[8:11], s66 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v2, v2, v183
v_or_b32 v181, v154, v182
buffer_load_dword v6, v181, s[8:11], s66 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v6, v6, v183
v_or_b32 v181, v155, v182
buffer_load_dword v10, v181, s[8:11], s66 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v10, v10, v183
v_or_b32 v181, v156, v182
buffer_load_dword v14, v181, s[12:15], s66 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v14, v14, v183
v_or_b32 v181, v157, v182
buffer_load_dword v18, v181, s[12:15], s66 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v18, v18, v183
v_or_b32 v181, v158, v182
buffer_load_dword v22, v181, s[12:15], s66 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v22, v22, v183
v_or_b32 v181, v159, v182
buffer_load_dword v26, v181, s[12:15], s66 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v26, v26, v183
v_or_b32 v181, v160, v182
buffer_load_dword v30, v181, s[12:15], s66 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v30, v30, v183
v_add_u32 v182, -5, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 8, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
s_add_u32 s69, s66, 4
v_or_b32 v181, v153, v182
buffer_load_dword v3, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v3, v3, v183
v_or_b32 v181, v154, v182
buffer_load_dword v7, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v7, v7, v183
v_or_b32 v181, v155, v182
buffer_load_dword v11, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v11, v11, v183
v_or_b32 v181, v156, v182
buffer_load_dword v15, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v15, v15, v183
v_or_b32 v181, v157, v182
buffer_load_dword v19, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v19, v19, v183
v_or_b32 v181, v158, v182
buffer_load_dword v23, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v23, v23, v183
v_or_b32 v181, v159, v182
buffer_load_dword v27, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v27, v27, v183
v_or_b32 v181, v160, v182
buffer_load_dword v31, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v31, v31, v183
v_add_u32 v182, -9, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 12, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
s_add_u32 s69, s66, 8
v_or_b32 v181, v153, v182
buffer_load_dword v4, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v4, v4, v183
v_or_b32 v181, v154, v182
buffer_load_dword v8, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v8, v8, v183
v_or_b32 v181, v155, v182
buffer_load_dword v12, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v12, v12, v183
v_or_b32 v181, v156, v182
buffer_load_dword v16, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v16, v16, v183
v_or_b32 v181, v157, v182
buffer_load_dword v20, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v20, v20, v183
v_or_b32 v181, v158, v182
buffer_load_dword v24, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v24, v24, v183
v_or_b32 v181, v159, v182
buffer_load_dword v28, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v28, v28, v183
v_or_b32 v181, v160, v182
buffer_load_dword v32, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v32, v32, v183
v_add_u32 v182, -13, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 16, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
s_add_u32 s69, s66, 12
v_or_b32 v181, v153, v182
buffer_load_dword v5, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v5, v5, v183
v_or_b32 v181, v154, v182
buffer_load_dword v9, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v9, v9, v183
v_or_b32 v181, v155, v182
buffer_load_dword v13, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v13, v13, v183
v_or_b32 v181, v156, v182
buffer_load_dword v17, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v17, v17, v183
v_or_b32 v181, v157, v182
buffer_load_dword v21, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v21, v21, v183
v_or_b32 v181, v158, v182
buffer_load_dword v25, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v25, v25, v183
v_or_b32 v181, v159, v182
buffer_load_dword v29, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v29, v29, v183
v_or_b32 v181, v160, v182
buffer_load_dword v33, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v33, v33, v183
s_branch label_step_chunk_end_6
label_step_load_4:
s_cmp_ge_i32 s49, 16
s_cbranch_scc0 label_step_zero_5
v_add_u32 v181, -16, v180
v_ashrrev_i32 v181, 31, v181
v_or_b32 v182, v153, v181
buffer_load_dwordx4 v[2:5], v182, s[8:11], s66 offen offset:0
v_or_b32 v182, v154, v181
buffer_load_dwordx4 v[6:9], v182, s[8:11], s66 offen offset:0
v_or_b32 v182, v155, v181
buffer_load_dwordx4 v[10:13], v182, s[8:11], s66 offen offset:0
v_or_b32 v182, v156, v181
buffer_load_dwordx4 v[14:17], v182, s[12:15], s66 offen offset:0
v_or_b32 v182, v157, v181
buffer_load_dwordx4 v[18:21], v182, s[12:15], s66 offen offset:0
v_or_b32 v182, v158, v181
buffer_load_dwordx4 v[22:25], v182, s[12:15], s66 offen offset:0
v_or_b32 v182, v159, v181
buffer_load_dwordx4 v[26:29], v182, s[12:15], s66 offen offset:0
v_or_b32 v182, v160, v181
buffer_load_dwordx4 v[30:33], v182, s[12:15], s66 offen offset:0
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
s_add_u32 s69, s66, 128
s_add_u32 s70, s49, -128
v_sub_u32 v180, s70, v179
s_bitcmp1_b32 s68, 1
s_cbranch_scc0 label_step_load_7
v_add_u32 v182, -1, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 4, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
v_or_b32 v181, v153, v182
buffer_load_dword v34, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v34, v34, v183
v_or_b32 v181, v154, v182
buffer_load_dword v38, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v38, v38, v183
v_or_b32 v181, v155, v182
buffer_load_dword v42, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v42, v42, v183
v_or_b32 v181, v156, v182
buffer_load_dword v46, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v46, v46, v183
v_or_b32 v181, v157, v182
buffer_load_dword v50, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v50, v50, v183
v_or_b32 v181, v158, v182
buffer_load_dword v54, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v54, v54, v183
v_or_b32 v181, v159, v182
buffer_load_dword v58, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v58, v58, v183
v_or_b32 v181, v160, v182
buffer_load_dword v62, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v62, v62, v183
v_add_u32 v182, -5, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 8, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
s_add_u32 s71, s69, 4
v_or_b32 v181, v153, v182
buffer_load_dword v35, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v35, v35, v183
v_or_b32 v181, v154, v182
buffer_load_dword v39, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v39, v39, v183
v_or_b32 v181, v155, v182
buffer_load_dword v43, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v43, v43, v183
v_or_b32 v181, v156, v182
buffer_load_dword v47, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v47, v47, v183
v_or_b32 v181, v157, v182
buffer_load_dword v51, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v51, v51, v183
v_or_b32 v181, v158, v182
buffer_load_dword v55, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v55, v55, v183
v_or_b32 v181, v159, v182
buffer_load_dword v59, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v59, v59, v183
v_or_b32 v181, v160, v182
buffer_load_dword v63, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v63, v63, v183
v_add_u32 v182, -9, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 12, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
s_add_u32 s71, s69, 8
v_or_b32 v181, v153, v182
buffer_load_dword v36, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v36, v36, v183
v_or_b32 v181, v154, v182
buffer_load_dword v40, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v40, v40, v183
v_or_b32 v181, v155, v182
buffer_load_dword v44, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v44, v44, v183
v_or_b32 v181, v156, v182
buffer_load_dword v48, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v48, v48, v183
v_or_b32 v181, v157, v182
buffer_load_dword v52, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v52, v52, v183
v_or_b32 v181, v158, v182
buffer_load_dword v56, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v56, v56, v183
v_or_b32 v181, v159, v182
buffer_load_dword v60, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v60, v60, v183
v_or_b32 v181, v160, v182
buffer_load_dword v64, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v64, v64, v183
v_add_u32 v182, -13, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 16, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
s_add_u32 s71, s69, 12
v_or_b32 v181, v153, v182
buffer_load_dword v37, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v37, v37, v183
v_or_b32 v181, v154, v182
buffer_load_dword v41, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v41, v41, v183
v_or_b32 v181, v155, v182
buffer_load_dword v45, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v45, v45, v183
v_or_b32 v181, v156, v182
buffer_load_dword v49, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v49, v49, v183
v_or_b32 v181, v157, v182
buffer_load_dword v53, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v53, v53, v183
v_or_b32 v181, v158, v182
buffer_load_dword v57, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v57, v57, v183
v_or_b32 v181, v159, v182
buffer_load_dword v61, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v61, v61, v183
v_or_b32 v181, v160, v182
buffer_load_dword v65, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v65, v65, v183
s_branch label_step_chunk_end_9
label_step_load_7:
s_cmp_ge_i32 s70, 16
s_cbranch_scc0 label_step_zero_8
v_add_u32 v181, -16, v180
v_ashrrev_i32 v181, 31, v181
v_or_b32 v182, v153, v181
buffer_load_dwordx4 v[34:37], v182, s[8:11], s69 offen offset:0
v_or_b32 v182, v154, v181
buffer_load_dwordx4 v[38:41], v182, s[8:11], s69 offen offset:0
v_or_b32 v182, v155, v181
buffer_load_dwordx4 v[42:45], v182, s[8:11], s69 offen offset:0
v_or_b32 v182, v156, v181
buffer_load_dwordx4 v[46:49], v182, s[12:15], s69 offen offset:0
v_or_b32 v182, v157, v181
buffer_load_dwordx4 v[50:53], v182, s[12:15], s69 offen offset:0
v_or_b32 v182, v158, v181
buffer_load_dwordx4 v[54:57], v182, s[12:15], s69 offen offset:0
v_or_b32 v182, v159, v181
buffer_load_dwordx4 v[58:61], v182, s[12:15], s69 offen offset:0
v_or_b32 v182, v160, v181
buffer_load_dwordx4 v[62:65], v182, s[12:15], s69 offen offset:0
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
s_add_u32 s69, s66, 256
s_add_u32 s70, s49, -256
v_sub_u32 v180, s70, v179
s_bitcmp1_b32 s68, 2
s_cbranch_scc0 label_step_load_10
v_add_u32 v182, -1, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 4, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
v_or_b32 v181, v153, v182
buffer_load_dword v66, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v66, v66, v183
v_or_b32 v181, v154, v182
buffer_load_dword v70, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v70, v70, v183
v_or_b32 v181, v155, v182
buffer_load_dword v74, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v74, v74, v183
v_or_b32 v181, v156, v182
buffer_load_dword v78, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v78, v78, v183
v_or_b32 v181, v157, v182
buffer_load_dword v82, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v82, v82, v183
v_or_b32 v181, v158, v182
buffer_load_dword v86, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v86, v86, v183
v_or_b32 v181, v159, v182
buffer_load_dword v90, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v90, v90, v183
v_or_b32 v181, v160, v182
buffer_load_dword v94, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v94, v94, v183
v_add_u32 v182, -5, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 8, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
s_add_u32 s71, s69, 4
v_or_b32 v181, v153, v182
buffer_load_dword v67, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v67, v67, v183
v_or_b32 v181, v154, v182
buffer_load_dword v71, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v71, v71, v183
v_or_b32 v181, v155, v182
buffer_load_dword v75, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v75, v75, v183
v_or_b32 v181, v156, v182
buffer_load_dword v79, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v79, v79, v183
v_or_b32 v181, v157, v182
buffer_load_dword v83, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v83, v83, v183
v_or_b32 v181, v158, v182
buffer_load_dword v87, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v87, v87, v183
v_or_b32 v181, v159, v182
buffer_load_dword v91, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v91, v91, v183
v_or_b32 v181, v160, v182
buffer_load_dword v95, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v95, v95, v183
v_add_u32 v182, -9, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 12, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
s_add_u32 s71, s69, 8
v_or_b32 v181, v153, v182
buffer_load_dword v68, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v68, v68, v183
v_or_b32 v181, v154, v182
buffer_load_dword v72, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v72, v72, v183
v_or_b32 v181, v155, v182
buffer_load_dword v76, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v76, v76, v183
v_or_b32 v181, v156, v182
buffer_load_dword v80, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v80, v80, v183
v_or_b32 v181, v157, v182
buffer_load_dword v84, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v84, v84, v183
v_or_b32 v181, v158, v182
buffer_load_dword v88, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v88, v88, v183
v_or_b32 v181, v159, v182
buffer_load_dword v92, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v92, v92, v183
v_or_b32 v181, v160, v182
buffer_load_dword v96, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v96, v96, v183
v_add_u32 v182, -13, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 16, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
s_add_u32 s71, s69, 12
v_or_b32 v181, v153, v182
buffer_load_dword v69, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v69, v69, v183
v_or_b32 v181, v154, v182
buffer_load_dword v73, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v73, v73, v183
v_or_b32 v181, v155, v182
buffer_load_dword v77, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v77, v77, v183
v_or_b32 v181, v156, v182
buffer_load_dword v81, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v81, v81, v183
v_or_b32 v181, v157, v182
buffer_load_dword v85, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v85, v85, v183
v_or_b32 v181, v158, v182
buffer_load_dword v89, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v89, v89, v183
v_or_b32 v181, v159, v182
buffer_load_dword v93, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v93, v93, v183
v_or_b32 v181, v160, v182
buffer_load_dword v97, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v97, v97, v183
s_branch label_step_chunk_end_12
label_step_load_10:
s_cmp_ge_i32 s70, 16
s_cbranch_scc0 label_step_zero_11
v_add_u32 v181, -16, v180
v_ashrrev_i32 v181, 31, v181
v_or_b32 v182, v153, v181
buffer_load_dwordx4 v[66:69], v182, s[8:11], s69 offen offset:0
v_or_b32 v182, v154, v181
buffer_load_dwordx4 v[70:73], v182, s[8:11], s69 offen offset:0
v_or_b32 v182, v155, v181
buffer_load_dwordx4 v[74:77], v182, s[8:11], s69 offen offset:0
v_or_b32 v182, v156, v181
buffer_load_dwordx4 v[78:81], v182, s[12:15], s69 offen offset:0
v_or_b32 v182, v157, v181
buffer_load_dwordx4 v[82:85], v182, s[12:15], s69 offen offset:0
v_or_b32 v182, v158, v181
buffer_load_dwordx4 v[86:89], v182, s[12:15], s69 offen offset:0
v_or_b32 v182, v159, v181
buffer_load_dwordx4 v[90:93], v182, s[12:15], s69 offen offset:0
v_or_b32 v182, v160, v181
buffer_load_dwordx4 v[94:97], v182, s[12:15], s69 offen offset:0
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
s_add_u32 s69, s66, 384
s_add_u32 s70, s49, -384
v_sub_u32 v180, s70, v179
s_bitcmp1_b32 s68, 3
s_cbranch_scc0 label_step_load_13
v_add_u32 v182, -1, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 4, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
v_or_b32 v181, v153, v182
buffer_load_dword v98, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v98, v98, v183
v_or_b32 v181, v154, v182
buffer_load_dword v102, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v102, v102, v183
v_or_b32 v181, v155, v182
buffer_load_dword v106, v181, s[8:11], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v106, v106, v183
v_or_b32 v181, v156, v182
buffer_load_dword v110, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v110, v110, v183
v_or_b32 v181, v157, v182
buffer_load_dword v114, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v114, v114, v183
v_or_b32 v181, v158, v182
buffer_load_dword v118, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v118, v118, v183
v_or_b32 v181, v159, v182
buffer_load_dword v122, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v122, v122, v183
v_or_b32 v181, v160, v182
buffer_load_dword v126, v181, s[12:15], s69 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v126, v126, v183
v_add_u32 v182, -5, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 8, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
s_add_u32 s71, s69, 4
v_or_b32 v181, v153, v182
buffer_load_dword v99, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v99, v99, v183
v_or_b32 v181, v154, v182
buffer_load_dword v103, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v103, v103, v183
v_or_b32 v181, v155, v182
buffer_load_dword v107, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v107, v107, v183
v_or_b32 v181, v156, v182
buffer_load_dword v111, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v111, v111, v183
v_or_b32 v181, v157, v182
buffer_load_dword v115, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v115, v115, v183
v_or_b32 v181, v158, v182
buffer_load_dword v119, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v119, v119, v183
v_or_b32 v181, v159, v182
buffer_load_dword v123, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v123, v123, v183
v_or_b32 v181, v160, v182
buffer_load_dword v127, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v127, v127, v183
v_add_u32 v182, -9, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 12, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
s_add_u32 s71, s69, 8
v_or_b32 v181, v153, v182
buffer_load_dword v100, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v100, v100, v183
v_or_b32 v181, v154, v182
buffer_load_dword v104, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v104, v104, v183
v_or_b32 v181, v155, v182
buffer_load_dword v108, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v108, v108, v183
v_or_b32 v181, v156, v182
buffer_load_dword v112, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v112, v112, v183
v_or_b32 v181, v157, v182
buffer_load_dword v116, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v116, v116, v183
v_or_b32 v181, v158, v182
buffer_load_dword v120, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v120, v120, v183
v_or_b32 v181, v159, v182
buffer_load_dword v124, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v124, v124, v183
v_or_b32 v181, v160, v182
buffer_load_dword v128, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v128, v128, v183
v_add_u32 v182, -13, v180
v_ashrrev_i32 v182, 31, v182
v_sub_u32 v183, 16, v180
v_max_i32 v183, 0, v183
v_min_i32 v183, 3, v183
v_lshlrev_b32 v183, 3, v183
v_lshrrev_b32 v183, v183, -1
s_add_u32 s71, s69, 12
v_or_b32 v181, v153, v182
buffer_load_dword v101, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v101, v101, v183
v_or_b32 v181, v154, v182
buffer_load_dword v105, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v105, v105, v183
v_or_b32 v181, v155, v182
buffer_load_dword v109, v181, s[8:11], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v109, v109, v183
v_or_b32 v181, v156, v182
buffer_load_dword v113, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v113, v113, v183
v_or_b32 v181, v157, v182
buffer_load_dword v117, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v117, v117, v183
v_or_b32 v181, v158, v182
buffer_load_dword v121, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v121, v121, v183
v_or_b32 v181, v159, v182
buffer_load_dword v125, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v125, v125, v183
v_or_b32 v181, v160, v182
buffer_load_dword v129, v181, s[12:15], s71 offen offset:0
s_waitcnt vmcnt(0)
v_and_b32 v129, v129, v183
s_branch label_step_chunk_end_15
label_step_load_13:
s_cmp_ge_i32 s70, 16
s_cbranch_scc0 label_step_zero_14
v_add_u32 v181, -16, v180
v_ashrrev_i32 v181, 31, v181
v_or_b32 v182, v153, v181
buffer_load_dwordx4 v[98:101], v182, s[8:11], s69 offen offset:0
v_or_b32 v182, v154, v181
buffer_load_dwordx4 v[102:105], v182, s[8:11], s69 offen offset:0
v_or_b32 v182, v155, v181
buffer_load_dwordx4 v[106:109], v182, s[8:11], s69 offen offset:0
v_or_b32 v182, v156, v181
buffer_load_dwordx4 v[110:113], v182, s[12:15], s69 offen offset:0
v_or_b32 v182, v157, v181
buffer_load_dwordx4 v[114:117], v182, s[12:15], s69 offen offset:0
v_or_b32 v182, v158, v181
buffer_load_dwordx4 v[118:121], v182, s[12:15], s69 offen offset:0
v_or_b32 v182, v159, v181
buffer_load_dwordx4 v[122:125], v182, s[12:15], s69 offen offset:0
v_or_b32 v182, v160, v181
buffer_load_dwordx4 v[126:129], v182, s[12:15], s69 offen offset:0
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
ds_bpermute_b32 v153, v177, v130
ds_bpermute_b32 v130, v178, v130
s_waitcnt vmcnt(6)
ds_bpermute_b32 v154, v177, v131
ds_bpermute_b32 v131, v178, v131
s_waitcnt vmcnt(5)
ds_bpermute_b32 v155, v177, v132
ds_bpermute_b32 v132, v178, v132
s_waitcnt vmcnt(4)
ds_bpermute_b32 v156, v177, v133
ds_bpermute_b32 v133, v178, v133
s_waitcnt vmcnt(3)
ds_bpermute_b32 v157, v177, v134
ds_bpermute_b32 v134, v178, v134
s_waitcnt vmcnt(2)
ds_bpermute_b32 v158, v177, v135
ds_bpermute_b32 v135, v178, v135
s_waitcnt vmcnt(1)
ds_bpermute_b32 v159, v177, v136
ds_bpermute_b32 v136, v178, v136
s_waitcnt vmcnt(0)
ds_bpermute_b32 v160, v177, v137
ds_bpermute_b32 v137, v178, v137
s_waitcnt lgkmcnt(14)
v_perm_b32 v153, v130, v153, v169
s_waitcnt lgkmcnt(12)
v_perm_b32 v154, v131, v154, v170
s_waitcnt lgkmcnt(10)
v_perm_b32 v155, v132, v155, v171
s_waitcnt lgkmcnt(8)
v_perm_b32 v156, v133, v156, v172
s_waitcnt lgkmcnt(6)
v_perm_b32 v157, v134, v157, v173
s_waitcnt lgkmcnt(4)
v_perm_b32 v158, v135, v158, v174
s_waitcnt lgkmcnt(2)
v_perm_b32 v159, v136, v159, v175
s_waitcnt lgkmcnt(0)
v_perm_b32 v160, v137, v160, v176
v_lshlrev_b32 v161, 23, v153
v_and_b32 v161, 2139095040, v161
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
v_cvt_scalef32_pk_bf16_fp8 v179, v2, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v6, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v10, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v14, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v18, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v22, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v26, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v30, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v2, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v6, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v10, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v14, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v18, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v22, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v26, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v30, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v3, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v7, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v11, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v15, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v19, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v23, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v27, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v31, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v3, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v7, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v11, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v15, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v19, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v23, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v27, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v31, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v4, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v8, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v12, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v16, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v20, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v24, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v28, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v32, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v4, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v8, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v12, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v16, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v20, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v24, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v28, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v32, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v5, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v9, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v13, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v17, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v21, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v25, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v29, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v33, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v5, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v9, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v13, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v17, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v21, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v25, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v29, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v33, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_lshlrev_b32 v161, 15, v153
v_and_b32 v161, 2139095040, v161
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
v_cvt_scalef32_pk_bf16_fp8 v179, v34, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v38, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v42, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v46, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v50, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v54, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v58, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v62, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v34, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v38, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v42, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v46, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v50, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v54, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v58, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v62, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v35, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v39, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v43, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v47, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v51, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v55, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v59, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v63, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v35, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v39, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v43, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v47, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v51, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v55, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v59, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v63, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v36, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v40, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v44, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v48, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v52, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v56, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v60, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v64, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v36, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v40, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v44, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v48, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v52, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v56, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v60, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v64, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v37, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v41, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v45, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v49, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v53, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v57, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v61, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v65, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v37, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v41, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v45, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v49, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v53, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v57, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v61, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v65, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_lshlrev_b32 v161, 7, v153
v_and_b32 v161, 2139095040, v161
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
v_cvt_scalef32_pk_bf16_fp8 v179, v66, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v70, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v74, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v78, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v82, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v86, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v90, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v94, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v66, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v70, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v74, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v78, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v82, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v86, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v90, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v94, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v67, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v71, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v75, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v79, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v83, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v87, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v91, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v95, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v67, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v71, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v75, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v79, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v83, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v87, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v91, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v95, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v68, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v72, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v76, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v80, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v84, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v88, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v92, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v96, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v68, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v72, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v76, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v80, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v84, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v88, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v92, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v96, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v69, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v73, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v77, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v81, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v85, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v89, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v93, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v97, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v69, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v73, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v77, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v81, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v85, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v89, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v93, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v97, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_lshrrev_b32 v161, 1, v153
v_and_b32 v161, 2139095040, v161
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
v_cvt_scalef32_pk_bf16_fp8 v179, v98, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v102, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v106, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v110, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v114, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v118, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v122, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v126, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v98, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v102, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v106, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v110, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v114, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v118, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v122, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v126, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v99, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v103, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v107, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v111, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v115, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v119, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v123, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v127, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v99, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v103, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v107, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v111, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v115, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v119, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v123, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v127, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v100, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v104, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v108, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v112, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v116, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v120, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v124, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v128, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v100, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v104, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v108, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v112, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v116, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v120, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v124, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v128, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v101, v161
v_cvt_scalef32_pk_bf16_fp8 v180, v105, v162
v_cvt_scalef32_pk_bf16_fp8 v181, v109, v163
v_cvt_scalef32_pk_bf16_fp8 v182, v113, v164
v_cvt_scalef32_pk_bf16_fp8 v183, v117, v165
v_cvt_scalef32_pk_bf16_fp8 v184, v121, v166
v_cvt_scalef32_pk_bf16_fp8 v185, v125, v167
v_cvt_scalef32_pk_bf16_fp8 v186, v129, v168
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
v_cvt_scalef32_pk_bf16_fp8 v179, v101, v161 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v180, v105, v162 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v181, v109, v163 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v182, v113, v164 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v183, v117, v165 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v184, v121, v166 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v185, v125, v167 op_sel:[1,0,0]
v_cvt_scalef32_pk_bf16_fp8 v186, v129, v168 op_sel:[1,0,0]
v_dot2_f32_bf16 v138, v179, v182, v138
v_dot2_f32_bf16 v139, v179, v183, v139
v_dot2_f32_bf16 v140, v179, v184, v140
v_dot2_f32_bf16 v141, v179, v185, v141
v_dot2_f32_bf16 v142, v179, v186, v142
v_dot2_f32_bf16 v143, v180, v182, v143
v_dot2_f32_bf16 v144, v180, v183, v144
v_dot2_f32_bf16 v145, v180, v184, v145
v_dot2_f32_bf16 v146, v180, v185, v146
v_dot2_f32_bf16 v147, v180, v186, v147
v_dot2_f32_bf16 v148, v181, v182, v148
v_dot2_f32_bf16 v149, v181, v183, v149
v_dot2_f32_bf16 v150, v181, v184, v150
v_dot2_f32_bf16 v151, v181, v185, v151
v_dot2_f32_bf16 v152, v181, v186, v152
label_step_end_3:
s_cmp_eq_u32 s39, 1
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
v_nop
v_nop
v_add_f32 v2, v2, v2 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v2, v2, v2 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v2, 63
v_nop
v_nop
v_mov_b32 v2, s68
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
v_nop
v_nop
v_add_f32 v6, v6, v6 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v6, v6, v6 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v6, 63
v_nop
v_nop
v_mov_b32 v6, s68
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
v_nop
v_nop
v_add_f32 v10, v10, v10 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v10, v10, v10 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v10, 63
v_nop
v_nop
v_mov_b32 v10, s68
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
v_nop
v_nop
v_add_f32 v14, v14, v14 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v14, v14, v14 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v14, 63
v_nop
v_nop
v_mov_b32 v14, s68
v_add_f32 v18, v142, v142 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v18, v18, v18 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v18, v18, v18 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v18, v18, v18 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v18, v18, v18 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v18, v18, v18 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v18, 63
v_nop
v_nop
v_mov_b32 v18, s68
v_add_f32 v3, v143, v143 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v3, v3, v3 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v3, v3, v3 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v3, 63
v_nop
v_nop
v_mov_b32 v3, s68
v_add_f32 v7, v144, v144 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v7, v7, v7 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v7, v7, v7 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v7, v7, v7 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v7, v7, v7 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v7, v7, v7 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v7, 63
v_nop
v_nop
v_mov_b32 v7, s68
v_add_f32 v11, v145, v145 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v11, v11, v11 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v11, v11, v11 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v11, v11, v11 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v11, v11, v11 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v11, v11, v11 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v11, 63
v_nop
v_nop
v_mov_b32 v11, s68
v_add_f32 v15, v146, v146 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v15, v15, v15 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v15, v15, v15 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v15, v15, v15 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v15, v15, v15 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v15, v15, v15 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v15, 63
v_nop
v_nop
v_mov_b32 v15, s68
v_add_f32 v19, v147, v147 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v19, v19, v19 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v19, v19, v19 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v19, v19, v19 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v19, v19, v19 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v19, v19, v19 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v19, 63
v_nop
v_nop
v_mov_b32 v19, s68
v_add_f32 v4, v148, v148 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v4, v4, v4 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v4, v4, v4 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v4, 63
v_nop
v_nop
v_mov_b32 v4, s68
v_add_f32 v8, v149, v149 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v8, v8, v8 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v8, v8, v8 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v8, v8, v8 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v8, v8, v8 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v8, v8, v8 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v8, 63
v_nop
v_nop
v_mov_b32 v8, s68
v_add_f32 v12, v150, v150 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v12, v12, v12 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v12, v12, v12 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v12, v12, v12 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v12, v12, v12 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v12, v12, v12 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v12, 63
v_nop
v_nop
v_mov_b32 v12, s68
v_add_f32 v16, v151, v151 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v16, v16, v16 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v16, v16, v16 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v16, v16, v16 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v16, v16, v16 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v16, v16, v16 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v16, 63
v_nop
v_nop
v_mov_b32 v16, s68
v_add_f32 v20, v152, v152 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v20, v20, v20 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v20, v20, v20 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v20, v20, v20 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v20, v20, v20 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v20, v20, v20 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v20, 63
v_nop
v_nop
v_mov_b32 v20, s68
s_add_u32 s68, s3, 1
s_mul_i32 s68, s68, 3
s_add_u32 s69, s2, 1
s_mul_i32 s69, s69, 5
s_cmp_le_u32 s68, s37
s_cselect_b32 s70, 1, 0
s_cmp_le_u32 s69, s38
s_cselect_b32 s71, 1, 0
s_and_b32 s49, s70, s71
v_cmp_eq_i32 s[66:67], 0, v0
s_cmp_le_u32 s6, s7
s_cbranch_scc0 label_workspace_18
s_mul_i32 s68, s40, s33
s_mul_i32 s69, s5, s34
s_add_u32 s68, s68, s69
v_lshrrev_b32 v2, 16, v2
s_lshl_b32 s69, s68, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[50:51], s[56:57]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v2, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v6, 16, v6
s_mov_b32 s70, s68
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[50:51], s[58:59]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v6, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v10, 16, v10
s_mov_b32 s70, s68
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[50:51], s[60:61]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v10, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v14, 16, v14
s_mov_b32 s70, s68
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[50:51], s[62:63]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v14, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v18, 16, v18
s_mov_b32 s70, s68
s_lshl_b32 s69, s34, 2
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[50:51], s[64:65]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v18, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v3, 16, v3
s_mov_b32 s70, s68
s_mov_b32 s69, s33
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[52:53], s[56:57]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v3, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v7, 16, v7
s_mov_b32 s70, s68
s_mov_b32 s69, s33
s_add_u32 s70, s70, s69
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[52:53], s[58:59]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v7, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v11, 16, v11
s_mov_b32 s70, s68
s_mov_b32 s69, s33
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[52:53], s[60:61]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v11, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v15, 16, v15
s_mov_b32 s70, s68
s_mov_b32 s69, s33
s_add_u32 s70, s70, s69
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[52:53], s[62:63]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v15, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v19, 16, v19
s_mov_b32 s70, s68
s_mov_b32 s69, s33
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s34, 2
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[52:53], s[64:65]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v19, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v4, 16, v4
s_mov_b32 s70, s68
s_lshl_b32 s69, s33, 1
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[54:55], s[56:57]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v4, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v8, 16, v8
s_mov_b32 s70, s68
s_lshl_b32 s69, s33, 1
s_add_u32 s70, s70, s69
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[54:55], s[58:59]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v8, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v12, 16, v12
s_mov_b32 s70, s68
s_lshl_b32 s69, s33, 1
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[54:55], s[60:61]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v12, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v16, 16, v16
s_mov_b32 s70, s68
s_lshl_b32 s69, s33, 1
s_add_u32 s70, s70, s69
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[54:55], s[62:63]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v16, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v20, 16, v20
s_mov_b32 s70, s68
s_lshl_b32 s69, s33, 1
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s34, 2
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[54:55], s[64:65]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v20, v1, s[24:27], 0 offen offset:0
s_branch label_stored_19
label_workspace_18:
s_mul_i32 s68, s4, s32
s_cmp_eq_u32 s49, 1
s_cbranch_scc1 label_vector_20
s_mul_i32 s69, s40, s35
s_add_u32 s69, s69, s68
s_mul_i32 s70, s5, s36
s_add_u32 s69, s69, s70
s_lshl_b32 s70, s69, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[50:51], s[56:57]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v2, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s36
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[50:51], s[58:59]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v6, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s36, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[50:51], s[60:61]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v10, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mul_i32 s70, s36, 3
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[50:51], s[62:63]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v14, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s36, 2
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[50:51], s[64:65]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v18, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s35
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[52:53], s[56:57]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v3, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s35
s_add_u32 s71, s71, s70
s_mov_b32 s70, s36
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[52:53], s[58:59]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v7, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s35
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s36, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[52:53], s[60:61]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v11, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s35
s_add_u32 s71, s71, s70
s_mul_i32 s70, s36, 3
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[52:53], s[62:63]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v15, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s35
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s36, 2
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[52:53], s[64:65]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v19, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[54:55], s[56:57]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v4, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_mov_b32 s70, s36
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[54:55], s[58:59]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v8, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s36, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[54:55], s[60:61]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v12, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_mul_i32 s70, s36, 3
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[54:55], s[62:63]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v16, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s36, 2
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[54:55], s[64:65]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v20, v1, s[28:31], 0 offen offset:0
s_branch label_tile_stored_21
label_vector_20:
s_mul_i32 s69, s40, s35
s_add_u32 s69, s69, s68
s_mul_i32 s70, s5, s36
s_add_u32 s69, s69, s70
s_lshl_b32 s70, s69, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dwordx2 v[2:3], v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dword v4, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s36
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dwordx2 v[6:7], v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_mov_b32 s70, s36
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dword v8, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s36, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dwordx2 v[10:11], v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s36, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dword v12, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mul_i32 s70, s36, 3
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dwordx2 v[14:15], v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_mul_i32 s70, s36, 3
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dword v16, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s36, 2
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dwordx2 v[18:19], v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s36, 2
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dword v20, v1, s[28:31], 0 offen offset:0
label_tile_stored_21:
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
v_nop
v_nop
v_add_f32 v2, v2, v2 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v2, v2, v2 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v2, 63
v_nop
v_nop
v_mov_b32 v2, s68
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
v_nop
v_nop
v_add_f32 v3, v3, v3 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v3, v3, v3 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v3, 63
v_nop
v_nop
v_mov_b32 v3, s68
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
v_nop
v_nop
v_add_f32 v4, v4, v4 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v4, v4, v4 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v4, 63
v_nop
v_nop
v_mov_b32 v4, s68
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
v_nop
v_nop
v_add_f32 v5, v5, v5 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v5, v5, v5 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v5, 63
v_nop
v_nop
v_mov_b32 v5, s68
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
v_nop
v_nop
v_add_f32 v6, v6, v6 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v6, v6, v6 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v6, 63
v_nop
v_nop
v_mov_b32 v6, s68
v_add_f32 v8, v143, v143 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v8, v8, v8 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v8, v8, v8 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v8, v8, v8 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v8, v8, v8 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v8, v8, v8 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v8, 63
v_nop
v_nop
v_mov_b32 v8, s68
v_add_f32 v9, v144, v144 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v9, v9, v9 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v9, v9, v9 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v9, v9, v9 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v9, v9, v9 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v9, v9, v9 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v9, 63
v_nop
v_nop
v_mov_b32 v9, s68
v_add_f32 v10, v145, v145 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v10, v10, v10 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v10, v10, v10 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v10, v10, v10 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v10, v10, v10 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v10, v10, v10 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v10, 63
v_nop
v_nop
v_mov_b32 v10, s68
v_add_f32 v11, v146, v146 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v11, v11, v11 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v11, v11, v11 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v11, v11, v11 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v11, v11, v11 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v11, v11, v11 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v11, 63
v_nop
v_nop
v_mov_b32 v11, s68
v_add_f32 v12, v147, v147 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v12, v12, v12 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v12, v12, v12 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v12, v12, v12 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v12, v12, v12 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v12, v12, v12 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v12, 63
v_nop
v_nop
v_mov_b32 v12, s68
v_add_f32 v14, v148, v148 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v14, v14, v14 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v14, v14, v14 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v14, v14, v14 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v14, v14, v14 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v14, v14, v14 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v14, 63
v_nop
v_nop
v_mov_b32 v14, s68
v_add_f32 v15, v149, v149 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v15, v15, v15 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v15, v15, v15 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v15, v15, v15 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v15, v15, v15 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v15, v15, v15 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v15, 63
v_nop
v_nop
v_mov_b32 v15, s68
v_add_f32 v16, v150, v150 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v16, v16, v16 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v16, v16, v16 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v16, v16, v16 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v16, v16, v16 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v16, v16, v16 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v16, 63
v_nop
v_nop
v_mov_b32 v16, s68
v_add_f32 v17, v151, v151 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v17, v17, v17 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v17, v17, v17 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v17, v17, v17 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v17, v17, v17 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v17, v17, v17 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v17, 63
v_nop
v_nop
v_mov_b32 v17, s68
v_add_f32 v18, v152, v152 quad_perm:[1,0,3,2] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v18, v18, v18 quad_perm:[2,3,0,1] row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v18, v18, v18 row_half_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v18, v18, v18 row_mirror row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_nop
v_add_f32 v18, v18, v18 row_bcast:15 row_mask:0xa bank_mask:0xf
v_nop
v_nop
v_add_f32 v18, v18, v18 row_bcast:31 row_mask:0xf bank_mask:0xf bound_ctrl:1
v_nop
v_readlane_b32 s68, v18, 63
v_nop
v_nop
v_mov_b32 v18, s68
s_add_u32 s68, s3, 1
s_mul_i32 s68, s68, 3
s_add_u32 s69, s2, 1
s_mul_i32 s69, s69, 5
s_cmp_le_u32 s68, s37
s_cselect_b32 s70, 1, 0
s_cmp_le_u32 s69, s38
s_cselect_b32 s71, 1, 0
s_and_b32 s49, s70, s71
v_cmp_eq_i32 s[66:67], 0, v0
s_cmp_le_u32 s6, s7
s_cbranch_scc0 label_workspace_22
s_mul_i32 s68, s40, s33
s_mul_i32 s69, s5, s34
s_add_u32 s68, s68, s69
v_lshrrev_b32 v2, 16, v2
s_lshl_b32 s69, s68, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[50:51], s[56:57]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v2, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v3, 16, v3
s_mov_b32 s70, s68
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[50:51], s[58:59]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v3, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v4, 16, v4
s_mov_b32 s70, s68
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[50:51], s[60:61]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v4, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v5, 16, v5
s_mov_b32 s70, s68
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[50:51], s[62:63]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v5, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v6, 16, v6
s_mov_b32 s70, s68
s_lshl_b32 s69, s34, 2
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[50:51], s[64:65]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v6, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v8, 16, v8
s_mov_b32 s70, s68
s_mov_b32 s69, s33
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[52:53], s[56:57]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v8, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v9, 16, v9
s_mov_b32 s70, s68
s_mov_b32 s69, s33
s_add_u32 s70, s70, s69
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[52:53], s[58:59]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v9, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v10, 16, v10
s_mov_b32 s70, s68
s_mov_b32 s69, s33
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[52:53], s[60:61]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v10, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v11, 16, v11
s_mov_b32 s70, s68
s_mov_b32 s69, s33
s_add_u32 s70, s70, s69
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[52:53], s[62:63]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v11, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v12, 16, v12
s_mov_b32 s70, s68
s_mov_b32 s69, s33
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s34, 2
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[52:53], s[64:65]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v12, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v14, 16, v14
s_mov_b32 s70, s68
s_lshl_b32 s69, s33, 1
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[54:55], s[56:57]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v14, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v15, 16, v15
s_mov_b32 s70, s68
s_lshl_b32 s69, s33, 1
s_add_u32 s70, s70, s69
s_mov_b32 s69, s34
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[54:55], s[58:59]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v15, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v16, 16, v16
s_mov_b32 s70, s68
s_lshl_b32 s69, s33, 1
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s34, 1
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[54:55], s[60:61]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v16, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v17, 16, v17
s_mov_b32 s70, s68
s_lshl_b32 s69, s33, 1
s_add_u32 s70, s70, s69
s_mul_i32 s69, s34, 3
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[54:55], s[62:63]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v17, v1, s[24:27], 0 offen offset:0
v_lshrrev_b32 v18, 16, v18
s_mov_b32 s70, s68
s_lshl_b32 s69, s33, 1
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s34, 2
s_add_u32 s70, s70, s69
s_lshl_b32 s69, s70, 1
v_mov_b32 v1, s69
s_and_b64 s[72:73], s[54:55], s[64:65]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_short v18, v1, s[24:27], 0 offen offset:0
s_branch label_stored_23
label_workspace_22:
s_mul_i32 s68, s4, s32
s_cmp_eq_u32 s49, 1
s_cbranch_scc1 label_vector_24
s_mul_i32 s69, s40, s35
s_add_u32 s69, s69, s68
s_mul_i32 s70, s5, s36
s_add_u32 s69, s69, s70
s_lshl_b32 s70, s69, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[50:51], s[56:57]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v2, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s36
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[50:51], s[58:59]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v3, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s36, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[50:51], s[60:61]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v4, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mul_i32 s70, s36, 3
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[50:51], s[62:63]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v5, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s36, 2
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[50:51], s[64:65]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v6, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s35
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[52:53], s[56:57]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v8, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s35
s_add_u32 s71, s71, s70
s_mov_b32 s70, s36
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[52:53], s[58:59]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v9, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s35
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s36, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[52:53], s[60:61]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v10, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s35
s_add_u32 s71, s71, s70
s_mul_i32 s70, s36, 3
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[52:53], s[62:63]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v11, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s35
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s36, 2
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[52:53], s[64:65]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v12, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[54:55], s[56:57]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v14, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_mov_b32 s70, s36
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[54:55], s[58:59]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v15, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s36, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[54:55], s[60:61]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v16, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_mul_i32 s70, s36, 3
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[54:55], s[62:63]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v17, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s36, 2
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
s_and_b64 s[72:73], s[54:55], s[64:65]
s_and_b64 s[72:73], s[72:73], s[66:67]
v_cndmask_b32 v1, -1, v1, s[72:73]
buffer_store_dword v18, v1, s[28:31], 0 offen offset:0
s_branch label_tile_stored_25
label_vector_24:
s_mul_i32 s69, s40, s35
s_add_u32 s69, s69, s68
s_mul_i32 s70, s5, s36
s_add_u32 s69, s69, s70
s_lshl_b32 s70, s69, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dwordx4 v[2:5], v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s36, 2
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dword v6, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s35
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dwordx4 v[8:11], v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_mov_b32 s70, s35
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s36, 2
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dword v12, v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dwordx4 v[14:17], v1, s[28:31], 0 offen offset:0
s_mov_b32 s71, s69
s_lshl_b32 s70, s35, 1
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s36, 2
s_add_u32 s71, s71, s70
s_lshl_b32 s70, s71, 2
v_mov_b32 v1, s70
v_cndmask_b32 v1, -1, v1, s[66:67]
buffer_store_dword v18, v1, s[28:31], 0 offen offset:0
label_tile_stored_25:
label_stored_23:
label_epilogue_end_17:
s_endpgm
.Lgemm_BM3_TN5_LANES_K64_WAVES1_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_end:
.size gemm_BM3_TN5_LANES_K64_WAVES1_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N, .Lgemm_BM3_TN5_LANES_K64_WAVES1_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_end - gemm_BM3_TN5_LANES_K64_WAVES1_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N
.rodata
.p2align 6
.amdhsa_kernel gemm_BM3_TN5_LANES_K64_WAVES1_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N
  .amdhsa_user_sgpr_kernarg_segment_ptr 1
  .amdhsa_kernarg_size 104
  .amdhsa_accum_offset 208
  .amdhsa_next_free_vgpr 208
  .amdhsa_next_free_sgpr 89
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
    macrotile: [5, 3, 4096]
    threads: [64, 1, 1]
    grid: [TilesX, TilesY, Batch]
  MatrixInstruction: [16, 16, 16, 1]
  EnableMatrixInstruction: True
  MIWaveTile: [1, 1]
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
  - .name: gemm_BM3_TN5_LANES_K64_WAVES1_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N
    .symbol: gemm_BM3_TN5_LANES_K64_WAVES1_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N.kd
    .kernarg_segment_size: 104
    .kernarg_segment_align: 8
    .group_segment_fixed_size: 0
    .private_segment_fixed_size: 0
    .max_flat_workgroup_size: 64
    .wavefront_size: 64
    .sgpr_count: 95
    .vgpr_count: 208
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
