//
//  KKStartupObject.m
//  TyphoonStartup
//
//  Created by KONSTANTIN KUSAINOV on 8/1/17.
//  Copyright © 2017 KONSTANTIN KUSAINOV. All rights reserved.
//

#import "KKStartupObject.h"

@implementation KKStartupObject

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (BOOL)uploadDataDelegateData
{
    NSLog(@"Delegate data was upload");
    
    return YES;
}

@end
