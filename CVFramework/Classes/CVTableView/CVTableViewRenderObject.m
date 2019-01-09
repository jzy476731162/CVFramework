//
//  CVTableViewRenderObject.m
//  CVFramework
//
//  Created by Carl Ji on 2019/1/9.
//

#import "CVTableViewRenderObject.h"

@implementation CVTableViewRenderObject

+ (instancetype)renderObjectWithRenderID:(NSString *)renderID
                             reuseCellID:(NSString *)reuseCellID
                               cellClass:(Class<CVTableViewCellLayout>)cellClass
                              dataEntity:(id)dataObject
                            shouldLayout:(BOOL)shoudLayout
{
    CVTableViewRenderObject *renderObject = [self new];
    
    [renderObject setRenderID:renderID];
    [renderObject setReuseCellID:reuseCellID];
    [renderObject setDataObject:dataObject];
    
    [renderObject setCellClass:cellClass];
    
    if (shoudLayout) {
        [renderObject setLayoutHeight:[cellClass layoutHeightWithRenderObject:renderObject]];
    }
    
    return renderObject;
}

- (CGFloat)layout
{
    if (_layoutHeight > 0) {
        
        return _layoutHeight;
    }
    
    _layoutHeight = [[self cellClass] layoutHeightWithRenderObject:self];
    
    return _layoutHeight;    
}

@end
