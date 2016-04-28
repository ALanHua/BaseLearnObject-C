//
//  main.m
//  字符串基本使用
//
//  Created by yhp on 16/1/17.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <string.h>

@interface Iphone : NSObject
-(NSString*)loadMessage;
@end

@implementation Iphone

-(NSString*)loadMessage
{
    //只需要在c字符串前加@，系统会自动转换成OC的字符串
    return @"你好";
}

@end
int main(int argc, const char * argv[])
{
    
    //OC中的字符串是一个对象，c语言中只是普通的类型
//    NSString *str = @"yhp";
    
//    Iphone *p = [Iphone new];
//    //%@---专门输出对象的
//    NSLog(@"content: %@",[p loadMessage]);
    //1,如何创建OC字符串
//    NSString *str  = [NSString stringWithFormat:@"你好 %i",10];
//    NSLog(@"%@",str);
    NSString *str = @"hello";
    NSUInteger len = [str length];//计算出来的是字符个数
    NSLog(@"len:%lu",len);
    
    return 0;
}
