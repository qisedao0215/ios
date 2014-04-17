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
    NSMutableArray *tires;
}

@property (nonatomic,retain) Engine *engine;

- (void)setTires:(Tire*)tire atIndex:(int)index;
- (Tire*)tireAtIndex:(int)index;

//类里对象方法的声明
- (void)print;
@end
