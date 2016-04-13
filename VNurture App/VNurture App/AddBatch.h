//
//  AddBatch.h
//  VNurture App
//
//  Created by Prachi on 23/03/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddBatch : UIViewController<UITextFieldDelegate>
- (IBAction)backPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textFieldDate;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTime;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTechnology;

@end
