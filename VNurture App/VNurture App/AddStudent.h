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


- (IBAction)backPressed:(id)sender;

@end
