//
//  MRInfoViewController.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 31/10/2017.
//  Copyright © 2017 Mail. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "MRInfoViewInput.h"

@protocol MRInfoViewOutput;

@interface MRInfoViewController : UIViewController <MRInfoViewInput>

@property (nonatomic, strong) id<MRInfoViewOutput> output;

@end
