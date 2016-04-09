//
//  Tollbar.m
//  VNurture App
//
//  Created by Prachi on 07/04/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "Tollbar.h"

@implementation Tollbar
/*- (void)drawRect:(CGRect)rect
{
    [self setTintColor:[UIColor yellowColor]];
    [self barTintColor:[UIColor redColor]];
}
-(void)awakeFromNib
{
    [self setTintColor:[UIColor yellowColor]];
    [self barTintColor:[UIColor redColor]];

}
-(id)initWithCoder:(NSCoder *)aDecoder
{
    [self setTintColor:[UIColor yellowColor]];
     [self barTintColor:[UIColor redColor]];

}*/
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)awakeFromNib
{
    [self setBarTintColor :[UIColor colorWithRed:63.0/255.0 green:81.0/255.0 blue:181.0/255.0 alpha:1.0]];
    //[self setBarTintColor:[UIColor redColor]];
}
@end
