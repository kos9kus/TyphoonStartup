//
//  MRMapsViewController.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 08/08/2017.
//  Copyright © 2017 Mail.ru. All rights reserved.
//

#import "MRMapsViewController.h"
#import "MRMapsViewOutput.h"

@implementation MRMapsViewController

#pragma mark - Методы жизненного цикла

- (void)viewDidLoad {
	[super viewDidLoad];

	[self.presenter didTriggerViewReadyEvent];
}

#pragma mark - Методы MRMapsViewInput

- (void)setupInitialState {
	// В этом методе происходит настройка параметров view, зависящих от ее жизненого цикла (создание элементов, анимации и пр.)
}

@end
