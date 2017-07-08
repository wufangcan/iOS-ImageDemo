//
//  GLUtils.h
//  ImageDemo
//
//  Created by Carl on 2017/7/8.
//  Copyright © 2017年 Carl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>

@interface GLUtils : NSObject

+ (GLuint)loadProgramWithVertexShaderFile:(NSString *)vertShaderPathname fragmentShaderFile:(NSString *)fragShaderPathname;

    
@end
