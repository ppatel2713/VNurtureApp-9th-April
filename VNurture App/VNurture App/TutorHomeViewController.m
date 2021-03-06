//
//  TutorHomeViewController.m
//  VNurture App
//
//  Created by Mehul Panchal on 04/04/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "TutorHomeViewController.h"
static TutorHomeViewController *sharedInstance;

@interface TutorHomeViewController ()

@end

@implementation TutorHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (TutorHomeViewController *)sharedInstance
{
    if (sharedInstance)
        return sharedInstance;
    
    static dispatch_once_t once;
    UIStoryboard *storyboard=[UIStoryboard storyboardWithName:@"Tutor" bundle:[NSBundle mainBundle]];
    dispatch_once(&once, ^{
        sharedInstance = [storyboard instantiateViewControllerWithIdentifier:@"firstViewController"];
    });
    return sharedInstance;
}

- (void) setSharedTutorHomeViewController:(TutorHomeViewController *) fc {
    sharedInstance = fc;
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
