//
//  ViewController.m
//  TestPods
//
//  Created by ZY on 2020/8/5.
//  Copyright © 2020 KDWL. All rights reserved.
//

#import "ViewController.h"
#import "ZYLog.h"
@interface ViewController ()

@property (nonatomic, weak) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"点击测试" forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 100, 80, 60);
    [btn addTarget:self action:@selector(testAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor = [UIColor redColor];
    label.frame = CGRectMake(100, 200, 80, 60);
    [self.view addSubview:label];
    self.label = label;
}

- (void)testAction {
    int x = [ZYLog randomStr];
    self.label.text = [NSString stringWithFormat:@"%d", x];
}

@end
