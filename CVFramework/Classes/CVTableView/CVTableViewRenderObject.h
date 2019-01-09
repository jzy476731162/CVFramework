//
//  CVTableViewRenderObject.h
//  CVFramework
//
//  Created by Carl Ji on 2019/1/9.
//

#import <Foundation/Foundation.h>

#import "CVProtocol.h"

@interface CVTableViewRenderObject : NSObject <CVTableViewRenderObjectDelegate>

@property (nonatomic) NSString *renderID;

@property (nonatomic) NSString *reuseCellID;

@property (nonatomic) Class<CVTableViewCellLayout> cellClass;

@property (nonatomic) id        dataObject;

@property (nonatomic) CGFloat   layoutWidth;
@property (nonatomic) CGFloat   layoutHeight;

@property (nonatomic) NSInteger tag;

+ (instancetype)renderObjectWithRenderID:(NSString *)renderID
                             reuseCellID:(NSString *)reuseCellID
                               cellClass:(Class<CVTableViewCellLayout>)cellClass
                              dataEntity:(id)dataObject
                            shouldLayout:(BOOL)shoudLayout;

- (CGFloat)layout;

@end
