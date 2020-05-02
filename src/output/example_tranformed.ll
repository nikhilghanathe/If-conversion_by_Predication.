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
store i32 %tmp14, i32* %tmp7_t, align 4

store i32 0, i32* %tmp7_f, align 4

br label %bb16


bb16:
	 %tmp7_merge = select i1 %tmp10, i32* %tmp7_t,i32* %tmp7_f
store i32 %tmp7_merge, i32* %tmp7, align 4
store i32 0, i32* %tmp8, align 4
  %tmp17 = load i32, i32* %tmp6, align 4
  %tmp18 = icmp eq i32 %tmp17, 0

  %tmp20 = load i32, i32* %tmp7, align 4
  %tmp21 = mul nsw i32 %tmp20, 6
store i32 %tmp21, i32* %tmp8_t, align 4

br label %bb22


bb22:
	 %tmp8_merge = select i1 %tmp18, i32* %tmp8_t,i32* 0
store i32 %tmp8_merge, i32* %tmp8, align 4
  %tmp23 = load i32, i32* %tmp8, align 4
  ret i32 %tmp23

}

