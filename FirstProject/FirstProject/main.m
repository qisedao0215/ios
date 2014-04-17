//
//  main.m
//  FirstProject
//
//  Created by qingyun on 14-3-13.
//  Copyright (c) 2014年 河南青云信息技术有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{
//  NSFileManager主要功能是操作我操作的目录和文件，包括对文件的创建，删除，修改
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSString *home;
//    stringByExpandingTildeInPath功能是将〜转换成具体的用户主目录
//    home = [@"~" stringByExpandingTildeInPath];
    home = @"/Users/qingyun/Desktop/temp";
    NSLog(@"Current home directory is %@",home);
    
    NSDirectoryEnumerator *direEnum;
//    通过文件管理对象， 可以拿一个枚举，通这个枚举我们可以遍历，目录下的所有内容。
    direEnum = [fileManager enumeratorAtPath:home];
    
    NSString *fileName;
    
//    创建这个数组的目的，是将符合我们查找需求的文件名，放到这个数组里， 以便后续做相应的处理。
//    在这个demo里我们的处理只是仅仅打印出来而已。
    NSMutableArray *files = [NSMutableArray arrayWithCapacity:42];
    
//    这个循环的目的， 是通枚举将指定的目录下的所有文件取出来， 然后判断一下，这个文件是不是我们要找的。
//    我的要找的文件的条是：它是一个oc的源文件， 也就是这个文件必须是以.m结尾的。
    while (fileName = [direEnum nextObject]) {
//        pathExtension方法的功能是， 返回指定文件的扩展名
        NSString *extensionName = [fileName pathExtension];
//        然后判断，扩展名是否是m.如果是则得到这个就是我们找的文件， 然后将其放数组files里。
        if ([extensionName isEqualToString:@"m"]) {
            [files addObject:fileName];
        }
    }
    
//    最后，我们再通过，数组的枚举，来遍历数组，将存放的结果打印出来。
    NSEnumerator *fileEnum;
    fileEnum = [files objectEnumerator];
    while (fileName = [fileEnum nextObject]) {
        NSLog(@"%@",fileName);
    }
    
    return 0;
}

