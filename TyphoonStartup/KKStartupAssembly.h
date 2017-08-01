//
//  KKStartupAssembly.h
//  TyphoonStartup
//
//  Created by KONSTANTIN KUSAINOV on 8/1/17.
//  Copyright © 2017 KONSTANTIN KUSAINOV. All rights reserved.
//

#import <Typhoon/Typhoon.h>

@class AppDelegate;
@protocol KKStartupDelegateInterface;

@interface KKStartupAssembly : TyphoonAssembly

- (AppDelegate *)kkDelegate;

- (id<KKStartupDelegateInterface>)startUpObject;

@end
