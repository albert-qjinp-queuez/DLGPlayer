//
//  DLGMetalPlayerView.m
//  DLGPlayer
//
//  Created by Albert Park on 3/3/19.
//

#import "DLGMetalPlayerView.h"
#import "DLGMetalViewRenderer.h"

@implementation DLGMetalPlayerView

+ (Class)layerClass {
    return [CAMetalLayer class];
}


- (BOOL)initVars {
    DLGMetalViewRenderer * renderer = [[DLGMetalViewRenderer alloc] initWithView:self];
    self.player = [[DLGPlayer alloc] initWithRenderer:renderer];
    self.renderer = renderer;;
    return YES;
}

@end
