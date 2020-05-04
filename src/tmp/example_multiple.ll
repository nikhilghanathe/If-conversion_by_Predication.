; ModuleID = 'example_multiple.c'
source_filename = "example_multiple.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @example_multiple(i32, i32, i32, i32) #0 {
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
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %29

; <label>:25:                                     ; preds = %4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %9, align 4
  br label %33

; <label>:29:                                     ; preds = %4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %9, align 4
  br label %33

; <label>:33:                                     ; preds = %29, %25
  %34 = load i32, i32* %9, align 4
  %35 = srem i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %42

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %6, align 4
  %40 = mul nsw i32 2, %39
  %41 = add nsw i32 %38, %40
  store i32 %41, i32* %10, align 4
  br label %47

; <label>:42:                                     ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 2, %44
  %46 = add nsw i32 %43, %45
  store i32 %46, i32* %10, align 4
  br label %47

; <label>:47:                                     ; preds = %42, %37
  %48 = load i32, i32* %10, align 4
  %49 = icmp sgt i32 %48, 10
  br i1 %49, label %50, label %57

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = mul nsw i32 3, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sdiv i32 %53, %54
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %11, align 4
  br label %58

; <label>:57:                                     ; preds = %47
  store i32 0, i32* %11, align 4
  br label %58

; <label>:58:                                     ; preds = %57, %50
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %66

; <label>:62:                                     ; preds = %58
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %12, align 4
  br label %67

; <label>:66:                                     ; preds = %58
  store i32 0, i32* %12, align 4
  br label %67

; <label>:67:                                     ; preds = %66, %62
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %68, %69
  %71 = icmp sgt i32 %70, 9
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %67
  store i32 0, i32* %13, align 4
  br label %79

; <label>:73:                                     ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %76, %77
  store i32 %78, i32* %13, align 4
  br label %79

; <label>:79:                                     ; preds = %73, %72
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %88

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = mul nsw i32 70, %83
  %85 = load i32, i32* %6, align 4
  %86 = mul nsw i32 80, %85
  %87 = sub nsw i32 %84, %86
  store i32 %87, i32* %14, align 4
  br label %89

; <label>:88:                                     ; preds = %79
  store i32 0, i32* %14, align 4
  br label %89

; <label>:89:                                     ; preds = %88, %82
  %90 = load i32, i32* %12, align 4
  %91 = srem i32 %90, 2
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

; <label>:93:                                     ; preds = %89
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %94, 6
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %93
  store i32 76, i32* %15, align 4
  br label %100

; <label>:97:                                     ; preds = %93, %89
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 91
  store i32 %99, i32* %15, align 4
  br label %100

; <label>:100:                                    ; preds = %97, %96
  %101 = load i32, i32* %15, align 4
  ret i32 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
