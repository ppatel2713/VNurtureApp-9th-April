//
//  TutorAddNoticeViewController.m
//  VNurture App
//
//  Created by Mehul Panchal on 18/04/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "TutorAddNoticeViewController.h"

@interface TutorAddNoticeViewController ()

@end

@implementation TutorAddNoticeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = true;

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonSend:(id)sender {
    if (((self.textFieldDate.text.length > 0) && (self.textFieldTime.text.length>0)) && (self.textViewNotice.text.length>0)) {
        NSLog(@"Checked");
        
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Wait" message:@"Please fill up the whole information" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alert show];
    }
}
@end
