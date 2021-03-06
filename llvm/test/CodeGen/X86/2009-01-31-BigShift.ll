; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=i686-- | FileCheck %s
; PR3401

define void @x(i288 %i) nounwind {
; CHECK-LABEL: x:
; CHECK:       # %bb.0:
; CHECK-NEXT:    pushl {{[0-9]+}}(%esp)
; CHECK-NEXT:    pushl {{[0-9]+}}(%esp)
; CHECK-NEXT:    pushl {{[0-9]+}}(%esp)
; CHECK-NEXT:    pushl {{[0-9]+}}(%esp)
; CHECK-NEXT:    pushl {{[0-9]+}}(%esp)
; CHECK-NEXT:    pushl {{[0-9]+}}(%esp)
; CHECK-NEXT:    pushl {{[0-9]+}}(%esp)
; CHECK-NEXT:    pushl {{[0-9]+}}(%esp)
; CHECK-NEXT:    pushl {{[0-9]+}}(%esp)
; CHECK-NEXT:    calll add@PLT
; CHECK-NEXT:    addl $36, %esp
; CHECK-NEXT:    retl
	call void @add(i288 %i)
	ret void
}

declare void @add(i288)
