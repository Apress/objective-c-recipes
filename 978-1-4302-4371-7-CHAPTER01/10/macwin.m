#import "AppDelegate.h"

int main(int argc, char *argv[]){
    NSApplication *macApp = [NSApplication sharedApplication];
    AppDelegate *appDelegate = [[AppDelegate alloc] init];
    macApp.delegate = appDelegate;
    
    int style = NSClosableWindowMask | NSResizableWindowMask |
    NSTexturedBackgroundWindowMask | NSTitledWindowMask | NSMiniaturizableWindowMask;
    
    NSWindow *appWindow = [[NSWindow alloc] initWithContentRect:NSMakeRect(50, 50, 600, 400)
                                                      styleMask:style
                                                        backing:NSBackingStoreBuffered
                                                          defer:NO];
    appDelegate.window = appWindow;
    
    [appWindow makeKeyAndOrderFront:appWindow];
    
    [macApp run];
    
    /*
     NSButton *button = [[NSButton alloc] initWithFrame:NSMakeRect(14,100,120,40)];
     [[appWindow contentView] addSubview: button];
     [button setTitle: @"Hide"];
     [button setTarget:appWindow];
     [button setAction:@selector(invisible)];
     [button setButtonType:NSMomentaryLightButton];
     [button setBezelStyle:NSTexturedSquareBezelStyle];*/
    

}