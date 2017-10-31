//
//  MRInfoInteractor.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 31/10/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import "MRInfoInteractorInput.h"

@protocol MRInfoInteractorOutput;

@interface MRInfoInteractor : NSObject <MRInfoInteractorInput>

@property (nonatomic, weak) id<MRInfoInteractorOutput> output;

@end
