//
//  KKErrorObject.m
//  TyphoonStartup
//
//  Created by KONSTANTIN KUSAINOV on 8/1/17.
//  Copyright © 2017 KONSTANTIN KUSAINOV. All rights reserved.
//

#import "KKErrorObject.h"

@implementation KKErrorObject

- (void)handleError:(NSError *)error
{
    NSLog(@"This is error: %@ ", error);
}

@end
