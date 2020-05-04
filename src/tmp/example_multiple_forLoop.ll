; ModuleID = 'example_multiple_forLoop.c'
source_filename = "example_multiple_forLoop.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @example_multiple_forLoop(i32, i32, i32, i32) #0 {
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
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %23, align 4
  br label %24

; <label>:24:                                     ; preds = %115, %4
  %25 = load i32, i32* %23, align 4
  %26 = icmp slt i32 %25, 200
  br i1 %26, label %27, label %118

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %9, align 4
  br label %38

; <label>:34:                                     ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %9, align 4
  br label %38

; <label>:38:                                     ; preds = %34, %30
  %39 = load i32, i32* %9, align 4
  %40 = srem i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

; <label>:42:                                     ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = mul nsw i32 2, %44
  %46 = add nsw i32 %43, %45
  store i32 %46, i32* %10, align 4
  br label %52

; <label>:47:                                     ; preds = %38
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 2, %49
  %51 = add nsw i32 %48, %50
  store i32 %51, i32* %10, align 4
  br label %52

; <label>:52:                                     ; preds = %47, %42
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 10
  br i1 %54, label %55, label %62

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 3, %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sdiv i32 %58, %59
  %61 = add nsw i32 %57, %60
  store i32 %61, i32* %11, align 4
  br label %63

; <label>:62:                                     ; preds = %52
  store i32 0, i32* %11, align 4
  br label %63

; <label>:63:                                     ; preds = %62, %55
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %71

; <label>:67:                                     ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %12, align 4
  br label %72

; <label>:71:                                     ; preds = %63
  store i32 0, i32* %12, align 4
  br label %72

; <label>:72:                                     ; preds = %71, %67
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %73, %74
  %76 = icmp sgt i32 %75, 9
  br i1 %76, label %77, label %78

; <label>:77:                                     ; preds = %72
  store i32 0, i32* %13, align 4
  br label %84

; <label>:78:                                     ; preds = %72
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %6, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %13, align 4
  br label %84

; <label>:84:                                     ; preds = %78, %77
  %85 = load i32, i32* %13, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

; <label>:87:                                     ; preds = %84
  %88 = load i32, i32* %5, align 4
  %89 = mul nsw i32 70, %88
  %90 = load i32, i32* %6, align 4
  %91 = mul nsw i32 80, %90
  %92 = sub nsw i32 %89, %91
  store i32 %92, i32* %14, align 4
  br label %94

; <label>:93:                                     ; preds = %84
  store i32 0, i32* %14, align 4
  br label %94

; <label>:94:                                     ; preds = %93, %87
  %95 = load i32, i32* %12, align 4
  %96 = srem i32 %95, 2
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %13, align 4
  %100 = icmp eq i32 %99, 6
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %98
  store i32 76, i32* %15, align 4
  br label %105

; <label>:102:                                    ; preds = %98, %94
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 91
  store i32 %104, i32* %15, align 4
  br label %105

; <label>:105:                                    ; preds = %102, %101
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %16, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %16, align 4
  br label %115

; <label>:115:                                    ; preds = %105
  %116 = load i32, i32* %23, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %23, align 4
  br label %24

; <label>:118:                                    ; preds = %24
  %119 = load i32, i32* %16, align 4
  ret i32 %119
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
