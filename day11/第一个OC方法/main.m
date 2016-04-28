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
//行为
//注意，OC中的方法，如果没有形参不需要写()，OC中（）是括注数据类型的
//类方法用+，对象方法用-,只能用指针调用
-(void)about;
@end

//2，如何编写类的实现
@implementation Iphone
//行为实现
-(void)about
{
    NSLog(@"打印本机属性");
}
@end
int main(int argc, const char * argv[])
{

    Iphone *p = [Iphone new];
    p->_size = 3.5;
    p->_color = 0;
    p->_model = 4;
    p->_cpu = 1;
    
    NSLog(@"size = %f,color = %i,model = %f,cpu = %d",
          p->_size,p->_color,p->_model,p->_cpu);
    //如何条用对象方法
    [p  about];
    return 0;
}
