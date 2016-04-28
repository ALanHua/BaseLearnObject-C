//
//  main.m
//  第一个OC类
//
//  Created by yhp on 16/1/16.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
事物名字：iPhone
属性：颜色，型号，cpu,尺寸    ===成员变量
行为：打电话，发短信，上网    ===成员方法
oc语言中函数分声明和实现
 */
//1，如何编写类的声明
//以@interface 开始@end结尾
//注意：类的首字母要大写,OC类属性只能卸载@interface和@end的{}中
//注意：属性前加上_
@interface Iphone : NSObject//为了让Iphone类具备创建对象的能力
{
//    注意，默认情况下，对象属性是不能直接访问的
    @public//只要类中的属性公开
    float _model;//默认初始化为 0
    int _cpu;
    double _size;
    int _color;
}
//行为
@end
//2，如何编写类的实现
//以@implementation开头,以@end结尾，在class写上声明类的名称必须和声明类名一样
@implementation Iphone
//行为实现

@end
int main(int argc, const char * argv[])
{
    //如何通过一个类创建对象
    //在OC中创建通过一个类 创建一个对象，必须给类发送一个消息
    //如何发送消息，在OC中只要发送消息[类名/对象名 方法名称];
    //发送什么消息(调用什么方法)可以创建一个对象呢？new
//    通过Iphone类型接收一个Iphone对象的地址
//    利用Iphone类型的指针保存Iphone对象的地址
    Iphone *p = [Iphone new];
    p->_size = 3.5;
    p->_color = 0;
    p->_model = 4;
    p->_cpu = 1;
    
    NSLog(@"size = %f,color = %i,model = %f,cpu = %d",
          p->_size,p->_color,p->_model,p->_cpu);
    
    
    return 0;
}
