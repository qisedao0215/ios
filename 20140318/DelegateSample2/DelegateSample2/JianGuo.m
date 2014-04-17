//
//  JianGuo.m
//  DelegateSample
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "JianGuo.h"
#import "KunPeng.h"
@implementation JianGuo

- (void)startSleep:(NSUInteger)time
{
    NSLog(@"Sleep....,tell kun peng call me");
    KunPeng *kp  = [[KunPeng alloc] init];
    [kp tellKunPengSomething:time];
}
@end
