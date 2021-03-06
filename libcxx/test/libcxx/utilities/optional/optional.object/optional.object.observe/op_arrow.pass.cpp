//===----------------------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

// UNSUPPORTED: c++03, c++11, c++14
// <optional>

// constexpr T* optional<T>::operator->();

// UNSUPPORTED: libcxx-no-debug-mode

// ADDITIONAL_COMPILE_FLAGS: -D_LIBCPP_DEBUG=1

#include <optional>

#include "test_macros.h"
#include "debug_macros.h"

struct X {
    int test() noexcept {return 3;}
};

int main(int, char**) {
    std::optional<X> opt;
    TEST_LIBCPP_ASSERT_FAILURE(opt->test(), "optional operator-> called on a disengaged value");

    return 0;
}
