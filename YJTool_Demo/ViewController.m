//
//  ViewController.m
//  YJTool_Demo
//
//  Created by yangjian on 2018/11/13.
//  Copyright © 2018 zhangshuyue. All rights reserved.
//
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#import "ViewController.h"
#import "ShowWarnView.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    UIView *mainView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH-100, 200)];
    mainView.backgroundColor = [UIColor whiteColor];
    mainView.layer.cornerRadius = 5;
    mainView.center = self.view.center;
    [self.view addSubview:mainView];
    [YJAllmethod addShadowToView:mainView color:RGB(76, 76, 76) shadowWidth:5 shadowType:UIShadowSideTypeRight];
    [YJAllmethod addShadowToView:mainView color:RGB(76, 76, 76) shadowWidth:5 shadowType:UIShadowSideTypeBottom];
//    ShowWarnView *vc = [[ShowWarnView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
//    vc.centerView = mainView;
//    [vc show];
//
//    UIButton *btn = [UIButton buttonWithFrame:CGRectMake(0, 100, 100, 100) backgroundColor:[UIColor redColor] image:nil title:nil titleColor:nil titleFont:16 action:@selector(btnClicked) target:self];
//    [self.view addSubview:btn];
    
    
}


-(void)btnClicked{
    NSLog(@"btn");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


@end
