//
//  DLGOpenGLPlayerView.m
//  DLGPlayer
//
//  Created by Albert Park on 3/3/19.
//

#import "DLGOpenGLPlayerView.h"
#import "DLGOpenGLViewRenderer.h"
#import "DLGPlayer.h"

@implementation DLGOpenGLPlayerView

+ (Class)layerClass {
    return [CAEAGLLayer class];
}


- (BOOL)initVars {
    DLGOpenGLViewRenderer * renderer = [[DLGOpenGLViewRenderer alloc] initWithView:self];
    self.player = [[DLGPlayer alloc] initWithRenderer:renderer];
    self.renderer = renderer;;
    return YES;
}

@end
