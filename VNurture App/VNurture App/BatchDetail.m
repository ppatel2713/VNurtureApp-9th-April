//
//  BatchDetail.m
//  VNurture App
//
//  Created by Prachi on 28/03/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "BatchDetail.h"
#import "RootViewController.h"

static BatchDetail *sharedInstance;


@interface BatchDetail ()
{
    UIDatePicker *datePickerAddNotice;
    NSString *selectedDate;
    UIDatePicker *timePickerAddNotice;
    NSString *selctedTime;
    NSArray *arrTechnology;
    UIPickerView *pickerViewTechnology;
    NSString *selctedTechnology;
    NSString *tempTechnologyString;

}

@end

@implementation BatchDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:_viewBatchDetails.frame];
    [imageView setImage:[UIImage imageNamed:@"bg.png"]];
    [imageView setContentMode:UIViewContentModeScaleToFill];
    imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [_viewBatchDetails addSubview:imageView];
    [_viewBatchDetails sendSubviewToBack:imageView];
    _textFieldDate.delegate = self;
    _textFieldTime.delegate = self;
    _textFieldTechnology.delegate = self;
    self.textFieldTechnology.delegate = self;
    pickerViewTechnology = [[UIPickerView alloc] init];
    pickerViewTechnology.dataSource = self;
    pickerViewTechnology.delegate = self;

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
#pragma marks PickerView Technology
    UIToolbar *doneBar_pickerViewTechnology = [[UIToolbar alloc] initWithFrame:CGRectMake(10, 10, 320, 44)];
    [doneBar_pickerViewTechnology setBarStyle:UIBarStyleBlackTranslucent];
    UIBarButtonItem *btn_cancelTechnology = [[UIBarButtonItem alloc]
                                             initWithTitle:@"Cancel"
                                             style:UIBarButtonItemStyleDone
                                             target:self
                                             action:@selector(act_cancelTechnology:)];
    
    UIBarButtonItem *flexSpaceTechnology = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    
    [doneBar_pickerViewTechnology setItems: [NSArray arrayWithObjects:btn_cancelTechnology,flexSpaceTechnology, [[UIBarButtonItem alloc]
                                                                                                                 initWithTitle:@"Done"
                                                                                                                 style:UIBarButtonItemStyleDone
                                                                                                                 target:self
                                                                                                                 action:@selector(act_doneTechnology:)],nil ] animated:YES];
    
    _textFieldDate.inputView = datePickerAddNotice;
    [_textFieldDate setInputAccessoryView:doneBar];
    _textFieldTime.inputView = timePickerAddNotice;
    [_textFieldTime setInputAccessoryView:doneBarTime];
    _textFieldTechnology.inputView = pickerViewTechnology;
    [_textFieldTechnology setInputAccessoryView:doneBar_pickerViewTechnology];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma marks PickerView For gender/technolgy
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
        return arrTechnology.count;
   
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
  
        selctedTechnology = [arrTechnology objectAtIndex:row];
        return selctedTechnology;

    
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
        tempTechnologyString = [arrTechnology objectAtIndex: row];
        selctedTechnology = tempTechnologyString;
    
}

#pragma marks actions of bars Pickerview Technology
-(void)act_cancelTechnology:(id)sender
{
    [_textFieldTechnology resignFirstResponder];
}

-(void)act_doneTechnology:(id)sender
{
    self.textFieldTechnology.text = selctedTechnology;
    [self.textFieldTechnology resignFirstResponder];
}

+ (BatchDetail *)sharedInstance
{
    static dispatch_once_t once;
    UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"HR" bundle:[NSBundle mainBundle]];
    dispatch_once(&once, ^{
        sharedInstance = [storyboard instantiateViewControllerWithIdentifier:@"BatchDetail"];
    });
    return sharedInstance;
}

-(void)act_cancel:(id)sender
{
    [_textFieldDate resignFirstResponder];
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
