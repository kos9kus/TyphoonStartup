//
//  MRRootViewControllerViewController.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 14/09/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MRRootViewControllerViewInput.h"

@protocol MRRootViewControllerViewOutput;

@interface MRRootViewControllerViewController : UIViewController <MRRootViewControllerViewInput>

@property (nonatomic, strong) id<MRRootViewControllerViewOutput> output;

@end
