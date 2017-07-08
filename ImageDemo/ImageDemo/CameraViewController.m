//
//  CameraViewController.m
//  ImageDemo
//
//  Created by Carl on 2017/7/8.
//  Copyright © 2017年 Carl. All rights reserved.
//

#import "CameraViewController.h"

@interface CameraViewController ()

@end

@implementation CameraViewController
    
-(void)loadView {
    [super loadView];
    
    UIView *view=[[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    view.alpha=1.0f;
    view.backgroundColor=[UIColor whiteColor];
    self.view=view;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeSystem];
    [backBtn setTitle:@"<" forState:UIControlStateNormal];
    [backBtn setBackgroundColor:[UIColor colorWithRed:0.8f green:0.8f blue:0.8f alpha:0.5f]];
    [backBtn setFrame:CGRectMake(0, 20, 65, 30)];
    [backBtn addTarget:self action:@selector(backLastViewController) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:backBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
- (void)backLastViewController {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
