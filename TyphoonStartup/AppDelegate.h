//
//  AppDelegate.h
//  TyphoonStartup
//
//  Created by KONSTANTIN KUSAINOV on 8/1/17.
//  Copyright © 2017 KONSTANTIN KUSAINOV. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol KKStartupDelegateInterface;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic) id<KKStartupDelegateInterface> startUpObject;


@end

