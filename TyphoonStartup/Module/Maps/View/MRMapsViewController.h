//
//  MRMapsViewController.h
//  TyphoonStartup
//
//  Created by Konstantin Kusainov on 08/08/2017.
//  Copyright © 2017 Mail.ru. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MRMapsViewInput.h"

@protocol MRMapsViewOutput;

@interface MRMapsViewController : UIViewController <MRMapsViewInput>

@property (nonatomic, strong) id<MRMapsViewOutput> presenter;

@end
