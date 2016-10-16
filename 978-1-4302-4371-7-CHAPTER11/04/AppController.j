@import <Foundation/CPObject.j>

@implementation AppController : CPObject{
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification{
	
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero()
												styleMask:CPBorderlessBridgeWindowMask];

	var contentView = [theWindow contentView];

    var label = [[CPTextField alloc] initWithFrame:CGRectMakeZero()];

    [label setStringValue:@"Hello World!"];
    [label setFont:[CPFont boldSystemFontOfSize:24.0]];
    [label sizeToFit];
    [label setCenter:[contentView center]];

    [contentView addSubview:label];

    [theWindow orderFront:self];
}

@end
