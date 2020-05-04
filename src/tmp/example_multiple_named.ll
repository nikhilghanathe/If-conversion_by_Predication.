; ModuleID = 'example_multiple.ll'
source_filename = "example_multiple.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @example_multiple(i32 %arg, i32 %arg1, i32 %arg2, i32 %arg3) #0 {
bb:
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %tmp12 = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %tmp15 = alloca i32, align 4
  %tmp16 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %tmp20 = alloca i32, align 4
  store i32 %arg, i32* %tmp, align 4
  store i32 %arg1, i32* %tmp4, align 4
  store i32 %arg2, i32* %tmp5, align 4
  store i32 %arg3, i32* %tmp6, align 4
  %tmp21 = load i32, i32* %tmp5, align 4
  %tmp22 = icmp sgt i32 %tmp21, 1
  br i1 %tmp22, label %bb23, label %bb27

bb23:                                             ; preds = %bb
  %tmp24 = load i32, i32* %tmp, align 4
  %tmp25 = load i32, i32* %tmp4, align 4
  %tmp26 = add nsw i32 %tmp24, %tmp25
  store i32 %tmp26, i32* %tmp7, align 4
  br label %bb31

bb27:                                             ; preds = %bb
  %tmp28 = load i32, i32* %tmp, align 4
  %tmp29 = load i32, i32* %tmp6, align 4
  %tmp30 = add nsw i32 %tmp28, %tmp29
  store i32 %tmp30, i32* %tmp7, align 4
  br label %bb31

bb31:                                             ; preds = %bb27, %bb23
  %tmp32 = load i32, i32* %tmp7, align 4
  %tmp33 = srem i32 %tmp32, 2
  %tmp34 = icmp eq i32 %tmp33, 0
  br i1 %tmp34, label %bb35, label %bb40

bb35:                                             ; preds = %bb31
  %tmp36 = load i32, i32* %tmp, align 4
  %tmp37 = load i32, i32* %tmp4, align 4
  %tmp38 = mul nsw i32 2, %tmp37
  %tmp39 = add nsw i32 %tmp36, %tmp38
  store i32 %tmp39, i32* %tmp8, align 4
  br label %bb45

bb40:                                             ; preds = %bb31
  %tmp41 = load i32, i32* %tmp, align 4
  %tmp42 = load i32, i32* %tmp6, align 4
  %tmp43 = mul nsw i32 2, %tmp42
  %tmp44 = add nsw i32 %tmp41, %tmp43
  store i32 %tmp44, i32* %tmp8, align 4
  br label %bb45

bb45:                                             ; preds = %bb40, %bb35
  %tmp46 = load i32, i32* %tmp8, align 4
  %tmp47 = icmp sgt i32 %tmp46, 10
  br i1 %tmp47, label %bb48, label %bb55

bb48:                                             ; preds = %bb45
  %tmp49 = load i32, i32* %tmp, align 4
  %tmp50 = mul nsw i32 3, %tmp49
  %tmp51 = load i32, i32* %tmp4, align 4
  %tmp52 = load i32, i32* %tmp6, align 4
  %tmp53 = sdiv i32 %tmp51, %tmp52
  %tmp54 = add nsw i32 %tmp50, %tmp53
  store i32 %tmp54, i32* %tmp9, align 4
  br label %bb56

bb55:                                             ; preds = %bb45
  store i32 0, i32* %tmp9, align 4
  br label %bb56

bb56:                                             ; preds = %bb55, %bb48
  %tmp57 = load i32, i32* %tmp9, align 4
  %tmp58 = load i32, i32* %tmp8, align 4
  %tmp59 = icmp sge i32 %tmp57, %tmp58
  br i1 %tmp59, label %bb60, label %bb64

bb60:                                             ; preds = %bb56
  %tmp61 = load i32, i32* %tmp, align 4
  %tmp62 = load i32, i32* %tmp4, align 4
  %tmp63 = add nsw i32 %tmp61, %tmp62
  store i32 %tmp63, i32* %tmp10, align 4
  br label %bb65

bb64:                                             ; preds = %bb56
  store i32 0, i32* %tmp10, align 4
  br label %bb65

bb65:                                             ; preds = %bb64, %bb60
  %tmp66 = load i32, i32* %tmp10, align 4
  %tmp67 = load i32, i32* %tmp9, align 4
  %tmp68 = add nsw i32 %tmp66, %tmp67
  %tmp69 = icmp sgt i32 %tmp68, 9
  br i1 %tmp69, label %bb70, label %bb71

bb70:                                             ; preds = %bb65
  store i32 0, i32* %tmp11, align 4
  br label %bb77

bb71:                                             ; preds = %bb65
  %tmp72 = load i32, i32* %tmp, align 4
  %tmp73 = load i32, i32* %tmp4, align 4
  %tmp74 = mul nsw i32 %tmp72, %tmp73
  %tmp75 = load i32, i32* %tmp6, align 4
  %tmp76 = add nsw i32 %tmp74, %tmp75
  store i32 %tmp76, i32* %tmp11, align 4
  br label %bb77

bb77:                                             ; preds = %bb71, %bb70
  %tmp78 = load i32, i32* %tmp11, align 4
  %tmp79 = icmp eq i32 %tmp78, 0
  br i1 %tmp79, label %bb80, label %bb86

bb80:                                             ; preds = %bb77
  %tmp81 = load i32, i32* %tmp, align 4
  %tmp82 = mul nsw i32 70, %tmp81
  %tmp83 = load i32, i32* %tmp4, align 4
  %tmp84 = mul nsw i32 80, %tmp83
  %tmp85 = sub nsw i32 %tmp82, %tmp84
  store i32 %tmp85, i32* %tmp12, align 4
  br label %bb87

bb86:                                             ; preds = %bb77
  store i32 0, i32* %tmp12, align 4
  br label %bb87

bb87:                                             ; preds = %bb86, %bb80
  %tmp88 = load i32, i32* %tmp10, align 4
  %tmp89 = srem i32 %tmp88, 2
  %tmp90 = icmp eq i32 %tmp89, 0
  br i1 %tmp90, label %bb91, label %bb95

bb91:                                             ; preds = %bb87
  %tmp92 = load i32, i32* %tmp11, align 4
  %tmp93 = icmp eq i32 %tmp92, 6
  br i1 %tmp93, label %bb94, label %bb95

bb94:                                             ; preds = %bb91
  store i32 76, i32* %tmp13, align 4
  br label %bb98

bb95:                                             ; preds = %bb91, %bb87
  %tmp96 = load i32, i32* %tmp6, align 4
  %tmp97 = add nsw i32 %tmp96, 91
  store i32 %tmp97, i32* %tmp13, align 4
  br label %bb98

bb98:                                             ; preds = %bb95, %bb94
  %tmp99 = load i32, i32* %tmp13, align 4
  ret i32 %tmp99
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
