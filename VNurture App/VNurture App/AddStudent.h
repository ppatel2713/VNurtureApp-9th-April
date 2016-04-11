//
//  AddStudent.h
//  VNurture App
//
//  Created by Prachi on 21/03/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddStudent : UIViewController<UITextViewDelegate,UITextFieldDelegate>


@property (weak, nonatomic) IBOutlet UITextView *textViewAddress;
@property (weak, nonatomic) IBOutlet UITextField *textFieldDate;

@property (weak, nonatomic) IBOutlet UITextField *textFieldDOB;


@end
