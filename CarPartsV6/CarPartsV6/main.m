//
//  main.m
//  CarPartsV1
//
//  Created by qingyun on 14-3-15.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

//这个版本改进， 主要复习前关于setEngine方法中内存管理
//在完成setEngine之前，我们需要先把工程设置成为非ARC环境
//修改办法是：在工程配置文件里， 搜索automatic关键字， 然后将对应的lanaguage objective-c
//设置成NO即可

#import <Foundation/Foundation.h>

#import "Engine.h"
#import "Tire.h"
#import "Car.h"
#import "A6Engine.h"
#import "AllWeatherTire.h"

//在V5版本的基础上， 需要将main里的A6Engine改为Engine
//AllWeatherTire改为Tire
int main(int argc, const char * argv[])
{
//  第一个版本代码
    /*
    @autoreleasepool {
        
        Car *car;
        car = [Car new];
        
        Engine *engine = [Engine new];
        [car setEngine:engine];
        [engine release];
        
        for (int i = 0; i < 4; i++) {
            Tire *tire = [Tire new];
            [car setTires:tire atIndex:i];
        }
        [car print];
        
    }
     */
//  第二个小版本
    /*
    @autoreleasepool {
        
        Car *car;
        car = [Car new];
        
        Engine *engine = [Engine new];
        [car setEngine:engine];
        [engine release];
        
        Engine *engine2 = [Engine new];
        [car setEngine:engine2];
    }
     */
    
//    第三个小版本
    @autoreleasepool {
        
        Car *car;
        car = [Car new];
        Car *car2 = [Car new];
        
        Engine *engine = [Engine new];
        [car setEngine:engine];
        [engine release];
        
        [car2 setEngine:[car engine]];
        
       
    }

    return 0;
}

