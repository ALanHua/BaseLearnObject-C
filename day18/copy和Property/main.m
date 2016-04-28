//
//  main.m
//  copy和Property
//
//  Created by yhp on 16/2/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"

int main(int argc, const char * argv[])
{
//    1,copy的第一个用途，防止外界修改内部数据
    /*
    NSMutableString* temp = [NSMutableString stringWithFormat:@"lnj"];
    Person* p = [[Person alloc]init];
    p.name = temp;
//    问题：修改了外面的变量，影响到了对象中的属性
    [temp appendString:@" cool"];
    
    NSLog(@"%@",p.name);
//    以后字符串属性都用copy
    */
//
    /*
   __block int num = 10;
    void (^myBlock)() = ^{
        num = 20;
        NSLog(@"%i",num);
    };
    myBlock();
     */
//block 默认存储在栈中，栈中的block访问到外界的对象，不会对对应进行retain
//    block如果在堆中，如果在block中访问了外界的对象，会对外界对象进行一次retain操作
  /*
    Person* p = [[Person alloc]init];
    NSLog(@"%lu",[p retainCount]);
    void (^myBlock)() = ^{
        NSLog(@"%@",p);
        NSLog(@"%lu",[p retainCount]);
    };
    Block_copy(myBlock);//将blcok转移到堆中
    myBlock();
    */
//    2,可以使用copy保存block,这样可以保住block中使用外界对象的命
/*
    //    避免以后调用block的时候，外界的对象已经释放了
    Dog* d = [[Dog alloc]init];
    NSLog(@"%lu",[d retainCount]);
    
    Person* p = [[Person alloc]init];
    p.pBlock = ^{
        // 2
        NSLog(@"%@",d);
    };
    NSLog(@"%lu",[d retainCount]);
//    如果 狗在调用block之前释放，程序会崩溃
    [d release];//1
    p.pBlock();
    [p release];
*/
//    注意点,copy block 之后引发的循环引用
//    如果对象block中用到了自己，那么为了避免内存泄露，应当将对象修饰为__block
    __block Person* p = [[Person alloc]init];
    p.name = @"lnj";
    p.pBlock = ^{
        NSLog(@"name:%@",p.name);//进行了一次retain
    };
    p.pBlock();
    
    [p release];
    
    return 0;
}
