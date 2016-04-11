//
//  AddTutor.h
//  VNurture App
//
//  Created by Prachi on 22/03/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddTutor : UIViewController<UITextFieldDelegate,UITextViewDelegate,UITextFieldDelegate>

- (IBAction)backPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textFieldDate;
@property (weak, nonatomic) IBOutlet UITextField *textFieldDOB;

@end
