; ModuleID = 'example_multiple_forLoop.ll'
source_filename = "example_multiple_forLoop.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @example_multiple_forLoop(i32 %arg, i32 %arg1, i32 %arg2, i32 %arg3) #0 {
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
  %tmp21 = alloca i32, align 4
  store i32 %arg, i32* %tmp, align 4
  store i32 %arg1, i32* %tmp4, align 4
  store i32 %arg2, i32* %tmp5, align 4
  store i32 %arg3, i32* %tmp6, align 4
  store i32 0, i32* %tmp14, align 4
  store i32 0, i32* %tmp21, align 4
  br label %bb22

bb22:                                             ; preds = %bb113, %bb
  %tmp23 = load i32, i32* %tmp21, align 4
  %tmp24 = icmp slt i32 %tmp23, 200
  br i1 %tmp24, label %bb25, label %bb116

bb25:                                             ; preds = %bb22
  %tmp26 = load i32, i32* %tmp5, align 4
  %tmp27 = icmp sgt i32 %tmp26, 1
  br i1 %tmp27, label %bb28, label %bb32

bb28:                                             ; preds = %bb25
  %tmp29 = load i32, i32* %tmp, align 4
  %tmp30 = load i32, i32* %tmp4, align 4
  %tmp31 = add nsw i32 %tmp29, %tmp30
  store i32 %tmp31, i32* %tmp7, align 4
  br label %bb36

bb32:                                             ; preds = %bb25
  %tmp33 = load i32, i32* %tmp, align 4
  %tmp34 = load i32, i32* %tmp6, align 4
  %tmp35 = add nsw i32 %tmp33, %tmp34
  store i32 %tmp35, i32* %tmp7, align 4
  br label %bb36

bb36:                                             ; preds = %bb32, %bb28
  %tmp37 = load i32, i32* %tmp7, align 4
  %tmp38 = srem i32 %tmp37, 2
  %tmp39 = icmp eq i32 %tmp38, 0
  br i1 %tmp39, label %bb40, label %bb45

bb40:                                             ; preds = %bb36
  %tmp41 = load i32, i32* %tmp, align 4
  %tmp42 = load i32, i32* %tmp4, align 4
  %tmp43 = mul nsw i32 2, %tmp42
  %tmp44 = add nsw i32 %tmp41, %tmp43
  store i32 %tmp44, i32* %tmp8, align 4
  br label %bb50

bb45:                                             ; preds = %bb36
  %tmp46 = load i32, i32* %tmp, align 4
  %tmp47 = load i32, i32* %tmp6, align 4
  %tmp48 = mul nsw i32 2, %tmp47
  %tmp49 = add nsw i32 %tmp46, %tmp48
  store i32 %tmp49, i32* %tmp8, align 4
  br label %bb50

bb50:                                             ; preds = %bb45, %bb40
  %tmp51 = load i32, i32* %tmp8, align 4
  %tmp52 = icmp sgt i32 %tmp51, 10
  br i1 %tmp52, label %bb53, label %bb60

bb53:                                             ; preds = %bb50
  %tmp54 = load i32, i32* %tmp, align 4
  %tmp55 = mul nsw i32 3, %tmp54
  %tmp56 = load i32, i32* %tmp4, align 4
  %tmp57 = load i32, i32* %tmp6, align 4
  %tmp58 = sdiv i32 %tmp56, %tmp57
  %tmp59 = add nsw i32 %tmp55, %tmp58
  store i32 %tmp59, i32* %tmp9, align 4
  br label %bb61

bb60:                                             ; preds = %bb50
  store i32 0, i32* %tmp9, align 4
  br label %bb61

bb61:                                             ; preds = %bb60, %bb53
  %tmp62 = load i32, i32* %tmp9, align 4
  %tmp63 = load i32, i32* %tmp8, align 4
  %tmp64 = icmp sge i32 %tmp62, %tmp63
  br i1 %tmp64, label %bb65, label %bb69

bb65:                                             ; preds = %bb61
  %tmp66 = load i32, i32* %tmp, align 4
  %tmp67 = load i32, i32* %tmp4, align 4
  %tmp68 = add nsw i32 %tmp66, %tmp67
  store i32 %tmp68, i32* %tmp10, align 4
  br label %bb70

bb69:                                             ; preds = %bb61
  store i32 0, i32* %tmp10, align 4
  br label %bb70

bb70:                                             ; preds = %bb69, %bb65
  %tmp71 = load i32, i32* %tmp10, align 4
  %tmp72 = load i32, i32* %tmp9, align 4
  %tmp73 = add nsw i32 %tmp71, %tmp72
  %tmp74 = icmp sgt i32 %tmp73, 9
  br i1 %tmp74, label %bb75, label %bb76

bb75:                                             ; preds = %bb70
  store i32 0, i32* %tmp11, align 4
  br label %bb82

bb76:                                             ; preds = %bb70
  %tmp77 = load i32, i32* %tmp, align 4
  %tmp78 = load i32, i32* %tmp4, align 4
  %tmp79 = mul nsw i32 %tmp77, %tmp78
  %tmp80 = load i32, i32* %tmp6, align 4
  %tmp81 = add nsw i32 %tmp79, %tmp80
  store i32 %tmp81, i32* %tmp11, align 4
  br label %bb82

bb82:                                             ; preds = %bb76, %bb75
  %tmp83 = load i32, i32* %tmp11, align 4
  %tmp84 = icmp eq i32 %tmp83, 0
  br i1 %tmp84, label %bb85, label %bb91

bb85:                                             ; preds = %bb82
  %tmp86 = load i32, i32* %tmp, align 4
  %tmp87 = mul nsw i32 70, %tmp86
  %tmp88 = load i32, i32* %tmp4, align 4
  %tmp89 = mul nsw i32 80, %tmp88
  %tmp90 = sub nsw i32 %tmp87, %tmp89
  store i32 %tmp90, i32* %tmp12, align 4
  br label %bb92

bb91:                                             ; preds = %bb82
  store i32 0, i32* %tmp12, align 4
  br label %bb92

bb92:                                             ; preds = %bb91, %bb85
  %tmp93 = load i32, i32* %tmp10, align 4
  %tmp94 = srem i32 %tmp93, 2
  %tmp95 = icmp eq i32 %tmp94, 0
  br i1 %tmp95, label %bb96, label %bb100

bb96:                                             ; preds = %bb92
  %tmp97 = load i32, i32* %tmp11, align 4
  %tmp98 = icmp eq i32 %tmp97, 6
  br i1 %tmp98, label %bb99, label %bb100

bb99:                                             ; preds = %bb96
  store i32 76, i32* %tmp13, align 4
  br label %bb103

bb100:                                            ; preds = %bb96, %bb92
  %tmp101 = load i32, i32* %tmp6, align 4
  %tmp102 = add nsw i32 %tmp101, 91
  store i32 %tmp102, i32* %tmp13, align 4
  br label %bb103

bb103:                                            ; preds = %bb100, %bb99
  %tmp104 = load i32, i32* %tmp8, align 4
  %tmp105 = load i32, i32* %tmp12, align 4
  %tmp106 = add nsw i32 %tmp104, %tmp105
  %tmp107 = load i32, i32* %tmp10, align 4
  %tmp108 = add nsw i32 %tmp106, %tmp107
  %tmp109 = load i32, i32* %tmp13, align 4
  %tmp110 = add nsw i32 %tmp108, %tmp109
  %tmp111 = load i32, i32* %tmp14, align 4
  %tmp112 = add nsw i32 %tmp111, %tmp110
  store i32 %tmp112, i32* %tmp14, align 4
  br label %bb113

bb113:                                            ; preds = %bb103
  %tmp114 = load i32, i32* %tmp21, align 4
  %tmp115 = add nsw i32 %tmp114, 1
  store i32 %tmp115, i32* %tmp21, align 4
  br label %bb22

bb116:                                            ; preds = %bb22
  %tmp117 = load i32, i32* %tmp14, align 4
  ret i32 %tmp117
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
