@import <Foundation/CPObject.j>

@implementation AppController : CPObject{
}

var label;
var contentView;

- (void)applicationDidFinishLaunching:(CPNotification)aNotification{
	
	var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero()
	                                            styleMask:CPBorderlessBridgeWindowMask];

	contentView = [theWindow contentView];

	var frame = CGRectMake(0, 13.0, 150.0, 24.0);

    label = [[CPTextField alloc] initWithFrame:frame];

    [label setStringValue:@"Press the Button"];
    [label setFont:[CPFont boldSystemFontOfSize:24.0]];
    [label sizeToFit];
    [label setCenter:[contentView center]];
	[contentView addSubview:label];

	frame = CGRectMake(CGRectGetWidth([contentView bounds])/2.0 - 40, CGRectGetMaxY([label frame]) + 10, 80, 24)
	var button = [[CPButton alloc] initWithFrame: frame];
	[button setAutoresizingMask:CPViewMinXMargin | 
	                            CPViewMaxXMargin | 
	                            CPViewMinYMargin | 
	                            CPViewMaxYMargin];
	[button setTitle:"Make Gray"];
	[button setTarget:self];
	[button setAction:@selector(changeBackground:)];                
	[contentView addSubview:button];

    [theWindow orderFront:self];
}

- (void)changeBackground:(id)aSender{
	var c = [CPColor lightGrayColor];
	[contentView setBackgroundColor:c];
    [label setStringValue:@"Color Changed!"];
}

@end
