//
//  ContentView.m
//  Jun14
//
//  Created by Dominick Ciano on 6/12/12.
//  Copyright (c) 2012 Abel / Noser Corp. All rights reserved.
//
//

#import "ContentView.h"

@implementation ContentView

- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

- (void) drawRect: (CGRect) rect
{
	// get IBM price from yahoo finance URL
	NSURL *url = [[NSURL alloc] initWithString: @"http://finance.yahoo.com/d/quotes.csv?s=IBM&f=sl1t1"];
	
	// display IBM price
	[self displayURLContent: url];
	
	// Release url object
	//[url release]; // not needed in automatic reference counting mode
}
// Display message 
- (void) displayString:(NSString *)msg, int line {
	// set font
    UIFont *font = [UIFont systemFontOfSize: 10.0];
	
	CGPoint point = CGPointMake(0.0, (line - 1) * 20.0);
    [msg drawAtPoint: point withFont: font];
	
}


// display content of URL
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
	
	// display URL content (IBM's price right now)
	[string drawAtPoint: point withFont: font];
}


@end