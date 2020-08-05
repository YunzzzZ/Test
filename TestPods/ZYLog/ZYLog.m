//
//  ZYLog.m
//  TestPods
//
//  Created by ZY on 2020/8/5.
//  Copyright © 2020 KDWL. All rights reserved.
//

#import "ZYLog.h"

@implementation ZYLog

+ (void)zyLog:(NSString *)string {
    NSLog(@"log_string %@", string);
}

+ (int)randomStr {
    int x = arc4random() % 100;
    return x;
}
@end
