//
//  main.m
//  InitTest
//
//  Created by qingyun on 14-3-14.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BMWCar.h"
#import "AudioCar.h"
#import "Engine.h"
#import "Tire.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
      
        /*
        int myInt;
        float myFloat;
        NSString *myString;
        
        NSLog(@"int:%d,float:%f,stirng:%@",myInt,myFloat,myString);
        
        NSString *home = @"/Users/qingyun/temp.txt";
        NSStringEncoding encoding = NSUTF8StringEncoding;
        NSError *error = nil;
//      第一个参数指文件的名字， 实际上是一个全路径
//      第二个参数：指的文件的编码格式，在这里给出的是一个UTF8格式
//      第三个参数：是一个error对象， 由于参数是一个指针类型， 同时又需要将错误信息带回来，
//        所以我们在传递参数的时候， 要给出指针对象的地址，也就是为什么实参需要加上&(取地址符号）
//      方法的功能是， 从指的路径文件里读取所有的内容，来初始对象string
        NSString *string = [[NSString alloc] initWithContentsOfFile:home
                                                           encoding:encoding
                                                              error:&error];
        if (error != nil) {
            NSLog(@"%@",error);
        }else
        {
            NSLog(@"fileContent is %@",string);
        }
         */
        BMWCar *myCar = [[BMWCar alloc] init];
        NSLog(@"%@",myCar);
        
        AudioCar *mySecondCar = [[AudioCar alloc] init];
        NSLog(@"%@",mySecondCar);
        
        Engine *newEngine = [[Engine alloc] init];
        [mySecondCar setEngine:newEngine];
        
        
        for (int i = 0 ;  i < 4; i++) {
            Tire *tire = [[Tire alloc] init];
            [mySecondCar setTire:tire atIndex:i];
        }
        
        NSLog(@"%@",mySecondCar);
    }
    return 0;
}

