//
//  NSString+NumberConvenience.m
//  NumberConverWithCato
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "NSString+NumberConvenience.h"

@implementation NSString (NumberConvenience)


- (NSNumber*)lenthAsNumber
{
//   这里的self在第一次调用的时候， 相当于@"hello"
    NSUInteger length = [self length];
    NSNumber *numberLength = [NSNumber numberWithUnsignedInteger:length];
    return numberLength;
}

- (void)length
{
    NSLog(@"Haha.you are wrong");
}

@end
