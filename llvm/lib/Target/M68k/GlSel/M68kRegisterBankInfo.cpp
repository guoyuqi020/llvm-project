//===-- M68kRegisterBankInfo.cpp -------------------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
/// \file
/// This file implements the targeting of the RegisterBankInfo class for M68k.
/// \todo This should be generated by TableGen.
//===----------------------------------------------------------------------===//

#include "M68kRegisterBankInfo.h"
#include "MCTargetDesc/M68kMCTargetDesc.h"
#include "llvm/CodeGen/GlobalISel/RegisterBank.h"
#include "llvm/CodeGen/GlobalISel/RegisterBankInfo.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/TargetRegisterInfo.h"

#define GET_TARGET_REGBANK_IMPL
#include "M68kGenRegisterBank.inc"
#undef GET_TARGET_REGBANK_IMPL

using namespace llvm;

M68kRegisterBankInfo::M68kRegisterBankInfo(const TargetRegisterInfo &TRI)
    : M68kGenRegisterBankInfo() {}
