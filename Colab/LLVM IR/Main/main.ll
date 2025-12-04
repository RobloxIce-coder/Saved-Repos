@.str = private unnamed_addr constant [86 x i8] c"Halo LLVM :D!\0ACoding with machine learning is very fun :D!\0AI'm very happy today😁.\0A\00"

declare i32 @printf(i8*, ...)

define i32 @main() {
   %1 = getelementptr inbounds [86 x i8], [86 x i8]* @.str, i32 0, i32 0
   call i32 (i8*, ...) @printf(i8* %1)
   ret i32 0
}
