//
//  FirstViewController.h
//  VNurture App
//
//  Created by Mehul Panchal on 29/03/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RESideMenu.h"
#import "VCFloatingActionButton.h"
@interface FirstViewController : UIViewController<floatMenuDelegate>
@property (strong, nonatomic) IBOutlet UIView *obj_view;

@end
