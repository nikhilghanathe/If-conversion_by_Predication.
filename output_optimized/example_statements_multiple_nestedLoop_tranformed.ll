; ModuleID = 'example_statements_multiple_nestedLoop.ll'
source_filename = "example_statements_multiple_nestedLoop.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @example_statements_multiple_nestedLoop(i32 %arg, i32 %arg1, i32 %arg2, i32 %arg3, i32* %arg4, i32* %arg5, i32* %arg6) #0 {
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
  %tmp28 = alloca i32, align 4
  %tmp29 = alloca i32, align 4
store i32 %arg, i32* %tmp, align 4
store i32 %arg1, i32* %tmp7, align 4
store i32 %arg2, i32* %tmp8, align 4
store i32 %arg3, i32* %tmp9, align 4
store i32* %arg4, i32** %tmp10, align 8
store i32* %arg5, i32** %tmp11, align 8
store i32* %arg6, i32** %tmp12, align 8
store i32 0, i32* %tmp20, align 4
store i32 0, i32* %tmp21, align 4
store i32 0, i32* %tmp26, align 4
br label %bb30

bb30:
	  %tmp31 = load i32, i32* %tmp26, align 4
  %tmp32 = icmp slt i32 %tmp31, 50
br i1 %tmp32, label %bb33, label %bb46

bb33:
	  %tmp34 = load i32, i32* %tmp26, align 4
  %tmp35 = sext i32 %tmp34 to i64
  %tmp36 = getelementptr inbounds [50 x i32], [50 x i32]* %tmp23, i64 0, i64
... %tmp35
store i32 0, i32* %tmp36, align 4
  %tmp37 = load i32, i32* %tmp26, align 4
  %tmp38 = sext i32 %tmp37 to i64
  %tmp39 = getelementptr inbounds [50 x i32], [50 x i32]* %tmp24, i64 0, i64
... %tmp38
store i32 0, i32* %tmp39, align 4
  %tmp40 = load i32, i32* %tmp26, align 4
  %tmp41 = sext i32 %tmp40 to i64
  %tmp42 = getelementptr inbounds [50 x i32], [50 x i32]* %tmp25, i64 0, i64
... %tmp41
store i32 0, i32* %tmp42, align 4
br label %bb43

bb46:
	store i32 0, i32* %tmp27, align 4
br label %bb47

bb43:
	  %tmp44 = load i32, i32* %tmp26, align 4
  %tmp45 = add nsw i32 %tmp44, 1
store i32 %tmp45, i32* %tmp26, align 4
br label %bb30

bb47:
	  %tmp48 = load i32, i32* %tmp27, align 4
  %tmp49 = icmp slt i32 %tmp48, 200
br i1 %tmp49, label %bb50, label %bb316

bb50:
	store i32 0, i32* %tmp28, align 4
br label %bb51

bb316:
	  %tmp317 = load i32, i32* %tmp20, align 4
  ret i32 %tmp317

bb51:
	  %tmp52 = load i32, i32* %tmp28, align 4
  %tmp53 = icmp slt i32 %tmp52, 10
br i1 %tmp53, label %bb54, label %bb114

bb54:
	  %tmp55 = load i32, i32* %tmp8, align 4
  %tmp56 = icmp sgt i32 %tmp55, 1

  %tmp58 = load i32, i32* %tmp, align 4
  %tmp59 = load i32, i32* %tmp7, align 4
  %tmp60 = add nsw i32 %tmp58, %tmp59
 %tmp13_t0 =  add nsw i32 %tmp60, 0
  %tmp61 = load i32, i32* %tmp9, align 4
  %tmp62 = mul nsw i32 %tmp61, 5
  %tmp63 = load i32, i32* %tmp13, align 4
  %tmp64 = add nsw i32 %tmp62, %tmp63
 %tmp14_t0 =  add nsw i32 %tmp64, 0

  %tmp66 = load i32, i32* %tmp, align 4
  %tmp67 = load i32, i32* %tmp9, align 4
  %tmp68 = add nsw i32 %tmp66, %tmp67
 %tmp13_f0 =  add nsw i32 %tmp68, 0

br label %bb69
bb114:
	store i32 0, i32* %tmp29, align 4
br label %bb115

bb69:
	 %tmp14_merge = select i1 %tmp56, i32 %tmp14_t0,i32 0
store i32 %tmp14_merge, i32* %tmp14, align 4
 %tmp13_merge0 = select i1 %tmp56, i32 %tmp13_t0,i32 %tmp13_f0
store i32 %tmp13_merge0, i32* %tmp13, align 4
  %tmp70 = load i32, i32* %tmp13, align 4
  %tmp71 = srem i32 %tmp70, 2
  %tmp72 = icmp eq i32 %tmp71, 0
br i1 %tmp72, label %bb73, label %bb86

bb73:
	  %tmp74 = load i32, i32* %tmp, align 4
  %tmp75 = load i32, i32* %tmp7, align 4
  %tmp76 = mul nsw i32 2, %tmp75
  %tmp77 = add nsw i32 %tmp74, %tmp76
store i32 %tmp77, i32* %tmp14, align 4
  %tmp78 = load i32, i32* %tmp9, align 4
  %tmp79 = add nsw i32 55, %tmp78
store i32 %tmp79, i32* %tmp15, align 4
  %tmp80 = load i32, i32* %tmp, align 4
  %tmp81 = sdiv i32 76, %tmp80
store i32 %tmp81, i32* %tmp16, align 4
  %tmp82 = load i32, i32* %tmp9, align 4
  %tmp83 = load i32, i32* %tmp, align 4
  %tmp84 = mul nsw i32 %tmp82, %tmp83
  %tmp85 = add nsw i32 56, %tmp84
store i32 %tmp85, i32* %tmp17, align 4
br label %bb101

bb86:
	  %tmp87 = load i32, i32* %tmp, align 4
  %tmp88 = load i32, i32* %tmp9, align 4
  %tmp89 = mul nsw i32 2, %tmp88
  %tmp90 = add nsw i32 %tmp87, %tmp89
store i32 %tmp90, i32* %tmp14, align 4
  %tmp91 = load i32, i32* %tmp9, align 4
  %tmp92 = add nsw i32 644, %tmp91
store i32 %tmp92, i32* %tmp15, align 4
  %tmp93 = load i32, i32* %tmp7, align 4
  %tmp94 = sdiv i32 76, %tmp93
store i32 %tmp94, i32* %tmp16, align 4
  %tmp95 = load i32, i32* %tmp7, align 4
  %tmp96 = mul nsw i32 75, %tmp95
  %tmp97 = load i32, i32* %tmp8, align 4
  %tmp98 = load i32, i32* %tmp, align 4
  %tmp99 = mul nsw i32 %tmp97, %tmp98
  %tmp100 = add nsw i32 %tmp96, %tmp99
store i32 %tmp100, i32* %tmp17, align 4
br label %bb101

bb101:
	  %tmp102 = load i32, i32* %tmp14, align 4
  %tmp103 = load i32, i32* %tmp15, align 4
  %tmp104 = add nsw i32 %tmp102, %tmp103
  %tmp105 = load i32, i32* %tmp16, align 4
  %tmp106 = add nsw i32 %tmp104, %tmp105
  %tmp107 = load i32, i32* %tmp17, align 4
  %tmp108 = add nsw i32 %tmp106, %tmp107
  %tmp109 = load i32, i32* %tmp13, align 4
  %tmp110 = add nsw i32 %tmp108, %tmp109
store i32 %tmp110, i32* %tmp21, align 4
br label %bb111

bb111:
	  %tmp112 = load i32, i32* %tmp28, align 4
  %tmp113 = add nsw i32 %tmp112, 1
store i32 %tmp113, i32* %tmp28, align 4
br label %bb51

bb115:
	  %tmp116 = load i32, i32* %tmp29, align 4
  %tmp117 = icmp slt i32 %tmp116, 45
br i1 %tmp117, label %bb118, label %bb206

bb118:
	  %tmp119 = load i32*, i32** %tmp10, align 8
  %tmp120 = load i32, i32* %tmp27, align 4
  %tmp121 = sext i32 %tmp120 to i64
  %tmp122 = getelementptr inbounds i32, i32* %tmp119, i64 %tmp121
  %tmp123 = load i32, i32* %tmp122, align 4
  %tmp124 = icmp sgt i32 %tmp123, 0

  %tmp126 = load i32, i32* %tmp8, align 4
  %tmp127 = load i32*, i32** %tmp11, align 8
  %tmp128 = load i32, i32* %tmp27, align 4
  %tmp129 = sext i32 %tmp128 to i64
  %tmp130 = getelementptr inbounds i32, i32* %tmp127, i64 %tmp129
  %tmp131 = load i32, i32* %tmp130, align 4
  %tmp132 = add nsw i32 %tmp126, %tmp131
  %tmp133 = load i32, i32* %tmp27, align 4
  %tmp134 = sext i32 %tmp133 to i64
  %tmp135 = getelementptr inbounds [50 x i32], [50 x i32]* %tmp23, i64 0, i64
... %tmp134
 %tmp135_t1 =  add nsw i32 %tmp132, 0
  %tmp136 = load i32*, i32** %tmp11, align 8
  %tmp137 = load i32, i32* %tmp27, align 4
  %tmp138 = sext i32 %tmp137 to i64
  %tmp139 = getelementptr inbounds i32, i32* %tmp136, i64 %tmp138
  %tmp140 = load i32, i32* %tmp139, align 4
  %tmp141 = load i32*, i32** %tmp12, align 8
  %tmp142 = load i32, i32* %tmp27, align 4
  %tmp143 = sext i32 %tmp142 to i64
  %tmp144 = getelementptr inbounds i32, i32* %tmp141, i64 %tmp143
  %tmp145 = load i32, i32* %tmp144, align 4
  %tmp146 = add nsw i32 %tmp140, %tmp145
  %tmp147 = load i32, i32* %tmp27, align 4
  %tmp148 = sext i32 %tmp147 to i64
  %tmp149 = getelementptr inbounds [50 x i32], [50 x i32]* %tmp24, i64 0, i64
... %tmp148
 %tmp149_t1 =  add nsw i32 %tmp146, 0
  %tmp150 = load i32*, i32** %tmp11, align 8
  %tmp151 = load i32, i32* %tmp27, align 4
  %tmp152 = srem i32 %tmp151, 2
  %tmp153 = sext i32 %tmp152 to i64
  %tmp154 = getelementptr inbounds i32, i32* %tmp150, i64 %tmp153
  %tmp155 = load i32, i32* %tmp154, align 4
  %tmp156 = load i32*, i32** %tmp12, align 8
  %tmp157 = load i32, i32* %tmp27, align 4
  %tmp158 = sext i32 %tmp157 to i64
  %tmp159 = getelementptr inbounds i32, i32* %tmp156, i64 %tmp158
  %tmp160 = load i32, i32* %tmp159, align 4
  %tmp161 = add nsw i32 %tmp155, %tmp160
  %tmp162 = load i32, i32* %tmp27, align 4
  %tmp163 = sext i32 %tmp162 to i64
  %tmp164 = getelementptr inbounds [50 x i32], [50 x i32]* %tmp25, i64 0, i64
... %tmp163
 %tmp164_t1 =  add nsw i32 %tmp161, 0

  %tmp166 = load i32*, i32** %tmp10, align 8
  %tmp167 = load i32, i32* %tmp27, align 4
  %tmp168 = sext i32 %tmp167 to i64
  %tmp169 = getelementptr inbounds i32, i32* %tmp166, i64 %tmp168
  %tmp170 = load i32, i32* %tmp169, align 4
  %tmp171 = load i32*, i32** %tmp12, align 8
  %tmp172 = load i32, i32* %tmp27, align 4
  %tmp173 = sext i32 %tmp172 to i64
  %tmp174 = getelementptr inbounds i32, i32* %tmp171, i64 %tmp173
  %tmp175 = load i32, i32* %tmp174, align 4
  %tmp176 = add nsw i32 %tmp170, %tmp175
  %tmp177 = load i32, i32* %tmp27, align 4
  %tmp178 = srem i32 %tmp177, 2
  %tmp179 = sext i32 %tmp178 to i64
  %tmp180 = getelementptr inbounds [50 x i32], [50 x i32]* %tmp23, i64 0, i64
... %tmp179
 %tmp180_f1 =  add nsw i32 %tmp176, 0
  %tmp181 = load i32*, i32** %tmp12, align 8
  %tmp182 = load i32, i32* %tmp27, align 4
  %tmp183 = sext i32 %tmp182 to i64
  %tmp184 = getelementptr inbounds i32, i32* %tmp181, i64 %tmp183
  %tmp185 = load i32, i32* %tmp184, align 4
  %tmp186 = load i32, i32* %tmp27, align 4
  %tmp187 = sext i32 %tmp186 to i64
  %tmp188 = getelementptr inbounds [50 x i32], [50 x i32]* %tmp24, i64 0, i64
... %tmp187
 %tmp188_f1 =  add nsw i32 %tmp185, 0
  %tmp189 = load i32*, i32** %tmp11, align 8
  %tmp190 = load i32, i32* %tmp27, align 4
  %tmp191 = srem i32 %tmp190, 2
  %tmp192 = sext i32 %tmp191 to i64
  %tmp193 = getelementptr inbounds i32, i32* %tmp189, i64 %tmp192
  %tmp194 = load i32, i32* %tmp193, align 4
  %tmp195 = load i32*, i32** %tmp12, align 8
  %tmp196 = getelementptr inbounds i32, i32* %tmp195, i64 0
  %tmp197 = load i32, i32* %tmp196, align 4
  %tmp198 = add nsw i32 %tmp194, %tmp197
  %tmp199 = load i32, i32* %tmp27, align 4
  %tmp200 = sext i32 %tmp199 to i64
  %tmp201 = getelementptr inbounds [50 x i32], [50 x i32]* %tmp25, i64 0, i64
... %tmp200
 %tmp201_f1 =  add nsw i32 %tmp198, 0

br label %bb202
bb206:
	  %tmp207 = load i32, i32* %tmp21, align 4
  %tmp208 = icmp sgt i32 %tmp207, 10

  %tmp210 = load i32, i32* %tmp, align 4
  %tmp211 = mul nsw i32 3, %tmp210
  %tmp212 = load i32, i32* %tmp7, align 4
  %tmp213 = load i32, i32* %tmp9, align 4
  %tmp214 = sdiv i32 %tmp212, %tmp213
  %tmp215 = add nsw i32 %tmp211, %tmp214
 %tmp15_t2 =  add nsw i32 %tmp215, 0
  %tmp216 = load i32, i32* %tmp16, align 4
  %tmp217 = load i32, i32* %tmp17, align 4
  %tmp218 = add nsw i32 %tmp216, %tmp217
 %tmp18_t2 =  add nsw i32 %tmp218, 0
  %tmp219 = load i32, i32* %tmp17, align 4
  %tmp220 = mul nsw i32 %tmp219, 8
 %tmp19_t2 =  add nsw i32 %tmp220, 0
  %tmp221 = load i32, i32* %tmp13, align 4
 %tmp14_t2 =  add nsw i32 %tmp221, 0
  %tmp222 = load i32, i32* %tmp17, align 4
  %tmp223 = load i32, i32* %tmp17, align 4
  %tmp224 = mul nsw i32 %tmp222, %tmp223
 %tmp16_t2 =  add nsw i32 %tmp224, 0

 %tmp15_f2 =  add nsw i32 0, 0
  %tmp226 = load i32, i32* %tmp15, align 4
  %tmp227 = load i32, i32* %tmp17, align 4
  %tmp228 = add nsw i32 %tmp226, %tmp227
 %tmp18_f2 =  add nsw i32 %tmp228, 0
  %tmp229 = load i32, i32* %tmp17, align 4
  %tmp230 = mul nsw i32 %tmp229, 8
 %tmp19_f2 =  add nsw i32 %tmp230, 0
  %tmp231 = load i32, i32* %tmp13, align 4
  %tmp232 = sdiv i32 %tmp231, 2
 %tmp14_f2 =  add nsw i32 %tmp232, 0
  %tmp233 = load i32, i32* %tmp17, align 4
  %tmp234 = load i32, i32* %tmp16, align 4
  %tmp235 = mul nsw i32 %tmp233, %tmp234
 %tmp16_f2 =  add nsw i32 %tmp235, 0

br label %bb236
bb202:
	 %tmp149_merge = select i1 %tmp124, i32 %tmp149_t1,i32 0
store i32 %tmp149_merge, i32* %tmp149, align 4
 %tmp135_merge = select i1 %tmp124, i32 %tmp135_t1,i32 0
store i32 %tmp135_merge, i32* %tmp135, align 4
 %tmp164_merge = select i1 %tmp124, i32 %tmp164_t1,i32 0
store i32 %tmp164_merge, i32* %tmp164, align 4
br label %bb203

bb203:
	  %tmp204 = load i32, i32* %tmp29, align 4
  %tmp205 = add nsw i32 %tmp204, 1
store i32 %tmp205, i32* %tmp29, align 4
br label %bb115

bb236:
	 %tmp14_merge2 = select i1 %tmp208, i32 %tmp14_t2,i32 %tmp14_f2
store i32 %tmp14_merge2, i32* %tmp14, align 4
 %tmp16_merge2 = select i1 %tmp208, i32 %tmp16_t2,i32 %tmp16_f2
store i32 %tmp16_merge2, i32* %tmp16, align 4
 %tmp18_merge2 = select i1 %tmp208, i32 %tmp18_t2,i32 %tmp18_f2
store i32 %tmp18_merge2, i32* %tmp18, align 4
 %tmp19_merge2 = select i1 %tmp208, i32 %tmp19_t2,i32 %tmp19_f2
store i32 %tmp19_merge2, i32* %tmp19, align 4
 %tmp15_merge2 = select i1 %tmp208, i32 %tmp15_t2,i32 %tmp15_f2
store i32 %tmp15_merge2, i32* %tmp15, align 4
  %tmp237 = load i32, i32* %tmp15, align 4
  %tmp238 = load i32, i32* %tmp14, align 4
  %tmp239 = icmp sge i32 %tmp237, %tmp238
br i1 %tmp239, label %bb240, label %bb255

bb240:
	  %tmp241 = load i32, i32* %tmp16, align 4
  %tmp242 = add nsw i32 %tmp241, 66
store i32 %tmp242, i32* %tmp15, align 4
  %tmp243 = load i32, i32* %tmp15, align 4
  %tmp244 = mul nsw i32 %tmp243, 8
  %tmp245 = load i32, i32* %tmp17, align 4
  %tmp246 = add nsw i32 %tmp244, %tmp245
store i32 %tmp246, i32* %tmp17, align 4
  %tmp247 = load i32, i32* %tmp17, align 4
  %tmp248 = sdiv i32 %tmp247, 8
store i32 %tmp248, i32* %tmp18, align 4
  %tmp249 = load i32, i32* %tmp13, align 4
  %tmp250 = sdiv i32 %tmp249, 2
store i32 %tmp250, i32* %tmp19, align 4
  %tmp251 = load i32, i32* %tmp17, align 4
  %tmp252 = load i32, i32* %tmp16, align 4
  %tmp253 = mul nsw i32 %tmp251, %tmp252
  %tmp254 = add nsw i32 %tmp253, 87
store i32 %tmp254, i32* %tmp17, align 4
br label %bb256

bb255:
	store i32 0, i32* %tmp16, align 4
br label %bb256

bb256:
	  %tmp257 = load i32, i32* %tmp16, align 4
  %tmp258 = load i32, i32* %tmp15, align 4
  %tmp259 = add nsw i32 %tmp257, %tmp258
  %tmp260 = icmp sgt i32 %tmp259, 9
br i1 %tmp260, label %bb261, label %bb262

bb261:
	store i32 0, i32* %tmp17, align 4
br label %bb278

bb262:
	  %tmp263 = load i32, i32* %tmp16, align 4
  %tmp264 = add nsw i32 %tmp263, 644
store i32 %tmp264, i32* %tmp15, align 4
  %tmp265 = load i32, i32* %tmp16, align 4
  %tmp266 = load i32, i32* %tmp17, align 4
  %tmp267 = add nsw i32 %tmp265, %tmp266
store i32 %tmp267, i32* %tmp17, align 4
  %tmp268 = load i32, i32* %tmp16, align 4
  %tmp269 = sdiv i32 %tmp268, 8
store i32 %tmp269, i32* %tmp18, align 4
  %tmp270 = load i32, i32* %tmp18, align 4
  %tmp271 = sdiv i32 %tmp270, 2
store i32 %tmp271, i32* %tmp19, align 4
  %tmp272 = load i32, i32* %tmp17, align 4
  %tmp273 = load i32, i32* %tmp16, align 4
  %tmp274 = mul nsw i32 %tmp272, %tmp273
  %tmp275 = load i32, i32* %tmp15, align 4
  %tmp276 = mul nsw i32 87, %tmp275
  %tmp277 = add nsw i32 %tmp274, %tmp276
store i32 %tmp277, i32* %tmp17, align 4
br label %bb278

bb278:
	  %tmp279 = load i32, i32* %tmp17, align 4
  %tmp280 = icmp eq i32 %tmp279, 0
br i1 %tmp280, label %bb281, label %bb287

bb281:
	  %tmp282 = load i32, i32* %tmp, align 4
  %tmp283 = mul nsw i32 70, %tmp282
  %tmp284 = load i32, i32* %tmp7, align 4
  %tmp285 = mul nsw i32 80, %tmp284
  %tmp286 = sub nsw i32 %tmp283, %tmp285
store i32 %tmp286, i32* %tmp18, align 4
br label %bb288

bb287:
	store i32 0, i32* %tmp18, align 4
br label %bb288

bb288:
	  %tmp289 = load i32, i32* %tmp16, align 4
  %tmp290 = srem i32 %tmp289, 2
  %tmp291 = icmp eq i32 %tmp290, 0
br i1 %tmp291, label %bb292, label %bb296

bb292:
	  %tmp293 = load i32, i32* %tmp17, align 4
  %tmp294 = icmp eq i32 %tmp293, 6
br i1 %tmp294, label %bb295, label %bb296

bb296:
	  %tmp297 = load i32, i32* %tmp9, align 4
  %tmp298 = add nsw i32 %tmp297, 91
store i32 %tmp298, i32* %tmp19, align 4
br label %bb299

bb295:
	store i32 76, i32* %tmp19, align 4
br label %bb299

bb299:
	  %tmp300 = load i32, i32* %tmp14, align 4
  %tmp301 = load i32, i32* %tmp15, align 4
  %tmp302 = add nsw i32 %tmp300, %tmp301
  %tmp303 = load i32, i32* %tmp16, align 4
  %tmp304 = add nsw i32 %tmp302, %tmp303
  %tmp305 = load i32, i32* %tmp17, align 4
  %tmp306 = add nsw i32 %tmp304, %tmp305
  %tmp307 = load i32, i32* %tmp18, align 4
  %tmp308 = add nsw i32 %tmp306, %tmp307
  %tmp309 = load i32, i32* %tmp19, align 4
  %tmp310 = add nsw i32 %tmp308, %tmp309
  %tmp311 = load i32, i32* %tmp20, align 4
  %tmp312 = add nsw i32 %tmp311, %tmp310
store i32 %tmp312, i32* %tmp20, align 4
br label %bb313

bb313:
	  %tmp314 = load i32, i32* %tmp27, align 4
  %tmp315 = add nsw i32 %tmp314, 1
store i32 %tmp315, i32* %tmp27, align 4
br label %bb47

}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
