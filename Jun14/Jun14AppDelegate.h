//
//  Jun14AppDelegate.h
//  Jun14
//
//  Created by Dominick Ciano on 6/8/12.
//  Copyright (c) 2012 Abel / Noser Corp. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HeadingView;
@class ContentView;

@interface Jun14AppDelegate : UIResponder <UIApplicationDelegate>
{
	
	HeadingView *hdgView;
	ContentView *contentView;
	UIWindow *_window;
}
@property (strong, nonatomic) UIWindow *window;

@end
