//
//  MRMapsPresenter.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 08/08/2017.
//  Copyright © 2017 Mail.ru. All rights reserved.
//

#import "MRMapsPresenter.h"

#import "MRMapsViewInput.h"
#import "MRMapsInteractorInput.h"
#import "MRMapsRouterInterface.h"

@implementation MRMapsPresenter

#pragma mark - Методы MRMapsViewOutput

- (void)didTriggerViewReadyEvent {
	[self.view setupInitialState];
}

#pragma mark - Методы MRMapsInteractorOutput

@end
