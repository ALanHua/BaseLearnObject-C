//
//  Person.h
//  day13
//
//  Created by yhp on 16/1/22.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
/**
 *  @public //实例变量修饰符
 
 *  @public:    其他类中可以访问,本类也可以访问,可以在子类中访问
 *  @private:   不可以在其他类访问,可以在本类中访问,不可以在子类中访问
 *  @protected: 不可以在其他类访问,可以在本类中访问,可以在子类中访问
    注意：默认都是 protected
 *  @package:   介于public与private之间，如果在其他包中是private,在当前包中是public
 */
@interface Person : NSObject
{
    @public
    int _age;
    
    @private
    double _height;
    
    @protected
    double _weight;
    NSString* _name;
    NSString* _tel;
    NSString* _email;
    
}
@end
