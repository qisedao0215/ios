//
//  NSString+NumberConvenience.h
//  NumberConverWithCato
//
//  Created by qingyun on 14-3-18.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (NumberConvenience)
//给NSString添加了一个类别， 这个类别的功能是给NSString添加一个新的功能：将字符串的长度从
//NSUInteger 转化成NSNumber*
- (NSNumber*)lenthAsNumber;

- (void)length;
@end
