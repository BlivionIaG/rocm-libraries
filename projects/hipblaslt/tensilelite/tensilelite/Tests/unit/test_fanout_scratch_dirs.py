# Copyright Advanced Micro Devices, Inc., or its affiliates.
# SPDX-License-Identifier: MIT
"""Unit tests for the scratch directories of a fan-out build.

TensileCreateLibrary splits a request into groups when one run cannot name two
targets: a stepping beside the architecture it steps from, or two architecture
names that share one tuning tree.  The groups build concurrently into one
output directory, and everything they write outside library/ collides -- a
kernel basename comes from the solution, not from the architecture, so two
groups building the same solutions under different names write the same .s and
.o into the same place, and one group removing its scratch takes the others'
objects with it.

Each group is therefore given a scratch directory of its own.
"""

import os

import pytest

from tensilelite.TensileCreateLibrary.Run import (
    _GROUP_SCRATCH_ENV,
    _groupScratchName,
    buildTmpDir,
    buildTmpRoot,
)

RDNA2_FAMILY = ["gfx1030", "gfx1031", "gfx1032", "gfx1034", "gfx1035"]


def test_a_run_that_is_not_a_fan_out_child_keeps_the_directory_it_had(tmp_path, monkeypatch):
    monkeypatch.delenv(_GROUP_SCRATCH_ENV, raising=False)
    assert buildTmpDir(tmp_path / "Tensile", ["gfx1030"]) == buildTmpRoot(tmp_path / "Tensile") / "TENSILE"


def test_each_group_of_a_fan_out_gets_a_scratch_directory_of_its_own(tmp_path, monkeypatch):
    output = tmp_path / "Tensile"
    seen = set()
    for group in RDNA2_FAMILY:
        monkeypatch.setenv(_GROUP_SCRATCH_ENV, _groupScratchName([group]))
        seen.add(buildTmpDir(output, [group]))
    assert len(seen) == len(RDNA2_FAMILY)


def test_the_group_names_of_the_rdna2_family_are_distinct():
    names = [_groupScratchName([g]) for g in RDNA2_FAMILY]
    assert len(set(names)) == len(RDNA2_FAMILY)


def test_a_group_name_names_the_architectures_it_covers():
    assert _groupScratchName(["gfx1031"]) == "gfx1031"
    assert _groupScratchName(["gfx1031", "gfx1031:xnack+"]) == "gfx1031"


def test_a_stepping_keeps_the_scratch_directory_it_had(tmp_path, monkeypatch):
    # The stepping suffix predates the fan-out and is not changed by it: a
    # stepping beside the architecture it steps from was already named apart.
    monkeypatch.setenv(_GROUP_SCRATCH_ENV, "gfx1031")
    path = buildTmpDir(tmp_path / "Tensile", ["gfx1250-strict"])
    assert path.name == "TENSILE-gfx1250-strict"
