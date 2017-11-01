//
//  MRRootViewControllerPresenter.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import "MRRootViewControllerPresenter.h"

#import "MRRootViewControllerViewInput.h"
#import "MRRootViewControllerInteractorInput.h"
#import "MRRootViewControllerRouterInput.h"

@implementation MRRootViewControllerPresenter

#pragma mark - Методы MRRootViewControllerModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы MRRootViewControllerViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

- (void)didButtonEvent
{
    [self.router pushInfoViewController];
}

#pragma mark - Методы MRRootViewControllerInteractorOutput

@end
