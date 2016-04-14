//
//  TutorNoticeListViewController.m
//  VNurture App
//
//  Created by Mehul Panchal on 14/04/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "TutorNoticeListViewController.h"
#import "TutorNoticeDetailViewController.h"

@interface TutorNoticeListViewController ()

@end

@implementation TutorNoticeListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = true;
    _tbl_tutorNoticeList.dataSource=self;
    _tbl_tutorNoticeList.delegate=self;
    my_array=[[NSMutableArray alloc]initWithObjects:@"Notice",nil];

    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return my_array.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    cell= [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text=[my_array objectAtIndex:indexPath.row];
    cell.textLabel.adjustsFontSizeToFitWidth=NO;
    UIFont *myFont = [ UIFont fontWithName: @"Noteworthy" size: 18.0 ];
    cell.textLabel.font  = myFont;
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(cell.frame.origin.x + 250, cell.frame.origin.y, 30, 50);
    [button setTitle:@"Edit" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont fontWithName:@"Noteworthy" size:18.0];
    [button addTarget:self action:@selector(staypressed:) forControlEvents:UIControlEventTouchUpInside];
    [cell.contentView addSubview:button];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}
-(IBAction)staypressed:(id)sender
{
    TutorNoticeDetailViewController *obj_TutorNoticeDetailViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"TutorNoticeDetailViewController"];
    
    [self presentViewController:obj_TutorNoticeDetailViewController animated:YES completion:nil];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return YES if you want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSArray *temp_path = @[indexPath];
        [my_array removeObjectAtIndex:indexPath.row];
        [_tbl_tutorNoticeList deleteRowsAtIndexPaths:temp_path withRowAnimation:YES];
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
