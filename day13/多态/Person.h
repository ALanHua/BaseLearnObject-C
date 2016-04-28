//
//  Person.h
//  day13
//
//  Created by yhp on 16/1/22.
//  Copyright © 2016年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "dog.h"
#import "Cat.h"

@interface Person : NSObject

//+(void)food:(Dog*)dog;
//+(void)foodCat:(Cat*)cat;

//....
+(void)food:(Animal*)a;
@end
