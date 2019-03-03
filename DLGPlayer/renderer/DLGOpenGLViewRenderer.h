//
//  DLGOpenGLRenderer.h
//  DLGPlayer
//
//  Created by Albert Park on 3/3/19.
//

#import "DLGRenderer.h"
#import <UIKit/UIKit.h>

#import <QuartzCore/QuartzCore.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>

NS_ASSUME_NONNULL_BEGIN


@class DLGPlayerView
;

@interface DLGOpenGLViewRenderer : DLGRenderer
@property (nonatomic, strong) DLGPlayerView * view;

-(instancetype)initWithView:(DLGPlayerView*)view;
@end

NS_ASSUME_NONNULL_END
