//
//  HeadingView.m
//  Jun14
//
//  Created by Dominick Ciano on 6/12/12.
//  Copyright (c) 2012 Abel / Noser Corp. All rights reserved.
//

#import "HeadingView.h"

@implementation HeadingView

- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor yellowColor];
    }
    return self;
}

- (void) drawRect: (CGRect) rect
{
	//get current device
	UIDevice *device = [UIDevice currentDevice];
	//get device ID
	NSString *uniqueId = [device uniqueIdentifier];
	//turn on battery monitoring
	[[UIDevice currentDevice ] setBatteryMonitoringEnabled:YES]; // turn on battery monitoring
	//get battery level and state
	CGFloat batteryLevel = device.batteryLevel;
	UIDeviceBatteryState batteryState = device.batteryState;
	//display battery status and device ID
	[self displayString: [NSString stringWithFormat: @" Battery State:%d, Battery Level:%g", batteryState, batteryLevel], 1];
	[self displayString: [NSString stringWithFormat: @" Device id:%@", uniqueId], 2];
	
	
	// Release url object
	//[url release]; // not needed since we're using automatic reference counting mode
}
// Display message 
- (void) displayString:(NSString *)msg, int line {
	// set font
    UIFont *font = [UIFont systemFontOfSize: 10.0];
	
	CGPoint point = CGPointMake(0.0, (line - 1) * 20.0);
    [msg drawAtPoint: point withFont: font];
	
}


// Display content of URL
- (void) displayURLContent:(NSURL *)url {
	
	// set font
	UIFont *font = [UIFont systemFontOfSize: 15.0];
	
	CGPoint point = CGPointMake(0.0, 0.0);
	
	NSError *err;
	NSString *string = [[NSString alloc]
						initWithContentsOfURL: url
						encoding: NSUTF8StringEncoding
						error: &err
						];
	
	if (string == nil) {
		string = [err localizedDescription];
	}
	
	// display URL content
	[string drawAtPoint: point withFont: font];
}


@end
