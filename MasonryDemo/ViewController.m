//
//  ViewController.m
//  MasonryDemo
//
//  Created by YY on 16/3/10.
//  Copyright © 2016年 WHH. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    [self makeView1];
    [self makeView2];
}

- (void)makeView1 {
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view];
    
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(self.view);
//        make.size.mas_equalTo(CGSizeMake(200, 300));
        
        make.edges.equalTo(self.view).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
    }];
    
}

- (void)makeView2 {
    UIView *view = [UIView new];
    view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view];

    UIView *sv = [UIView new];
    sv.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:sv];

    UIView *sv1 = [UIView new];
    sv1.backgroundColor = [UIColor greenColor];
    [self.view addSubview:sv1];

    UIView *sv2 = [UIView new];
    sv2.backgroundColor = [UIColor redColor];
    [self.view addSubview:sv2];
    
    UIView *sv3 = [UIView new];
    sv3.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:sv3];
    
    [view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).with.offset(64);
        make.height.mas_equalTo(@100);
        make.left.equalTo(self.view.mas_left).with.offset(18);
        make.right.equalTo(self.view.mas_right).with.offset(-28);
    }];
    
    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view.mas_top).with.offset(25);
        make.bottom.equalTo(view.mas_bottom).with.offset(-25);
        make.left.equalTo(view.mas_left).with.offset(27);
        make.width.mas_equalTo(sv.mas_height);
    }];
    
    [sv1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(view.mas_centerY);
        make.height.mas_equalTo(30);
        make.left.equalTo(sv.mas_right).with.offset(10);
        make.width.mas_equalTo(sv2);
        
    }];
    
    [sv2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(view.mas_top).with.offset(24);
        make.right.equalTo(view.mas_right).with.offset(-25);
        make.height.mas_equalTo(30);
        make.left.equalTo(sv1.mas_right).with.offset(10);
        make.width.mas_equalTo(sv1);
    }];
    
    [sv3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(view.mas_right).with.offset(-25);
        make.height.mas_equalTo(20);
        make.top.equalTo(sv1.mas_bottom).with.offset(5);
        make.left.equalTo(sv.mas_right).with.offset(10);
        
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
