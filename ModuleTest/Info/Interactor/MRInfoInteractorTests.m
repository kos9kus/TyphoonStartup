//
//  MRInfoInteractorTests.m
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 31/10/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>

#import "MRInfoInteractor.h"

#import "MRInfoInteractorOutput.h"

@interface MRInfoInteractorTests : XCTestCase

@property (nonatomic, strong) MRInfoInteractor *interactor;

@property (nonatomic, strong) id mockOutput;

@end

@implementation MRInfoInteractorTests

#pragma mark - Настройка окружения для тестирования

- (void)setUp {
    [super setUp];

    self.interactor = [[MRInfoInteractor alloc] init];

    self.mockOutput = OCMProtocolMock(@protocol(MRInfoInteractorOutput));

    self.interactor.output = self.mockOutput;
}

- (void)tearDown {
    self.interactor = nil;

    self.mockOutput = nil;

    [super tearDown];
}

#pragma mark - Тестирование методов MRInfoInteractorInput

@end
