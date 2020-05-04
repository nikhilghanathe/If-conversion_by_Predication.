; ModuleID = 'example.ll'
source_filename = "example.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @example(i32 %arg, i32 %arg1, i32 %arg2, i32 %arg3) #0 {
bb:
	  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
store i32 %arg, i32* %tmp, align 4
store i32 %arg1, i32* %tmp4, align 4
store i32 %arg2, i32* %tmp5, align 4
store i32 %arg3, i32* %tmp6, align 4
  %tmp9 = load i32, i32* %tmp5, align 4
  %tmp10 = icmp eq i32 %tmp9, 1

  %tmp12 = load i32, i32* %tmp, align 4
  %tmp13 = load i32, i32* %tmp4, align 4
  %tmp14 = add nsw i32 %tmp12, %tmp13
 %tmp7_t0 =  add nsw i32 %tmp14, 0

 %tmp7_f0 =  add nsw i32 0, 0

br label %bb16
bb16:
	 %tmp7_merge0 = select i1 %tmp10, i32 %tmp7_t0,i32 %tmp7_f0
store i32 %tmp7_merge0, i32* %tmp7, align 4
store i32 0, i32* %tmp8, align 4
  %tmp17 = load i32, i32* %tmp6, align 4
  %tmp18 = icmp eq i32 %tmp17, 0
br i1 %tmp18, label %bb19, label %bb22

bb19:
	  %tmp20 = load i32, i32* %tmp7, align 4
  %tmp21 = mul nsw i32 %tmp20, 6
store i32 %tmp21, i32* %tmp8, align 4
br label %bb22

bb22:
	  %tmp23 = load i32, i32* %tmp8, align 4
  ret i32 %tmp23

}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
