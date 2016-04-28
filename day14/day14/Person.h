//
//  Person.h
//  day14
//
//  Created by yhp on 16/1/24.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @public
    int _age;
    @protected
    double _height;
    @private
    NSString* _name;
    @package
    double _weight;
    
}
//如果方法的实现，没有方法的声明，该方法就是私有方法
//oc中没有真正的私有方法
//-(void)test;
@end
