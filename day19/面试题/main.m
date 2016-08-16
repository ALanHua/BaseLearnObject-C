//
//  main.m
//  面试题
//
//  Created by yhp on 16/8/14.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YHPSort.h"
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

//6, static的作用
/**
    1,函数体内的变量---变量的内存只被分配一次，因此其值在下次调用时仍维持上次的值
    2,模块内------全局变量可以被模块内所用函数访问，但不能被模块外其它函数访问
    3，在类中------的static成员变量属于整个类所拥有，对类的所有对象只有一份拷贝
 */
// 7，简述内存分区情况
/*
 1,代码区：存放函数二进制代码
 2,数据区：系统运行时申请内存并初始化，系统退出时由系统释放，存放全局变量、静态变量、常量
 3,堆区：通过malloc等函数或new等操作符动态申请得到，需程序员手动申请和释放
 4,栈区：函数模块内申请，函数结束时由系统自动释放，存放局部变量、函数参数
 */
// 8,＃include 和＃include ”filename”有什么区别?
/*
 ＃include <filename>直接在库文件目录中搜索所包含的文件而＃include ”filename”在当前目录下搜索所包含的文件，如果没有的话再到库文件目录搜索。
 */
// 9. 下面四个修饰指针有什么区别?
/**
 const char *p;             // *p 的内容只读
 char const *p;             // *p 的内容只读
 char * const p;            // p 的地址只读
 const char * const p;      /// p 的地址和内容都只读
 */
// 10. 用过哪些排序算法？
/**
 *  冒泡排序法
 */
#define SWAP(a,b,T)    {T temp = a;a = b;b= temp;}
// c 语言版
void bubbleSort(int * unsort,int len)
{
    int i,j;
    for (i = 0; i < len -1; i++) {
        for (j= len - 1; j > i; j--) {
            if (unsort[j] < unsort[j-1]) {
                SWAP(unsort[j],unsort[j-1],int);
            }
        }
    }
}
/**
 * 插入排序
 */
void insertSort(int * unsort,int len)
{
    int i,j,key;
    for (i = 1; i < len; i++) {
        key = unsort[i];
        for (j = i; j > 0; j--) {
            if (unsort[j-1] > key) {
                unsort[j] = unsort[j-1];
            }else{
                break;
            }
        }
        unsort[j] = key;
    }
}

void printIntArray(int * unsort,int len)
{
    int i;
    for (i = 0; i < len; i++) {
        printf("%d ",unsort[i]);
    }
    printf("\n");
}
void test10(void)
{
    int a[10] = {10,8,7,1,2,4,39,3,200,9};
    int length = sizeof(a)/sizeof(int);
    printIntArray(a,length);
    bubbleSort(a,length);
    printIntArray(a,length);
    
    NSMutableArray* arr = [NSMutableArray arrayWithObjects:@10,@8,@7,@1,@2,@4,@39,@3,@200,@9, nil];
    [YHPSort bubbleSort:arr];
    NSLog(@"%@",arr);
    
    int a1[10] = {190,8,70,10,21,43,394,35,200,9};
    length = sizeof(a1)/sizeof(int);
    insertSort(a1,length);
    printIntArray(a1,length);
    
    NSMutableArray* arr2 = [NSMutableArray arrayWithObjects:@100,@80,@70,@10,@20,@4,@39,@3,@200,@9, nil];
    [YHPSort insertSort:arr2];
    NSLog(@"%@",arr2);
}

int main(int argc, const char * argv[]) {
    
    test10();
    
    return 0;
}
