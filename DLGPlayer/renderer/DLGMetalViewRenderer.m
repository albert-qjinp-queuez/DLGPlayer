//
//  DLGMetalRenderer.m
//  DLGPlayer
//
//  Created by Albert Park on 3/3/19.
//

#import "DLGMetalViewRenderer.h"
#import "DLGPlayerView.h"

@interface DLGMetalViewRenderer(){
    CAMetalLayer *_metalLayer;
}

@end

@implementation DLGMetalViewRenderer

-(instancetype)initWithView:(DLGPlayerView*)view {
    self = [super init];
    if (self) {
        self.view = view;
        if (![self initVars]) {
            self = nil;
            return nil;
        }
        view.contentMode = UIViewContentModeScaleAspectFit;
    }
    return self;
}


-(BOOL) initVars {
    _metalLayer = (CAMetalLayer *)self.view.layer;
    _metalLayer.opaque = YES;
    
    return NO;
}
@end
