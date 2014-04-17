//
//  Engine.m
//  EngineRetainCount
//
//  Created by qingyun on 14-3-14.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (NSString*)description
{
    NSString *string = [[NSString alloc] initWithString:@"HelloWord"];
    return  string;
}

- (void)dealloc
{
    NSLog(@"Engine dealloc");
    [super dealloc];
}
@end
