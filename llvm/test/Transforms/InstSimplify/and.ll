; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -instsimplify -S | FileCheck %s

define i32 @poison(i32 %x) {
; CHECK-LABEL: @poison(
; CHECK-NEXT:    ret i32 poison
;
  %v = and i32 %x, poison
  ret i32 %v
}
