
define i32 @example(i32, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %17

; <label>:13:                                     ; preds = %4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %9, align 4
  br label %18

; <label>:17:                                     ; preds = %4
  store i32 0, i32* %9, align 4
  br label %18

; <label>:18:                                     ; preds = %17, %13
  store i32 0, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = mul nsw i32 %22, 6
  store i32 %23, i32* %10, align 4
  br label %24

; <label>:24:                                     ; preds = %21, %18
  %25 = load i32, i32* %10, align 4
  ret i32 %25
}

