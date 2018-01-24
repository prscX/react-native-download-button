
#import "RNDownloadButton.h"

@implementation RNDownloadButton

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

- (UIView *)view
{
    UIView *view = [[UIView alloc] init];
    return view;
}


RCT_CUSTOM_VIEW_PROPERTY(props, NSDictonary *, UIView)
{
    NSNumber *size = [json objectForKey: @"size"];
    
    FFCircularProgressView *downloadButton = [[FFCircularProgressView alloc] initWithFrame:CGRectMake(0, 0, [size floatValue], [size floatValue])];
    downloadButton.reactTag = view.reactTag;
    
    [view addSubview: downloadButton];
}


RCT_CUSTOM_VIEW_PROPERTY(startAnimation, bool, UIView)
{
    bool start = json;
    if (start) {
        FFCircularProgressView *downloadButton = [[view subviews] objectAtIndex: 0];
        [downloadButton startSpinProgressBackgroundLayer];
    }
}

RCT_CUSTOM_VIEW_PROPERTY(progress, NSInteger *, UIView)
{
    float progress = [json floatValue];
    if (progress > 0) {
        progress = progress / 100;
        
        FFCircularProgressView *downloadButton = [[view subviews] objectAtIndex: 0];
        [downloadButton stopSpinProgressBackgroundLayer];
        [downloadButton setProgress: progress];
    }
}

@end
  
