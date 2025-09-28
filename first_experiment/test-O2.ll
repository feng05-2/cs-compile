; ModuleID = 'test_1.bc'
source_filename = "test_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"=== \E8\B0\83\E8\AF\95\E6\A8\A1\E5\BC\8F\E5\BC\80\E5\90\AF ===\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\E8\AF\B7\E8\BE\93\E5\85\A5\E4\B8\80\E4\B8\AA\E4\B8\8D\E5\A4\A7\E4\BA\8E%d\E7\9A\84\E6\95\B4\E6\95\B0: \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\E8\BE\93\E5\85\A5\E5\80\BC\E8\BF\87\E5\A4\A7\EF\BC\81\E6\9C\80\E5\A4\A7\E5\80\BC\E5\85\81\E8\AE\B8\E4\B8\BA%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\E5\BC\80\E5\A7\8B\E8\AE\A1\E7\AE\97%d\E7\9A\84\E9\98\B6\E4\B9\98...\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"i=%d, i\C2\B2=%d, \E5\BD\93\E5\89\8D\E9\98\B6\E4\B9\98\E5\80\BC=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\E6\9C\80\E7\BB\88\E7\BB\93\E6\9E\9C: \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%d! = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %6 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 noundef 20)
  %8 = call i32 (i8*, ...) @__isoc99_scanf(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* noundef %3)
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 20
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 noundef 20)
  store i32 1, i32* %1, align 4
  br label %38

13:                                               ; preds = %0
  store i32 2, i32* %2, align 4
  store i32 1, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 noundef %14)
  br label %16

16:                                               ; preds = %20, %13
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %2, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 noundef %27, i32 noundef %28, i32 noundef %29)
  %31 = load i32, i32* %2, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  br label %16, !llvm.loop !6

33:                                               ; preds = %16
  %34 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 noundef %35, i32 noundef %36)
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %33, %11
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_scanf(i8* nocapture noundef readonly, ...) local_unnamed_addr #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
