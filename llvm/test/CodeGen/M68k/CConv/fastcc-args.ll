; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=m68k-pc-linux -relocation-model=pic -verify-machineinstrs | FileCheck %s

;
; C Call passes all arguments on stack ...
define fastcc void @test1(i32* nocapture %out, i32 %in) nounwind {
; CHECK-LABEL: test1:
; CHECK:       ; %bb.0: ; %entry
; CHECK-NEXT:    move.l %d0, (%a0)
; CHECK-NEXT:    rts
entry:
  store i32 %in, i32* %out, align 4
  ret void
}

define fastcc void @test2(i32* nocapture %pOut, i32* nocapture %pIn) nounwind {
; CHECK-LABEL: test2:
; CHECK:       ; %bb.0: ; %entry
; CHECK-NEXT:    move.l (%a1), (%a0)
; CHECK-NEXT:    rts
entry:
  %0 = load i32, i32* %pIn, align 4
  store i32 %0, i32* %pOut, align 4
  ret void
}

define fastcc i32 @test3(i32 %a, i32 %b, i32 %c, i32 %d, i32 %e) nounwind {
; CHECK-LABEL: test3:
; CHECK:       ; %bb.0:
; CHECK-NEXT:    add.l %d1, %d0
; CHECK-NEXT:    add.l %a0, %d0
; CHECK-NEXT:    add.l %a1, %d0
; CHECK-NEXT:    add.l (4,%sp), %d0
; CHECK-NEXT:    rts
  %1 = add i32 %a, %b
  %2 = add i32 %1, %c
  %3 = add i32 %2, %d
  %4 = add i32 %3, %e
  ret i32 %4
}
