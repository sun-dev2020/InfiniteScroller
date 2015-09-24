//
//  ViewController.m
//  InfiniteScroller
//
//  Created by mac on 15/9/24.
//  Copyright (c) 2015年 treebear. All rights reserved.
//

#import "ViewController.h"
#import "InfiniteScroller.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    InfiniteScroller *scroller = [[InfiniteScroller alloc] initWithFrame:[UIScreen mainScreen].bounds withDataSources:@[[UIImage imageNamed:@"photo1"],[UIImage imageNamed:@"photo2"],[UIImage imageNamed:@"photo3"]]];
    [self.view addSubview:scroller];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
