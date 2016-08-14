//
//  main.m
//  面试题
//
//  Created by yhp on 16/8/14.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  c/c++ 面试题
 */
// 1,打印结果
void test01(void)
{
    int a[5] = {1,2,3,4,5};
    int *ptr = (int*)(&a+1);// ptr地址是
    printf("%d,%d\n",*(a+1),*(ptr-1));// 2,5
}

// 2,输出结果
void test02(void)
{
    /**
     * void Func (char str[100]) {
            sizeof(str) = ? // 4或者8  根据系统
        }
     */
    void* p = malloc(100);
    printf("%zd\n",sizeof(p));// 4或者8
}
// 3，用预处理指令#define声明一个常数，用以表明1年中有多少秒（忽略闰年问题）
#define YEAR_OF_SECOND    (365 * 24 * 60 * 60)UL
// 4,写“标准”宏MIN ，这个宏输入两个参数并返回较小的一个
#define YHP_MIN(a,b)   ( (a)>=(b) ? (b) : (a))
void test04(void)
{
    printf("%d\n",YHP_MIN(10, 40));
}
// 5. 数组和指针的区别
/** 
    1，数组可以在栈和数据去申请内存，指针可以指向任意的内存块
    2，数组名表示数组首地址指针，不可以用++，等运算符
    3，sizeof 使用产生的效果不一样
 */
int main(int argc, const char * argv[]) {
    
    test04();
        
    return 0;
}
