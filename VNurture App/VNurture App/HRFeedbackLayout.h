//
//  HRFeedbackLayout.h
//  VNurture App
//
//  Created by Prachi on 15/04/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HRFeedbackLayout : UIViewController<UITableViewDelegate,UITableViewDataSource>

{
    NSMutableArray *my_array;
    UITableViewCell *cell;
    
}

@property (weak, nonatomic) IBOutlet UITableView *feedback_Table;

@end
