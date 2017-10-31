//
//  MRInfoAssembly.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 31/10/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import "MRInfoAssembly.h"

#import "MRInfoViewController.h"
#import "MRInfoInteractor.h"
#import "MRInfoPresenter.h"
#import "MRInfoRouter.h"

#import <ViperMcFlurry/ViperMcFlurry.h>

@implementation MRInfoAssembly

- (MRInfoViewController *)viewInfo {
    return [TyphoonDefinition withClass:[MRInfoViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterInfo]];
                              [definition injectProperty:@selector(moduleInput)
                                                    with:[self presenterInfo]];
                          }];
}

- (MRInfoInteractor *)interactorInfo {
    return [TyphoonDefinition withClass:[MRInfoInteractor class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(output)
                                                    with:[self presenterInfo]];
                          }];
}

- (MRInfoPresenter *)presenterInfo{
    return [TyphoonDefinition withClass:[MRInfoPresenter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(view)
                                                    with:[self viewInfo]];
                              [definition injectProperty:@selector(interactor)
                                                    with:[self interactorInfo]];
                              [definition injectProperty:@selector(router)
                                                    with:[self routerInfo]];
                          }];
}

- (MRInfoRouter *)routerInfo{
    return [TyphoonDefinition withClass:[MRInfoRouter class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(transitionHandler)
                                                    with:[self viewInfo]];
                          }];
}

@end
