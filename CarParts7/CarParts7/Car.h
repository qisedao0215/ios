//
//  Car.h
//  CarPartsV4
//
//  Created by qingyun on 14-3-15.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
//关于Car类的声明与定义
@class Engine;//前向声明的语义是说，嘿！你不用关了，我这里一个这样的类型
@class Tire;
@interface Car : NSObject
{
    //由于这里是一个指针类型变量的声明， 所以其本质是不需要真正了解到Engine
    //类的全部声明信息的， 只需要知道有这么一个Engine类就可以
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
