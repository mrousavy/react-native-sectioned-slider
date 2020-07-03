#import "SectionedSliderBridge.h"
#import "React/RCTViewManager.h"

@interface RCT_EXTERN_MODULE(SectionedSliderViewManager, RCTViewManager)

RCT_EXPORT_VIEW_PROPERTY(sections, NSNumber)
RCT_EXPORT_VIEW_PROPERTY(selectedSection, NSNumber)
RCT_EXPORT_VIEW_PROPERTY(sliderBackgroundColor, UIColor)
RCT_EXPORT_VIEW_PROPERTY(sliderColor, UIColor)

@end
