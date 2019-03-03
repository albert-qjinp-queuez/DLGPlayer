//
//  DLGRenderer.h
//  DLGPlayer
//
//  Created by Albert Park on 3/3/19.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class DLGPlayerVideoFrame;

@interface DLGRenderer : NSObject

@property (nonatomic) CGSize contentSize;
@property (nonatomic) CGFloat rotation;
@property (nonatomic) BOOL isYUV;
@property (nonatomic) BOOL keepLastFrame;

- (void)render:(nullable DLGPlayerVideoFrame * )frame;
- (void)clear;
- (void)reload;

- (void)updatePosition;
- (void)updateScale;
- (void)updateRotationMatrix;

@end

NS_ASSUME_NONNULL_END
