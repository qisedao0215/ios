//
//  main.m
//  CarPartsV1
//
//  Created by qingyun on 14-3-15.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

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

//关于更强劲的发动机A6Engine类的声明与定义
@interface A6Engine : Engine

@end

@implementation A6Engine

- (NSString*)description
{
    return @"I am an A6Engine";
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

//关于适应所有天气的Tire类的声明与定义
@interface AllWeatherTire : Tire

@end

@implementation AllWeatherTire

- (NSString*)description
{
    return @"I am a tire for rain or shine";
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
- (void)setEngine:(Engine*)newEngine;
- (Engine*)engine;

- (void)setTires:(Tire*)tire atIndex:(int)index;
- (Tire*)tireAtIndex:(int)index;
@end


@implementation Car

- (void)setEngine:(Engine *)newEngine
{
    engine = newEngine;
}

- (Engine*)engine
{
    return engine;
}

- (void)setTires:(Tire *)tire atIndex:(int)index
{
    if ((index < 0) || (index > 3)) {
//        NSLog(@"bad index (%d) in setTires:atIndex:",index);
        NSLog(@"bad index (%d) in %s",index,__func__);
        exit(1);//这个错误码能够在代码出错的时候，帮助我们定位错误。
    }
    tires[index] = tire;
}


- (Tire*)tireAtIndex:(int)index
{
    if ((index < 0) || (index > 3)) {
        NSLog(@"bad index (%d) in tireAtIndex:",index);
        NSLog(@"bad index (%d) in %s",index,__func__);
        exit(1);//这个错误码能够在代码出错的时候，帮助我们定位错误。
    }
    return tires[index];
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
        
        Engine *engine = [A6Engine new];
        [car setEngine:engine];
/*
        Tire *tire1 = [Tire new];
        [car setTires:tire1 atIndex:0];
        
        Tire *tire2 = [Tire new];
        [car setTires:tire2 atIndex:1];
        
        Tire *tire3 = [Tire new];
        [car setTires:tire3  atIndex:2];
        
        Tire *tire4 = [Tire new];
        [car setTires:tire4 atIndex:3];
*/
        for (int i = 0; i < 4; i++) {
            Tire *tire = [AllWeatherTire new];
            [car setTires:tire atIndex:i];
        }
        [car print];
        
    }
    return 0;
}

