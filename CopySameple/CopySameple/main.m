//
//  main.m
//  CopySameple
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *str1 = [NSString stringWithFormat:@"HelloQingYun"];
        
        NSString *str2 = [str1 copy];
        
        
        NSMutableString *str3 = [str1 mutableCopy];
        [str3 appendString:@"Good"];
        
        NSMutableString *str4 = [str3 copy];
        [str4 appendString:@"Night"];
        NSLog(@"%@",str4);
        
        NSLog(@"%@",str3);
        NSLog(@"%p,%p",str1,str2);
        
//      当对象是不可变对象的时候， 如果调用copy协议的实现，本身还是不可变的
//        当对象是不可变对的时候， 如果调用mutableCopy协议的实现，会转变成可变的
//        当对象是可变对象的时候， 如果调用copy协议的实现，本身从可变转换成了不可变对象
//        当对象是可变对象的时候， 如果调用了mutableCopy协议的实现， 本身还是可变对象
        
    }
    return 0;
}

