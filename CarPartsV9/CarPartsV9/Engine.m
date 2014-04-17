//
//  Engine.m
//  CarPartsV4
//
//  Created by qingyun on 14-3-15.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "Engine.h"

@implementation Engine

- (NSString*)description
{
    NSString* desc;
    if (self.isHidder) {
        desc = @"I'am hidder ";
    }else{
        desc = @"I'am not hidder";
    }
    return desc;
}
@end
