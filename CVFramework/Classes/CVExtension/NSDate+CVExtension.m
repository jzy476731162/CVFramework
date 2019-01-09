//
//  NSDate+CVExtension.m
//  CVFramework
//
//  Created by Carl Ji on 2019/1/9.
//

#import "NSDate+CVExtension.h"

@implementation NSDate (CVExtension)

+(NSDateFormatter*)shareFormatter{
    static NSDateFormatter * formatter ;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        formatter = [NSDateFormatter new];
    });
    return formatter;
}

- (NSString *)formattedDate:(NSString *)formattedString {
    NSDateFormatter *formatter = [[self class] shareFormatter];
    formatter.dateFormat = formattedString;
    return [formatter stringFromDate:self];
}

- (NSString *)formattedDateYMDDot {
    return [self formattedDate:@"yyyy.MM.dd"];
}

- (NSString *)formattedDateYMDLine {
    return [self formattedDate:@"yyyy-MM-dd"];
}

- (NSString *)formattedDateMDHMDot {
    return [self formattedDate:@"MM.dd HH:mm"];
}

- (NSString *)formattedDateDot {
    return [self formattedDate:@"yyyy.MM.dd HH:mm:ss"];
}

@end
