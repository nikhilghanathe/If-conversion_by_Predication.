; ModuleID = 'example_statements_multiple_nestedLoop.c'
source_filename = "example_statements_multiple_nestedLoop.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @example_statements_multiple_nestedLoop(i32, i32, i32, i32, i32*, i32*, i32*) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
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
  %25 = alloca [50 x i32], align 16
  %26 = alloca [50 x i32], align 16
  %27 = alloca [50 x i32], align 16
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %28, align 4
  br label %32

; <label>:32:                                     ; preds = %45, %7
  %33 = load i32, i32* %28, align 4
  %34 = icmp slt i32 %33, 50
  br i1 %34, label %35, label %48

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %28, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [50 x i32], [50 x i32]* %25, i64 0, i64 %37
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %28, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [50 x i32], [50 x i32]* %26, i64 0, i64 %40
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %28, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [50 x i32], [50 x i32]* %27, i64 0, i64 %43
  store i32 0, i32* %44, align 4
  br label %45

; <label>:45:                                     ; preds = %35
  %46 = load i32, i32* %28, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %28, align 4
  br label %32

; <label>:48:                                     ; preds = %32
  store i32 0, i32* %29, align 4
  br label %49

; <label>:49:                                     ; preds = %315, %48
  %50 = load i32, i32* %29, align 4
  %51 = icmp slt i32 %50, 200
  br i1 %51, label %52, label %318

; <label>:52:                                     ; preds = %49
  store i32 0, i32* %30, align 4
  br label %53

; <label>:53:                                     ; preds = %113, %52
  %54 = load i32, i32* %30, align 4
  %55 = icmp slt i32 %54, 10
  br i1 %55, label %56, label %116

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %59, label %67

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %11, align 4
  %64 = mul nsw i32 %63, 5
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %16, align 4
  br label %71

; <label>:67:                                     ; preds = %56
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %15, align 4
  br label %71

; <label>:71:                                     ; preds = %67, %59
  %72 = load i32, i32* %15, align 4
  %73 = srem i32 %72, 2
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %88

; <label>:75:                                     ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = mul nsw i32 2, %77
  %79 = add nsw i32 %76, %78
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 55, %80
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sdiv i32 76, %82
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %8, align 4
  %86 = mul nsw i32 %84, %85
  %87 = add nsw i32 56, %86
  store i32 %87, i32* %19, align 4
  br label %103

; <label>:88:                                     ; preds = %71
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %11, align 4
  %91 = mul nsw i32 2, %90
  %92 = add nsw i32 %89, %91
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 644, %93
  store i32 %94, i32* %17, align 4
  %95 = load i32, i32* %9, align 4
  %96 = sdiv i32 76, %95
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 75, %97
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %8, align 4
  %101 = mul nsw i32 %99, %100
  %102 = add nsw i32 %98, %101
  store i32 %102, i32* %19, align 4
  br label %103

; <label>:103:                                    ; preds = %88, %75
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %17, align 4
  %106 = add nsw i32 %104, %105
  %107 = load i32, i32* %18, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %19, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %23, align 4
  br label %113

; <label>:113:                                    ; preds = %103
  %114 = load i32, i32* %30, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %30, align 4
  br label %53

; <label>:116:                                    ; preds = %53
  store i32 0, i32* %31, align 4
  br label %117

; <label>:117:                                    ; preds = %205, %116
  %118 = load i32, i32* %31, align 4
  %119 = icmp slt i32 %118, 45
  br i1 %119, label %120, label %208

; <label>:120:                                    ; preds = %117
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %29, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %167

; <label>:127:                                    ; preds = %120
  %128 = load i32, i32* %10, align 4
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %29, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %128, %133
  %135 = load i32, i32* %29, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [50 x i32], [50 x i32]* %25, i64 0, i64 %136
  store i32 %134, i32* %137, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = load i32, i32* %29, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %14, align 8
  %144 = load i32, i32* %29, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %142, %147
  %149 = load i32, i32* %29, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [50 x i32], [50 x i32]* %26, i64 0, i64 %150
  store i32 %148, i32* %151, align 4
  %152 = load i32*, i32** %13, align 8
  %153 = load i32, i32* %29, align 4
  %154 = srem i32 %153, 2
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %14, align 8
  %159 = load i32, i32* %29, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %157, %162
  %164 = load i32, i32* %29, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [50 x i32], [50 x i32]* %27, i64 0, i64 %165
  store i32 %163, i32* %166, align 4
  br label %204

; <label>:167:                                    ; preds = %120
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* %29, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %14, align 8
  %174 = load i32, i32* %29, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %172, %177
  %179 = load i32, i32* %29, align 4
  %180 = srem i32 %179, 2
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [50 x i32], [50 x i32]* %25, i64 0, i64 %181
  store i32 %178, i32* %182, align 4
  %183 = load i32*, i32** %14, align 8
  %184 = load i32, i32* %29, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %29, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [50 x i32], [50 x i32]* %26, i64 0, i64 %189
  store i32 %187, i32* %190, align 4
  %191 = load i32*, i32** %13, align 8
  %192 = load i32, i32* %29, align 4
  %193 = srem i32 %192, 2
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %14, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %196, %199
  %201 = load i32, i32* %29, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [50 x i32], [50 x i32]* %27, i64 0, i64 %202
  store i32 %200, i32* %203, align 4
  br label %204

; <label>:204:                                    ; preds = %167, %127
  br label %205

; <label>:205:                                    ; preds = %204
  %206 = load i32, i32* %31, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %31, align 4
  br label %117

; <label>:208:                                    ; preds = %117
  %209 = load i32, i32* %23, align 4
  %210 = icmp sgt i32 %209, 10
  br i1 %210, label %211, label %227

; <label>:211:                                    ; preds = %208
  %212 = load i32, i32* %8, align 4
  %213 = mul nsw i32 3, %212
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %11, align 4
  %216 = sdiv i32 %214, %215
  %217 = add nsw i32 %213, %216
  store i32 %217, i32* %17, align 4
  %218 = load i32, i32* %18, align 4
  %219 = load i32, i32* %19, align 4
  %220 = add nsw i32 %218, %219
  store i32 %220, i32* %20, align 4
  %221 = load i32, i32* %19, align 4
  %222 = mul nsw i32 %221, 8
  store i32 %222, i32* %21, align 4
  %223 = load i32, i32* %15, align 4
  store i32 %223, i32* %16, align 4
  %224 = load i32, i32* %19, align 4
  %225 = load i32, i32* %19, align 4
  %226 = mul nsw i32 %224, %225
  store i32 %226, i32* %18, align 4
  br label %238

; <label>:227:                                    ; preds = %208
  store i32 0, i32* %17, align 4
  %228 = load i32, i32* %17, align 4
  %229 = load i32, i32* %19, align 4
  %230 = add nsw i32 %228, %229
  store i32 %230, i32* %20, align 4
  %231 = load i32, i32* %19, align 4
  %232 = mul nsw i32 %231, 8
  store i32 %232, i32* %21, align 4
  %233 = load i32, i32* %15, align 4
  %234 = sdiv i32 %233, 2
  store i32 %234, i32* %16, align 4
  %235 = load i32, i32* %19, align 4
  %236 = load i32, i32* %18, align 4
  %237 = mul nsw i32 %235, %236
  store i32 %237, i32* %18, align 4
  br label %238

; <label>:238:                                    ; preds = %227, %211
  %239 = load i32, i32* %17, align 4
  %240 = load i32, i32* %16, align 4
  %241 = icmp sge i32 %239, %240
  br i1 %241, label %242, label %257

; <label>:242:                                    ; preds = %238
  %243 = load i32, i32* %18, align 4
  %244 = add nsw i32 %243, 66
  store i32 %244, i32* %17, align 4
  %245 = load i32, i32* %17, align 4
  %246 = mul nsw i32 %245, 8
  %247 = load i32, i32* %19, align 4
  %248 = add nsw i32 %246, %247
  store i32 %248, i32* %19, align 4
  %249 = load i32, i32* %19, align 4
  %250 = sdiv i32 %249, 8
  store i32 %250, i32* %20, align 4
  %251 = load i32, i32* %15, align 4
  %252 = sdiv i32 %251, 2
  store i32 %252, i32* %21, align 4
  %253 = load i32, i32* %19, align 4
  %254 = load i32, i32* %18, align 4
  %255 = mul nsw i32 %253, %254
  %256 = add nsw i32 %255, 87
  store i32 %256, i32* %19, align 4
  br label %258

; <label>:257:                                    ; preds = %238
  store i32 0, i32* %18, align 4
  br label %258

; <label>:258:                                    ; preds = %257, %242
  %259 = load i32, i32* %18, align 4
  %260 = load i32, i32* %17, align 4
  %261 = add nsw i32 %259, %260
  %262 = icmp sgt i32 %261, 9
  br i1 %262, label %263, label %264

; <label>:263:                                    ; preds = %258
  store i32 0, i32* %19, align 4
  br label %280

; <label>:264:                                    ; preds = %258
  %265 = load i32, i32* %18, align 4
  %266 = add nsw i32 %265, 644
  store i32 %266, i32* %17, align 4
  %267 = load i32, i32* %18, align 4
  %268 = load i32, i32* %19, align 4
  %269 = add nsw i32 %267, %268
  store i32 %269, i32* %19, align 4
  %270 = load i32, i32* %18, align 4
  %271 = sdiv i32 %270, 8
  store i32 %271, i32* %20, align 4
  %272 = load i32, i32* %20, align 4
  %273 = sdiv i32 %272, 2
  store i32 %273, i32* %21, align 4
  %274 = load i32, i32* %19, align 4
  %275 = load i32, i32* %18, align 4
  %276 = mul nsw i32 %274, %275
  %277 = load i32, i32* %17, align 4
  %278 = mul nsw i32 87, %277
  %279 = add nsw i32 %276, %278
  store i32 %279, i32* %19, align 4
  br label %280

; <label>:280:                                    ; preds = %264, %263
  %281 = load i32, i32* %19, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %289

; <label>:283:                                    ; preds = %280
  %284 = load i32, i32* %8, align 4
  %285 = mul nsw i32 70, %284
  %286 = load i32, i32* %9, align 4
  %287 = mul nsw i32 80, %286
  %288 = sub nsw i32 %285, %287
  store i32 %288, i32* %20, align 4
  br label %290

; <label>:289:                                    ; preds = %280
  store i32 0, i32* %20, align 4
  br label %290

; <label>:290:                                    ; preds = %289, %283
  %291 = load i32, i32* %18, align 4
  %292 = srem i32 %291, 2
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %298

; <label>:294:                                    ; preds = %290
  %295 = load i32, i32* %19, align 4
  %296 = icmp eq i32 %295, 6
  br i1 %296, label %297, label %298

; <label>:297:                                    ; preds = %294
  store i32 76, i32* %21, align 4
  br label %301

; <label>:298:                                    ; preds = %294, %290
  %299 = load i32, i32* %11, align 4
  %300 = add nsw i32 %299, 91
  store i32 %300, i32* %21, align 4
  br label %301

; <label>:301:                                    ; preds = %298, %297
  %302 = load i32, i32* %16, align 4
  %303 = load i32, i32* %17, align 4
  %304 = add nsw i32 %302, %303
  %305 = load i32, i32* %18, align 4
  %306 = add nsw i32 %304, %305
  %307 = load i32, i32* %19, align 4
  %308 = add nsw i32 %306, %307
  %309 = load i32, i32* %20, align 4
  %310 = add nsw i32 %308, %309
  %311 = load i32, i32* %21, align 4
  %312 = add nsw i32 %310, %311
  %313 = load i32, i32* %22, align 4
  %314 = add nsw i32 %313, %312
  store i32 %314, i32* %22, align 4
  br label %315

; <label>:315:                                    ; preds = %301
  %316 = load i32, i32* %29, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %29, align 4
  br label %49

; <label>:318:                                    ; preds = %49
  %319 = load i32, i32* %22, align 4
  ret i32 %319
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
