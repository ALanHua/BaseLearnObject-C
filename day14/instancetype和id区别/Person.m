//
//  Person.m
//  day14
//
//  Created by yhp on 16/1/25.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import "Person.h"

@implementation Person

//instancetype与id一样都是万能指针,
//- (instancetype)init
//instancetype 在编译的时候可以判断对象的真实类型,而id不会
//id和instancetype除了一个在编译时不知道真实类型，一个编译时知道真实类型,
//还有一个区别,id可以作为返回值，可以作为形参，而instancetype不能作为返回值

/**
 *  以后自定义初始化方法要用instancetype
 
 */
- (instancetype)init
{
    if(self = [super init]){
        
        _age = 5;
    }
    
    return self;

}
@end
