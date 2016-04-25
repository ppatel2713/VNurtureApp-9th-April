//
//  Login.m
//  VNurture App
//
//  Created by Prachi on 28/03/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "Login.h"
#import "RootViewController.h"
#import "FirstViewController.h"
#import "StudentRootViewController.h"
#import "MenuListViewController.h"
#import "TutorRootViewController.h"
#import "TutorMenuListViewController.h"

@interface Login ()

@end

@implementation Login

- (void)viewDidLoad {
    [super viewDidLoad];
    [self Image_View:_viewLogin];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)Image_View:(UIView *)view_obj
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:view_obj.frame];
    [imageView setImage:[UIImage imageNamed:@"bg.png"]];
    [imageView setContentMode:UIViewContentModeScaleToFill];
    imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [view_obj addSubview:imageView];
    [view_obj sendSubviewToBack:imageView];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)Login:(id)sender {
    
    
    
    if ([self.text_Username.text isEqual:@"s"] || [self.text_password.text isEqual:@"s"]) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Student" bundle:nil];
        
        StudentRootViewController *sr1=[storyboard instantiateViewControllerWithIdentifier:@"StudentRootViewController"];
        [self presentViewController:sr1 animated:YES completion:nil];
        

    }
    else if([self.text_Username.text isEqual:@"hr"] && [self.text_password.text isEqual:@"hr"])
    {
        RootViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"rootController"];
        
        [self presentViewController:vc animated:YES completion:nil];
    }
    else if ([self.text_Username.text isEqual:@"t"] || [self.text_password.text isEqual:@"t"]) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Tutor" bundle:nil];
        
        TutorRootViewController *tr1=[storyboard instantiateViewControllerWithIdentifier:@"TutorRootViewController"];
        [self presentViewController:tr1 animated:YES completion:nil];
        
        
    }
    else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Wait" message:@"Incorrect Username and password" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Cancel", nil];
        [alert show];

    }


    
    
    
}
- (IBAction)check:(id)sender {
    
    
    
    
}
@end
