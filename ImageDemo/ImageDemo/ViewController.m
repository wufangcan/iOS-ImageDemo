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
    
    
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftButton setTag:0];
    [leftButton setTitle:@"批处理" forState:UIControlStateNormal];
    [leftButton setBackgroundColor:[UIColor colorWithRed:0.5f green:0.5f blue:0.5f alpha:1.0f]];
    [leftButton setFrame:CGRectMake(0, screenBounds.size.height - 80, screenBounds.size.width / 2 - 10, 80)];
    [leftButton addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:leftButton];
    
    
    UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightButton setTag:1];
    [rightButton setTitle:@"对比" forState:UIControlStateNormal];
    [rightButton setBackgroundColor:[UIColor colorWithRed:0.5f green:0.5f blue:0.5f alpha:1.0f]];
    [rightButton setFrame:CGRectMake(screenBounds.size.width / 2 + 10, screenBounds.size.height - 80, screenBounds.size.width / 2, 80)];
    [rightButton addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:rightButton];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
    
- (void)click:(UIButton *)button {
    switch (button.tag) {
        case 0:
            NSLog(@"left button touch down.");
        break;
        case 1:
            NSLog(@"right button touch down.");
        break;
        default:
        break;
    }
}
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
    
@end
