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
        [definition injectProperty:@selector(window) with:[self mainWindow]];
        [definition injectProperty:@selector(vc) with:[self.rootVCAssembly viewRootViewController]];
    }];
}

- (UIWindow *)mainWindow
{
    return [TyphoonDefinition withClass:[UIWindow class] configuration:^(TyphoonDefinition *definition)
            {
                [definition useInitializer:@selector(initWithFrame:) parameters:^(TyphoonMethod *initializer)
                 {
                     [initializer injectParameterWith:[NSValue valueWithCGRect:[[UIScreen mainScreen] bounds]]];
                 }];
                [definition injectProperty:@selector(rootViewController) with:[self.rootVCAssembly viewRootNavigationViewController]];
            }];
}

@end
