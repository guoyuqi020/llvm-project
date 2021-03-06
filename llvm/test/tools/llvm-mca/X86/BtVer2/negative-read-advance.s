# NOTE: Assertions have been autogenerated by utils/update_mca_test_checks.py
# RUN: llvm-mca -mtriple=x86_64-unknown-unknown -mcpu=btver2 -iterations=1 -timeline < %s | FileCheck %s

add %ebx, %ebx
vpinsrd $1, %ebx, %xmm0, %xmm1
vpinsrd $1, %ebx, %xmm2, %xmm3
vpinsrd $2, %ebx, %xmm4, %xmm5
vpinsrd $2, %ebx, %xmm6, %xmm7
vpinsrd $3, %ebx, %xmm8, %xmm10

# CHECK:      Iterations:        1
# CHECK-NEXT: Instructions:      6
# CHECK-NEXT: Total Cycles:      13
# CHECK-NEXT: Total uOps:        11

# CHECK:      Dispatch Width:    2
# CHECK-NEXT: uOps Per Cycle:    0.85
# CHECK-NEXT: IPC:               0.46
# CHECK-NEXT: Block RThroughput: 5.5

# CHECK:      Instruction Info:
# CHECK-NEXT: [1]: #uOps
# CHECK-NEXT: [2]: Latency
# CHECK-NEXT: [3]: RThroughput
# CHECK-NEXT: [4]: MayLoad
# CHECK-NEXT: [5]: MayStore
# CHECK-NEXT: [6]: HasSideEffects (U)

# CHECK:      [1]    [2]    [3]    [4]    [5]    [6]    Instructions:
# CHECK-NEXT:  1      1     0.50                        addl	%ebx, %ebx
# CHECK-NEXT:  2      7     0.50                        vpinsrd	$1, %ebx, %xmm0, %xmm1
# CHECK-NEXT:  2      7     0.50                        vpinsrd	$1, %ebx, %xmm2, %xmm3
# CHECK-NEXT:  2      7     0.50                        vpinsrd	$2, %ebx, %xmm4, %xmm5
# CHECK-NEXT:  2      7     0.50                        vpinsrd	$2, %ebx, %xmm6, %xmm7
# CHECK-NEXT:  2      7     0.50                        vpinsrd	$3, %ebx, %xmm8, %xmm10

# CHECK:      Resources:
# CHECK-NEXT: [0]   - JALU0
# CHECK-NEXT: [1]   - JALU1
# CHECK-NEXT: [2]   - JDiv
# CHECK-NEXT: [3]   - JFPA
# CHECK-NEXT: [4]   - JFPM
# CHECK-NEXT: [5]   - JFPU0
# CHECK-NEXT: [6]   - JFPU1
# CHECK-NEXT: [7]   - JLAGU
# CHECK-NEXT: [8]   - JMul
# CHECK-NEXT: [9]   - JSAGU
# CHECK-NEXT: [10]  - JSTC
# CHECK-NEXT: [11]  - JVALU0
# CHECK-NEXT: [12]  - JVALU1
# CHECK-NEXT: [13]  - JVIMUL

# CHECK:      Resource pressure per iteration:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12]   [13]
# CHECK-NEXT:  -     1.00    -      -      -     2.00   3.00    -      -      -      -     2.00   3.00    -

# CHECK:      Resource pressure by instruction:
# CHECK-NEXT: [0]    [1]    [2]    [3]    [4]    [5]    [6]    [7]    [8]    [9]    [10]   [11]   [12]   [13]   Instructions:
# CHECK-NEXT:  -     1.00    -      -      -      -      -      -      -      -      -      -      -      -     addl	%ebx, %ebx
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -      -      -      -      -     1.00    -     vpinsrd	$1, %ebx, %xmm0, %xmm1
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -     1.00    -      -     vpinsrd	$1, %ebx, %xmm2, %xmm3
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -      -      -      -      -     1.00    -     vpinsrd	$2, %ebx, %xmm4, %xmm5
# CHECK-NEXT:  -      -      -      -      -     1.00    -      -      -      -      -     1.00    -      -     vpinsrd	$2, %ebx, %xmm6, %xmm7
# CHECK-NEXT:  -      -      -      -      -      -     1.00    -      -      -      -      -     1.00    -     vpinsrd	$3, %ebx, %xmm8, %xmm10

# CHECK:      Timeline view:
# CHECK-NEXT:                     012
# CHECK-NEXT: Index     0123456789

# CHECK:      [0,0]     DeER .    . .   addl	%ebx, %ebx
# CHECK-NEXT: [0,1]     .D======eER .   vpinsrd	$1, %ebx, %xmm0, %xmm1
# CHECK-NEXT: [0,2]     . D=====eER .   vpinsrd	$1, %ebx, %xmm2, %xmm3
# CHECK-NEXT: [0,3]     .  D=====eER.   vpinsrd	$2, %ebx, %xmm4, %xmm5
# CHECK-NEXT: [0,4]     .   D====eER.   vpinsrd	$2, %ebx, %xmm6, %xmm7
# CHECK-NEXT: [0,5]     .    D====eER   vpinsrd	$3, %ebx, %xmm8, %xmm10

# CHECK:      Average Wait times (based on the timeline view):
# CHECK-NEXT: [0]: Executions
# CHECK-NEXT: [1]: Average time spent waiting in a scheduler's queue
# CHECK-NEXT: [2]: Average time spent waiting in a scheduler's queue while ready
# CHECK-NEXT: [3]: Average time elapsed from WB until retire stage

# CHECK:            [0]    [1]    [2]    [3]
# CHECK-NEXT: 0.     1     1.0    1.0    0.0       addl	%ebx, %ebx
# CHECK-NEXT: 1.     1     7.0    0.0    0.0       vpinsrd	$1, %ebx, %xmm0, %xmm1
# CHECK-NEXT: 2.     1     6.0    0.0    0.0       vpinsrd	$1, %ebx, %xmm2, %xmm3
# CHECK-NEXT: 3.     1     6.0    1.0    0.0       vpinsrd	$2, %ebx, %xmm4, %xmm5
# CHECK-NEXT: 4.     1     5.0    1.0    0.0       vpinsrd	$2, %ebx, %xmm6, %xmm7
# CHECK-NEXT: 5.     1     5.0    2.0    0.0       vpinsrd	$3, %ebx, %xmm8, %xmm10
# CHECK-NEXT:        1     5.0    0.8    0.0       <total>
