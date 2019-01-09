//
//  CVBaseTableViewCell.m
//  CVFramework
//
//  Created by Carl Ji on 2019/1/9.
//

#import "CVBaseTableViewCell.h"

@implementation CVBaseTableViewCell

+ (NSString *)reuseID
{
    
    return NSStringFromClass([self class]);
}

+ (UINib *)nib
{
    return [UINib nibWithNibName:NSStringFromClass([self class]) bundle:nil];
}

+ (CGFloat)layoutHeightWithRenderObject:(id)renderObject
{
    
    return 44;
}

- (void)configureWithRenderObject:(id<CVTableViewRenderObjectDelegate>)renderObject
{
    
}

@end
