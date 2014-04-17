//
//  QYCar.m
//  CopyAndDeepCopy
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import "QYCar.h"

@implementation QYCar

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@,%ld", self.name,self.year];
}

//在向对象发送copy消息的时候， 系统会自动调用这个方法
- (id)copyWithZone:(NSZone *)zone
{
//    [self class]
    QYCar *car = [[self class] allocWithZone:zone];
    car.name = self.name;
    car.year = self.year;
    return car;
}

@end
