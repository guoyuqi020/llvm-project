//===----------------------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// WARNING: This test was generated by generate_header_inclusion_tests.py
// and should not be edited manually.
//
// clang-format off

// UNSUPPORTED: c++03, c++11, c++14

// <string_view>

// Test that <string_view> includes all the other headers it's supposed to.

#include <string_view>
#include "test_macros.h"

#if !defined(_LIBCPP_STRING_VIEW)
 #   error "<string_view> was expected to define _LIBCPP_STRING_VIEW"
#endif
#if TEST_STD_VER > 17 && !defined(_LIBCPP_COMPARE)
 #   error "<string_view> should include <compare> in C++20 and later"
#endif
