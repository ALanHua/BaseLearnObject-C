//
//  main.m
//  练习
//
//  Created by yhp on 16/1/17.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    int _age;
    double _height;
}

-(void)study;
@end

@implementation Person

-(void) study
{
    NSLog(@"age:%i",_age);
}

@end

int main(int argc, const char * argv[])
{
    Person *p = [Person new];
    p->_age = 10;
    p->_height = 1.781;
    [p study];
    
    return 0;
}
