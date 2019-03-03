//
//  DLGPlayerClass.h
//  DLGPlayer
//
//  Created by Liu Junqi on 09/12/2016.
//  Copyright © 2016 Liu Junqi. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "DLGPlayerDef.h"
#import "DLGRenderer.h"

typedef void (^onPauseComplete)(void);

@interface DLGPlayer : NSObject

- (id)initWithRenderer:(DLGRenderer*)renderer;
@property (readonly, strong) DLGRenderer *renderer;

@property (nonatomic) double minBufferDuration;
@property (nonatomic) double maxBufferDuration;
@property (nonatomic) double position;
@property (nonatomic) double duration;
@property (nonatomic) BOOL opened;
@property (nonatomic) BOOL playing;
@property (nonatomic) BOOL buffering;
@property (nonatomic, strong) NSDictionary *metadata;

- (void)open:(NSString *)url;
- (void)close;
- (void)play;
- (void)pause;

@end
