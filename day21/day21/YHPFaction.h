//
//  YHPFaction.h
//  day21
//
//  Created by yhp on 2017/7/16.
//  Copyright © 2017年 YouHuaPei. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YHPFaction : NSObject

{
    int sgn;
    int num;
    int den;
}

+(id)factionWithNumerator:(int)n denominator:(int)d;
-(id)initWithNumerator:(int)n demoninator:(int)d;

-(YHPFaction*)add:(YHPFaction*)obj;
-(YHPFaction*)sub:(YHPFaction*)obj;
-(YHPFaction*)mul:(YHPFaction*)obj;
-(YHPFaction*)div:(YHPFaction*)obj;

-(NSString*)description;
@end
