//
//  MRInfoPresenter.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 31/10/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import "MRInfoPresenter.h"

#import "MRInfoViewInput.h"
#import "MRInfoInteractorInput.h"
#import "MRInfoRouterInput.h"

@implementation MRInfoPresenter

#pragma mark - Методы MRInfoModuleInput

- (void)configureModule {
    // Стартовая конфигурация модуля, не привязанная к состоянию view
}

#pragma mark - Методы MRInfoViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Методы MRInfoInteractorOutput

@end
