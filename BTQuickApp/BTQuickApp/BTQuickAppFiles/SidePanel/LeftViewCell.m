//
//  LeftViewCell.m
//  LGSideMenuControllerDemo
//
//  Created by Friend_LGA on 26.04.15.
//  Copyright (c) 2015 Grigory Lutkov. All rights reserved.
//

#import "LeftViewCell.h"

@interface LeftViewCell ()

@end

@implementation LeftViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor clearColor] ;
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];

    self.textLabel.textColor = _tintColor;
    _separatorView.backgroundColor = [_tintColor colorWithAlphaComponent:0.4];

    CGFloat height = ([UIScreen mainScreen].scale == 1.f ? 1.f : 0.5);

    _separatorView.frame = CGRectMake(0.f, self.frame.size.height-height, self.frame.size.width*0.9, height);
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    if (highlighted) {
        [UIView animateWithDuration:0.5 animations:^{
            self.textLabel.textColor = [UIColor colorWithRed:0.f green:0.5 blue:1.f alpha:1.f];
            self.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:20];
        }];
    }
    else{
        [UIView animateWithDuration:0.5 animations:^{
            
            self.textLabel.textColor = _tintColor;
            self.textLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:16];
        }];
    }
}

@end
