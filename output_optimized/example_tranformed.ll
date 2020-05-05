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
store i32 %arg, i32* %tmp, align 4
store i32 %arg1, i32* %tmp4, align 4
store i32 %arg2, i32* %tmp5, align 4
store i32 %arg3, i32* %tmp6, align 4
  %tmp8 = load i32, i32* %tmp5, align 4
  %tmp9 = icmp eq i32 %tmp8, 1

  %tmp11 = load i32, i32* %tmp, align 4
  %tmp12 = load i32, i32* %tmp4, align 4
  %tmp13 = add nsw i32 %tmp11, %tmp12
 %tmp7_t0 =  add nsw i32 %tmp13, 0

 %tmp7_f0 =  add nsw i32 0, 0

br label %bb15
bb15:
	 %tmp7_merge0 = select i1 %tmp9, i32 %tmp7_t0,i32 %tmp7_f0
store i32 %tmp7_merge0, i32* %tmp7, align 4
  %tmp16 = load i32, i32* %tmp7, align 4
  ret i32 %tmp16

}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
