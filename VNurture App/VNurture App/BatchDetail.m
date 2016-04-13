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

@end

@implementation BatchDetail

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)backPressed:(id)sender {
    
    RootViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"rootController"];
    
    [self presentViewController:vc animated:YES completion:nil];
    
}
@end
