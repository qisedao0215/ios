//
//  main.m
//  NumberConverWithCato
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

//需要先将类别的头文件包含进来
#import "NSString+NumberConvenience.h"
//#import "Tire+Test.h"
#import "Tire.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:42];
//       [array addObject:[@"hello" lenthAsNumber]];
//        [array addObject:[@"qingyun" lenthAsNumber]];
//        
//        NSLog(@"%@",array);
        
        Tire *tire = [[Tire alloc] init];
        [tire print];
        
    }
    return 0;
}

