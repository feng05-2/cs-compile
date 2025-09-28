@calls = global i32 0
@max_result = global i32 0

declare i32 @getint()
declare void @putint(i32)
declare void @putch(i32)
declare void @putarray(i32, i32*)

define i32 @factorial(i32 %n) {
entry:
    %f = alloca i32
    %i = alloca i32
    
    %calls_val = load i32, i32* @calls
    %new_calls = add i32 %calls_val, 1
    store i32 %new_calls, i32* @calls
    
    %cmp = icmp sle i32 %n, 1
    br i1 %cmp, label %if_true, label %if_false
if_true:
    store i32 1, i32* %f
    br label %if_end
if_false:
    store i32 2, i32* %i
    store i32 1, i32* %f
    br label %while_cond
while_cond:
    %i_load = load i32, i32* %i
    %while_cmp = icmp sle i32 %i_load, %n
    br i1 %while_cmp, label %while_body, label %while_end

while_body:
    %f_load = load i32, i32* %f
    %new_f = mul i32 %f_load, %i_load
    store i32 %new_f, i32* %f
    
    %next_i = add i32 %i_load, 1
    store i32 %next_i, i32* %i
    
    br label %while_cond

while_end:
    br label %if_end
if_end:
    ; if (f > max_result)
    %f_result = load i32, i32* %f
    %max_val = load i32, i32* @max_result
    %max_cmp = icmp sgt i32 %f_result, %max_val
    br i1 %max_cmp, label %update_max, label %return

update_max:
    store i32 %f_result, i32* @max_result
    br label %return

return:
    ret i32 %f_result
}
define void @factorials(i32* %s, i32* %a, i32 %len) {
entry:
    %i = alloca i32
    store i32 0, i32* %i
    br label %while_cond
while_cond:
    %i_load = load i32, i32* %i
    %cmp = icmp slt i32 %i_load, %len
    br i1 %cmp, label %while_body, label %while_end

while_body:
    %s_elem_ptr = getelementptr i32, i32* %s, i32 %i_load
    %s_elem = load i32, i32* %s_elem_ptr
    %fact_val = call i32 @factorial(i32 %s_elem)
    
    %a_elem_ptr = getelementptr i32, i32* %a, i32 %i_load
    store i32 %fact_val, i32* %a_elem_ptr
    
    %next_i = add i32 %i_load, 1
    store i32 %next_i, i32* %i
    
    br label %while_cond

while_end:
    ret void
}
define i32 @main() {
entry:
    %s = alloca [4 x i32]
    %a = alloca [4 x i32]
    %i = alloca i32
    
    store i32 0, i32* %i
    br label %while_cond
while_cond:
    %i_load = load i32, i32* %i
    %cmp = icmp slt i32 %i_load, 4
    br i1 %cmp, label %while_body, label %while_end

while_body:
    %input_val = call i32 @getint()
    %s_elem_ptr = getelementptr [4 x i32], [4 x i32]* %s, i32 0, i32 %i_load
    store i32 %input_val, i32* %s_elem_ptr
    
    %next_i = add i32 %i_load, 1
    store i32 %next_i, i32* %i
    
    br label %while_cond

while_end:
    %s_ptr = getelementptr [4 x i32], [4 x i32]* %s, i32 0, i32 0
    %a_ptr = getelementptr [4 x i32], [4 x i32]* %a, i32 0, i32 0
    call void @factorials(i32* %s_ptr, i32* %a_ptr, i32 4)
    call void @putarray(i32 4, i32* %a_ptr)
    %calls_val = load i32, i32* @calls
    call void @putint(i32 %calls_val)
    
    call void @putch(i32 10)
    
    %max_val = load i32, i32* @max_result
    call void @putint(i32 %max_val)
    
    call void @putch(i32 10)
    
    ret i32 0
}