//
//  Things.m
//  CategoryDispath
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "Things.h"
#import "Things+CategoryThing1.h"
#import "Things+CategoryThing2.h"
@implementation Things






- (void)setTing3:(NSInteger)t3
{
    thing3 = t3;
}
- (NSInteger)thing3
{
    return thing3;
}

- (void)setTing4:(NSInteger)t4
{
    thing4 = t4;
}

- (NSInteger)thing4
{
    return thing4;
}

- (void)setTing5:(NSInteger)t5
{
    thing5 = t5;
}
- (NSInteger)thing5
{
    return thing5;
}

- (NSString*)description
{
    NSString *desc = [NSString stringWithFormat:@"%ld,%ld,%ld,%ld,%ld",
                                                 self.thing5,
                                                 self.thing4,
                                                 self.thing3,
                                                 self.thing2,
                                                 self.thing1];
    return desc;
    
}

@end
