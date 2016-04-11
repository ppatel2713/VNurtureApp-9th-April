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

}
@property(strong,nonatomic)UITextField *textFieldTemp;
@end

@implementation AddStudent

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden=TRUE;
    self.textViewAddress.delegate=self;
    self.textFieldDate.delegate=self;
    self.textFieldDOB.delegate = self;
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
    
    _textFieldDate.inputView = datePickerAddTutor;
    [_textFieldDate setInputAccessoryView:doneBar];
    _textFieldDOB.inputView = datePickerAddTutor ;
    [_textFieldDOB setInputAccessoryView:doneBar];
        // Do any additional setup after loading the view.
}
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
-(void)act_cancel:(id)sender
{
    [_textFieldDate resignFirstResponder];
}

-(void)act_done:(id)sender
{
    /*if ([_textFieldTemp.text isEqual:@""])
    {
        NSDate *currDate = [NSDate date];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
        [dateFormatter setDateFormat:@"dd.MM.YY"];
        NSString *dateString = [dateFormatter stringFromDate:currDate];
        NSLog(@"%@",dateString);
        self.textFieldTemp.text = dateString;
    }
    else
    {*/
        self.textFieldTemp.text = selectedDate;
        [self.textFieldTemp resignFirstResponder];
   // }
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
