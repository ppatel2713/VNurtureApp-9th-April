//
//  AddBatch.m
//  VNurture App
//
//  Created by Prachi on 23/03/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "AddBatch.h"
#import "RootViewController.h"

@interface AddBatch ()
{
    UIDatePicker *datePickerAddBatch;
    NSString *selectedDate;
    UIDatePicker *timePickerAddBatch;
    NSString *selctedTime;
}
@end

@implementation AddBatch

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    self.textFieldDate.delegate = self;
    datePickerAddBatch=[[UIDatePicker alloc] initWithFrame:CGRectZero];
    [datePickerAddBatch setDatePickerMode:UIDatePickerModeDate];
    [datePickerAddBatch addTarget:self action:@selector(dateIsChanged:) forControlEvents:UIControlEventValueChanged];
    timePickerAddBatch=[[UIDatePicker alloc] initWithFrame:CGRectZero];
    [timePickerAddBatch setDatePickerMode:UIDatePickerModeTime];
    [timePickerAddBatch addTarget:self action:@selector(timeIsChanged:) forControlEvents:UIControlEventValueChanged];

    UIToolbar *doneBar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    [doneBar setBarStyle:UIBarStyleBlackTranslucent];
    
    UIBarButtonItem *btn_cancel = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Cancel"
                                   style:UIBarButtonItemStyleDone
                                   target:self
                                   action:@selector(act_cancel:)];
    
    UIBarButtonItem *flexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    
    [doneBar setItems: [NSArray arrayWithObjects:btn_cancel,flexSpace, [[UIBarButtonItem alloc]
                                                                        initWithTitle:@"Done"
                                                                        style:UIBarButtonItemStyleDone
                                                                        target:self
                                                                        action:@selector(act_done:)],nil ] animated:YES];
    UIToolbar *doneBarTime = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    [doneBarTime setBarStyle:UIBarStyleBlackTranslucent];
    
    UIBarButtonItem *btn_cancelTime = [[UIBarButtonItem alloc]
                                       initWithTitle:@"Cancel"
                                       style:UIBarButtonItemStyleDone
                                       target:self
                                       action:@selector(act_cancelTime:)];
    
    UIBarButtonItem *flexSpaceTime = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    
    [doneBarTime setItems: [NSArray arrayWithObjects:btn_cancelTime,flexSpaceTime, [[UIBarButtonItem alloc]
                                                                                    initWithTitle:@"Done"
                                                                                    style:UIBarButtonItemStyleDone
                                                                                    target:self
                                                                                    action:@selector(act_doneTime:)],nil ] animated:YES];
    _textFieldDate.inputView = datePickerAddBatch;
    [_textFieldDate setInputAccessoryView:doneBar];
    _textFieldTime.inputView = timePickerAddBatch;
    [_textFieldTime setInputAccessoryView:doneBarTime];
}

-(void)act_cancel:(id)sender
{
    [_textFieldDate resignFirstResponder];
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSDate *currDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd/MM/YY"];
    NSString *dateString = [dateFormatter stringFromDate:currDate];
    NSLog(@"%@",dateString);
    // self.textFieldTemp = [NSString stringWithFormat:dateString];
    self.textFieldDate.text = selectedDate;
   /* if ([textField isEqual: self.textFieldDOB])
    {
        
        self.textFieldTemp = self.textFieldDOB;
    }
    else if ([textField isEqual: self.textFieldDate])
    {
        self.textFieldTemp = self.textFieldDate;
    }*/
    
}
-(void)act_done:(id)sender
{
    self.textFieldDate.text = selectedDate;
    [self.textFieldDate resignFirstResponder];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dateIsChanged:(id)sender
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd/MM/yyyy"];
    selectedDate= [dateFormat stringFromDate:[sender date]];
}
-(void)act_doneTime:(id)sender
{
    self.textFieldTime.text = selctedTime;
    [self.textFieldTime resignFirstResponder];
}
-(void)act_cancelTime:(id)sender
{
    [_textFieldTime resignFirstResponder];
}
-(void)timeIsChanged:(id)sender
{
    NSDateFormatter *timeFormat = [[NSDateFormatter alloc] init];
    [timeFormat setDateFormat:@"hh:mm a"];
    selctedTime = [timeFormat stringFromDate:[sender date]];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return true;
}

- (IBAction)backPressed:(id)sender {
    RootViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"rootController"];
    
    [self presentViewController:vc animated:YES completion:nil];
    
}
@end
