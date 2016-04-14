//
//  StudentLayout.m
//  VNurture App
//
//  Created by Prachi on 04/04/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "StudentLayout.h"
#import "EditStudentDetail.h"
@interface StudentLayout ()

@end

@implementation StudentLayout

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = true;
    self.student_table.dataSource=self;
    _student_table.delegate=self;
    my_array=[[NSMutableArray alloc]initWithObjects:@"Prachi",@"Kruti",@"Monika",@"Dharati" ,@"Karan",nil];
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
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    //cell.textLabel.font=[UIFont fontNamesForFamilyName:@"Noteworthy"];
    cell.textLabel.adjustsFontSizeToFitWidth=NO;
    UIFont *myFont = [ UIFont fontWithName: @"Noteworthy" size: 18.0 ];
    cell.textLabel.font  = myFont;
    cell.textLabel.text=[my_array objectAtIndex:indexPath.row];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(cell.frame.origin.x + 250, cell.frame.origin.y, 30, 50);
    [button setTitle:@"Edit" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont fontWithName:@"Noteworthy" size:18.0];
      [button addTarget:self action:@selector(staypressed:) forControlEvents:UIControlEventTouchUpInside];
   // button.tintColor=[UIColor whiteColor];
   // button.backgroundColor= [UIColor orangeColor];
    [cell.contentView addSubview:button];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
}
-(IBAction)staypressed:(id)sender
{
    EditStudentDetail *obj_EditStudentDetail = [self.storyboard instantiateViewControllerWithIdentifier:@"EditStudentDetail"];
    
    [self presentViewController:obj_EditStudentDetail animated:YES completion:nil];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        NSArray *temp_path = @[indexPath];
        //[_student_table beginUpdates];
        [my_array removeObjectAtIndex:indexPath.row];

        [self.student_table deleteRowsAtIndexPaths:temp_path withRowAnimation:YES];
                //[_student_table endUpdates];
       // [_student_table reloadData];
    }
}

@end


