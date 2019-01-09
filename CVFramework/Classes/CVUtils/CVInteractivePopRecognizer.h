//
//  CVInteractivePopRecognizer.h
//
//
//  Created by Carl Ji on 2018/3/27.
//  Copyright © 2018年 . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CVInteractivePopRecognizer : NSObject <UIGestureRecognizerDelegate>
@property (nonatomic, strong) UINavigationController *navigationController;

- (instancetype)initWithController:(UINavigationController *)navigation;
@end
