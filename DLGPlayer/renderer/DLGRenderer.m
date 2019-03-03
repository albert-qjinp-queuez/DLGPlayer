//
//  DLGRenderer.m
//  DLGPlayer
//
//  Created by Albert Park on 3/3/19.
//

#import "DLGRenderer.h"

@implementation DLGRenderer

- (void)render:(DLGPlayerVideoFrame *)frame{
    
}

- (void)clear{
    
}
-(void)reload{
    
}
- (void)updatePosition{
    
}


#pragma mark - setter getter

- (void)setContentSize:(CGSize)contentSize {
    _contentSize = contentSize;
    [self updatePosition];
    [self updateScale];
    [self updateRotationMatrix];
}

- (void)setRotation:(CGFloat)rotation {
    _rotation = rotation;
    [self reload];
}

- (void)setIsYUV:(BOOL)isYUV {
    _isYUV = isYUV;
    [self reload];
}

@end
