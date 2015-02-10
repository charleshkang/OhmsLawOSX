//
//  MainViewController.m
//  OhmsLawCalc
//
//  Created by Kandel, Marc on 2/9/15.
//  Copyright (c) 2015 Marc Kandel. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (weak) IBOutlet NSTextField *miscLabel;
@property (weak) IBOutlet NSTextField *ampsLabel;
@property (weak) IBOutlet NSTextField *miscTextField;
@property (weak) IBOutlet NSPopUpButton *wattsVoltsSelector;
@property (weak) IBOutlet NSTextField *ohmsTextField;
@property (weak) IBOutlet NSTextField *miscTitle;

- (IBAction)wattsVoltsSelect:(id)sender;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)wattsVoltsSelect:(id)sender {
    NSLog(@"Selector Selected!");
    NSString *val = self.wattsVoltsSelector.titleOfSelectedItem;
    NSLog(@"Set to : '%@'", val);
    if ([val compare:@"Watts:" options:NSCaseInsensitiveSearch] == 0) {
        NSLog(@"Compare true");
        [self.miscTitle setStringValue:@"Volts:"];
    } else {
        NSLog(@"Compare false");
        [self.miscTitle setStringValue:@"Watts:"];
    }
}
@end
