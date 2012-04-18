//
//  AComponent.m
//  TestXib2Xib
//
//  Created by yifeng huang on 12-4-18.
//  Copyright (c) 2012年 huangyifeng. All rights reserved.
//

#import "AComponent.h"

@implementation AComponent

- (id)viewWithNibName:(NSString *)nibName
{
    NSArray *nib = [[NSBundle mainBundle] loadNibNamed:nibName
                                                 owner:self
                                               options:nil];
    
    for (id oneObject in nib)
    {
        if ([oneObject isKindOfClass:[UIView class]])
        {
            return oneObject;
        }
    }
    
    return nil;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        if (1 == self.tag) {
            self = [self viewWithNibName:@"AComponent1"];
        }
        else if (2 == self.tag) {
            self = [self viewWithNibName:@"AComponent2"];
        }
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
