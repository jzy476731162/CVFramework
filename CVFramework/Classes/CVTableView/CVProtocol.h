//
//  CVProtocol.h
//  CVFramework
//
//  Created by Carl Ji on 2019/1/9.
//

#ifndef CVProtocol_h
#define CVProtocol_h

#import <UIKit/UIKit.h>

@protocol CVTableViewRenderObjectDelegate <NSObject>

- (id)dataObject;

@end

@protocol CVTableViewCellLayout <NSObject>

+ (CGFloat)layoutHeightWithRenderObject:(id)renderObject;

@end
#endif /* CVProtocol_h */
