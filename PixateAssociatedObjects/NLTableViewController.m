//
//  NLTableViewController.m
//  
//
//  Created by Nikita Leonov on 6/21/14.
//
//

#import "NLTableViewController.h"
#import <ReactiveCocoa/ReactiveCocoa.h>

@implementation NLTableViewController

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];

    [cell.rac_prepareForReuseSignal subscribeNext:^(id x) {
        NSLog(@"prepare for reuse called");
    }];
    
    return cell;
}

@end
