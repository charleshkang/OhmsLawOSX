//
//  AppDelegate.m
//  OhmsLawCalc
//
//  Created by Kandel, Marc on 2/9/15.
//  Copyright (c) 2015 Marc Kandel. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property (nonatomic,strong) MainViewController *vc;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    self.vc = [[MainViewController alloc]init];
    [self.window.contentView addSubview:self.vc.view];
    self.vc.view.frame = ((NSView*)self.window.contentView).bounds;
}

-(BOOL) applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication{
//    if (MYDEBUG) {
//        NSLog(@"Entered applicationShouldTerminateAfterLastWindowClosed");
//    }
//    
//    if (MYDEBUG) {
//        NSLog(@"Exiting applicationShouldTerminateAfterLastWindowClosed");
//    }
    
    return YES;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
