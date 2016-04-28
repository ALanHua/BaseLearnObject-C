//
//  main.m
//  第一个OC类
//
//  Created by yhp on 16/1/16.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
//  1,编写类的申明
@interface Iphone : NSObject//为了让Iphone类具备创建对象的能力
{
@public//只要类中的属性公开
    float _model;//默认初始化为 0
    int _cpu;
    double _size;
    int _color;
}
-(void)about;
-(char *)loadMessage;
-(int)signal:(int) number;
-(int)sendMessage:(int)number andContent:(char*)content;

//计算器
//1,如果不想每次都创建对象，可以创建类方法，类方法用类调用
//2,类方法中不能访问类中的成员属性
//3,类方法比调用对象方法效率高
//4,类对象方法可以调用类方法,类方法中可以间接调用对象方法,类方法可以调用类方
//-(int)sumValue1:(int)value1 andValue2:(int)value2;
//类方法使用场景，一般用于工具方法，如字符串查找
+(int)sumValue1:(int)value1 andValue2:(int)value2;
+(void)demo;
@end


//2，如何编写类的实现
@implementation Iphone

//行为实现
-(void)about
{
    NSLog(@"sum = %i",[Iphone sumValue1:10 andValue2:20]);
    NSLog(@"size = %f,color = %i,model = %f,cpu = %d",_size
          ,_color,_model,_cpu);
    Iphone *p = [Iphone new];
    NSLog(@"message:%s",[p loadMessage]);
}

-(char *)loadMessage
{
    return "yhp is great!";
}

-(int)signal:(int) number
{
    NSLog(@"number:%i",number);
    return 1;
}

-(int)sendMessage:(int)number andContent:(char*)content
{
    NSLog(@"content:%s,number:%i",content,number);
    return 1;
}

//声明的是什么方法就实现什么方法
+(int)sumValue1:(int)value1 andValue2:(int)value2
{
    Iphone *p = [Iphone new];
    [p signal:987654321];
    return value1 + value2;
}

+(void)demo
{
    NSLog(@"res : %d",[Iphone sumValue1:900 andValue2:10]);
    NSLog(@"demo");
}
@end

int main(int argc, const char * argv[])
{
    
    Iphone *p = [Iphone new];
    p->_size = 3.5;
    p->_color = 0;
    p->_model = 4;
    p->_cpu = 1;
    
    [p  about];
    char *content = [p loadMessage];
    NSLog(@"content = %s",content);
    [p signal:123456];
    [p sendMessage:123456 andContent:"yhp"];
    
//    int res = [p sumValue1:10 andValue2:20];
    int res = [Iphone sumValue1:50 andValue2:50];
    NSLog(@"res : %d",res);
    
    
    return 0;
}
