; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=x86_64-apple-macosx10.14.0 | FileCheck %s

define void @x() {
; CHECK-LABEL: x:
; CHECK:       ## %bb.0: ## %start
; CHECK-NEXT:    ## InlineAsm Start
; CHECK-EMPTY:
; CHECK-NEXT:    vpbroadcastq {{\.?LCPI[0-9]+_[0-9]+}}(%rip), %zmm0 {%k1}
; CHECK-EMPTY:
; CHECK-NEXT:    ## InlineAsm End
; CHECK-NEXT:    retq
start:
  tail call void asm sideeffect inteldialect "vpbroadcastq  zmm0{k1}, $0", "m,~{dirflag},~{fpsr},~{flags}"(i64 123)
  ret void
}
