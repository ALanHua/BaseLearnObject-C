//
//  Baby.h
//  day17
//
//  Created by yhp on 16/2/1.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BabyProtocol.h"

/**
    代理设计模式：心相印和超市，超市就是心相印的代理，代理可以帮卖纸巾
 *  代理设计模式的应用场景
    1，当A对象想监听B对象的一些变化时，可以使用代理模式
        保姆想监听婴儿的代理
    2，当B对象一些事情，想通知A对象时候
        婴儿想通知保姆，保姆就可以成为婴儿的代理
    3，让B处理A对象无法完成的行为。
 */

@interface Baby : NSObject


@property(nonatomic,assign)int hungry;
@property(nonatomic,assign)int sleepy;
//@property(nonatomic,strong)Nanny* nanny;
//@property(nonatomic,strong)Student* stu;
//使用id类型，如果将来换保姆类，就不要修改baby代码
@property(nonatomic,strong)id<BabyProtocol> nanny;

-(void)food;
-(void)sleep;

@end
