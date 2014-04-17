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

//在V7版本的基本出改进， 主要是了解便利初始化函数的写法，与作用。
int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        Car *myCar = [[Car alloc] init];
        for (int i = 0;  i < 4; i++) {
            Tire *tire;
//            tire = [[Tire alloc] initPressure:23.1 + i];
            tire = [[AllWeatherTire alloc] init];
            [myCar setTires:tire atIndex:i];
        }
        
        Engine *engine = [[Engine alloc] init];
        [myCar setEngine:engine];
        [engine release];
        
        [myCar print];
        [myCar release];
       
    }

    return 0;
}

