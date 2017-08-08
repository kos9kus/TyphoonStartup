//
//  MRMapsInteractor.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 08/08/2017.
//  Copyright © 2017 Mail.ru. All rights reserved.
//

#import "MRMapsInteractorInput.h"

@protocol MRMapsInteractorOutput;

@interface MRMapsInteractor : NSObject <MRMapsInteractorInput>

@property (nonatomic, weak) id<MRMapsInteractorOutput> presenter;

@end
