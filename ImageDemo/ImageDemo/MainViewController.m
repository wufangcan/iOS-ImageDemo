//
//  MainViewController.m
//  ImageDemo
//
//  Created by Carl on 2017/7/8.
//  Copyright © 2017年 Carl. All rights reserved.
//

#import "MainViewController.h"
#import "ImageEditViewController.h"
#import "CameraViewController.h"
#import "pthread_test.h"

@interface MainViewController ()
    
@end

@implementation MainViewController
    
- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    
    UIColor *btnBackgroundColor = [UIColor colorWithRed:0.5f green:0.5f blue:0.5f alpha:1.0f];
    
    UIButton *openCameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [openCameraBtn setTitle:@"打开相机" forState:UIControlStateNormal];
    [openCameraBtn setBackgroundColor:btnBackgroundColor];
    [openCameraBtn setFrame:CGRectMake(screenBounds.size.width * 0.2, screenBounds.size.height * 0.2f, screenBounds.size.width * 0.6f, screenBounds.size.height * 0.1f)];
    [openCameraBtn addTarget:self action:@selector(actionOpenCamera) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:openCameraBtn];
    
    
    UIButton *openImageEditBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [openImageEditBtn setTitle:@"打开图片编辑" forState:UIControlStateNormal];
    [openImageEditBtn setBackgroundColor:btnBackgroundColor];
    [openImageEditBtn setFrame:CGRectMake(screenBounds.size.width * 0.2, screenBounds.size.height * 0.35f, screenBounds.size.width * 0.6f, screenBounds.size.height * 0.1f)];
    [openImageEditBtn addTarget:self action:@selector(actionOpenImageEdit) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:openImageEditBtn];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
- (void)actionOpenCamera {
    CameraViewController *cameraViewController = [[CameraViewController alloc] init];
    [self.navigationController pushViewController:cameraViewController animated:YES];
    [self presentViewController:cameraViewController animated:YES completion:nil];
}

- (void)actionOpenImageEdit {
    ImageEditViewController *imageEditViewController = [[ImageEditViewController alloc] init];
    [self.navigationController pushViewController:imageEditViewController animated:YES];
//    [self presentViewController:imageEditViewController animated:YES completion:nil];
}
    
    
@end
