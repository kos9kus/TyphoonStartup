//
//  ViewController.h
//  TyphoonStartup
//
//  Created by KONSTANTIN KUSAINOV on 8/1/17.
//  Copyright © 2017 KONSTANTIN KUSAINOV. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <TyphoonAutoInjection.h>

@protocol KKErrorInterface;

@interface ViewController : UIViewController

@property (nonatomic) InjectedProtocol(KKErrorInterface) errorHandleObject;

@end

