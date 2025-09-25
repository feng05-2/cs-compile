#include <stdio.h>
// 验证宏定义和宏替换
#define MAX_INPUT 20
#define DEBUG 1
#define SQUARE(x) ((x) * (x))
int main() {
    int i, n, f;
// 验证条件编译
#ifdef DEBUG
    printf("=== 调试模式开启 ===\n");
    printf("请输入一个不大于%d的整数: ", MAX_INPUT);
#endif   
    scanf("%d", &n);  
    // 验证宏的使用
    if (n > MAX_INPUT) {
        printf("输入值过大！最大值允许为%d\n", MAX_INPUT);
        return 1;
    }   
    i = 2;
    f = 1;   
#ifdef DEBUG
    printf("开始计算%d的阶乘...\n", n);
#endif
    while (i <= n) {
        f = f * i;       
        int squared = SQUARE(i);
#ifdef DEBUG
        printf("i=%d, i²=%d, 当前阶乘值=%d\n", i, squared, f);
#endif        
        i = i + 1;
    }
#ifdef DEBUG
    printf("最终结果: ");
#endif
    printf("%d! = %d\n", n, f);   
    // 验证注释删除（这里是一个多行注释示例）
    /*
     * 这是一个多行注释
     * 预处理器应该会删除这些内容
     * 在.i文件中将看不到这些文字
     */   
    return 0;
}