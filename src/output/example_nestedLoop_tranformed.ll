; ModuleID = 'example_nestedLoop.ll'
source_filename = "example_nestedLoop.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @example_nestedLoop(i32 %arg, i32 %arg1, i32 %arg2, i32 %arg3, i32* %arg4, i32* %arg5, i32* %arg6) #0 {
bb:
	  %tmp = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp10 = alloca i32*, align 8
  %tmp11 = alloca i32*, align 8
  %tmp12 = alloca i32*, align 8
  %tmp13 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  %tmp21 = alloca i32, align 4
  %tmp22 = alloca i32, align 4
  %tmp23 = alloca [50 x i32], align 16
  %tmp24 = alloca [50 x i32], align 16
  %tmp25 = alloca [50 x i32], align 16
  %tmp26 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
store i32 %arg, i32* %tmp, align 4
store i32 %arg1, i32* %tmp7, align 4
store i32 %arg2, i32* %tmp8, align 4
store i32 %arg3, i32* %tmp9, align 4
store i32* %arg4, i32** %tmp10, align 8
store i32* %arg5, i32** %tmp11, align 8
store i32* %arg6, i32** %tmp12, align 8
store i32 0, i32* %tmp20, align 4
store i32 0, i32* %tmp26, align 4
br label %bb28

bb28:
	  %tmp29 = load i32, i32* %tmp26, align 4
  %tmp30 = icmp slt i32 %tmp29, 200
br i1 %tmp30, label %bb31, label %bb66

bb31:
	store i32 0, i32* %tmp27, align 4
br label %bb32

bb66:
	  %tmp67 = load i32, i32* %tmp20, align 4
  ret i32 %tmp67

bb32:
	  %tmp33 = load i32, i32* %tmp27, align 4
  %tmp34 = icmp slt i32 %tmp33, 10
br i1 %tmp34, label %bb35, label %bb62

bb35:
	  %tmp36 = load i32, i32* %tmp8, align 4
  %tmp37 = icmp sgt i32 %tmp36, 1

  %tmp39 = load i32, i32* %tmp, align 4
  %tmp40 = load i32, i32* %tmp7, align 4
  %tmp41 = add nsw i32 %tmp39, %tmp40
 %tmp13_t0 =  add nsw i32 %tmp41, 0
  %tmp42 = load i32, i32* %tmp9, align 4
  %tmp43 = mul nsw i32 %tmp42, 5
  %tmp44 = load i32, i32* %tmp13, align 4
  %tmp45 = add nsw i32 %tmp43, %tmp44
 %tmp14_t0 =  add nsw i32 %tmp45, 0

  %tmp47 = load i32, i32* %tmp, align 4
  %tmp48 = load i32, i32* %tmp9, align 4
  %tmp49 = add nsw i32 %tmp47, %tmp48
 %tmp13_f0 =  add nsw i32 %tmp49, 0
  %tmp50 = load i32, i32* %tmp, align 4
  %tmp51 = load i32, i32* %tmp7, align 4
  %tmp52 = mul nsw i32 %tmp50, %tmp51
  %tmp53 = load i32, i32* %tmp8, align 4
  %tmp54 = mul nsw i32 %tmp52, %tmp53
 %tmp14_f0 =  add nsw i32 %tmp54, 0

br label %bb55
bb62:
	br label %bb63

bb55:
	 %tmp13_merge0 = select i1 %tmp37, i32 %tmp13_t0,i32 %tmp13_f0
store i32 %tmp13_merge0, i32* %tmp13, align 4
 %tmp14_merge0 = select i1 %tmp37, i32 %tmp14_t0,i32 %tmp14_f0
store i32 %tmp14_merge0, i32* %tmp14, align 4
  %tmp56 = load i32, i32* %tmp13, align 4
  %tmp57 = load i32, i32* %tmp20, align 4
  %tmp58 = add nsw i32 %tmp57, %tmp56
store i32 %tmp58, i32* %tmp20, align 4
br label %bb59

bb59:
	  %tmp60 = load i32, i32* %tmp27, align 4
  %tmp61 = add nsw i32 %tmp60, 1
store i32 %tmp61, i32* %tmp27, align 4
br label %bb32

bb63:
	  %tmp64 = load i32, i32* %tmp26, align 4
  %tmp65 = add nsw i32 %tmp64, 1
store i32 %tmp65, i32* %tmp26, align 4
br label %bb28

}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
