//
//  main.m
//  NumberConverWithoutCato
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:42];
        NSString *str = @"hello";
        NSString *str2 = @"qingyun";
        
        NSUInteger strLenth = [str length];
        NSUInteger str2Lenth = [str2 length];
        
      
        NSNumber *strNumber = [NSNumber numberWithUnsignedInteger:strLenth];
        [array addObject:strNumber];
        
        NSNumber *str2Number = [NSNumber numberWithUnsignedInteger:str2Lenth];
        [array addObject:str2Number];
        
        
        NSLog(@"%@",array);
        
    }
    return 0;
}

