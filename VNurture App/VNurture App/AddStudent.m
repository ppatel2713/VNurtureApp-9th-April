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

@end

@implementation AddStudent

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden=TRUE;
    self.textViewAddress.delegate=self;
        // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

/*- (IBAction)backPressed:(id)sender {
  RootViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"rootController"];
    
    /*[self presentViewController:vc animated:YES completion:^{*/
    
      //  [self dismissViewControllerAnimated:true completion:nil];
   // [self popoverPresentationController];
    //[self.navigationController popToRootViewControllerAnimated:YES];
       // [self.navigationController popToRootViewControllerAnimated:YES];
   // UINavigationController *newnav = [[UINavigationController alloc] initWithRootViewController:vc];
    //[newnav setNavigationBarHidden:YES animated:NO];


//}*/
@end
