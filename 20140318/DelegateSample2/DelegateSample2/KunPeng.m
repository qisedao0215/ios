//
//  KunPeng.m
//  DelegateSample
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "KunPeng.h"
#import "NSObject+CallJianGuo.h"

@implementation KunPeng

- (void)tellKunPengSomething:(NSUInteger)time
{
    //让kunpeng知道什么时候叫醒jianguo
//    NSTimer就是计时器，用于确kunpeng在什么时候去叫醒jianguo，
//    所谓的叫醒jianguo实际就是让kunpeng执行一个方法 ，target就是指定谁来响应这个方法
    
    SEL method = @selector(callMe);
    if ([self respondsToSelector:method]) {
        [NSTimer scheduledTimerWithTimeInterval:time target:self selector:@selector(callMe) userInfo:nil repeats:NO];
       
    }else
    {
        NSLog(@"让建国再睡一会儿...");
    }
    
}
@end
