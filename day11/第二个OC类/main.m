//
//  main.m
//  第二个OC类
//
//  Created by yhp on 16/1/17.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 人(Person）
 属性：年龄，身高，体重
 行为：吃饭，睡觉，散步(walk)
 */
@interface Person : NSObject
{
    @public
    //属性
    int _age;
    double _height;
    double _weight;
}
//行为
-(void)eat:(char*)food;
-(void)sleep;
-(void)walk;
+(void)demo;
@end

@implementation Person

-(void)eat:(char*)food
{
    NSLog(@"eat %s",food);
}
-(void)sleep
{
    NSLog(@"sleep");
}
-(void)walk
{
    NSLog(@"walk");
}

+(void)demo
{
    NSLog(@"Demo");
}

@end
int main(int argc, const char * argv[])
{
//    类的第0个属性 = isa是一个指针
//    类也是一个对象，类对象是系统自动创建的，保存了对象的所有方法
    
    Person *p = [Person new];
    [p  eat:"meat"];
    p->_age = 30;
    p->_height = 1.75;
    p->_weight = 65.0;
    NSLog(@"age:%d,height:%f,weight:%f",p->_age,p->_height
          ,p->_weight);
    [p walk];
    [Person demo];
    
    //每次new都会创建一块新的存储空间
    Person *p2 = [Person new];
    p2->_age = 50;
    p2->_height = 1.88;
    p2->_weight = 100;
    
    return 0;
}
