#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;
NSButton *button;

-(void)changeBackgroundColor{
    self.window.backgroundColor = [NSColor blackColor];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification{
    NSLog(@"Mac app finished launching");
    
    button = [[NSButton alloc] initWithFrame:NSMakeRect(230,200,140,40)];
    [[self.window contentView] addSubview: button];
    [button setTitle: @"Change Color"];
    [button setButtonType:NSMomentaryLightButton];
    [button setBezelStyle:NSTexturedSquareBezelStyle];
    [button setTarget:self];
    [button setAction:@selector(changeBackgroundColor)];
}

@end