//
//  AddStudent.m
//  VNurture App
//
//  Created by Prachi on 21/03/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "AddStudent.h"
#import "RootViewController.h"

@interface AddStudent ()
{
    UIDatePicker *datePickerAddTutor;
    NSString *selectedDate;
    NSArray *arrGender;
    UIPickerView *pickerViewGender;
    NSString *selctedGender;
    NSString *tempGenderString;
}
@property(strong,nonatomic)UITextField *textFieldTemp;
@end

@implementation AddStudent

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden=TRUE;
    arrGender = [[NSArray alloc] initWithObjects:@"Male",@"Female",nil];
    self.textViewAddress.delegate = self;
    self.textFieldDate.delegate = self;
    self.textFieldDOB.delegate = self;
    self.textFieldGender.delegate = self;
    pickerViewGender = [[UIPickerView alloc] init];
    pickerViewGender.delegate=self;
    pickerViewGender.dataSource=self;
    datePickerAddTutor=[[UIDatePicker alloc] initWithFrame:CGRectZero];
    [datePickerAddTutor setDatePickerMode:UIDatePickerModeDate];
    [datePickerAddTutor addTarget:self action:@selector(dateIsChanged:) forControlEvents:UIControlEventValueChanged];
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
   //pickerview toolBar
    
    UIToolbar *doneBar_pickerView = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
    [doneBar_pickerView setBarStyle:UIBarStyleBlackTranslucent];
    UIBarButtonItem *btn_cancelPicker = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Cancel"
                                   style:UIBarButtonItemStyleDone
                                   target:self
                                   action:@selector(act_cancelPickerView:)];
    
    UIBarButtonItem *flexSpacePicker = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    
    
    [doneBar_pickerView setItems: [NSArray arrayWithObjects:btn_cancelPicker,flexSpacePicker, [[UIBarButtonItem alloc]
                                                                        initWithTitle:@"Done"
                                                                        style:UIBarButtonItemStyleDone
                                                                        target:self
                                                                        action:@selector(act_cancelPickerView:)],nil ] animated:YES];
    _textFieldDate.inputView = datePickerAddTutor;
    [_textFieldDate setInputAccessoryView:doneBar];
    _textFieldDOB.inputView = datePickerAddTutor ;
    [_textFieldDOB setInputAccessoryView:doneBar];
    _textFieldGender.inputView = pickerViewGender;
    [_textFieldGender setInputAccessoryView:doneBar_pickerView];
}
#pragma marks PickerView For gender
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return arrGender.count;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
   selctedGender = [arrGender objectAtIndex:row];
    return selctedGender;
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    tempGenderString = [arrGender objectAtIndex:row];
    selctedGender = tempGenderString;
    NSLog(@"You selcted %@",selctedGender);

}
#pragma marks actions of bars
-(void)act_cancel:(id)sender
{
    [_textFieldTemp resignFirstResponder];
}

-(void)act_done:(id)sender
{
        self.textFieldTemp.text = selectedDate;
        [self.textFieldTemp resignFirstResponder];
}


-(void)act_cancelPickerView:(id)sender
{
    [_textFieldGender resignFirstResponder];
}

-(void)act_donePickerView:(id)sender
{
    self.textFieldGender.text = selctedGender;
    [self.textFieldGender resignFirstResponder];
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

#pragma marks TextfieldDelegates

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSDate *currDate = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd/MM/YY"];
    NSString *dateString = [dateFormatter stringFromDate:currDate];
    NSLog(@"%@",dateString);
    // self.textFieldTemp = [NSString stringWithFormat:dateString];
    
    if ([textField isEqual: self.textFieldDOB])
    {
        
        self.textFieldTemp = self.textFieldDOB;
    }
    else if ([textField isEqual: self.textFieldDate])
    {
        self.textFieldTemp = self.textFieldDate;
    }
    
}
- (BOOL)textViewShouldBeginEditing:(UITextView *)textView
{
    self.textViewAddress.text=@"";
    return true;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return true;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
