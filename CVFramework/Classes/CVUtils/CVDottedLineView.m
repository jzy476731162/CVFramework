//
//  CVDottedLineView.m
//
//
//  Created by Carl Ji on 2018/3/27.
//  Copyright © 2018年 . All rights reserved.
//

#import "CVDottedLineView.h"

@implementation CVDottedLineView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initBackgroundColor];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self initBackgroundColor];
    }
    return self;
}

- (void)prepareForInterfaceBuilder {
    [self initBackgroundColor];
}

- (void)initBackgroundColor {
    if (!self.backgroundColor) {
        self.backgroundColor = [UIColor clearColor];
    }
    if (!self.lineColor) {
        self.lineColor = [UIColor blackColor];
    }
}

- (void)drawRect:(CGRect)rect {
    UIBezierPath *path = [UIBezierPath new];
    if (_lineDirection == DotLineDirectionUnknown) {
        if (rect.size.width > rect.size.height) {
            _lineDirection = DotLineDirectionHorizontal;
        }else if (rect.size.height > rect.size.width) {
            _lineDirection = DotLineDirectionVertical;
        }else {
            return;
        }
    }
    
    CGPoint startPoint = CGPointZero;
    CGPoint endPoint = CGPointZero;
    CGFloat lineWidth = 1;
    if (_lineDirection == DotLineDirectionHorizontal) {
        lineWidth = rect.size.height;
        endPoint = CGPointMake(rect.size.width, 0);
    }else if (_lineDirection == DotLineDirectionVertical) {
        lineWidth = rect.size.width;
        endPoint = CGPointMake(0, rect.size.height);
    }
    path.lineWidth = lineWidth;
    
    [path moveToPoint:startPoint];
    [path addLineToPoint:endPoint];
    
    CGFloat dash[] = {3, 3};
    if (self.lineLength.count >= 2) {
        CGFloat dash[self.lineLength.count];
        for (int i = 0; i < self.lineLength.count; i++) {
            dash[i] = [self.lineLength[i] floatValue];
        }
    }
    
    [path setLineDash:dash count:1 phase:0];
    [path setLineCapStyle:kCGLineCapButt];
    
    [self.lineColor setStroke];
    [path stroke];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
