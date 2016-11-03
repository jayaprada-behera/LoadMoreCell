//
//  AppDelegate.h
//  FAQ
//
//  Created by Aravind on 29/01/16.
//  Copyright © 2016 Aravind. All rights reserved.
//

#import <UIKit/UIKit.h>
 #import "SingleViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(nonatomic,retain)UINavigationController *navigationController;

@property(nonatomic,retain)SingleViewController *firstView;
//Methods
+(NSString *)isAppRunningOnIpad:(NSString *)strNib;
+(BOOL)isiPad;
+(BOOL)isiPhone5;
+(AppDelegate *)appDelegate;
//+(BOOL)isNetworkReachable;
- (BOOL)hasCachedInterstitial:(NSString *)location;


@end

