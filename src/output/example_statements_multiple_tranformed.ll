; ModuleID = 'example_statements_multiple.ll'
source_filename = "example_statements_multiple.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @example_statements_multiple(i32 %arg, i32 %arg1, i32 %arg2, i32 %arg3) #0 {
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
store i32 %arg, i32* %tmp, align 4
store i32 %arg1, i32* %tmp4, align 4
store i32 %arg2, i32* %tmp5, align 4
store i32 %arg3, i32* %tmp6, align 4
store i32 0, i32* %tmp14, align 4
store i32 0, i32* %tmp15, align 4
br label %bb16

bb16:
	  %tmp17 = load i32, i32* %tmp15, align 4
  %tmp18 = icmp slt i32 %tmp17, 200
br i1 %tmp18, label %bb19, label %bb176

bb19:
	  %tmp20 = load i32, i32* %tmp5, align 4
  %tmp21 = icmp sgt i32 %tmp20, 1

  %tmp23 = load i32, i32* %tmp, align 4
  %tmp24 = load i32, i32* %tmp4, align 4
  %tmp25 = add nsw i32 %tmp23, %tmp24
 %tmp7_t =  add nsw i32 %tmp25, 0
  %tmp26 = load i32, i32* %tmp6, align 4
  %tmp27 = mul nsw i32 %tmp26, 5
  %tmp28 = load i32, i32* %tmp7, align 4
  %tmp29 = add nsw i32 %tmp27, %tmp28
 %tmp8_t =  add nsw i32 %tmp29, 0

  %tmp31 = load i32, i32* %tmp, align 4
  %tmp32 = load i32, i32* %tmp6, align 4
  %tmp33 = add nsw i32 %tmp31, %tmp32
 %tmp7_f =  add nsw i32 %tmp33, 0

br label %bb34
bb176:
	  %tmp177 = load i32, i32* %tmp14, align 4
  ret i32 %tmp177

bb34:
	 %tmp7_merge = select i1 %tmp21, i32 %tmp7_t,i32 %tmp7_f
store i32 %tmp7_merge, i32* %tmp7, align 4
 %tmp8_merge = select i1 %tmp21, i32 %tmp8_t,i32 0
store i32 %tmp8_merge, i32* %tmp8, align 4
  %tmp35 = load i32, i32* %tmp7, align 4
  %tmp36 = srem i32 %tmp35, 2
  %tmp37 = icmp eq i32 %tmp36, 0
br i1 %tmp37, label %bb38, label %bb51

bb38:
	  %tmp39 = load i32, i32* %tmp, align 4
  %tmp40 = load i32, i32* %tmp4, align 4
  %tmp41 = mul nsw i32 2, %tmp40
  %tmp42 = add nsw i32 %tmp39, %tmp41
store i32 %tmp42, i32* %tmp8, align 4
  %tmp43 = load i32, i32* %tmp6, align 4
  %tmp44 = add nsw i32 55, %tmp43
store i32 %tmp44, i32* %tmp9, align 4
  %tmp45 = load i32, i32* %tmp, align 4
  %tmp46 = sdiv i32 76, %tmp45
store i32 %tmp46, i32* %tmp10, align 4
  %tmp47 = load i32, i32* %tmp6, align 4
  %tmp48 = load i32, i32* %tmp, align 4
  %tmp49 = mul nsw i32 %tmp47, %tmp48
  %tmp50 = add nsw i32 56, %tmp49
store i32 %tmp50, i32* %tmp11, align 4
br label %bb66

bb51:
	  %tmp52 = load i32, i32* %tmp, align 4
  %tmp53 = load i32, i32* %tmp6, align 4
  %tmp54 = mul nsw i32 2, %tmp53
  %tmp55 = add nsw i32 %tmp52, %tmp54
store i32 %tmp55, i32* %tmp8, align 4
  %tmp56 = load i32, i32* %tmp6, align 4
  %tmp57 = add nsw i32 644, %tmp56
store i32 %tmp57, i32* %tmp9, align 4
  %tmp58 = load i32, i32* %tmp4, align 4
  %tmp59 = sdiv i32 76, %tmp58
store i32 %tmp59, i32* %tmp10, align 4
  %tmp60 = load i32, i32* %tmp4, align 4
  %tmp61 = mul nsw i32 75, %tmp60
  %tmp62 = load i32, i32* %tmp5, align 4
  %tmp63 = load i32, i32* %tmp, align 4
  %tmp64 = mul nsw i32 %tmp62, %tmp63
  %tmp65 = add nsw i32 %tmp61, %tmp64
store i32 %tmp65, i32* %tmp11, align 4
br label %bb66

bb66:
	  %tmp67 = load i32, i32* %tmp8, align 4
  %tmp68 = icmp sgt i32 %tmp67, 10
br i1 %tmp68, label %bb69, label %bb85

bb69:
	  %tmp70 = load i32, i32* %tmp, align 4
  %tmp71 = mul nsw i32 3, %tmp70
  %tmp72 = load i32, i32* %tmp4, align 4
  %tmp73 = load i32, i32* %tmp6, align 4
  %tmp74 = sdiv i32 %tmp72, %tmp73
  %tmp75 = add nsw i32 %tmp71, %tmp74
store i32 %tmp75, i32* %tmp9, align 4
  %tmp76 = load i32, i32* %tmp10, align 4
  %tmp77 = load i32, i32* %tmp11, align 4
  %tmp78 = add nsw i32 %tmp76, %tmp77
store i32 %tmp78, i32* %tmp12, align 4
  %tmp79 = load i32, i32* %tmp11, align 4
  %tmp80 = mul nsw i32 %tmp79, 8
store i32 %tmp80, i32* %tmp13, align 4
  %tmp81 = load i32, i32* %tmp7, align 4
store i32 %tmp81, i32* %tmp8, align 4
  %tmp82 = load i32, i32* %tmp11, align 4
  %tmp83 = load i32, i32* %tmp11, align 4
  %tmp84 = mul nsw i32 %tmp82, %tmp83
store i32 %tmp84, i32* %tmp10, align 4
br label %bb96

bb85:
	store i32 0, i32* %tmp9, align 4
  %tmp86 = load i32, i32* %tmp9, align 4
  %tmp87 = load i32, i32* %tmp11, align 4
  %tmp88 = add nsw i32 %tmp86, %tmp87
store i32 %tmp88, i32* %tmp12, align 4
  %tmp89 = load i32, i32* %tmp11, align 4
  %tmp90 = mul nsw i32 %tmp89, 8
store i32 %tmp90, i32* %tmp13, align 4
  %tmp91 = load i32, i32* %tmp7, align 4
  %tmp92 = sdiv i32 %tmp91, 2
store i32 %tmp92, i32* %tmp8, align 4
  %tmp93 = load i32, i32* %tmp11, align 4
  %tmp94 = load i32, i32* %tmp10, align 4
  %tmp95 = mul nsw i32 %tmp93, %tmp94
store i32 %tmp95, i32* %tmp10, align 4
br label %bb96

bb96:
	  %tmp97 = load i32, i32* %tmp9, align 4
  %tmp98 = load i32, i32* %tmp8, align 4
  %tmp99 = icmp sge i32 %tmp97, %tmp98
br i1 %tmp99, label %bb100, label %bb115

bb100:
	  %tmp101 = load i32, i32* %tmp10, align 4
  %tmp102 = add nsw i32 %tmp101, 66
store i32 %tmp102, i32* %tmp9, align 4
  %tmp103 = load i32, i32* %tmp9, align 4
  %tmp104 = mul nsw i32 %tmp103, 8
  %tmp105 = load i32, i32* %tmp11, align 4
  %tmp106 = add nsw i32 %tmp104, %tmp105
store i32 %tmp106, i32* %tmp11, align 4
  %tmp107 = load i32, i32* %tmp11, align 4
  %tmp108 = sdiv i32 %tmp107, 8
store i32 %tmp108, i32* %tmp12, align 4
  %tmp109 = load i32, i32* %tmp7, align 4
  %tmp110 = sdiv i32 %tmp109, 2
store i32 %tmp110, i32* %tmp13, align 4
  %tmp111 = load i32, i32* %tmp11, align 4
  %tmp112 = load i32, i32* %tmp10, align 4
  %tmp113 = mul nsw i32 %tmp111, %tmp112
  %tmp114 = add nsw i32 %tmp113, 87
store i32 %tmp114, i32* %tmp11, align 4
br label %bb116

bb115:
	store i32 0, i32* %tmp10, align 4
br label %bb116

bb116:
	  %tmp117 = load i32, i32* %tmp10, align 4
  %tmp118 = load i32, i32* %tmp9, align 4
  %tmp119 = add nsw i32 %tmp117, %tmp118
  %tmp120 = icmp sgt i32 %tmp119, 9
br i1 %tmp120, label %bb121, label %bb122

bb121:
	store i32 0, i32* %tmp11, align 4
br label %bb138

bb122:
	  %tmp123 = load i32, i32* %tmp10, align 4
  %tmp124 = add nsw i32 %tmp123, 644
store i32 %tmp124, i32* %tmp9, align 4
  %tmp125 = load i32, i32* %tmp10, align 4
  %tmp126 = load i32, i32* %tmp11, align 4
  %tmp127 = add nsw i32 %tmp125, %tmp126
store i32 %tmp127, i32* %tmp11, align 4
  %tmp128 = load i32, i32* %tmp10, align 4
  %tmp129 = sdiv i32 %tmp128, 8
store i32 %tmp129, i32* %tmp12, align 4
  %tmp130 = load i32, i32* %tmp12, align 4
  %tmp131 = sdiv i32 %tmp130, 2
store i32 %tmp131, i32* %tmp13, align 4
  %tmp132 = load i32, i32* %tmp11, align 4
  %tmp133 = load i32, i32* %tmp10, align 4
  %tmp134 = mul nsw i32 %tmp132, %tmp133
  %tmp135 = load i32, i32* %tmp9, align 4
  %tmp136 = mul nsw i32 87, %tmp135
  %tmp137 = add nsw i32 %tmp134, %tmp136
store i32 %tmp137, i32* %tmp11, align 4
br label %bb138

bb138:
	  %tmp139 = load i32, i32* %tmp11, align 4
  %tmp140 = icmp eq i32 %tmp139, 0
br i1 %tmp140, label %bb141, label %bb147

bb141:
	  %tmp142 = load i32, i32* %tmp, align 4
  %tmp143 = mul nsw i32 70, %tmp142
  %tmp144 = load i32, i32* %tmp4, align 4
  %tmp145 = mul nsw i32 80, %tmp144
  %tmp146 = sub nsw i32 %tmp143, %tmp145
store i32 %tmp146, i32* %tmp12, align 4
br label %bb148

bb147:
	store i32 0, i32* %tmp12, align 4
br label %bb148

bb148:
	  %tmp149 = load i32, i32* %tmp10, align 4
  %tmp150 = srem i32 %tmp149, 2
  %tmp151 = icmp eq i32 %tmp150, 0
br i1 %tmp151, label %bb152, label %bb156

bb152:
	  %tmp153 = load i32, i32* %tmp11, align 4
  %tmp154 = icmp eq i32 %tmp153, 6
br i1 %tmp154, label %bb155, label %bb156

bb156:
	  %tmp157 = load i32, i32* %tmp6, align 4
  %tmp158 = add nsw i32 %tmp157, 91
store i32 %tmp158, i32* %tmp13, align 4
br label %bb159

bb155:
	store i32 76, i32* %tmp13, align 4
br label %bb159

bb159:
	  %tmp160 = load i32, i32* %tmp8, align 4
  %tmp161 = load i32, i32* %tmp9, align 4
  %tmp162 = add nsw i32 %tmp160, %tmp161
  %tmp163 = load i32, i32* %tmp10, align 4
  %tmp164 = add nsw i32 %tmp162, %tmp163
  %tmp165 = load i32, i32* %tmp11, align 4
  %tmp166 = add nsw i32 %tmp164, %tmp165
  %tmp167 = load i32, i32* %tmp12, align 4
  %tmp168 = add nsw i32 %tmp166, %tmp167
  %tmp169 = load i32, i32* %tmp13, align 4
  %tmp170 = add nsw i32 %tmp168, %tmp169
  %tmp171 = load i32, i32* %tmp14, align 4
  %tmp172 = add nsw i32 %tmp171, %tmp170
store i32 %tmp172, i32* %tmp14, align 4
br label %bb173

bb173:
	  %tmp174 = load i32, i32* %tmp15, align 4
  %tmp175 = add nsw i32 %tmp174, 1
store i32 %tmp175, i32* %tmp15, align 4
br label %bb16

}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
