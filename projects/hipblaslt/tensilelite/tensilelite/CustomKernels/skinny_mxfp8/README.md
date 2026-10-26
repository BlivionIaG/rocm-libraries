<!--
Copyright (C) 2026 Advanced Micro Devices, Inc.
SPDX-License-Identifier: MIT
-->

# Skinny MXFP8 custom kernels

Skinny GEMM kernels for MXFP8 (FP8 E4M3 A and B, E8M0 scales per 32 elements, BF16 D), hipBLASLt TN, with one
extent of at most 4 and the other wide. They serve LLM decode: `y[T, H] = x[T, K] W[H, K]^T` reaches hipBLASLt as
`m` = H (wide), `n` = T (tokens, skinny), `k` = K; the kernels also serve the transposed problem (skinny `m`).

gfx950 only. Three kernels, each shipped twice (`_SKINNY_N` for skinny `n`, `_SKINNY_M` for skinny `m`): six `.s`
files, one per `custom.config` and one Tensile test YAML (`Tests/custom/custom_skinny_mxfp8_tn_<kernel>_<n|m>.yaml`)
each.

## Provenance

The assembly is emitted by the TensileLite C++ skinny GEMM emitter, which is not merged: it lives on the branch
`users/fabianmcg/skinny-gemm-integration`, commit `1875cdd9d229fb93b4b0cc4c8dae319929d1363c`. Reviewers cannot
regenerate the files without that branch. The `custom.config` repository field names it as free text
(`AddCustomConfig --repository` does not require a URL).

Emitter knobs of each kernel (all three share prefetch 1, upIters 0, partialSteps 1, group 1, numXcds 1, grid3d):

| Kernel | Emitter name | bm | tn | lanesK | waves | BN | Threads | Depth (`64 * lanesK`) |
| ------ | ------------ | -- | -- | ------ | ----- | -- | ------- | --------------------- |
| large H | `gemm_BM4_TN4_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1` | 4 | 4 | 16 | 2 | 32 | 128 | 1024 |
| large K | `gemm_BM3_TN5_LANES_K64_WAVES1_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1` | 3 | 5 | 64 | 1 | 5 | 64 | 4096 |
| medium | `gemm_BM2_TN2_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1` | 2 | 2 | 16 | 2 | 16 | 128 | 1024 |

`BN = waves * (64 / lanesK) * tn` is the wide tile; `bm` is the skinny tile. The symbol of every file is the emitter
name plus `_SKINNY_N` or `_SKINNY_M`, and the file is `<symbol>.s`.

Reproducing a file from the emitter:

1. Emit the kernel with the emitter at that commit (`SkinnyGEMMConfig` with the knobs above, then
   `emitSkinnyGEMM(config, "gfx950")`). The emission is deterministic.
2. Delete the single `.amdhsa_code_object_version` line. `.amdgcn_target` stays: hipBLASLt links custom kernels into
   its code objects at code object version 4 (see `../README.md`), and the assembler flag then applies.
3. Rename the kernel symbol: append `_SKINNY_N` or `_SKINNY_M` to every whole-token occurrence of the emitter name.
   These are `.protected`, `.globl`, `.type`, the entry label, both operands of `.size`, `.amdhsa_kernel`, the
   metadata `.name` and the metadata `.symbol` (`<name>.kd`). The file-local `.L<name>_end` label is not a whole
   token and is left alone.
4. Run `AddCustomConfig` (below).

Nothing else is edited by hand, and the code of the `_SKINNY_N` and `_SKINNY_M` copies is byte-identical apart from
the symbol; only the `custom.config` launch description differs.

## Kernel arguments

104 bytes, as in the `.args` metadata of every file:

| Offset | Size | Name | Tensile semantic |
| ------ | ---- | ---- | ---------------- |
| 0 | 8 | D | `AddressD` |
| 8 | 8 | A | `AddressA` |
| 16 | 8 | B | `AddressB` |
| 24 | 8 | scalesA | `AddressMXScaleA` |
| 32 | 8 | scalesB | `AddressMXScaleB` |
| 40 | 8 | ws | `ConstantZero` (uint64): workspace pointer, always null |
| 48 | 4 | ldD | `StrideD0` (leading dimension, elements) |
| 52 | 4 | ldA | `StrideA0` |
| 56 | 4 | ldB | `StrideB0` |
| 60 | 4 | m | `SizeFree0` |
| 64 | 4 | n | `SizeFree1` |
| 68 | 4 | k | `SizeSum` |
| 72 | 4 | spk | `SizeSum`: the K extent of one split, so the whole of K (single split) |
| 76-87 | 4 each | hidden group size x, y, z | filled by the runtime |
| 88-99 | 4 each | hidden block count x, y, z | filled by the runtime |
| 100-103 | 4 | padding | |

The grid-3D kernels read `hidden_block_count_{x,y,z}`. hipBLASLt links custom kernels at code object version 4,
where the metadata still carries these hidden kinds. Bring-up observation (positive and negative control kernels that
exit unless the block counts equal the expected tile counts): the runtime fills them at that version.

## Scale layout

The scales are read in the gfx950 pre-swizzled layout (AITER `e8m0_shuffle`, scale rows padded to 32 and K blocks to
8). Each `custom.config` declares it with `MXScaleFormat: HostPreSwizzle`, which `AddCustomConfig` takes from the
`MXScaleFormat` ForkParameter of the Tensile YAML. The Tensile client uses that declaration to upload the scales in the
swizzled layout for a skinny extent that is not a multiple of 32, which also needs `MXScaleFormat: 1` under the YAML's
`GlobalParameters` (the client's `--mx-scale-format`). Plain-scale custom kernels must not declare it.

## Resources

All three: no AGPRs, no LDS (`group_segment_fixed_size 0`), no scratch (`private_segment_fixed_size 0`, no spills).
Each pair of `_SKINNY_N` / `_SKINNY_M` files has the same numbers.

| Kernel | VGPR | SGPR (`.amdhsa_next_free_sgpr`) | SGPR (metadata `.sgpr_count`) |
| ------ | ---- | ------------------------------- | ----------------------------- |
| large H | 200 | 88 | 94 |
| large K | 208 | 89 | 95 |
| medium | 104 | 80 | 86 |

The metadata count is the directive value plus six reserved SGPRs.

## Launch description and the two copies

The kernel always takes wide tiles on grid x and skinny tiles on grid y, with `threads = [64 * waves, 1, 1]`:

| Copy | macrotile | grid |
| ---- | --------- | ---- |
| `_SKINNY_N` | `[BN, bm, 64 * lanesK]` | `[TilesX, TilesY, Batch]` |
| `_SKINNY_M` | `[bm, BN, 64 * lanesK]` | `[TilesY, TilesX, Batch]` |

develop's `CustomGridSize` kinds cannot express both orientations from one `custom.config`. Letting the logic file
override the `CustomKernel` block of one symbol does not help either: the `custom.config` of the `.s` file is merged
over the logic file's solution (`normalize_execution_policy_with_defaults` in `ExecutionPolicy.py`), so the file wins.
Each kernel therefore ships twice under two symbols, each with its own launch description.

## Predicates

All are in `custom.config` (the `Assert*` keys), so a problem that fails one never runs the kernel:

| Predicate | Why |
| --------- | --- |
| `AssertSizeEqual {2: 1}` | batch 1: there are no batch strides in the kernel arguments |
| `AssertStride{A,B,D}Equal {0: 1}` | unit element strides along K for A and B, and along `m` for D |
| `AssertSizeLessThan` skinny extent `< 5` | skinny extent 1 to 4 (`n` for `_SKINNY_N`, `m` for `_SKINNY_M`) |
| `AssertSizeLessThan` wide extent `< 1048577` | the wide extent is at most 2^20 (kernel limit) |
| `AssertSizeGreaterThan {0, 1, 3: 0}` | sizes are positive, so a zero-size problem never launches an empty grid |
| `AssertSummationElementMultiple 256` | `K % 256 == 0`: partialSteps 1 has no K tail, and 256 is the largest multiple Tensile can assert |
| `AssertStrideAMultiple {1: 4}`, `AssertStrideBMultiple {1: 4}` | `lda % 4 == 0` and `ldb % 4 == 0`, in elements (bytes for FP8): the loads read whole dwords of the A and B columns |

There is no `ldd` constraint: unpadded D is correct and nothing outside the valid region is written. There are no
alpha or beta predicates by decision, see the limitations.

## Library logic

hipBLASLt picks the kernels through the `Range` logic file
`gfx950/gfx950/Range/gfx950_Cijk_Alik_Bljk_F8BS_MXAE8B32_MXBE8B32_BH_UserArgs.yaml`. It carries the plain MX problem
type (no bias, activation, scale-AB or scale-alpha vector), so it gets its own placeholder library. Bring-up traces
(`TENSILE_DB=0x8`) showed its rows being consulted before the Origami pick, and problems with bias, an activation
or a scale vector falling through to Origami; this is an observation, not something this file enforces. ScheduleName,
ArchitectureName, MinimumRequiredVersion and DefaultSolution are taken from the shipped Origami MXFP8 logic,
`gfx950/gfx950/Origami/gfx950_Cijk_Alik_Bljk_F8BS_MXAE8B32_MXBE8B32_BH_Bias_HA_S_SAB_SAV_UserArgs.yaml`, with the
problem type reduced as above. The header is `DeviceNames: [Device 75a0]`, `CUCount: null`; during bring-up an
MI355X (`0x75a3`) matched it through the fallback for devices without their own entry. The file is fully resolved
(every solution field written out, as `LibraryIO.createLibraryLogic` does) and starts
with `MinimumRequiredVersion`, since the chip-id check reads its first line. Its six solutions are
`SolutionIndex` 0 to 5: large H, large K, medium, each `_SKINNY_N` then `_SKINNY_M`.

Each row is `[Mmin, Mmax, Nmin, Nmax, Batchmin, Batchmax, Kmin, Kmax]`, inclusive, with batch `[1, 1]`. Skinny `n`
rows put the wide range on `m` and point at the `_SKINNY_N` solution; skinny `m` rows put it on `n` and point at
`_SKINNY_M`.

| Kernel | Orientation | Skinny extent | Wide extent (H) | K |
| ------ | ----------- | ------------- | --------------- | - |
| large H | skinny `n` | 1 to 3 | 16385 to 262143 | 2048 to 16384 |
| large H | skinny `n` | 1 to 3 | 16385 to 131071 | 16385 to 32768 |
| large H | skinny `n` | 1 to 4 | 29584 to 262143 | 2048 to 8192 |
| large H | skinny `m` | 1 to 4 | 16385 to 262143 | 2048 to 16384 |
| large H | skinny `m` | 1 to 4 | 16385 to 131071 | 16385 to 32768 |
| large K | skinny `n` | 1 to 3 | 2048 to 10240 | 8193 to 16384 |
| large K | skinny `m` | 1 to 3 | 2048 to 10240 | 8193 to 16384 |
| medium | skinny `n` | 1 to 4 | 2048 to 10240 | 2048 to 8192 |
| medium | skinny `n` | 1 to 2 | 2048 to 16384 | 2048 to 8192 |
| medium | skinny `m` | 1 to 4 | 2048 to 10240 | 2048 to 7168 |
| medium | skinny `m` | 1 to 4 | 2048 to 8192 | 2048 to 8192 |

The large H boxes are capped so that the wide operand stays below 2^32 bytes (`H * K <= 262143 * 16384` for
K up to 16384 and `131071 * 32768` above): the kernels use 32-bit buffer addressing and give wrong results once the
wide operand reaches 4 GiB. Routed shapes are therefore capped below 2^32 bytes of the wide operand; larger problems
fall through to Origami. A padded `lda` (or `ldb`) well above K can still push the operand past the limit inside a
box, which is a documented limitation.

Row selection: at library build Tensile sorts the rows of the table by key (lexicographically: `Mmin`, then `Mmax`,
and so on), and at run time the first row in that order that contains the problem wins (`SolutionLibrary.py`,
`DistanceMatchingTable` for `Range` in `PropertyMatching.hpp`). The file lists the rows in that sorted order, so
the order is intentional, and if two rows ever overlapped the lower key would win. The boxes of different solutions
are pairwise disjoint (asserted by the generator script that produced the file, which also writes the rows sorted
by key); only boxes of the same solution overlap, where
the winner makes no difference. `K` is also bound by `K % 256 == 0` in the kernel predicate, so an unaligned K inside
a box falls through to Origami.

Where the boxes come from: a TensileLite skinny-GEMM benchmark campaign, measured on shared and contended MI355X
GPUs, with Origami's default pick as the baseline. Each box is the largest set of measured points where the kernel
is within a ratio of 1.05 of the baseline time (kernel over baseline, per point). The upper bounds go beyond the
campaign data: according to the campaign the wide extent was measured up to H = 151936 and K up to 25600, so H above
151936 and K above 25600 (up to 262143 and 32768) are extrapolation. The campaign's large H boxes reached
H = 2^20; they are split at the 4 GiB limit above. Outside the boxes the kernels lose to Origami at some points,
for example the large K kernel at skinny 4 with H of 5120 or more.

## Limitations

- alpha 1 and beta 0 are assumed; C is not read and alpha and beta are not applied. Alpha and beta support is
  tracked separately, so no predicate enforces them.
- The kernels truncate the FP32 result to BF16 instead of rounding to nearest even: norm error about 4e-3 against
  about 5e-4 for kernels that round (figures measured during bring-up against the Origami pick).
- No bias, activation or scale vectors: the plain problem type of the logic file lets such problems fall through.
- Single split and no workspace; the workspace pointer is zero.
- gfx950 only.

## Tensile metadata

Each `.s` embeds its `custom.config`, generated from the Tensile YAML of the same kernel and orientation. To refresh
one, delete the existing block first: `AddCustomConfig` will not overwrite it. The `custom.config` of the `_SKINNY_N`
and `_SKINNY_M` copies differs only in the launch description (macrotile and grid), the size asserts and the
derived `MIWaveTile`.

```bash
python -m tensilelite.AddCustomConfig \
  tensilelite/CustomKernels/skinny_mxfp8/gemm_BM4_TN4_LANES_K16_WAVES2_UP_ITERS0_PARTIAL_STEPS1_PF1_GROUP1_NUM_XCDS1_GRID_3D1_SKINNY_N.s \
  --yaml tensilelite/Tests/custom/custom_skinny_mxfp8_tn_large_h_n.yaml \
  --origin skinny_mxfp8 \
  --repository "TensileLite C++ skinny GEMM emitter, unmerged branch users/fabianmcg/skinny-gemm-integration @1875cdd9d22" \
  --version 1.0.0
```
