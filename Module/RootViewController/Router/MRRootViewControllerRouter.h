//
//  MRRootViewControllerRouter.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import "MRRootViewControllerRouterInput.h"
#import "MRInfoAssembly.h"
#import "MRRootViewControllerViewController.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface MRRootViewControllerRouter : NSObject <MRRootViewControllerRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;
@property (nonatomic) MRInfoAssembly *infoAssembly;
@property (nonatomic, weak) MRRootViewControllerViewController *view;

@end
