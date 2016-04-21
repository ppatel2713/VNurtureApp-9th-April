//
//  BatchDetail.h
//  VNurture App
//
//  Created by Prachi on 28/03/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BatchDetail : UIViewController<UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource>
- (IBAction)backPressed:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *viewBatchDetails;
@property (weak, nonatomic) IBOutlet UITextField *textFieldDate;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTime;
@property (weak, nonatomic) IBOutlet UITextField *textFieldTechnology;
+ (BatchDetail *)sharedInstance;
@end
