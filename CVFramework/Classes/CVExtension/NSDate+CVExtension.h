//
//  NSDate+CVExtension.h
//  CVFramework
//
//  Created by Carl Ji on 2019/1/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (CVExtension)

- (NSString *)formattedDate:(NSString *)formattedString;
- (NSString *)formattedDateYMDDot;
- (NSString *)formattedDateYMDLine;
- (NSString *)formattedDateMDHMDot;
- (NSString *)formattedDateDot;

@end

NS_ASSUME_NONNULL_END
