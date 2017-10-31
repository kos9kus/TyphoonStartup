//
//  CLEnterSubmitButton.m
//  Carousel-iOS
//
//  Created by KONSTANTIN KUSAINOV on 9/6/17.
//  Copyright © 2017 Сергей Романков. All rights reserved.
//

#import "CLEnterSubmitButton.h"
#import "CLColor.h"

@interface CLEnterSubmitButton ()

@end

@implementation CLEnterSubmitButton

- (void)setEnable:(BOOL)enable
{
    self.button.enabled = enable;
    self.backgroundColor = enable ? [CLColor greenColor] : [CLColor greyDisableColor];
    _enable = enable;
}

- (void)createViews
{
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    [self addSubview:self.button];
}

- (void)updateConstraintsViews
{
    [self autoSetDimension:ALDimensionHeight toSize:kHeightSubmitButtonEnterScreen];
    [self.button autoPinEdgesToSuperviewEdges];
}

@end
