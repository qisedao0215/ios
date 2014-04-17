//
//  main.m
//  CarPartsV1
//
//  Created by qingyun on 14-3-15.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Engine.h"
#import "Tire.h"
#import "Car.h"
#import "A6Engine.h"
#import "AllWeatherTire.h"


int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Car *car;
        car = [Car new];
        
        Engine *engine = [A6Engine new];
        [car setEngine:engine];
        
        for (int i = 0; i < 4; i++) {
            Tire *tire = [AllWeatherTire new];
            [car setTires:tire atIndex:i];
        }
        [car print];
        
    }
    return 0;
}

