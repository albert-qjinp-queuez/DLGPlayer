//
//  DLGPlayerView.h
//  DLGPlayer
//
//  Created by Liu Junqi on 05/12/2016.
//  Copyright © 2016 Liu Junqi. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DLGPlayerVideoFrame;
@class DLGPlayer;
@class DLGRenderer;

@interface DLGPlayerView : UIView

@property (nonatomic, strong) DLGPlayer * player;
@property (nonatomic, weak) DLGRenderer * renderer;

- (BOOL)initVars;
@end
