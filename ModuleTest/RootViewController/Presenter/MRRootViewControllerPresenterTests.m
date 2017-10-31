//
//  MRRootViewControllerPresenterTests.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MRRootViewControllerPresenter.h"

#import "MRRootViewControllerViewInput.h"
#import "MRRootViewControllerInteractorInput.h"
#import "MRRootViewControllerRouterInput.h"

@interface MRRootViewControllerPresenterTests : XCTestCase

@property (nonatomic, strong) MRRootViewControllerPresenter *presenter;

@property (nonatomic, strong) id mockInteractor;
@property (nonatomic, strong) id mockRouter;
@property (nonatomic, strong) id mockView;

@end

@implementation MRRootViewControllerPresenterTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.presenter = [[MRRootViewControllerPresenter alloc] init];

    self.mockInteractor = OCMProtocolMock(@protocol(MRRootViewControllerInteractorInput));
    self.mockRouter = OCMProtocolMock(@protocol(MRRootViewControllerRouterInput));
    self.mockView = OCMProtocolMock(@protocol(MRRootViewControllerViewInput));

    self.presenter.interactor = self.mockInteractor;
    self.presenter.router = self.mockRouter;
    self.presenter.view = self.mockView;
}

- (void)tearDown {
    self.presenter = nil;

    self.mockView = nil;
    self.mockRouter = nil;
    self.mockInteractor = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов MRRootViewControllerModuleInput

#pragma mark - Тестирование методов MRRootViewControllerViewOutput

- (void)testThatPresenterHandlesViewReadyEvent {
    // given


    // when
    [self.presenter didTriggerViewReadyEvent];

    // then
    OCMVerify([self.mockView setupInitialState]);
}

#pragma mark - Тестирование методов MRRootViewControllerInteractorOutput

@end
