//
//  DLGMetalPlayerView.m
//  DLGPlayer
//
//  Created by Albert Park on 3/3/19.
//

#import "DLGMetalPlayerView.h"
#import "DLGMetalViewRenderer.h"
#import <QuartzCore/QuartzCore.h>
#import <Metal/Metal.h>
#import <Metal/MTLBuffer.h>

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
