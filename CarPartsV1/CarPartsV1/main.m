//
//  main.m
//  CarPartsV1
//
//  Created by qingyun on 14-3-15.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

//Add something test content

//这个demo程序，主要是用来回忆前面我们学习的关于组合的内容，

#import <Foundation/Foundation.h>

//关于engine类的声明和定义
@interface Engine : NSObject

@end

@implementation Engine

- (NSString*)description
{
    return @"I'am Engine";
}
@end


//关于Tire类的声明和定义
@interface Tire : NSObject

@end

@implementation Tire

- (NSString*)description
{
    return  @"I'am Tire";
}

@end


//关于Car类的声明与定义

@interface Car : NSObject
{
    Engine *engine;
    Tire *tires[4];
}
//类里对象方法的声明
- (void)print;

@end


@implementation Car

- (id)init
{
    if (self = [super init]) {
        engine = [Engine new];
        tires[0] = [Tire new];
        tires[1] = [Tire new];
        tires[2] = [Tire new];
        tires[3] = [Tire new];
    }
    return self;
}

- (void)print
{
    NSLog(@"%@",engine);
    NSLog(@"%@",tires[0]);
    NSLog(@"%@",tires[1]);
    NSLog(@"%@",tires[2]);
    NSLog(@"%@",tires[3]);
}
@end


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Car *car;
        car = [Car new];
        [car print];
        
    }
    return 0;
}

