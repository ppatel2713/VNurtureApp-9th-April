//
//  TutorBatchDetailViewController.m
//  VNurture App
//
//  Created by Mehul Panchal on 14/04/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "TutorBatchDetailViewController.h"
#import "TutorBatchListViewController.h"

@interface TutorBatchDetailViewController ()

@end

@implementation TutorBatchDetailViewController

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

- (IBAction)onBackPressed:(id)sender {
    
    TutorBatchListViewController *obj_TutorBatchListViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"TutorBatchListViewController"];
    
    [self presentViewController:obj_TutorBatchListViewController animated:YES completion:nil];
}
@end
