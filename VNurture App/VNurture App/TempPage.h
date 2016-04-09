//
//  TempPage.h
//  VNurture App
//
//  Created by Prachi on 29/03/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RESideMenu.h"

@interface TempPage : UIViewController<UITableViewDataSource, UITableViewDelegate, RESideMenuDelegate>
@property (strong, readwrite, nonatomic) UITableView *tableView1;


@end
