//
//  main.m
//  Block应用场景
//
//  Created by yhp on 16/1/31.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
void goToWorkPrefix()
{
    NSLog(@"起床");
    NSLog(@"穿衣服");
    NSLog(@"洗漱");
    NSLog(@"喝早茶");
    NSLog(@"驾车去上班");
}

void goToWorkSubfix()
{
    NSLog(@"收拾东西");
    NSLog(@"驾车回家");
    NSLog(@"吃晚餐");
    NSLog(@"洗澡");
    NSLog(@"睡觉");
}

void goToWorkInDay()
{

    goToWorkPrefix();
    NSLog(@"认识新同事");
    goToWorkSubfix();

}

void goToWorkInDay2()
{
    goToWorkPrefix();
    NSLog(@"熟悉公司代码");
    goToWorkSubfix();
}

void goToWorkInDay3()
{
    goToWorkPrefix();
    NSLog(@"编写代码");
    goToWorkSubfix();
}

void goToWorkInDay4()
{
    goToWorkPrefix();
    NSLog(@"应用程序上架");
    goToWorkSubfix();
}
*/
//当发现代码前面和后面都是一样的时候，可以使用block
void goToWork(void (^workBlock)())
{
    NSLog(@"起床");
    NSLog(@"穿衣服");
    NSLog(@"洗漱");
    NSLog(@"喝早茶");
    NSLog(@"驾车去上班");
    workBlock();
    NSLog(@"收拾东西");
    NSLog(@"驾车回家");
    NSLog(@"吃晚餐");
    NSLog(@"洗澡");
    NSLog(@"睡觉");
}
void goToWorkInDay()
{
    goToWork(^{
        NSLog(@"认识新同事");
    });
}

void goToWorkInDay2()
{
    goToWork(^{
         NSLog(@"熟悉公司代码");
    });
}

void goToWorkInDay3()
{
    goToWork(^{
        NSLog(@"编写代码");
    });
}

void goToWorkInDay4()
{
    goToWork(^{
        NSLog(@"应用程序上架");
    });
}

int main(int argc, const char * argv[])
{
    goToWorkInDay3();
    
    return 0;
}
