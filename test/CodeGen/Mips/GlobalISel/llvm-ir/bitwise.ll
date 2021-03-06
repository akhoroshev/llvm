; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py

; RUN: llc  -O0 -mtriple=mipsel-linux-gnu -global-isel  -verify-machineinstrs %s -o -| FileCheck %s -check-prefixes=MIPS32

define i32 @and(i32 %a, i32 %b) {
; MIPS32-LABEL: and:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    and $2, $5, $4
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %and = and i32 %b, %a
  ret i32 %and
}

define i32 @or(i32 %a, i32 %b) {
; MIPS32-LABEL: or:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    or $2, $5, $4
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %or = or i32 %b, %a
  ret i32 %or
}

define i32 @xor(i32 %a, i32 %b) {
; MIPS32-LABEL: xor:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    xor $2, $5, $4
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %xor = xor i32 %b, %a
  ret i32 %xor
}

define i32 @shl(i32 %a) {
; MIPS32-LABEL: shl:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    sll $2, $4, 1
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %shl = shl i32 %a, 1
  ret i32 %shl
}

define i32 @ashr(i32 %a) {
; MIPS32-LABEL: ashr:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    sra $2, $4, 1
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %shr = ashr i32 %a, 1
  ret i32 %shr
}

define i32 @lshr(i32 %a) {
; MIPS32-LABEL: lshr:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    srl $2, $4, 1
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %shr = lshr i32 %a, 1
  ret i32 %shr
}

define i32 @shlv(i32 %a, i32 %b) {
; MIPS32-LABEL: shlv:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    sllv $2, $4, $5
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %shl = shl i32 %a, %b
  ret i32 %shl
}

define i32 @ashrv(i32 %a, i32 %b) {
; MIPS32-LABEL: ashrv:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    srav $2, $4, $5
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %shr = ashr i32 %a, %b
  ret i32 %shr
}

define i32 @lshrv(i32 %a, i32 %b) {
; MIPS32-LABEL: lshrv:
; MIPS32:       # %bb.0: # %entry
; MIPS32-NEXT:    srlv $2, $4, $5
; MIPS32-NEXT:    jr $ra
; MIPS32-NEXT:    nop
entry:
  %shr = lshr i32 %a, %b
  ret i32 %shr
}

