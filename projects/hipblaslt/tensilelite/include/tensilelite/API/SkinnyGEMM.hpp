// Copyright Advanced Micro Devices, Inc., or its affiliates.
// SPDX-License-Identifier: MIT

#ifndef ROCM_TENSILELITE_API_SKINNYGEMM_HPP
#define ROCM_TENSILELITE_API_SKINNYGEMM_HPP

#include <tensilelite/Codegen/Target.hpp>

#include <cstdint>
#include <string>

namespace rocm::tensilelite {

/// Compile-time knobs of the skinny MXFP8 GEMM, named after the constants of
/// the MLIR reference (gemm_mxfp8_skinny.mlir).
struct SkinnyGEMMConfig {
  /// BM: rows of the skinny operand handled per workgroup.
  int32_t bm = 1;
  /// TN: output columns of the wide operand per lane group.
  int32_t tn = 1;
  /// LANES_K: lanes that split the k dimension; one of 4, 8, 16 and 64.
  int32_t lanesK = 64;
  /// WAVES: wavefronts per workgroup, so a block has 64 * waves lanes.
  int32_t waves = 4;
  /// PF: prefetch ring depth; 0 means no ring.
  int32_t prefetch = 2;
  /// UP_ITERS: 0 rings the scales, otherwise the up-front scale vector size.
  int32_t upIters = 0;
  /// PARTIAL_STEPS: 0, 1 or 2, derived by the host from k and spk.
  int32_t partialSteps = 0;
  /// GROUP: workgroup grouping factor of the grid swizzle.
  int32_t group = 1;
  /// NUM_XCDS: number of XCDs the workgroups are distributed over.
  int32_t numXcds = 1;
  /// GRID_3D: false selects a persistent 1-D launch.
  bool grid3d = true;
};

/// Returns the symbol of the GEMM kernel, in the reference's format:
/// gemm_BM<v>_TN<v>_LANES_K<v>_WAVES<v>_UP_ITERS<v>_PARTIAL_STEPS<v>_PF<v>_
/// GROUP<v>_NUM_XCDS<v>_GRID_3D<v>. Throws std::invalid_argument for invalid
/// knobs.
std::string skinnyGEMMKernelName(const SkinnyGEMMConfig &config);

/// Emits the GEMM kernel as the assembly text of one kernel, for
/// assembleToHSACO, replicating the behavior and the schedule of the MLIR
/// reference, for any upIters and partialSteps (the partial K steps handle a k
/// or spk that is not a multiple of 64 * lanesK). The kernargs, with their
/// byte offsets, are the pointers D (0), A (8), B (16), scalesA (24), scalesB
/// (32), ws (40) and C (48), then the i32 ldD (56), ldA (60), ldB (64), m (68),
/// n (72), k (76), spk (80) and ldC (84), then the f32 alpha (88) and beta
/// (92), then the hidden group sizes x, y, z (96 to 104) and block counts x, y,
/// z (108 to 116), for a segment size of 120. The block is (64 * waves, 1, 1).
/// With a single split the kernel stores D = the bf16 truncation (top 16 bits)
/// of alpha * acc, else each split stores its raw f32 slice into the
/// workspace, which splitk_reduce sums and scales. The kernel does not read C,
/// ldC or beta. BN = waves * (64 / lanesK) * tn.
///
/// grid3d = true: the grid is (ceil(max(m, n) / BN), ceil(min(m, n) / bm),
/// ceil(k / spk)) and the block (x, y, z) is the tile (tx, ty, kz). group and
/// numXcds are ignored, as in the reference, so the kernel is the one of group
/// = 1 and numXcds = 1 under another name. Block x runs the wide tile of an
/// XCD grouping: the 32 / BN tiles that share scale lines (when BN is a power
/// of two below 32) run on one XCD, and the tail of the grid that is not a
/// multiple of 8 * (32 / BN) keeps the identity.
///
/// grid3d = false: the persistent launch with the grid (B, 1, 1) for any B >=
/// 1. Block b runs the tiles b, b + B, ... of the flattened tile space, of
/// ceil(max(m, n) / BN) * ceil(min(m, n) / bm) * ceil(k / spk) tiles, in the
/// order of the XCD remap (numXcds) and the grouped decode (group); blocks past
/// the tile count do nothing. The kernel computes the split count in the
/// kernel and reads only the hidden block count x.
///
/// Throws std::invalid_argument for invalid knobs and when the configuration
/// exceeds the LDS or the register budget.
std::string emitSkinnyGEMM(const codegen::Target &target,
                           const SkinnyGEMMConfig &config);

/// Emits the split-K reduction kernel splitk_reduce: with sum[i, j] the f32
/// sum over z = 0..splits-1 of ws[z * m * n + j * m + i], summed in split order
/// from 0.0, D[i, j] = the bf16 truncation (top 16 bits) of fma(beta, C[i, j],
/// alpha * sum[i, j]). C is read, as bf16 at C[j * ldC + i], only when beta is
/// not zero (-0.0 counts as zero), so it may be uninitialized otherwise; it
/// may alias D, and ldC is its own column stride. The kernargs, with their
/// byte offsets, are the pointers D (0, bf16, column stride ldD), ws (8, f32)
/// and C (16), then the i32 ldD (24), m (28), n (32), splits (36) and ldC
/// (40), then the f32 alpha (44) and beta (48), then the hidden group sizes
/// x, y, z (52 to 60) and block counts x, y, z (64 to 72), for a segment size
/// of 80. The block is (256, 1, 1) and the grid is (ceil(m / 256), n, 1);
/// splits must be at least 1.
std::string emitSplitKReduce(const codegen::Target &target);

} // namespace rocm::tensilelite

#endif // ROCM_TENSILELITE_API_SKINNYGEMM_HPP
