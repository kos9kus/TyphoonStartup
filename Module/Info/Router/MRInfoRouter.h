//
//  MRInfoRouter.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 31/10/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import "MRInfoRouterInput.h"

@protocol RamblerViperModuleTransitionHandlerProtocol;

@interface MRInfoRouter : NSObject <MRInfoRouterInput>

@property (nonatomic, weak) id<RamblerViperModuleTransitionHandlerProtocol> transitionHandler;

@end
