//===----------------------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

// <unordered_set>

// Call erase(const_iterator position) with end()

// UNSUPPORTED: libcxx-no-debug-mode

// ADDITIONAL_COMPILE_FLAGS: -D_LIBCPP_DEBUG=1

#include <unordered_set>

#include "test_macros.h"
#include "debug_macros.h"

int main(int, char**) {
    int a1[] = {1, 2, 3};
    std::unordered_set<int> l1(a1, a1+3);
    std::unordered_set<int>::const_iterator i = l1.end();
    TEST_LIBCPP_ASSERT_FAILURE(l1.erase(i),
                               "unordered container erase(iterator) called with a non-dereferenceable iterator");

    return 0;
}
