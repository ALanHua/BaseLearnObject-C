//
//  main.m
//  Block注意事项
//
//  Created by yhp on 16/1/31.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
//    1,Block中可以访问外面的变量
    /*
    int a = 10;
    void (^myBlock)() = ^{
        NSLog(@"a=%i",a);
    };
    myBlock();
    */
//    2,Block中可以定义和外界同名的变量
    /*
    int a = 10;
    void (^myBlock)() = ^{
        int a =20;
        NSLog(@"a=%i",a);
    };
    myBlock();
     */
//  3,默认情况下，不能再Block中修改外界的变量值
//    Block中访问到外界变量和Block中不一样
//    因为Block中使用外界的变量是copy的，所以在调用修改之前变量的值不会影响copy中的值
    /*
    int a = 10;
 
    void (^myBlock)() = ^{
//        a = 50;
        NSLog(@"&a--2=%p",&a);
        NSLog(@"a=%i",a);
    };
    a = 20;
    myBlock();
    */
//    4,如果想在Block中修改外界变量的值，必须在外界变量的值前面加 __block
//   如果在Block中修改了的变量的值，会影外界变量的值
  /*
    __block int a = 10;
    void (^myBlock)() = ^{
        a = 50;
        NSLog(@"a=%i",a);
    };
    myBlock();
     NSLog(@"a=%i",a);
   */
/*
 int a = 10;
 void (*myBlock)() = ((void (*)())&__main_block_impl_0((void *)__main_block_func_0, &__main_block_desc_0_DATA, a));
 ((void (*)(__block_impl *))((__block_impl *)myBlock)->FuncPtr)((__block_impl *)myBlock);
 */
    /*
    int a = 10;
    void (^myBlock)() = ^{
//        a = 20;
        NSLog(@"a=%i",a);
    };
    myBlock();
    */
//    Block是存在哪里，默认存储在栈，如果对Block进行copy会转移到堆中
//    如果Block在栈中访问了对象，不会进行retain操作
//    如果Block在堆中访问了对象，会进行retain操作
//    5,如果在Block中访问了外界的对象，一定要给对象加上__block,哪怕Block中堆中也不会对外界对象进行retain
    __block Person* p = [[Person alloc]init];
    NSLog(@"retainCount = %lu",[p retainCount]);
    void (^myBlock)() = ^{
        NSLog(@"a=%@",p);
        NSLog(@"Block = %lu",[p retainCount]);
    };
    Block_copy(myBlock);
    myBlock();
    
    [p release];
    return 0;
}
