//
//  BMWCar.m
//  InitTest
//
//  Created by qingyun on 14-3-14.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "BMWCar.h"
#import "Engine.h"
#import "Tire.h"


@implementation BMWCar

- (id)init
{
    if (self = [super init]) {
        engine = [[Engine alloc] init];
        tires = [NSMutableArray arrayWithCapacity:4];
        for (int i = 0; i < 4;  i++) {
            Tire *tire = [[Tire alloc] init];
            [tires addObject:tire];
        }
    }
    return self;
}

- (NSString*)description
{
    NSString *desc = [NSString stringWithFormat:@"I'm BMWCar engine is %@, tire :%@",engine,tires];
    return desc;
}
@end
