//
//  MRRootViewControllerRouter.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import "MRRootViewControllerRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface MRRootViewControllerRouter : NSObject <MRRootViewControllerRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
