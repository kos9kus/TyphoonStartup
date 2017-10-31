//
//  MRRootViewControllerInteractor.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import "MRRootViewControllerInteractorInput.h"

@protocol MRRootViewControllerInteractorOutput;

@interface MRRootViewControllerInteractor : NSObject <MRRootViewControllerInteractorInput>

@property (nonatomic, weak) id<MRRootViewControllerInteractorOutput> output;

@end
