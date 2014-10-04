//
//  photoTableViewController.m
//  sample2
//
//  Created by Remilekun Awe on 10/1/14.
//  Copyright (c) 2014 Remilekun Awe. All rights reserved.
//

#import "photoTableViewController.h"

@interface photoTableViewController (){
    NSMutableArray *photos;
    
}

@end

@implementation photoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Create Array
    
    photos = [[NSMutableArray alloc]init];
    Photos *pic = [[Photos alloc]init];
    pic.name = @"Wheel Chair";
    pic.filename = @"wheelchair";
    pic.notes = @"It is of the best quality";
    [photos addObject:pic];
    
    pic = [[Photos alloc]init];
    pic.name = @"Hospital Bed";
    pic.filename = @"hospitalbed";
    pic.notes = @"It comes in different sizes too!";
    
    [photos addObject:pic];
    
    pic = [[Photos alloc] init];
    pic.name = @"Ambulatory Aids";
    pic.filename = @"ambulatoryaids";
    pic.notes = @"It is very affordable";
    
    [photos addObject:pic];
    
    pic = [[Photos alloc]init];
    pic.name = @"Blood Pressure Monitor";
    pic.filename = @"bloodpressure";
    pic.notes = @"A mobile very easy and convienent way to check your blood pressure";
    
    [photos addObject:pic];
    
    pic = [[Photos alloc]init];
    pic.name = @"Scooter";
    pic.filename = @"scooter";
    pic.notes = @"for a price that fits your budget!";
    
    [photos addObject:pic];
    
    pic = [[Photos alloc]init];
    pic.name = @"HaloMist and HaloSpray";
    pic.filename = @"halomistandhalospray";
    pic.notes = @"HaloMist™ and HaloSpray™ are EPA validated and patented hydrogen peroxide-based disinfectant for use on hard, pre-cleaned, non-porous, non-food contact surfaces";
    
    [photos addObject:pic];
    
    pic = [[Photos alloc]init];
    pic.name = @"Halo Disinfection";
    pic.filename = @"halodisinfection";
    pic.notes = @"It is innocuous to human health and environmentally friendly. It can be used to decontaminate rooms as well as medical equipments and medical transport vehicles.";
    
    [photos addObject:pic];
    
    
    
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
};

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return photos.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellidentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellidentifier forIndexPath:indexPath];
    
    // Configure the cell...
    Photos *current = [photos objectAtIndex:indexPath.row];
    cell.textLabel.text = [current name];
    
    
return cell;

}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    DisplayViewController *pvc = [segue destinationViewController];
    
    // Pass the selected object to the new view controller.
    
    // Figure out which one is selected cell.
    
    NSIndexPath * path = [ self.tableView indexPathForSelectedRow];
    Photos *c = photos [path.row];
    [pvc setCurrentphoto:c];
}


@end
