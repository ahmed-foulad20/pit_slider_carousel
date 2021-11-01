#import "PitSliderCarouselPlugin.h"
#import <pit_slider_carousel/pit_slider_carousel-Swift.h>

@implementation PitSliderCarouselPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPitSliderCarouselPlugin registerWithRegistrar:registrar];
}
@end
