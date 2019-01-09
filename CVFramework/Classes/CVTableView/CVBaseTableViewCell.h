//
//  CVBaseTableViewCell.h
//  CVFramework
//
//  Created by Carl Ji on 2019/1/9.
//

#import <UIKit/UIKit.h>

#import "CVProtocol.h"

@interface CVBaseTableViewCell : UITableViewCell <CVTableViewCellLayout>

+ (UINib *)nib;
+ (NSString *)reuseID;

- (void)configureWithRenderObject:(id<CVTableViewRenderObjectDelegate>)renderObject;

@end
