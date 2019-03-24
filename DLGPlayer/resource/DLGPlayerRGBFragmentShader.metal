//
//  DLGPlayerRGBFragmentShader.metal
//  DLGPlayer
//
//  Created by Albert Park on 3/23/19.
//

#include <metal_stdlib>
using namespace metal;

fragment half4 basic_fragment() { // 1
    return half4(1.0);              // 2
}

fragment half4 paint_rgb(half4 dst_color [[color(0)]])
{
    return dst_color;
}
