; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -verify-machineinstrs -mtriple=powerpc64le-unknown-linux-gnu -O2 \
; RUN:     -ppc-asm-full-reg-names -mcpu=pwr10 < %s | FileCheck %s
; RUN: llc -verify-machineinstrs -mtriple=powerpc64-unknown-linux-gnu -O2 \
; RUN:     -ppc-asm-full-reg-names -mcpu=pwr10 < %s | FileCheck %s

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbc(float %a, float %b) {
; CHECK-LABEL: setbc:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp olt float %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbc(float %a, float %b) {
; CHECK-LABEL: setnbc:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp olt float %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbcr(float %a, float %b) {
; CHECK-LABEL: setbcr:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uge float %a, %b
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbcr(float %a, float %b) {
; CHECK-LABEL: setnbcr:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uge float %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbc2(float %a, float %b) {
; CHECK-LABEL: setbc2:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp olt float %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbc2(float %a, float %b) {
; CHECK-LABEL: setnbc2:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp olt float %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbcr2(float %a, float %b) {
; CHECK-LABEL: setbcr2:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uge float %a, %b
  %lnot.ext = zext i1 %cmp to i64
  ret i64 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbcr2(float %a, float %b) {
; CHECK-LABEL: setnbcr2:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uge float %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbc3(double %a, double %b) {
; CHECK-LABEL: setbc3:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp olt double %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbc3(double %a, double %b) {
; CHECK-LABEL: setnbc3:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp olt double %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbcr3(double %a, double %b) {
; CHECK-LABEL: setbcr3:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uge double %a, %b
  %lnot.ext = zext i1 %cmp to i64
  ret i64 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbcr3(double %a, double %b) {
; CHECK-LABEL: setnbcr3:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uge double %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbc4(double %a, double %b) {
; CHECK-LABEL: setbc4:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp olt double %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbc4(double %a, double %b) {
; CHECK-LABEL: setnbc4:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp olt double %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbcr4(double %a, double %b) {
; CHECK-LABEL: setbcr4:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uge double %a, %b
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbcr4(double %a, double %b) {
; CHECK-LABEL: setnbcr4:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uge double %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}


; Function Attrs: norecurse nounwind readnone
define signext i32 @setbc5(float %a, float %b) {
; CHECK-LABEL: setbc5:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ogt float %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbc5(float %a, float %b) {
; CHECK-LABEL: setnbc5:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ogt float %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbcr5(float %a, float %b) {
; CHECK-LABEL: setbcr5:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ule float %a, %b
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbcr5(float %a, float %b) {
; CHECK-LABEL: setnbcr5:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ule float %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbc6(double %a, double %b) {
; CHECK-LABEL: setbc6:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ogt double %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbc6(double %a, double %b) {
; CHECK-LABEL: setnbc6:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ogt double %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbcr6(double %a, double %b) {
; CHECK-LABEL: setbcr6:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ule double %a, %b
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbcr6(double %a, double %b) {
; CHECK-LABEL: setnbcr6:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ule double %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbc7(float %a, float %b) {
; CHECK-LABEL: setbc7:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ogt float %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbc7(float %a, float %b) {
; CHECK-LABEL: setnbc7:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ogt float %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbcr7(float %a, float %b) {
; CHECK-LABEL: setbcr7:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ule float %a, %b
  %lnot.ext = zext i1 %cmp to i64
  ret i64 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbcr7(float %a, float %b) {
; CHECK-LABEL: setnbcr7:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ule float %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbc8(double %a, double %b) {
; CHECK-LABEL: setbc8:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ogt double %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbc8(double %a, double %b) {
; CHECK-LABEL: setnbc8:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ogt double %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbcr8(double %a, double %b) {
; CHECK-LABEL: setbcr8:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ule double %a, %b
  %lnot.ext = zext i1 %cmp to i64
  ret i64 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbcr8(double %a, double %b) {
; CHECK-LABEL: setnbcr8:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, gt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ule double %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbc9(float %a, float %b) {
; CHECK-LABEL: setbc9:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oeq float %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbc9(float %a, float %b) {
; CHECK-LABEL: setnbc9:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oeq float %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbcr9(float %a, float %b) {
; CHECK-LABEL: setbcr9:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp une float %a, %b
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbcr9(float %a, float %b) {
; CHECK-LABEL: setnbcr9:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp une float %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbc10(double %a, double %b) {
; CHECK-LABEL: setbc10:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oeq double %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbc10(double %a, double %b) {
; CHECK-LABEL: setnbc10:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oeq double %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbcr10(double %a, double %b) {
; CHECK-LABEL: setbcr10:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp une double %a, %b
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbcr10(double %a, double %b) {
; CHECK-LABEL: setnbcr10:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp une double %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbc11(float %a, float %b) {
; CHECK-LABEL: setbc11:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oeq float %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbc11(float %a, float %b) {
; CHECK-LABEL: setnbc11:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oeq float %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbcr11(float %a, float %b) {
; CHECK-LABEL: setbcr11:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp une float %a, %b
  %lnot.ext = zext i1 %cmp to i64
  ret i64 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbcr11(float %a, float %b) {
; CHECK-LABEL: setnbcr11:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp une float %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbc12(double %a, double %b) {
; CHECK-LABEL: setbc12:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oeq double %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbc12(double %a, double %b) {
; CHECK-LABEL: setnbc12:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oeq double %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbcr12(double %a, double %b) {
; CHECK-LABEL: setbcr12:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp une double %a, %b
  %lnot.ext = zext i1 %cmp to i64
  ret i64 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbcr12(double %a, double %b) {
; CHECK-LABEL: setnbcr12:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, eq
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp une double %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbc13(float %a, float %b) {
; CHECK-LABEL: setbc13:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uno float %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbc13(float %a, float %b) {
; CHECK-LABEL: setnbc13:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uno float %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbcr13(float %a, float %b) {
; CHECK-LABEL: setbcr13:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ord float %a, %b
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbcr13(float %a, float %b) {
; CHECK-LABEL: setnbcr13:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ord float %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbc14(double %a, double %b) {
; CHECK-LABEL: setbc14:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uno double %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbc14(double %a, double %b) {
; CHECK-LABEL: setnbc14:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uno double %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setbcr14(double %a, double %b) {
; CHECK-LABEL: setbcr14:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ord double %a, %b
  %lnot.ext = zext i1 %cmp to i32
  ret i32 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i32 @setnbcr14(double %a, double %b) {
; CHECK-LABEL: setnbcr14:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ord double %a, %b
  %sub = sext i1 %cmp to i32
  ret i32 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbc15(float %a, float %b) {
; CHECK-LABEL: setbc15:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uno float %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbc15(float %a, float %b) {
; CHECK-LABEL: setnbc15:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uno float %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbcr15(float %a, float %b) {
; CHECK-LABEL: setbcr15:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ord float %a, %b
  %lnot.ext = zext i1 %cmp to i64
  ret i64 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbcr15(float %a, float %b) {
; CHECK-LABEL: setnbcr15:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ord float %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbc16(double %a, double %b) {
; CHECK-LABEL: setbc16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbc r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uno double %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbc16(double %a, double %b) {
; CHECK-LABEL: setnbc16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbc r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp uno double %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setbcr16(double %a, double %b) {
; CHECK-LABEL: setbcr16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setbcr r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ord double %a, %b
  %lnot.ext = zext i1 %cmp to i64
  ret i64 %lnot.ext
}

; Function Attrs: norecurse nounwind readnone
define signext i64 @setnbcr16(double %a, double %b) {
; CHECK-LABEL: setnbcr16:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    setnbcr r3, un
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ord double %a, %b
  %sub = sext i1 %cmp to i64
  ret i64 %sub
}

define signext i32 @setbc17(float %a, float %b) {
; CHECK-LABEL: setbc17:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, lt, un
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ult float %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setnbc17(float %a, float %b) {
; CHECK-LABEL: setnbc17:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, lt, un
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ult float %a, %b
  %conv = sext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setbc18(double %a, double %b) {
; CHECK-LABEL: setbc18:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, lt, un
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ult double %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setnbc18(double %a, double %b) {
; CHECK-LABEL: setnbc18:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, lt, un
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ult double %a, %b
  %conv = sext i1 %cmp to i32
  ret i32 %conv
}

define signext i64 @setbc19(float %a, float %b) {
; CHECK-LABEL: setbc19:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, lt, un
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ult float %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setnbc19(float %a, float %b) {
; CHECK-LABEL: setnbc19:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, lt, un
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ult float %a, %b
  %conv = sext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setbc20(double %a, double %b) {
; CHECK-LABEL: setbc20:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, lt, un
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ult double %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setnbc20(double %a, double %b) {
; CHECK-LABEL: setnbc20:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, lt, un
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ult double %a, %b
  %conv = sext i1 %cmp to i64
  ret i64 %conv
}

define signext i32 @setbc21(float %a, float %b) {
; CHECK-LABEL: setbc21:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, lt
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oge float %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setnbc21(float %a, float %b) {
; CHECK-LABEL: setnbc21:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, lt
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oge float %a, %b
  %conv = sext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setbc22(double %a, double %b) {
; CHECK-LABEL: setbc22:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, lt
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oge double %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setnbc22(double %a, double %b) {
; CHECK-LABEL: setnbc22:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, lt
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oge double %a, %b
  %conv = sext i1 %cmp to i32
  ret i32 %conv
}

define signext i64 @setbc23(float %a, float %b) {
; CHECK-LABEL: setbc23:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, lt
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oge float %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setnbc23(float %a, float %b) {
; CHECK-LABEL: setnbc23:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, lt
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oge float %a, %b
  %conv = sext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setbc24(double %a, double %b) {
; CHECK-LABEL: setbc24:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, lt
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oge double %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setnbc24(double %a, double %b) {
; CHECK-LABEL: setnbc24:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, lt
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp oge double %a, %b
  %conv = sext i1 %cmp to i64
  ret i64 %conv
}

define signext i32 @setbc25(float %a, float %b) {
; CHECK-LABEL: setbc25:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, gt
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ole float %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setnbc25(float %a, float %b) {
; CHECK-LABEL: setnbc25:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, gt
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ole float %a, %b
  %conv = sext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setbc26(double %a, double %b) {
; CHECK-LABEL: setbc26:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, gt
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ole double %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setnbc26(double %a, double %b) {
; CHECK-LABEL: setnbc26:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, gt
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ole double %a, %b
  %conv = sext i1 %cmp to i32
  ret i32 %conv
}

define signext i64 @setbc27(float %a, float %b) {
; CHECK-LABEL: setbc27:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, gt
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ole float %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setnbc27(float %a, float %b) {
; CHECK-LABEL: setnbc27:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, gt
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ole float %a, %b
  %conv = sext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setbc28(double %a, double %b) {
; CHECK-LABEL: setbc28:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, gt
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ole double %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setnbc28(double %a, double %b) {
; CHECK-LABEL: setnbc28:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, gt
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ole double %a, %b
  %conv = sext i1 %cmp to i64
  ret i64 %conv
}

define signext i32 @setbc29(float %a, float %b) {
; CHECK-LABEL: setbc29:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, gt, un
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ugt float %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setnbc29(float %a, float %b) {
; CHECK-LABEL: setnbc29:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, gt, un
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ugt float %a, %b
  %conv = sext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setbc30(double %a, double %b) {
; CHECK-LABEL: setbc30:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, gt, un
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ugt double %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setnbc30(double %a, double %b) {
; CHECK-LABEL: setnbc30:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, gt, un
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ugt double %a, %b
  %conv = sext i1 %cmp to i32
  ret i32 %conv
}

define signext i64 @setbc31(float %a, float %b) {
; CHECK-LABEL: setbc31:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, gt, un
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ugt float %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setnbc31(float %a, float %b) {
; CHECK-LABEL: setnbc31:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, gt, un
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ugt float %a, %b
  %conv = sext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setbc32(double %a, double %b) {
; CHECK-LABEL: setbc32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, gt, un
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ugt double %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setnbc32(double %a, double %b) {
; CHECK-LABEL: setnbc32:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, gt, un
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ugt double %a, %b
  %conv = sext i1 %cmp to i64
  ret i64 %conv
}

define signext i32 @setbc33(float %a, float %b) {
; CHECK-LABEL: setbc33:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, eq, un
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ueq float %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setnbc33(float %a, float %b) {
; CHECK-LABEL: setnbc33:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, eq, un
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ueq float %a, %b
  %conv = sext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setbc34(double %a, double %b) {
; CHECK-LABEL: setbc34:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, eq, un
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ueq double %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setnbc34(double %a, double %b) {
; CHECK-LABEL: setnbc34:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, eq, un
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ueq double %a, %b
  %conv = sext i1 %cmp to i32
  ret i32 %conv
}

define signext i64 @setbc35(float %a, float %b) {
; CHECK-LABEL: setbc35:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, eq, un
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ueq float %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setnbc35(float %a, float %b) {
; CHECK-LABEL: setnbc35:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, eq, un
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ueq float %a, %b
  %conv = sext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setbc36(double %a, double %b) {
; CHECK-LABEL: setbc36:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, eq, un
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ueq double %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setnbc36(double %a, double %b) {
; CHECK-LABEL: setnbc36:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    cror 4*cr5+lt, eq, un
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp ueq double %a, %b
  %conv = sext i1 %cmp to i64
  ret i64 %conv
}

define signext i32 @setbc37(float %a, float %b) {
; CHECK-LABEL: setbc37:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, eq
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp one float %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setnbc37(float %a, float %b) {
; CHECK-LABEL: setnbc37:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, eq
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp one float %a, %b
  %conv = sext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setbc38(double %a, double %b) {
; CHECK-LABEL: setbc38:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, eq
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp one double %a, %b
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

define signext i32 @setnbc38(double %a, double %b) {
; CHECK-LABEL: setnbc38:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, eq
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp one double %a, %b
  %conv = sext i1 %cmp to i32
  ret i32 %conv
}

define signext i64 @setbc39(float %a, float %b) {
; CHECK-LABEL: setbc39:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, eq
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp one float %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setnbc39(float %a, float %b) {
; CHECK-LABEL: setnbc39:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, eq
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp one float %a, %b
  %conv = sext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setbc40(double %a, double %b) {
; CHECK-LABEL: setbc40:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, eq
; CHECK-NEXT:    setbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp one double %a, %b
  %conv = zext i1 %cmp to i64
  ret i64 %conv
}

define signext i64 @setnbc40(double %a, double %b) {
; CHECK-LABEL: setnbc40:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    fcmpu cr0, f1, f2
; CHECK-NEXT:    crnor 4*cr5+lt, un, eq
; CHECK-NEXT:    setnbc r3, 4*cr5+lt
; CHECK-NEXT:    blr
entry:
  %cmp = fcmp one double %a, %b
  %conv = sext i1 %cmp to i64
  ret i64 %conv
}
