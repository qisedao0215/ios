//
//  RetainTracker.m
//  RetainCountTest
//
//  Created by qingyun on 14-3-14.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "RetainTracker.h"

@implementation RetainTracker

- (id)init
{
    if (self = [super init]) {
        NSLog(@"init:Retain count is %ld",[self retainCount]);
    }
    return self;
}

//当对象的引用计数变0的时候，系统会自动调用dealloc方法，需要注意一般情况我们不应该主动去调用
//这个方法
- (void)dealloc
{
    NSLog(@"tracker dealloc is called.Object is destroy.Bye.");
    [super dealloc];
}
@end
