//
//  InquiryLayout.m
//  VNurture App
//
//  Created by Prachi on 04/04/16.
//  Copyright (c) 2016 Appuno IT Solutions. All rights reserved.
//

#import "InquiryLayout.h"

@interface InquiryLayout ()

@end

@implementation InquiryLayout

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = true;
    _inquiry_table.dataSource=self;
    _inquiry_table.delegate=self;
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
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.textLabel.text=[my_array objectAtIndex:indexPath.row];cell.textLabel.adjustsFontSizeToFitWidth=NO;
    UIFont *myFont = [ UIFont fontWithName: @"Noteworthy" size: 18.0 ];
    cell.textLabel.font  = myFont;
    cell.textLabel.text=[my_array objectAtIndex:indexPath.row];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
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
        //[_student_table beginUpdates];
        [my_array removeObjectAtIndex:indexPath.row];
        
        [self.inquiry_table deleteRowsAtIndexPaths:temp_path withRowAnimation:YES];

    }
}

@end
