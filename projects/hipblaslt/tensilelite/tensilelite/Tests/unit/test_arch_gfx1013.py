# Copyright Advanced Micro Devices, Inc., or its affiliates.
# SPDX-License-Identifier: MIT
"""gfx1013 (Cyan Skillfish, the BC-250's GPU) is a build target.

The part has to survive the same four lookups every other architecture goes
through: the build driver's allow-list (``architectureMap``), the ``all``
expansion (``SUPPORTED_ISA``/``SUPPORTED_GFX``), the ISA round trip, and the
clang macro guard. A missing entry in any one of them is silent at build time
and only shows up as a device that finds no library.

It reads Navi 10's capability name because it is Navi 10's ISA plus the A
encoding. That is also why nothing here asserts a dot capability: the RDNA1
ISA has no ``v_dot*`` until gfx1011, so gfx1013 must not inherit one.
"""

import pytest

from tensilelite.Common.Architectures import (
    SUPPORTED_GFX,
    SUPPORTED_ISA,
    architectureMap,
    archMacroNames,
    gfxToIsa,
    isaToGfx,
)
from tensilelite.Common.Types import IsaVersion

pytestmark = pytest.mark.unit

GFX1013 = "gfx1013"
ISA_GFX1013 = IsaVersion(10, 1, 3)


def test_gfx1013_is_on_the_build_driver_allow_list():
    assert GFX1013 in architectureMap


def test_gfx1013_reads_navi10_capabilities():
    assert architectureMap[GFX1013] == "navi10"


def test_all_expands_to_gfx1013():
    assert ISA_GFX1013 in SUPPORTED_ISA
    assert GFX1013 in SUPPORTED_GFX


def test_the_isa_round_trips():
    assert gfxToIsa(GFX1013) == ISA_GFX1013
    assert isaToGfx(ISA_GFX1013) == GFX1013


def test_it_guards_exactly_one_compiler_macro():
    assert archMacroNames(ISA_GFX1013) == ["__gfx1013__"]
