//
//  CVInteractivePopRecognizer.m
//  
//
//  Created by Carl Ji on 2018/3/27.
//  Copyright © 2018年 . All rights reserved.
//

#import "CVInteractivePopRecognizer.h"

@implementation CVInteractivePopRecognizer
- (instancetype)initWithController:(UINavigationController *)navigation {
    if (self = [super init]) {
        self.navigationController = navigation;
    }
    return self;
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer {
    return self.navigationController.viewControllers.count > 1;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {
    return true;
}

- (void)dealloc {
    self.navigationController.interactivePopGestureRecognizer.delegate = nil;
}
@end
