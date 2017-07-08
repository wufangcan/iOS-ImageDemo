//
//  CameraViewController.h
//  ImageDemo
//
//  Created by Carl on 2017/7/8.
//  Copyright © 2017年 Carl. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>
#import <AVFoundation/AVFoundation.h>

@interface CameraViewController : GLKViewController<AVCaptureVideoDataOutputSampleBufferDelegate>

@end
