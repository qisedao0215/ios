//
//  main.m
//  Foundation
//
//  Created by qingyun on 14-3-13.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

//    创建不可变字典的方法：需要注意的时候，参数对象在前，key在后， 同时还需要注意在参数的后面，需要加nil表示结束。
//    NSDictionary *qingyunStucents = [NSDictionary dictionaryWithObjectsAndKeys:@"KunPen",@"001",@"YongHui",@"002",@"AJin",@"003",@"NianHao",@"004", nil];
    
//  使用新语法来定义字典， 需要注意的是两点：1､键key在前， Value在后， 2.在定义的最后不能再添加nil
    NSDictionary *qingyunStucents = @{@"002": @"KunPeng",@"001":@"YongHui",@"003":@"NianHao"};
    NSLog(@"Students num and name is %@",qingyunStucents);
    
    NSString *num3StudentName = [qingyunStucents objectForKey:@"003"];
    NSLog(@"num3 student name is %@",num3StudentName);
    
    
    NSMutableDictionary *dicMutable = [NSMutableDictionary dictionaryWithCapacity:42];
    NSLog(@"Before setObject the dicMutable is %@",dicMutable);
    [dicMutable setObject:@"MianJie" forKey:@"005"];
    [dicMutable setObject:@"XingZhi" forKey:@"006"];
    [dicMutable setObject:@"JianGuo" forKey:@"007"];
    NSLog(@"mutable dictionary value is %@",dicMutable);
    
    
//    如何删除字典里的对象
//    删除字典里的所有对象
//    [dicMutable removeAllObjects];
    
    
    
//    根据key值删除其对应的对象
//    [dicMutable removeObjectForKey:@"007"];
    
//  在这里removeObjectsForKeys的参数是指， 删除字典的值，这些值的key全部是参数数组所含的内容
    [dicMutable removeObjectsForKeys:@[@"005",@"006"]];
    NSLog(@"%@",dicMutable);
    
    
    int age1 = 22;
    int age2 = 23;
    int age3 = 25;
    
//    如果想把基本数据类型的对象存放到数组里，就需要转换成NSNumber类型的对象。
//    将基本数据类型转换成NSNumber类型的过程地，我们叫装箱。
    NSNumber *numberAge1 = [NSNumber numberWithInt:age1];
    NSNumber *numberAge2 = [NSNumber numberWithInt:age2];
    NSNumber *numberAge3 = [NSNumber numberWithInt:age3];
    
    NSArray *ages = @[numberAge1,numberAge2,numberAge3];
    
//  将装箱得到的结果， 转换成具体的数据类型，这个过程叫做拆箱
    int sumAge = [ages[0] intValue] + [ages[1] intValue];
    NSLog(@"%d",sumAge);
    
    
    
    //const介绍
    
//    NSString const * strName = @"ZhangSan";
//    NSLog(@"strName is %@",strName);
//    
//    strName = @"WangErMazi";
//    NSLog(@"strName is %@",strName);
    
//    对于常量关键字， 放在类型前面与放在类型后和＊前所表达的意思是一样的。就是指针指向的内存空间的值不能改变
    int myInt = 10;
    const int  * pMyInt = &myInt;
//  由于指针pMyInt把指向的内容，由const限定了， 所以这个指针指向的内容不能改变
//    *pMyInt = 100;
    NSLog(@"The pMyInt pointer to value is %d",*pMyInt);
    
    
//    int anotherInt = 1000;
//  如果只是把const放到类型前面，或者类型后面＊号前面。这个时候， 他不能限定指针重新指向内存其它的地址。
//    pMyInt = &anotherInt;
//    NSLog(@"second The pMyInt pointer to value is %d",*pMyInt);
    
//    NSValue 的使用方法
    
    
    NSMutableArray *arrayForValue = [NSMutableArray arrayWithCapacity:1];
    NSRect rect = {100,20,200,300};
    
    //功能是将rect转换成NSValue对象
//    第一个参数：是指被转换的数据的地址。
//    第二个参数：是描述被转换的数据的数据类型是什么，它是c风格的字符串类型，在这里不需要我们来提供，可以使用编译器指@enode来处理
//    NSValue *value = [NSValue valueWithBytes:&rect objCType:@encode(NSRect)];
//    [arrayForValue addObject:value];
//    NSLog(@"%@",arrayForValue);
//    
//    NSRect anotherRect;
//    [value getValue:&anotherRect];
//    
////    @encode处理之后， 肯定返回的const char *类型
//    const char *intType = @encode(int);
//    NSLog(@"%s",intType);
//    
//    const char *flotType = @encode(float);
//    NSLog(@"%s",flotType);
//    
//    const char *nsarrayType = @encode(NSArray);
//    NSLog(@"%s",nsarrayType);
//    
//    const char *dicType = @encode(NSMutableArray);
//    NSLog(@"%s",dicType);
//    
//    NSRect thirdRect = [value rectValue];
    
    
//    第二种将NSRect类型的对象转换成NSValue对象的方法
    NSValue *value = [NSValue valueWithRect:rect];
    [arrayForValue addObject:value];
    
    
//    第二种拆箱的方法， 也是直接从value 里拆箱
//    NSRect fourthRect = [value rectValue];
    NSDictionary *tires = @{
                            @"front-left":[NSNull null],
                            @"front-right":@"右前轮",
                            @"back-left":@"左后轮",
                            @"back-right":@"右后轮"
                            };
    
    id left = [tires objectForKey:@"front-left"];
    if (left == [NSNull null]) {
        NSLog(@"这是一辆三轮车");
    }
    return 0;
}

