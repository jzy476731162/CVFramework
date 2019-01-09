//
//  CVDottedLineView.h
//  
//
//  Created by Carl Ji on 2018/3/27.
//  Copyright © 2018年 . All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, DotLineDirection) {
    DotLineDirectionUnknown,
    DotLineDirectionVertical,
    DotLineDirectionHorizontal,
};
@interface CVDottedLineView : UIView

@property (nonatomic, strong) IBInspectable UIColor *lineColor;

/**
 @optional
 dot line length & blank length
 @[3.0,1.0]
 */
@property (nonatomic, strong) IBInspectable NSArray *lineLength;

@property (nonatomic, assign) IBInspectable DotLineDirection lineDirection;
@end
