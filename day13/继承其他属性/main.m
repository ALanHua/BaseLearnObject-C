//
//  main.m
//  继承其他属性
//
//  Created by yhp on 16/1/21.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iphone.h"

int main(int argc, const char * argv[])
{
    Iphone* p = [Iphone new];
    [p signalWithNumber:@"9873211"];
    
    /**
     *  继承
        当B类继承A类，B类具有了A类的所有方法和属性
        可以让类与类之间产生关系,所以才有了多态
        
        只有满足才能使用继承
        条件： xxx is a xxx
        缺点：
        依耐性太强，父类不在了，子类也不能用
     */
    return 0;
}
