; ModuleID = 'example_statements_multiple.c'
source_filename = "example_statements_multiple.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @example_statements_multiple(i32, i32, i32, i32) #0 {
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
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %18

; <label>:18:                                     ; preds = %175, %4
  %19 = load i32, i32* %17, align 4
  %20 = icmp slt i32 %19, 200
  br i1 %20, label %21, label %178

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %32

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %28, 5
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %10, align 4
  br label %36

; <label>:32:                                     ; preds = %21
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %9, align 4
  br label %36

; <label>:36:                                     ; preds = %32, %24
  %37 = load i32, i32* %9, align 4
  %38 = srem i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

; <label>:40:                                     ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 %41, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 55, %45
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sdiv i32 76, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 56, %51
  store i32 %52, i32* %13, align 4
  br label %68

; <label>:53:                                     ; preds = %36
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 2, %55
  %57 = add nsw i32 %54, %56
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 644, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sdiv i32 76, %60
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 75, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %64, %65
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %13, align 4
  br label %68

; <label>:68:                                     ; preds = %53, %40
  %69 = load i32, i32* %10, align 4
  %70 = icmp sgt i32 %69, 10
  br i1 %70, label %71, label %87

; <label>:71:                                     ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = mul nsw i32 3, %72
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sdiv i32 %74, %75
  %77 = add nsw i32 %73, %76
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %13, align 4
  %82 = mul nsw i32 %81, 8
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = mul nsw i32 %84, %85
  store i32 %86, i32* %12, align 4
  br label %98

; <label>:87:                                     ; preds = %68
  store i32 0, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %13, align 4
  %92 = mul nsw i32 %91, 8
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sdiv i32 %93, 2
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %12, align 4
  %97 = mul nsw i32 %95, %96
  store i32 %97, i32* %12, align 4
  br label %98

; <label>:98:                                     ; preds = %87, %71
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %117

; <label>:102:                                    ; preds = %98
  %103 = load i32, i32* %12, align 4
  %104 = add nsw i32 %103, 66
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %11, align 4
  %106 = mul nsw i32 %105, 8
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = sdiv i32 %109, 8
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %9, align 4
  %112 = sdiv i32 %111, 2
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = mul nsw i32 %113, %114
  %116 = add nsw i32 %115, 87
  store i32 %116, i32* %13, align 4
  br label %118

; <label>:117:                                    ; preds = %98
  store i32 0, i32* %12, align 4
  br label %118

; <label>:118:                                    ; preds = %117, %102
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %119, %120
  %122 = icmp sgt i32 %121, 9
  br i1 %122, label %123, label %124

; <label>:123:                                    ; preds = %118
  store i32 0, i32* %13, align 4
  br label %140

; <label>:124:                                    ; preds = %118
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 644
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %127, %128
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %12, align 4
  %131 = sdiv i32 %130, 8
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = sdiv i32 %132, 2
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %12, align 4
  %136 = mul nsw i32 %134, %135
  %137 = load i32, i32* %11, align 4
  %138 = mul nsw i32 87, %137
  %139 = add nsw i32 %136, %138
  store i32 %139, i32* %13, align 4
  br label %140

; <label>:140:                                    ; preds = %124, %123
  %141 = load i32, i32* %13, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %149

; <label>:143:                                    ; preds = %140
  %144 = load i32, i32* %5, align 4
  %145 = mul nsw i32 70, %144
  %146 = load i32, i32* %6, align 4
  %147 = mul nsw i32 80, %146
  %148 = sub nsw i32 %145, %147
  store i32 %148, i32* %14, align 4
  br label %150

; <label>:149:                                    ; preds = %140
  store i32 0, i32* %14, align 4
  br label %150

; <label>:150:                                    ; preds = %149, %143
  %151 = load i32, i32* %12, align 4
  %152 = srem i32 %151, 2
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %158

; <label>:154:                                    ; preds = %150
  %155 = load i32, i32* %13, align 4
  %156 = icmp eq i32 %155, 6
  br i1 %156, label %157, label %158

; <label>:157:                                    ; preds = %154
  store i32 76, i32* %15, align 4
  br label %161

; <label>:158:                                    ; preds = %154, %150
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 91
  store i32 %160, i32* %15, align 4
  br label %161

; <label>:161:                                    ; preds = %158, %157
  %162 = load i32, i32* %10, align 4
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %162, %163
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %164, %165
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %168, %169
  %171 = load i32, i32* %15, align 4
  %172 = add nsw i32 %170, %171
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %16, align 4
  br label %175

; <label>:175:                                    ; preds = %161
  %176 = load i32, i32* %17, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %17, align 4
  br label %18

; <label>:178:                                    ; preds = %18
  %179 = load i32, i32* %16, align 4
  ret i32 %179
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
