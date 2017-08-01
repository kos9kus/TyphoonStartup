//
//  KKStartupAssembly.m
//  TyphoonStartup
//
//  Created by KONSTANTIN KUSAINOV on 8/1/17.
//  Copyright © 2017 KONSTANTIN KUSAINOV. All rights reserved.
//

#import "KKStartupAssembly.h"
#import "AppDelegate.h"
#import "KKStartupObject.h"

@implementation KKStartupAssembly

- (AppDelegate *)kkDelegate
{
    return [TyphoonDefinition withClass:[AppDelegate class]configuration:^(TyphoonDefinition *definition) {
        [definition injectProperty:@selector(startUpObject) with:[self startUpObject]];
    }];
}

- (id<KKStartupDelegateInterface>)startUpObject
{
    return [TyphoonDefinition withClass:[KKStartupObject class]];
}

@end
