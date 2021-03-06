; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc  -O0 -mtriple=mipsel-linux-gnu -global-isel  -verify-machineinstrs %s -o -| FileCheck %s -check-prefixes=MIPS32

define i8 @load1_s8_to_load1_s32(i8* %px) {
; MIPS32-LABEL: load1_s8_to_load1_s32:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    lbu $2, 0($4)
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %0 = load i8, i8* %px
  ret i8 %0
}

define i16 @load2_s16_to_load2_s32(i16* %px) {
; MIPS32-LABEL: load2_s16_to_load2_s32:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    lhu $2, 0($4)
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %0 = load i16, i16* %px
  ret i16 %0
}

define void @load_store_i1(i1* %px, i1* %py) {
; MIPS32-LABEL: load_store_i1:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    lbu $1, 0($5)
; MIPS32-NEXT:    andi $1, $1, 1
; MIPS32-NEXT:    andi $1, $1, 1
; MIPS32-NEXT:    sb $1, 0($4)
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %0 = load i1, i1* %py
  store i1 %0, i1* %px
  ret void
}

define void @load_store_i8(i8* %px, i8* %py) {
; MIPS32-LABEL: load_store_i8:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    lbu $1, 0($5)
; MIPS32-NEXT:    sb $1, 0($4)
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %0 = load i8, i8* %py
  store i8 %0, i8* %px
  ret void
}

define void @load_store_i16(i16* %px, i16* %py) {
; MIPS32-LABEL: load_store_i16:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    lhu $1, 0($5)
; MIPS32-NEXT:    sh $1, 0($4)
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %0 = load i16, i16* %py
  store i16 %0, i16* %px
  ret void
}

define void @load_store_i32(i32* %px, i32* %py) {
; MIPS32-LABEL: load_store_i32:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    lw $1, 0($5)
; MIPS32-NEXT:    sw $1, 0($4)
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %0 = load i32, i32* %py
  store i32 %0, i32* %px
  ret void
}
