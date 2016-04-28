//
//  ViewController.m
//  自动释放池大对象问题
//
//  Created by yhp on 16/1/30.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    /*
//    不要在自动释放池中放比较大内存的对象
    @autoreleasepool {
        Person* p = [[[Person alloc]init]autorelease];
        
        //在100行使用
        
        //一万行代码
    }
     */
//    不要在自动释放池中使用比较多的循环
    /*
    @autoreleasepool {
        for (int i = 0; i < 999999; i++) {
//            每调用一次就会创建一个新的对象
            Person* p = [[[Person alloc]init]autorelease];
            
        }
    }//只有执行到这里，所有对象在会被销毁
     */
    for (int i = 0; i < 10000; i++) {
        Person* p = [[[Person alloc]init]autorelease];
    }
    NSLog(@"----------------");
}

@end
