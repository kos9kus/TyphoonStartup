//
//  KKStartupAssembly.h
//  TyphoonStartup
//
//  Created by KONSTANTIN KUSAINOV on 8/1/17.
//  Copyright © 2017 KONSTANTIN KUSAINOV. All rights reserved.
//

#import <Typhoon/Typhoon.h>

#import "MRRootViewControllerAssembly.h"

@class AppDelegate;

@interface KKStartupAssembly : TyphoonAssembly

@property (nonatomic) MRRootViewControllerAssembly *rootVCAssembly;

@end
