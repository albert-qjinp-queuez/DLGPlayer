//
//  DLGMetalRenderer.h
//  DLGPlayer
//
//  Created by Albert Park on 3/3/19.
//

#import <DLGPlayer/DLGPlayer.h>

NS_ASSUME_NONNULL_BEGIN
@class DLGPlayerView;
@interface DLGMetalViewRenderer : DLGRenderer
@property (nonatomic, strong) DLGPlayerView * view;

-(instancetype)initWithView:(DLGPlayerView*)view ;
@end

NS_ASSUME_NONNULL_END
