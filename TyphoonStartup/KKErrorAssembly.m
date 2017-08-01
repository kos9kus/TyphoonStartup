//
//  KKErrorAssembly.m
//  TyphoonStartup
//
//  Created by KONSTANTIN KUSAINOV on 8/1/17.
//  Copyright © 2017 KONSTANTIN KUSAINOV. All rights reserved.
//

#import "KKErrorAssembly.h"
#import "ViewController.h"
#import "KKErrorObject.h"

@implementation KKErrorAssembly

- (ViewController *)basic
{
    return [TyphoonDefinition withClass:[ViewController class] configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(errorHandleObject) with:[self errorHandleObject]];
    }];
}

- (id<KKErrorInterface>)errorHandleObject
{
    return [TyphoonDefinition withClass:[KKErrorObject class]];
}

@end
