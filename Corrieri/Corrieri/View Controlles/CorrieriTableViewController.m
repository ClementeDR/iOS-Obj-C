//
//  CorrieriTableViewController.m
//  Corrieri
//
//  Created by Clemente Di Rosa on 13/02/2017.
//  Copyright © 2017 Clemente Di Rosa. All rights reserved.
//

#import "CorrieriTableViewController.h"

@interface CorrieriTableViewController () {
    NSMutableArray<Corriere*> *arrayCorrieri;
    NSInteger selectedRow;
}

@end

@implementation CorrieriTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    arrayCorrieri = [_delegate CorrieriTableViewFetchResults];
    
}

-(void)viewDidAppear:(BOOL)animated{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath {
    
    selectedRow = indexPath.row;

    PacchiTableViewController *pacchiTableViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PacchiTableViewController"];
    
    pacchiTableViewController.delegate = self;
    
    [self.navigationController pushViewController:pacchiTableViewController animated:true];
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrayCorrieri.count;

}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //CorriereCell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CorriereCell" forIndexPath:indexPath];
    
    [cell.textLabel setText:arrayCorrieri[indexPath.row].identifier];
    
    [cell.imageView setImage:[UIImage imageNamed:@"corriereIcon"]];
    
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


#pragma Mark - PC
-(Corriere*)PacchiTableViewFetchResults
{
    return arrayCorrieri[selectedRow];
}

@end
