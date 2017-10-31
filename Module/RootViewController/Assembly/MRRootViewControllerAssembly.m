//
//  MRRootViewControllerAssembly.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import "MRRootViewControllerAssembly.h"

#import "MRRootViewControllerViewController.h"
#import "MRRootViewControllerInteractor.h"
#import "MRRootViewControllerPresenter.h"
#import "MRRootViewControllerRouter.h"

@implementation MRRootViewControllerAssembly

- (MRRootViewControllerViewController *)viewRootViewController {
    return [TyphoonDefinition withClass:[MRRootViewControllerViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterRootViewController]];
                          }];
}

- (MRRootViewControllerInteractor *)interactorRootViewController {
    return [TyphoonDefinition withClass:[MRRootViewControllerInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterRootViewController]];
                          }];
}

- (MRRootViewControllerPresenter *)presenterRootViewController{
    return [TyphoonDefinition withClass:[MRRootViewControllerPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              
                              [definition injectProperty:@selector(view)
                                                    with:[self viewRootViewController]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorRootViewController]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerRootViewController]];
                          }];
}

- (MRRootViewControllerRouter *)routerRootViewController{
    return [TyphoonDefinition withClass:[MRRootViewControllerRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewRootViewController]];
                          }];
}

@end
