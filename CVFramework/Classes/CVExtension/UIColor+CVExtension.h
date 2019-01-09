//
//  UIColor+CVExtension.h
//  CVFramework
//
//  Created by Carl Ji on 2019/1/9.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (CVExtension)
+ (nonnull UIColor *)colorWithHexString:(NSString *)hexString;
+ (nonnull UIColor *)colorWithHexString: (nonnull NSString *)color alpha:(CGFloat) alpha;
- (NSString *)hexString;
@end

NS_ASSUME_NONNULL_END
