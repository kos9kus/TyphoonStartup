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

- (UINavigationController *)viewRootNavigationViewController {
    return [TyphoonDefinition withClass:[UINavigationController class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithRootViewController:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:[self viewRootViewController]];
        }];
    }];
}

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
                              [definition injectProperty:@selector(view) with:[self viewRootViewController]];
                              [definition injectProperty:@selector(infoAssembly) with:self.infoViewControllerAssembly];
                              
                          }];
}

@end
