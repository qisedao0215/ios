//
//  main.m
//  CopyAndDeepCopy
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QYCar.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        QYCar *myFirstCar = [[QYCar alloc] init];
//        myFirstCar.name = @"QingyuCar";
//        myFirstCar.year = 2014;
//        NSLog(@"myFirstCar is %@",myFirstCar);
//        
//        QYCar *mySecondCar = [myFirstCar copy];
//        NSLog(@"mySecondCar is %@",mySecondCar);
        
        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:42];
        for (int i = 0;  i < 4; i ++) {
            QYCar *car = [[QYCar alloc] init];
            car.name = [NSString stringWithFormat:@"QingyunCar%d",i];
            car.year = 2010 + i;
            [array addObject:car];
        }
        NSLog(@"arrra is %@",array);
        
        
        NSMutableArray *secondArray = [array copy];
        NSLog(@"secondArray is %@",secondArray);
        
        
        [[secondArray objectAtIndex:0] setName:@"HeNanQingYuNewCar"];
        NSLog(@"array:%@",array);
    }
    return 0;
}

