; ModuleID = 'example_forLoop.ll'
source_filename = "example_forLoop.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @example_forLoop(i32 %arg, i32 %arg1, i32 %arg2, i32 %arg3) #0 {
bb:
  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  store i32 %arg, i32* %tmp, align 4
  store i32 %arg1, i32* %tmp4, align 4
  store i32 %arg2, i32* %tmp5, align 4
  store i32 %arg3, i32* %tmp6, align 4
  store i32 0, i32* %tmp9, align 4
  store i32 0, i32* %tmp10, align 4
  br label %bb11

bb11:                                             ; preds = %bb26, %bb
  %tmp12 = load i32, i32* %tmp10, align 4
  %tmp13 = icmp slt i32 %tmp12, 10
  br i1 %tmp13, label %bb14, label %bb29

bb14:                                             ; preds = %bb11
  %tmp15 = load i32, i32* %tmp5, align 4
  %tmp16 = icmp sgt i32 %tmp15, 2
  br i1 %tmp16, label %bb17, label %bb21

bb17:                                             ; preds = %bb14
  %tmp18 = load i32, i32* %tmp, align 4
  %tmp19 = load i32, i32* %tmp4, align 4
  %tmp20 = add nsw i32 %tmp18, %tmp19
  store i32 %tmp20, i32* %tmp8, align 4
  br label %bb22

bb21:                                             ; preds = %bb14
  store i32 0, i32* %tmp8, align 4
  br label %bb22

bb22:                                             ; preds = %bb21, %bb17
  %tmp23 = load i32, i32* %tmp8, align 4
  %tmp24 = load i32, i32* %tmp9, align 4
  %tmp25 = add nsw i32 %tmp24, %tmp23
  store i32 %tmp25, i32* %tmp9, align 4
  br label %bb26

bb26:                                             ; preds = %bb22
  %tmp27 = load i32, i32* %tmp10, align 4
  %tmp28 = add nsw i32 %tmp27, 1
  store i32 %tmp28, i32* %tmp10, align 4
  br label %bb11

bb29:                                             ; preds = %bb11
  %tmp30 = load i32, i32* %tmp9, align 4
  ret i32 %tmp30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
