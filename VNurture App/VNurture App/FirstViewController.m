//
//  FirstViewController.m
//  VNurture App
//
//  Created by Mehul Panchal on 29/03/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "FirstViewController.h"
#import "AddTemplate.h"
#import "AddInquiry.h"
#import "AddTutor.h"
#import "AddStudent.h"
#import "AddBatch.h"
#import "AddNotice.h"

@interface FirstViewController ()
@property (strong, nonatomic) VCFloatingActionButton *addButton;
@end

@implementation FirstViewController
@synthesize addButton;
- (void)viewDidLoad {
    [super viewDidLoad];
    CGRect floatFrame = CGRectMake([UIScreen mainScreen].bounds.size.width - 44 - 20, [UIScreen mainScreen].bounds.size.height - 44 -58 - 20, 44, 44);
    addButton = [[VCFloatingActionButton alloc]initWithFrame:floatFrame normalImage:[UIImage imageNamed:@"plus"] andPressedImage:[UIImage imageNamed:@"cross"] withScrollview:nil];
    // Do any additional setup after loading the view, typically from a nib.
    addButton.imageArray = @[@"student",@"teacher",@"batch",@"notice",@"email",@"inquiry"];
    addButton.labelArray = @[@"Add Student",@"Add Tutor",@"Add Batch",@"Add Notice",@"Add Email Template",@"Add Inquiry"];
    addButton.hideWhileScrolling = NO;
    addButton.delegate = self;
    [_obj_view addSubview:addButton];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) didSelectMenuOptionAtIndex:(NSInteger)row
{
    NSLog(@"Floating action tapped index %tu",row);
    if (row==0)
    {
        AddStudent *obj_AddStudent=[self.storyboard instantiateViewControllerWithIdentifier:@"AddStudent"];
        [self presentViewController:obj_AddStudent animated:YES completion:nil];
    }
    if (row==1)
    {
        AddTutor *obj_AddTutor=[self.storyboard instantiateViewControllerWithIdentifier:@"AddTutor"];
        [self presentViewController:obj_AddTutor animated:YES completion:nil];

    }
    if (row==2) {
        AddBatch *obj_AddBatch=[self.storyboard instantiateViewControllerWithIdentifier:@"AddBatch"];
        [self presentViewController:obj_AddBatch animated:YES completion:nil];
    }
    if (row==3) {
        AddNotice *obj_AddNotice=[self.storyboard instantiateViewControllerWithIdentifier:@"AddNotice"];
        [self presentViewController:obj_AddNotice animated:YES completion:nil];

    }
    if (row==4) {
        AddTemplate *obj_AddTemplate=[self.storyboard instantiateViewControllerWithIdentifier:@"AddTemplate"];
        [self presentViewController:obj_AddTemplate animated:YES completion:nil];

    }
    if (row==5) {
        AddInquiry *obj_AddInquiry=[self.storyboard instantiateViewControllerWithIdentifier:@"AddInquiry"];
        [self presentViewController:obj_AddInquiry animated:YES completion:nil];

    }
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
