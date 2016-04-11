//
//  AddNotice.m
//  VNurture App
//
//  Created by Mehul Panchal on 24/03/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "AddNotice.h"
#import "RootViewController.h"

@interface AddNotice ()
{
    UIDatePicker *datePickerAddNotice;
    NSString *selectedDate;
    UIDatePicker *timePickerAddNotice;
    NSString *selctedTime;
}
@end

@implementation AddNotice

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textFieldDate.delegate = self;
    datePickerAddNotice=[[UIDatePicker alloc] initWithFrame:CGRectZero];
    [datePickerAddNotice setDatePickerMode:UIDatePickerModeDate];
    [datePickerAddNotice addTarget:self action:@selector(dateIsChanged:) forControlEvents:UIControlEventValueChanged];
    timePickerAddNotice=[[UIDatePicker alloc] initWithFrame:CGRectZero];
    [timePickerAddNotice setDatePickerMode:UIDatePickerModeTime];
    [timePickerAddNotice addTarget:self action:@selector(timeIsChanged:) forControlEvents:UIControlEventValueChanged];
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
    _textFieldDate.inputView = datePickerAddNotice;
    [_textFieldDate setInputAccessoryView:doneBar];
    _textFieldTime.inputView = timePickerAddNotice;
    [_textFieldTime setInputAccessoryView:doneBarTime];
    // Do any additional setup after loading the view.
}

-(void)act_cancel:(id)sender
{
    [_textFieldTime resignFirstResponder];
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
