; ModuleID = 'example_multiple_forLoop_multiple.ll'
source_filename = "example_multiple_forLoop_multiple.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @example_multiple_forLoop_multiple(i32 %arg, i32 %arg1, i32 %arg2, i32 %arg3) #0 {
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
  %tmp22 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %tmp24 = alloca i32, align 4
  %tmp25 = alloca i32, align 4
  %tmp26 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  %tmp28 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
  %tmp30 = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
store i32 %arg, i32* %tmp, align 4
store i32 %arg1, i32* %tmp4, align 4
store i32 %arg2, i32* %tmp5, align 4
store i32 %arg3, i32* %tmp6, align 4
store i32 0, i32* %tmp14, align 4
store i32 0, i32* %tmp30, align 4
store i32 0, i32* %tmp22, align 4
store i32 0, i32* %tmp31, align 4
br label %bb34

bb34:
	  %tmp35 = load i32, i32* %tmp31, align 4
  %tmp36 = icmp slt i32 %tmp35, 200
br i1 %tmp36, label %bb37, label %bb128

bb37:
	  %tmp38 = load i32, i32* %tmp5, align 4
  %tmp39 = icmp sgt i32 %tmp38, 1

  %tmp41 = load i32, i32* %tmp, align 4
  %tmp42 = load i32, i32* %tmp4, align 4
  %tmp43 = add nsw i32 %tmp41, %tmp42
 %tmp7_t =  add nsw i32 %tmp43, 0

  %tmp45 = load i32, i32* %tmp, align 4
  %tmp46 = load i32, i32* %tmp6, align 4
  %tmp47 = add nsw i32 %tmp45, %tmp46
 %tmp7_f =  add nsw i32 %tmp47, 0

br label %bb48
bb128:
	store i32 0, i32* %tmp32, align 4
br label %bb129

bb48:
	 %tmp7_merge = select i1 %tmp39, i32 %tmp7_t,i32 %tmp7_f
store i32 %tmp7_merge, i32* %tmp7, align 4
  %tmp49 = load i32, i32* %tmp7, align 4
  %tmp50 = srem i32 %tmp49, 2
  %tmp51 = icmp eq i32 %tmp50, 0
br i1 %tmp51, label %bb52, label %bb57

bb52:
	  %tmp53 = load i32, i32* %tmp, align 4
  %tmp54 = load i32, i32* %tmp4, align 4
  %tmp55 = mul nsw i32 2, %tmp54
  %tmp56 = add nsw i32 %tmp53, %tmp55
store i32 %tmp56, i32* %tmp8, align 4
br label %bb62

bb57:
	  %tmp58 = load i32, i32* %tmp, align 4
  %tmp59 = load i32, i32* %tmp6, align 4
  %tmp60 = mul nsw i32 2, %tmp59
  %tmp61 = add nsw i32 %tmp58, %tmp60
store i32 %tmp61, i32* %tmp8, align 4
br label %bb62

bb62:
	  %tmp63 = load i32, i32* %tmp8, align 4
  %tmp64 = icmp sgt i32 %tmp63, 10
br i1 %tmp64, label %bb65, label %bb72

bb65:
	  %tmp66 = load i32, i32* %tmp, align 4
  %tmp67 = mul nsw i32 3, %tmp66
  %tmp68 = load i32, i32* %tmp4, align 4
  %tmp69 = load i32, i32* %tmp6, align 4
  %tmp70 = sdiv i32 %tmp68, %tmp69
  %tmp71 = add nsw i32 %tmp67, %tmp70
store i32 %tmp71, i32* %tmp9, align 4
br label %bb73

bb72:
	store i32 0, i32* %tmp9, align 4
br label %bb73

bb73:
	  %tmp74 = load i32, i32* %tmp9, align 4
  %tmp75 = load i32, i32* %tmp8, align 4
  %tmp76 = icmp sge i32 %tmp74, %tmp75
br i1 %tmp76, label %bb77, label %bb81

bb77:
	  %tmp78 = load i32, i32* %tmp, align 4
  %tmp79 = load i32, i32* %tmp4, align 4
  %tmp80 = add nsw i32 %tmp78, %tmp79
store i32 %tmp80, i32* %tmp10, align 4
br label %bb82

bb81:
	store i32 0, i32* %tmp10, align 4
br label %bb82

bb82:
	  %tmp83 = load i32, i32* %tmp10, align 4
  %tmp84 = load i32, i32* %tmp9, align 4
  %tmp85 = add nsw i32 %tmp83, %tmp84
  %tmp86 = icmp sgt i32 %tmp85, 9
br i1 %tmp86, label %bb87, label %bb88

bb87:
	store i32 0, i32* %tmp11, align 4
br label %bb94

bb88:
	  %tmp89 = load i32, i32* %tmp, align 4
  %tmp90 = load i32, i32* %tmp4, align 4
  %tmp91 = mul nsw i32 %tmp89, %tmp90
  %tmp92 = load i32, i32* %tmp6, align 4
  %tmp93 = add nsw i32 %tmp91, %tmp92
store i32 %tmp93, i32* %tmp11, align 4
br label %bb94

bb94:
	  %tmp95 = load i32, i32* %tmp11, align 4
  %tmp96 = icmp eq i32 %tmp95, 0
br i1 %tmp96, label %bb97, label %bb103

bb97:
	  %tmp98 = load i32, i32* %tmp, align 4
  %tmp99 = mul nsw i32 70, %tmp98
  %tmp100 = load i32, i32* %tmp4, align 4
  %tmp101 = mul nsw i32 80, %tmp100
  %tmp102 = sub nsw i32 %tmp99, %tmp101
store i32 %tmp102, i32* %tmp12, align 4
br label %bb104

bb103:
	store i32 0, i32* %tmp12, align 4
br label %bb104

bb104:
	  %tmp105 = load i32, i32* %tmp10, align 4
  %tmp106 = srem i32 %tmp105, 2
  %tmp107 = icmp eq i32 %tmp106, 0
br i1 %tmp107, label %bb108, label %bb112

bb108:
	  %tmp109 = load i32, i32* %tmp11, align 4
  %tmp110 = icmp eq i32 %tmp109, 6
br i1 %tmp110, label %bb111, label %bb112

bb112:
	  %tmp113 = load i32, i32* %tmp6, align 4
  %tmp114 = add nsw i32 %tmp113, 91
store i32 %tmp114, i32* %tmp13, align 4
br label %bb115

bb111:
	store i32 76, i32* %tmp13, align 4
br label %bb115

bb115:
	  %tmp116 = load i32, i32* %tmp8, align 4
  %tmp117 = load i32, i32* %tmp12, align 4
  %tmp118 = add nsw i32 %tmp116, %tmp117
  %tmp119 = load i32, i32* %tmp10, align 4
  %tmp120 = add nsw i32 %tmp118, %tmp119
  %tmp121 = load i32, i32* %tmp13, align 4
  %tmp122 = add nsw i32 %tmp120, %tmp121
  %tmp123 = load i32, i32* %tmp14, align 4
  %tmp124 = add nsw i32 %tmp123, %tmp122
store i32 %tmp124, i32* %tmp14, align 4
br label %bb125

bb125:
	  %tmp126 = load i32, i32* %tmp31, align 4
  %tmp127 = add nsw i32 %tmp126, 1
store i32 %tmp127, i32* %tmp31, align 4
br label %bb34

bb129:
	  %tmp130 = load i32, i32* %tmp32, align 4
  %tmp131 = icmp slt i32 %tmp130, 300
br i1 %tmp131, label %bb132, label %bb223

bb132:
	  %tmp133 = load i32, i32* %tmp5, align 4
  %tmp134 = icmp sgt i32 %tmp133, 1

  %tmp136 = load i32, i32* %tmp, align 4
  %tmp137 = load i32, i32* %tmp4, align 4
  %tmp138 = add nsw i32 %tmp136, %tmp137
 %tmp15_t =  add nsw i32 %tmp138, 0

  %tmp140 = load i32, i32* %tmp, align 4
  %tmp141 = load i32, i32* %tmp6, align 4
  %tmp142 = add nsw i32 %tmp140, %tmp141
 %tmp15_f =  add nsw i32 %tmp142, 0

br label %bb143
bb223:
	store i32 0, i32* %tmp33, align 4
br label %bb224

bb143:
	 %tmp15_merge = select i1 %tmp134, i32 %tmp15_t,i32 %tmp15_f
store i32 %tmp15_merge, i32* %tmp15, align 4
  %tmp144 = load i32, i32* %tmp15, align 4
  %tmp145 = srem i32 %tmp144, 2
  %tmp146 = icmp eq i32 %tmp145, 0
br i1 %tmp146, label %bb147, label %bb152

bb147:
	  %tmp148 = load i32, i32* %tmp, align 4
  %tmp149 = load i32, i32* %tmp4, align 4
  %tmp150 = mul nsw i32 2, %tmp149
  %tmp151 = add nsw i32 %tmp148, %tmp150
store i32 %tmp151, i32* %tmp16, align 4
br label %bb157

bb152:
	  %tmp153 = load i32, i32* %tmp, align 4
  %tmp154 = load i32, i32* %tmp6, align 4
  %tmp155 = mul nsw i32 2, %tmp154
  %tmp156 = add nsw i32 %tmp153, %tmp155
store i32 %tmp156, i32* %tmp16, align 4
br label %bb157

bb157:
	  %tmp158 = load i32, i32* %tmp16, align 4
  %tmp159 = icmp sgt i32 %tmp158, 10
br i1 %tmp159, label %bb160, label %bb167

bb160:
	  %tmp161 = load i32, i32* %tmp, align 4
  %tmp162 = mul nsw i32 3, %tmp161
  %tmp163 = load i32, i32* %tmp4, align 4
  %tmp164 = load i32, i32* %tmp6, align 4
  %tmp165 = sdiv i32 %tmp163, %tmp164
  %tmp166 = add nsw i32 %tmp162, %tmp165
store i32 %tmp166, i32* %tmp17, align 4
br label %bb168

bb167:
	store i32 0, i32* %tmp17, align 4
br label %bb168

bb168:
	  %tmp169 = load i32, i32* %tmp17, align 4
  %tmp170 = load i32, i32* %tmp16, align 4
  %tmp171 = icmp sge i32 %tmp169, %tmp170
br i1 %tmp171, label %bb172, label %bb176

bb172:
	  %tmp173 = load i32, i32* %tmp, align 4
  %tmp174 = load i32, i32* %tmp4, align 4
  %tmp175 = add nsw i32 %tmp173, %tmp174
store i32 %tmp175, i32* %tmp18, align 4
br label %bb177

bb176:
	store i32 0, i32* %tmp18, align 4
br label %bb177

bb177:
	  %tmp178 = load i32, i32* %tmp18, align 4
  %tmp179 = load i32, i32* %tmp17, align 4
  %tmp180 = add nsw i32 %tmp178, %tmp179
  %tmp181 = icmp sgt i32 %tmp180, 9
br i1 %tmp181, label %bb182, label %bb183

bb182:
	store i32 0, i32* %tmp19, align 4
br label %bb189

bb183:
	  %tmp184 = load i32, i32* %tmp, align 4
  %tmp185 = load i32, i32* %tmp4, align 4
  %tmp186 = mul nsw i32 %tmp184, %tmp185
  %tmp187 = load i32, i32* %tmp6, align 4
  %tmp188 = add nsw i32 %tmp186, %tmp187
store i32 %tmp188, i32* %tmp19, align 4
br label %bb189

bb189:
	  %tmp190 = load i32, i32* %tmp19, align 4
  %tmp191 = icmp eq i32 %tmp190, 0
br i1 %tmp191, label %bb192, label %bb198

bb192:
	  %tmp193 = load i32, i32* %tmp, align 4
  %tmp194 = mul nsw i32 70, %tmp193
  %tmp195 = load i32, i32* %tmp4, align 4
  %tmp196 = mul nsw i32 80, %tmp195
  %tmp197 = sub nsw i32 %tmp194, %tmp196
store i32 %tmp197, i32* %tmp20, align 4
br label %bb199

bb198:
	store i32 0, i32* %tmp20, align 4
br label %bb199

bb199:
	  %tmp200 = load i32, i32* %tmp18, align 4
  %tmp201 = srem i32 %tmp200, 2
  %tmp202 = icmp eq i32 %tmp201, 0
br i1 %tmp202, label %bb203, label %bb207

bb203:
	  %tmp204 = load i32, i32* %tmp19, align 4
  %tmp205 = icmp eq i32 %tmp204, 6
br i1 %tmp205, label %bb206, label %bb207

bb207:
	  %tmp208 = load i32, i32* %tmp6, align 4
  %tmp209 = add nsw i32 %tmp208, 91
store i32 %tmp209, i32* %tmp21, align 4
br label %bb210

bb206:
	store i32 76, i32* %tmp21, align 4
br label %bb210

bb210:
	  %tmp211 = load i32, i32* %tmp16, align 4
  %tmp212 = load i32, i32* %tmp20, align 4
  %tmp213 = add nsw i32 %tmp211, %tmp212
  %tmp214 = load i32, i32* %tmp18, align 4
  %tmp215 = add nsw i32 %tmp213, %tmp214
  %tmp216 = load i32, i32* %tmp21, align 4
  %tmp217 = add nsw i32 %tmp215, %tmp216
  %tmp218 = load i32, i32* %tmp22, align 4
  %tmp219 = add nsw i32 %tmp218, %tmp217
store i32 %tmp219, i32* %tmp22, align 4
br label %bb220

bb220:
	  %tmp221 = load i32, i32* %tmp32, align 4
  %tmp222 = add nsw i32 %tmp221, 1
store i32 %tmp222, i32* %tmp32, align 4
br label %bb129

bb224:
	  %tmp225 = load i32, i32* %tmp33, align 4
  %tmp226 = icmp slt i32 %tmp225, 270
br i1 %tmp226, label %bb227, label %bb318

bb227:
	  %tmp228 = load i32, i32* %tmp5, align 4
  %tmp229 = icmp sgt i32 %tmp228, 1

  %tmp231 = load i32, i32* %tmp, align 4
  %tmp232 = load i32, i32* %tmp4, align 4
  %tmp233 = add nsw i32 %tmp231, %tmp232
 %tmp23_t =  add nsw i32 %tmp233, 0

  %tmp235 = load i32, i32* %tmp, align 4
  %tmp236 = load i32, i32* %tmp6, align 4
  %tmp237 = add nsw i32 %tmp235, %tmp236
 %tmp23_f =  add nsw i32 %tmp237, 0

br label %bb238
bb318:
	  %tmp319 = load i32, i32* %tmp14, align 4
  %tmp320 = load i32, i32* %tmp30, align 4
  %tmp321 = add nsw i32 %tmp319, %tmp320
  %tmp322 = load i32, i32* %tmp22, align 4
  %tmp323 = add nsw i32 %tmp321, %tmp322
  ret i32 %tmp323

bb238:
	 %tmp23_merge = select i1 %tmp229, i32 %tmp23_t,i32 %tmp23_f
store i32 %tmp23_merge, i32* %tmp23, align 4
  %tmp239 = load i32, i32* %tmp7, align 4
  %tmp240 = srem i32 %tmp239, 2
  %tmp241 = icmp eq i32 %tmp240, 0
br i1 %tmp241, label %bb242, label %bb247

bb242:
	  %tmp243 = load i32, i32* %tmp, align 4
  %tmp244 = load i32, i32* %tmp4, align 4
  %tmp245 = mul nsw i32 2, %tmp244
  %tmp246 = add nsw i32 %tmp243, %tmp245
store i32 %tmp246, i32* %tmp24, align 4
br label %bb252

bb247:
	  %tmp248 = load i32, i32* %tmp, align 4
  %tmp249 = load i32, i32* %tmp6, align 4
  %tmp250 = mul nsw i32 2, %tmp249
  %tmp251 = add nsw i32 %tmp248, %tmp250
store i32 %tmp251, i32* %tmp24, align 4
br label %bb252

bb252:
	  %tmp253 = load i32, i32* %tmp8, align 4
  %tmp254 = icmp sgt i32 %tmp253, 10
br i1 %tmp254, label %bb255, label %bb262

bb255:
	  %tmp256 = load i32, i32* %tmp, align 4
  %tmp257 = mul nsw i32 3, %tmp256
  %tmp258 = load i32, i32* %tmp4, align 4
  %tmp259 = load i32, i32* %tmp6, align 4
  %tmp260 = sdiv i32 %tmp258, %tmp259
  %tmp261 = add nsw i32 %tmp257, %tmp260
store i32 %tmp261, i32* %tmp25, align 4
br label %bb263

bb262:
	store i32 0, i32* %tmp25, align 4
br label %bb263

bb263:
	  %tmp264 = load i32, i32* %tmp25, align 4
  %tmp265 = load i32, i32* %tmp24, align 4
  %tmp266 = icmp sge i32 %tmp264, %tmp265
br i1 %tmp266, label %bb267, label %bb271

bb267:
	  %tmp268 = load i32, i32* %tmp, align 4
  %tmp269 = load i32, i32* %tmp4, align 4
  %tmp270 = add nsw i32 %tmp268, %tmp269
store i32 %tmp270, i32* %tmp26, align 4
br label %bb272

bb271:
	store i32 0, i32* %tmp26, align 4
br label %bb272

bb272:
	  %tmp273 = load i32, i32* %tmp26, align 4
  %tmp274 = load i32, i32* %tmp9, align 4
  %tmp275 = add nsw i32 %tmp273, %tmp274
  %tmp276 = icmp sgt i32 %tmp275, 9
br i1 %tmp276, label %bb277, label %bb278

bb277:
	store i32 0, i32* %tmp27, align 4
br label %bb284

bb278:
	  %tmp279 = load i32, i32* %tmp, align 4
  %tmp280 = load i32, i32* %tmp4, align 4
  %tmp281 = mul nsw i32 %tmp279, %tmp280
  %tmp282 = load i32, i32* %tmp6, align 4
  %tmp283 = add nsw i32 %tmp281, %tmp282
store i32 %tmp283, i32* %tmp27, align 4
br label %bb284

bb284:
	  %tmp285 = load i32, i32* %tmp27, align 4
  %tmp286 = icmp eq i32 %tmp285, 0
br i1 %tmp286, label %bb287, label %bb293

bb287:
	  %tmp288 = load i32, i32* %tmp, align 4
  %tmp289 = mul nsw i32 70, %tmp288
  %tmp290 = load i32, i32* %tmp4, align 4
  %tmp291 = mul nsw i32 80, %tmp290
  %tmp292 = sub nsw i32 %tmp289, %tmp291
store i32 %tmp292, i32* %tmp28, align 4
br label %bb294

bb293:
	store i32 0, i32* %tmp28, align 4
br label %bb294

bb294:
	  %tmp295 = load i32, i32* %tmp26, align 4
  %tmp296 = srem i32 %tmp295, 2
  %tmp297 = icmp eq i32 %tmp296, 0
br i1 %tmp297, label %bb298, label %bb302

bb298:
	  %tmp299 = load i32, i32* %tmp27, align 4
  %tmp300 = icmp eq i32 %tmp299, 6
br i1 %tmp300, label %bb301, label %bb302

bb302:
	  %tmp303 = load i32, i32* %tmp6, align 4
  %tmp304 = add nsw i32 %tmp303, 91
store i32 %tmp304, i32* %tmp29, align 4
br label %bb305

bb301:
	store i32 76, i32* %tmp29, align 4
br label %bb305

bb305:
	  %tmp306 = load i32, i32* %tmp24, align 4
  %tmp307 = load i32, i32* %tmp28, align 4
  %tmp308 = add nsw i32 %tmp306, %tmp307
  %tmp309 = load i32, i32* %tmp26, align 4
  %tmp310 = add nsw i32 %tmp308, %tmp309
  %tmp311 = load i32, i32* %tmp29, align 4
  %tmp312 = add nsw i32 %tmp310, %tmp311
  %tmp313 = load i32, i32* %tmp30, align 4
  %tmp314 = add nsw i32 %tmp313, %tmp312
store i32 %tmp314, i32* %tmp30, align 4
br label %bb315

bb315:
	  %tmp316 = load i32, i32* %tmp33, align 4
  %tmp317 = add nsw i32 %tmp316, 1
store i32 %tmp317, i32* %tmp33, align 4
br label %bb224

}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
