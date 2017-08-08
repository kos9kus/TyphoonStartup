//
//  MRMapsAssembly.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 08/08/2017.
//  Copyright © 2017 Mail.ru. All rights reserved.
//

#import "MRMapsAssembly.h"

#import "MRMapsViewController.h"
#import "MRMapsInteractor.h"
#import "MRMapsPresenter.h"
#import "MRMapsRouter.h"

@implementation MRMapsAssembly

- (MRMapsViewController *)viewMaps {
    return [TyphoonDefinition withClass:[MRMapsViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(presenter)
                                                    with:[self presenterMaps]];
                          }];
}

- (MRMapsInteractor *)interactorMaps {
    return [TyphoonDefinition withClass:[MRMapsInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(presenter)
                                                    with:[self presenterMaps]];
                          }];
}

- (MRMapsPresenter *)presenterMaps{
    return [TyphoonDefinition withClass:[MRMapsPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewMaps]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorMaps]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerMaps]];
                          }];
}

- (MRMapsRouter *)routerMaps{
    return [TyphoonDefinition withClass:[MRMapsRouter class]];
}

@end
