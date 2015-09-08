//
//  InterfaceController.m
//  WatchApp WatchKit Extension
//
//  Created by fl on 08.09.15.
//  Copyright (c) 2015 LWO LLC. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *firstLabel;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [super didDeactivate];
}

#pragma mark - From AppleWatch

- (IBAction)tapOnButton {
    NSLog(@"%@", NSStringFromSelector(_cmd));
    [self.firstLabel setText:@"text"];
}


@end



