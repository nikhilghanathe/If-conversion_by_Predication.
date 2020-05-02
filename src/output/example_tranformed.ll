  %tmp = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
store  %arg,  %tmp, align 4
store  %arg1,  %tmp4, align 4
store  %arg2,  %tmp5, align 4
store  %arg3,  %tmp6, align 4
  %tmp9 = load i32, i32* %tmp5, align 4
  %tmp10 = icmp eq i32 %tmp9, 1
br  %tmp10, label %bb11, label %bb15
|{<s0>T|<s1>F}}
  %tmp12 = load i32, i32* %tmp, align 4
  %tmp13 = load i32, i32* %tmp4, align 4
  %tmp14 = add nsw i32 %tmp12, %tmp13
store  %tmp14,  %tmp7, align 4
br label %bb16
}
store  0,  %tmp7, align 4
br label %bb16
}
store  0,  %tmp8, align 4
  %tmp17 = load i32, i32* %tmp6, align 4
  %tmp18 = icmp eq i32 %tmp17, 0
br  %tmp18, label %bb19, label %bb22
|{<s0>T|<s1>F}}
  %tmp20 = load i32, i32* %tmp7, align 4
  %tmp21 = mul nsw i32 %tmp20, 6
store  %tmp21,  %tmp8, align 4
br label %bb22
}
  %tmp23 = load i32, i32* %tmp8, align 4
  ret i32 %tmp23
}
