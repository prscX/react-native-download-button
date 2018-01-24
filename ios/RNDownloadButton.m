
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
    NSNumber *lineWidth = [json objectForKey: @"lineWidth"];

    NSString *tickColor = [json objectForKey: @"tickColor"];
    NSString *tintColor = [json objectForKey: @"tintColor"];
    
    FFCircularProgressView *downloadButton = [[FFCircularProgressView alloc] initWithFrame:CGRectMake(0, 0, [size floatValue], [size floatValue])];
    downloadButton.reactTag = view.reactTag;
   downloadButton.lineWidth = [lineWidth floatValue];
    downloadButton.tintColor = [RNDownloadButton colorFromHexCode: tintColor];
   downloadButton.tickColor = [RNDownloadButton colorFromHexCode: tickColor];
    
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


+ (UIColor *) colorFromHexCode:(NSString *)hexString {
    NSString *cleanString = [hexString stringByReplacingOccurrencesOfString:@"#" withString:@""];
    if([cleanString length] == 3) {
        cleanString = [NSString stringWithFormat:@"%@%@%@%@%@%@",
                       [cleanString substringWithRange:NSMakeRange(0, 1)],[cleanString substringWithRange:NSMakeRange(0, 1)],
                       [cleanString substringWithRange:NSMakeRange(1, 1)],[cleanString substringWithRange:NSMakeRange(1, 1)],
                       [cleanString substringWithRange:NSMakeRange(2, 1)],[cleanString substringWithRange:NSMakeRange(2, 1)]];
    }
    if([cleanString length] == 6) {
        cleanString = [cleanString stringByAppendingString:@"ff"];
    }
    
    unsigned int baseValue;
    [[NSScanner scannerWithString:cleanString] scanHexInt:&baseValue];
    
    float red = ((baseValue >> 24) & 0xFF)/255.0f;
    float green = ((baseValue >> 16) & 0xFF)/255.0f;
    float blue = ((baseValue >> 8) & 0xFF)/255.0f;
    float alpha = ((baseValue >> 0) & 0xFF)/255.0f;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:alpha];
}


@end
  
