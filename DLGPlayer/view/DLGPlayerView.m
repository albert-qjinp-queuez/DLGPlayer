//
//  DLGPlayerView.m
//  DLGPlayer
//
//  Created by Liu Junqi on 05/12/2016.
//  Copyright © 2016 Liu Junqi. All rights reserved.
//

#import "DLGPlayerView.h"
#import "DLGPlayerVideoFrame.h"
#import "DLGPlayer.h"
#import "DLGOpenGLViewRenderer.h"


@interface DLGPlayerView ()
@end

@implementation DLGPlayerView

- (id)init {
    self = [super init];
    if (self) {
        if (![self initVars]) {
            self = nil;
            return nil;
        }
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        if (![self initVars]) {
            self = nil;
            return nil;
        }
    }
    return self;
}

- (void)dealloc {
    NSLog(@"DLGPlayerView dealloc");
}

- (void)layoutSubviews {
    [super layoutSubviews];
    if (self.renderer) {
        [self.renderer reload];
    }
    [self reload];
}

- (void)reload {
    [self.renderer reload];
}

- (BOOL)initVars {
    DLGOpenGLViewRenderer * renderer = [[DLGOpenGLViewRenderer alloc] initWithView:self];
    self.player = [[DLGPlayer alloc] initWithRenderer:renderer];
    self.renderer = renderer;;
    return YES;
}

- (void)setContentMode:(UIViewContentMode)contentMode {
    [super setContentMode:contentMode];
    [self.renderer updatePosition];
    [self.renderer updateScale];
    [self.renderer updateRotationMatrix];
}


@end
