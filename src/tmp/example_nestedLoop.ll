; ModuleID = 'example_nestedLoop.c'
source_filename = "example_nestedLoop.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @example_nestedLoop(i32, i32, i32, i32, i32*, i32*, i32*) #0 {
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
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %28, align 4
  br label %30

; <label>:30:                                     ; preds = %65, %7
  %31 = load i32, i32* %28, align 4
  %32 = icmp slt i32 %31, 200
  br i1 %32, label %33, label %68

; <label>:33:                                     ; preds = %30
  store i32 0, i32* %29, align 4
  br label %34

; <label>:34:                                     ; preds = %61, %33
  %35 = load i32, i32* %29, align 4
  %36 = icmp slt i32 %35, 10
  br i1 %36, label %37, label %64

; <label>:37:                                     ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %48

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %11, align 4
  %45 = mul nsw i32 %44, 5
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %16, align 4
  br label %57

; <label>:48:                                     ; preds = %37
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %16, align 4
  br label %57

; <label>:57:                                     ; preds = %48, %40
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %22, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %22, align 4
  br label %61

; <label>:61:                                     ; preds = %57
  %62 = load i32, i32* %29, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %29, align 4
  br label %34

; <label>:64:                                     ; preds = %34
  br label %65

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %28, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %28, align 4
  br label %30

; <label>:68:                                     ; preds = %30
  %69 = load i32, i32* %22, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
