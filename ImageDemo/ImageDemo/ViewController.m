//
//  ViewController.m
//  ImageDemo
//
//  Created by Carl on 2017/7/8.
//  Copyright © 2017年 Carl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
    @property (strong, nonatomic) UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect screenBounds = [UIScreen mainScreen].bounds;
    
    UIImage *image = [UIImage imageNamed:@"IMG_2950.JPG"];
    CGSize displaySize = CGSizeMake(screenBounds.size.width, screenBounds.size.width * image.size.height / image.size.width);
    self.imageView = [[UIImageView alloc] init];
    self.imageView.frame = CGRectMake(0, 20, displaySize.width, displaySize.height);
    self.imageView.image = image;
    [self.view addSubview:self.imageView];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
