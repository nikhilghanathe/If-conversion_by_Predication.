; ModuleID = 'example_multiple_forLoop_multiple.c'
source_filename = "example_multiple_forLoop_multiple.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @example_multiple_forLoop_multiple(i32, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %33, align 4
  br label %36

; <label>:36:                                     ; preds = %127, %4
  %37 = load i32, i32* %33, align 4
  %38 = icmp slt i32 %37, 200
  br i1 %38, label %39, label %130

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %46

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %9, align 4
  br label %50

; <label>:46:                                     ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %9, align 4
  br label %50

; <label>:50:                                     ; preds = %46, %42
  %51 = load i32, i32* %9, align 4
  %52 = srem i32 %51, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

; <label>:54:                                     ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = mul nsw i32 2, %56
  %58 = add nsw i32 %55, %57
  store i32 %58, i32* %10, align 4
  br label %64

; <label>:59:                                     ; preds = %50
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 2, %61
  %63 = add nsw i32 %60, %62
  store i32 %63, i32* %10, align 4
  br label %64

; <label>:64:                                     ; preds = %59, %54
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %65, 10
  br i1 %66, label %67, label %74

; <label>:67:                                     ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 3, %68
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sdiv i32 %70, %71
  %73 = add nsw i32 %69, %72
  store i32 %73, i32* %11, align 4
  br label %75

; <label>:74:                                     ; preds = %64
  store i32 0, i32* %11, align 4
  br label %75

; <label>:75:                                     ; preds = %74, %67
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %83

; <label>:79:                                     ; preds = %75
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %12, align 4
  br label %84

; <label>:83:                                     ; preds = %75
  store i32 0, i32* %12, align 4
  br label %84

; <label>:84:                                     ; preds = %83, %79
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %85, %86
  %88 = icmp sgt i32 %87, 9
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %84
  store i32 0, i32* %13, align 4
  br label %96

; <label>:90:                                     ; preds = %84
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %6, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %13, align 4
  br label %96

; <label>:96:                                     ; preds = %90, %89
  %97 = load i32, i32* %13, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

; <label>:99:                                     ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = mul nsw i32 70, %100
  %102 = load i32, i32* %6, align 4
  %103 = mul nsw i32 80, %102
  %104 = sub nsw i32 %101, %103
  store i32 %104, i32* %14, align 4
  br label %106

; <label>:105:                                    ; preds = %96
  store i32 0, i32* %14, align 4
  br label %106

; <label>:106:                                    ; preds = %105, %99
  %107 = load i32, i32* %12, align 4
  %108 = srem i32 %107, 2
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

; <label>:110:                                    ; preds = %106
  %111 = load i32, i32* %13, align 4
  %112 = icmp eq i32 %111, 6
  br i1 %112, label %113, label %114

; <label>:113:                                    ; preds = %110
  store i32 76, i32* %15, align 4
  br label %117

; <label>:114:                                    ; preds = %110, %106
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 91
  store i32 %116, i32* %15, align 4
  br label %117

; <label>:117:                                    ; preds = %114, %113
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %16, align 4
  br label %127

; <label>:127:                                    ; preds = %117
  %128 = load i32, i32* %33, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %33, align 4
  br label %36

; <label>:130:                                    ; preds = %36
  store i32 0, i32* %34, align 4
  br label %131

; <label>:131:                                    ; preds = %222, %130
  %132 = load i32, i32* %34, align 4
  %133 = icmp slt i32 %132, 300
  br i1 %133, label %134, label %225

; <label>:134:                                    ; preds = %131
  %135 = load i32, i32* %7, align 4
  %136 = icmp sgt i32 %135, 1
  br i1 %136, label %137, label %141

; <label>:137:                                    ; preds = %134
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %138, %139
  store i32 %140, i32* %17, align 4
  br label %145

; <label>:141:                                    ; preds = %134
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %142, %143
  store i32 %144, i32* %17, align 4
  br label %145

; <label>:145:                                    ; preds = %141, %137
  %146 = load i32, i32* %17, align 4
  %147 = srem i32 %146, 2
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %154

; <label>:149:                                    ; preds = %145
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %6, align 4
  %152 = mul nsw i32 2, %151
  %153 = add nsw i32 %150, %152
  store i32 %153, i32* %18, align 4
  br label %159

; <label>:154:                                    ; preds = %145
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %8, align 4
  %157 = mul nsw i32 2, %156
  %158 = add nsw i32 %155, %157
  store i32 %158, i32* %18, align 4
  br label %159

; <label>:159:                                    ; preds = %154, %149
  %160 = load i32, i32* %18, align 4
  %161 = icmp sgt i32 %160, 10
  br i1 %161, label %162, label %169

; <label>:162:                                    ; preds = %159
  %163 = load i32, i32* %5, align 4
  %164 = mul nsw i32 3, %163
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* %8, align 4
  %167 = sdiv i32 %165, %166
  %168 = add nsw i32 %164, %167
  store i32 %168, i32* %19, align 4
  br label %170

; <label>:169:                                    ; preds = %159
  store i32 0, i32* %19, align 4
  br label %170

; <label>:170:                                    ; preds = %169, %162
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %18, align 4
  %173 = icmp sge i32 %171, %172
  br i1 %173, label %174, label %178

; <label>:174:                                    ; preds = %170
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %175, %176
  store i32 %177, i32* %20, align 4
  br label %179

; <label>:178:                                    ; preds = %170
  store i32 0, i32* %20, align 4
  br label %179

; <label>:179:                                    ; preds = %178, %174
  %180 = load i32, i32* %20, align 4
  %181 = load i32, i32* %19, align 4
  %182 = add nsw i32 %180, %181
  %183 = icmp sgt i32 %182, 9
  br i1 %183, label %184, label %185

; <label>:184:                                    ; preds = %179
  store i32 0, i32* %21, align 4
  br label %191

; <label>:185:                                    ; preds = %179
  %186 = load i32, i32* %5, align 4
  %187 = load i32, i32* %6, align 4
  %188 = mul nsw i32 %186, %187
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %188, %189
  store i32 %190, i32* %21, align 4
  br label %191

; <label>:191:                                    ; preds = %185, %184
  %192 = load i32, i32* %21, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %200

; <label>:194:                                    ; preds = %191
  %195 = load i32, i32* %5, align 4
  %196 = mul nsw i32 70, %195
  %197 = load i32, i32* %6, align 4
  %198 = mul nsw i32 80, %197
  %199 = sub nsw i32 %196, %198
  store i32 %199, i32* %22, align 4
  br label %201

; <label>:200:                                    ; preds = %191
  store i32 0, i32* %22, align 4
  br label %201

; <label>:201:                                    ; preds = %200, %194
  %202 = load i32, i32* %20, align 4
  %203 = srem i32 %202, 2
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %209

; <label>:205:                                    ; preds = %201
  %206 = load i32, i32* %21, align 4
  %207 = icmp eq i32 %206, 6
  br i1 %207, label %208, label %209

; <label>:208:                                    ; preds = %205
  store i32 76, i32* %23, align 4
  br label %212

; <label>:209:                                    ; preds = %205, %201
  %210 = load i32, i32* %8, align 4
  %211 = add nsw i32 %210, 91
  store i32 %211, i32* %23, align 4
  br label %212

; <label>:212:                                    ; preds = %209, %208
  %213 = load i32, i32* %18, align 4
  %214 = load i32, i32* %22, align 4
  %215 = add nsw i32 %213, %214
  %216 = load i32, i32* %20, align 4
  %217 = add nsw i32 %215, %216
  %218 = load i32, i32* %23, align 4
  %219 = add nsw i32 %217, %218
  %220 = load i32, i32* %24, align 4
  %221 = add nsw i32 %220, %219
  store i32 %221, i32* %24, align 4
  br label %222

; <label>:222:                                    ; preds = %212
  %223 = load i32, i32* %34, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %34, align 4
  br label %131

; <label>:225:                                    ; preds = %131
  store i32 0, i32* %35, align 4
  br label %226

; <label>:226:                                    ; preds = %317, %225
  %227 = load i32, i32* %35, align 4
  %228 = icmp slt i32 %227, 270
  br i1 %228, label %229, label %320

; <label>:229:                                    ; preds = %226
  %230 = load i32, i32* %7, align 4
  %231 = icmp sgt i32 %230, 1
  br i1 %231, label %232, label %236

; <label>:232:                                    ; preds = %229
  %233 = load i32, i32* %5, align 4
  %234 = load i32, i32* %6, align 4
  %235 = add nsw i32 %233, %234
  store i32 %235, i32* %25, align 4
  br label %240

; <label>:236:                                    ; preds = %229
  %237 = load i32, i32* %5, align 4
  %238 = load i32, i32* %8, align 4
  %239 = add nsw i32 %237, %238
  store i32 %239, i32* %25, align 4
  br label %240

; <label>:240:                                    ; preds = %236, %232
  %241 = load i32, i32* %9, align 4
  %242 = srem i32 %241, 2
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %249

; <label>:244:                                    ; preds = %240
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* %6, align 4
  %247 = mul nsw i32 2, %246
  %248 = add nsw i32 %245, %247
  store i32 %248, i32* %26, align 4
  br label %254

; <label>:249:                                    ; preds = %240
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* %8, align 4
  %252 = mul nsw i32 2, %251
  %253 = add nsw i32 %250, %252
  store i32 %253, i32* %26, align 4
  br label %254

; <label>:254:                                    ; preds = %249, %244
  %255 = load i32, i32* %10, align 4
  %256 = icmp sgt i32 %255, 10
  br i1 %256, label %257, label %264

; <label>:257:                                    ; preds = %254
  %258 = load i32, i32* %5, align 4
  %259 = mul nsw i32 3, %258
  %260 = load i32, i32* %6, align 4
  %261 = load i32, i32* %8, align 4
  %262 = sdiv i32 %260, %261
  %263 = add nsw i32 %259, %262
  store i32 %263, i32* %27, align 4
  br label %265

; <label>:264:                                    ; preds = %254
  store i32 0, i32* %27, align 4
  br label %265

; <label>:265:                                    ; preds = %264, %257
  %266 = load i32, i32* %27, align 4
  %267 = load i32, i32* %26, align 4
  %268 = icmp sge i32 %266, %267
  br i1 %268, label %269, label %273

; <label>:269:                                    ; preds = %265
  %270 = load i32, i32* %5, align 4
  %271 = load i32, i32* %6, align 4
  %272 = add nsw i32 %270, %271
  store i32 %272, i32* %28, align 4
  br label %274

; <label>:273:                                    ; preds = %265
  store i32 0, i32* %28, align 4
  br label %274

; <label>:274:                                    ; preds = %273, %269
  %275 = load i32, i32* %28, align 4
  %276 = load i32, i32* %11, align 4
  %277 = add nsw i32 %275, %276
  %278 = icmp sgt i32 %277, 9
  br i1 %278, label %279, label %280

; <label>:279:                                    ; preds = %274
  store i32 0, i32* %29, align 4
  br label %286

; <label>:280:                                    ; preds = %274
  %281 = load i32, i32* %5, align 4
  %282 = load i32, i32* %6, align 4
  %283 = mul nsw i32 %281, %282
  %284 = load i32, i32* %8, align 4
  %285 = add nsw i32 %283, %284
  store i32 %285, i32* %29, align 4
  br label %286

; <label>:286:                                    ; preds = %280, %279
  %287 = load i32, i32* %29, align 4
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %295

; <label>:289:                                    ; preds = %286
  %290 = load i32, i32* %5, align 4
  %291 = mul nsw i32 70, %290
  %292 = load i32, i32* %6, align 4
  %293 = mul nsw i32 80, %292
  %294 = sub nsw i32 %291, %293
  store i32 %294, i32* %30, align 4
  br label %296

; <label>:295:                                    ; preds = %286
  store i32 0, i32* %30, align 4
  br label %296

; <label>:296:                                    ; preds = %295, %289
  %297 = load i32, i32* %28, align 4
  %298 = srem i32 %297, 2
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %304

; <label>:300:                                    ; preds = %296
  %301 = load i32, i32* %29, align 4
  %302 = icmp eq i32 %301, 6
  br i1 %302, label %303, label %304

; <label>:303:                                    ; preds = %300
  store i32 76, i32* %31, align 4
  br label %307

; <label>:304:                                    ; preds = %300, %296
  %305 = load i32, i32* %8, align 4
  %306 = add nsw i32 %305, 91
  store i32 %306, i32* %31, align 4
  br label %307

; <label>:307:                                    ; preds = %304, %303
  %308 = load i32, i32* %26, align 4
  %309 = load i32, i32* %30, align 4
  %310 = add nsw i32 %308, %309
  %311 = load i32, i32* %28, align 4
  %312 = add nsw i32 %310, %311
  %313 = load i32, i32* %31, align 4
  %314 = add nsw i32 %312, %313
  %315 = load i32, i32* %32, align 4
  %316 = add nsw i32 %315, %314
  store i32 %316, i32* %32, align 4
  br label %317

; <label>:317:                                    ; preds = %307
  %318 = load i32, i32* %35, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %35, align 4
  br label %226

; <label>:320:                                    ; preds = %226
  %321 = load i32, i32* %16, align 4
  %322 = load i32, i32* %32, align 4
  %323 = add nsw i32 %321, %322
  %324 = load i32, i32* %24, align 4
  %325 = add nsw i32 %323, %324
  ret i32 %325
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
