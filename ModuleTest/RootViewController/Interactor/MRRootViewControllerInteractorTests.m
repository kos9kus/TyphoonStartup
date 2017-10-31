//
//  MRRootViewControllerInteractorTests.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MRRootViewControllerInteractor.h"

#import "MRRootViewControllerInteractorOutput.h"

@interface MRRootViewControllerInteractorTests : XCTestCase

@property (nonatomic, strong) MRRootViewControllerInteractor *interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation MRRootViewControllerInteractorTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.interactor = [[MRRootViewControllerInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MRRootViewControllerInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void)tearDown {
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов MRRootViewControllerInteractorInput

@end
