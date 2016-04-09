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

- (IBAction)Login:(id)sender {
    
    
    
    if ([self.text_Username.text isEqual:@"s"] || [self.text_password.text isEqual:@"s"]) {
        UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Student" bundle:nil];
        
        StudentRootViewController *sr1=[storyboard instantiateViewControllerWithIdentifier:@"StudentRootViewController"];
        [self presentViewController:sr1 animated:YES completion:nil];
        

    }
    else if([self.text_Username.text isEqual:@"h"] || [self.text_password.text isEqual:@"h"])
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
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Wait" message:@"Invalide Username or password" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:@"Cancel", nil];
        [alert show];

    }


    
    
    
}
- (IBAction)check:(id)sender {
    
    
    
    
}
@end
