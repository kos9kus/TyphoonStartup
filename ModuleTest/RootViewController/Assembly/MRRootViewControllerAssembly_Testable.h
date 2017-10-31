//
//  MRRootViewControllerAssembly_Testable.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import "MRRootViewControllerAssembly.h"

@class MRRootViewControllerViewController;
@class MRRootViewControllerInteractor;
@class MRRootViewControllerPresenter;
@class MRRootViewControllerRouter;

/**
 @author Konstantin Kusainov

 Extension, который делает приватные методы фабрики открытыми для тестирования. 
 */
@interface MRRootViewControllerAssembly ()

- (MRRootViewControllerViewController *)viewRootViewController;
- (MRRootViewControllerPresenter *)presenterRootViewController;
- (MRRootViewControllerInteractor *)interactorRootViewController;
- (MRRootViewControllerRouter *)routerRootViewController;

@end
