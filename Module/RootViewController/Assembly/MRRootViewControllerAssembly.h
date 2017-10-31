//
//  MRRootViewControllerAssembly.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import <Typhoon/Typhoon.h>
#import "MRRootViewControllerViewController.h"

@class CLBaseAssembly;

/**
 @author Konstantin Kusainov

 RootViewController module
 */
@interface MRRootViewControllerAssembly : TyphoonAssembly

@property (nonatomic) CLBaseAssembly *baseAssembly;

- (MRRootViewControllerViewController *)viewRootViewController;

@end
