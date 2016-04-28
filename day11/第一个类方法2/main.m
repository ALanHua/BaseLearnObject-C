//
//  main.m
//  第一个OC类
//
//  Created by yhp on 16/1/16.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum
{
    KIColorBlack,//黑色
    KIColorWhite,//白色
    KIColorTuHaoJin//土豪金
}IColor;
//  1,编写类的申明
@interface Iphone : NSObject//为了让Iphone类具备创建对象的能力
{
@public//只要类中的属性公开
    float _model;//默认初始化为 0
    int _cpu;
    double _size;
    IColor _color;//0-black
}
-(void)about;
-(char *)loadMessage;
-(int)signal:(int) number;
-(int)sendMessage:(int)number andContent:(char*)content;
+(int)sumValue1:(int)value1 andValue2:(int)value2;

+(NSString*) colorWithNumber:(IColor)number;
@end


//2，如何编写类的实现
@implementation Iphone

//行为实现
-(void)about
{
   
//    NSLog(@"size:%f,cpu:%i,model:%f,color:%d",_size,_cpu,_model,_color);
    NSString *name = [Iphone colorWithNumber:_color];
    NSLog(@"size:%f,cpu:%i,model:%f,color:%@",_size,_cpu,_model,name);
}
//工具方法
+(NSString*) colorWithNumber:(IColor)number
{
    NSString *name;
    switch (number) {
        case 0:
            name = @"黑色";
            break;
        case 1:
            name = @"白色";
            break;
        case 2:
            name = @"土豪金";
            break;
        default:
            name = @"华强北";
            break;
    }
    return name;
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
    return value1 + value2;
}

@end

int main(int argc, const char * argv[])
{
    Iphone *p = [Iphone new];
    p->_color = KIColorWhite;
    p->_cpu = 1;
    p->_model = 4;
    p->_size = 3.5;
    
    [p about];
    return 0;
}
