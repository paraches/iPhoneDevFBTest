//
//  AppDelegate.h
//  iPhoneDevFBTest
//
//  Created by 手代木 伸一 on 12/02/01.
//  Copyright (c) 2012年 paraches. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FBConnect.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, FBSessionDelegate> {
	Facebook *facebook;
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) ViewController *viewController;
@property (strong, nonatomic) Facebook *facebook;

@end
