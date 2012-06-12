//
//  ContentView.h
//  Jun14
//
//  Created by Dominick Ciano on 6/12/12.
//  Copyright (c) 2012 Abel / Noser Corp. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface ContentView : UIView
// Display a string 
- (void) displayString:(NSString *) msg, int line;

// Display URL content
- (void) displayURLContent:(NSURL *) url;
@end

