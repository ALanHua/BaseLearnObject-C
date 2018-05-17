//
//  YHPFaction.m
//  day21
//
//  Created by yhp on 2017/7/16.
//  Copyright © 2017年 YouHuaPei. All rights reserved.
//

#import "YHPFaction.h"

@implementation YHPFaction

#define SIGN(a)    ((a) >= 0 ? 1 : (-1))

/**
 求最大公约数

 @param a a
 @param b b
 @return 最大公约数
 */
static int gcd(int a,int b)
{
    if (a < b) {
        return gcd(b, a);
    }
    if (b == 0) {
        return a;
    }
    
    return gcd(b, a % b);
}

-(void)reduce
{
    int d;
    if (num == 0) {
        sgn = 1;
        den = 1;
        return;
    }
    if ((d = gcd(num, den)) == 1) {
        return;
    }
    
    num /= d;
    den /= d;
}



//+(id)factionWithNumerator:(int)n denominator:(int)d
//{
//    
//}
-(id)initWithNumerator:(int)n demoninator:(int)d
{
    if ((self = [super init]) != nil) {
        
    }
}

//-(YHPFaction*)add:(YHPFaction*)obj;
//-(YHPFaction*)sub:(YHPFaction*)obj;
//-(YHPFaction*)mul:(YHPFaction*)obj;
//-(YHPFaction*)div:(YHPFaction*)obj;
//
//-(NSString*)description;


@end
