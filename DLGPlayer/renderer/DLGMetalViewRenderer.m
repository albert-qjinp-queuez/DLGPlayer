//
//  DLGMetalRenderer.m
//  DLGPlayer
//
//  Created by Albert Park on 3/3/19.
//

#import "DLGMetalViewRenderer.h"
#import "DLGPlayerView.h"
#import <Metal/Metal.h>
#import <Metal/MTLBuffer.h>

@interface DLGMetalViewRenderer(){
    CAMetalLayer *_metalLayer;
    CIContext * _context;
    
    id<MTLDevice> _device;
    
    id<MTLBuffer> _vertexBuffer;
    
    id<MTLRenderPipelineState> pipelineState;
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
    _device = MTLCreateSystemDefaultDevice();
    
    _metalLayer = (CAMetalLayer *)self.view.layer;
    _metalLayer.device = _device;
    _metalLayer.pixelFormat = MTLPixelFormatBGRA8Unorm;
    _metalLayer.framebufferOnly = YES;
    _metalLayer.frame = self.view.frame;
    _metalLayer.opaque = YES;
    _context = [CIContext contextWithMTLDevice:_device
                                       options:
  @{ kCIContextWorkingFormat : @(kCIFormatRGBAh) }];
    
    
    float _vertexData[] = {
        0.0,  1.0, 0.0,
        -1.0, -1.0, 0.0,
        1.0, -1.0, 0.0
    };
    
    NSInteger dataSize = 9 * sizeof(float);
    
    _vertexBuffer = [_device newBufferWithBytes:_vertexData length:dataSize options:MTLResourceCPUCacheModeDefaultCache];
    
    NSError * error;
    id <MTLLibrary> defaultLibrary = [_device newDefaultLibrary];
    id <MTLFunction> fragmentProgram = [defaultLibrary newFunctionWithName:@"basic_fragment"];
    id <MTLFunction> vertexProgram = [defaultLibrary newFunctionWithName:@"basic_vertex"];
    
    MTLRenderPipelineDescriptor * pipelineStateDescriptor = [MTLRenderPipelineDescriptor new];
    
    pipelineStateDescriptor.vertexFunction = vertexProgram;
    pipelineStateDescriptor.fragmentFunction = fragmentProgram;
    pipelineStateDescriptor.colorAttachments[0].pixelFormat = MTLPixelFormatBGRA8Unorm;
    
    pipelineState = [_device newRenderPipelineStateWithDescriptor:pipelineStateDescriptor error:&error];
    
    return NO;
}

- (void)render:(DLGPlayerVideoFrame *)frame{
    
}

@end
