//
//  TTVUsersTableViewController.m
//  TaskTableView
//
//  Created by Pavel Ostanin on 13/08/2015.
//  Copyright (c) 2015 Pavel Ostanin. All rights reserved.
//

#import "TTVUsersTableViewController.h"
#import "TTVUserCell.h"
#import "TTVDataSource.h"
#import "TTVUser.h"

@interface TTVUsersTableViewController ()

@end

@implementation TTVUsersTableViewController{
    NSMutableArray *users;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    TTVDataSource *temp = [[TTVDataSource alloc] init];
    users = [NSMutableArray arrayWithCapacity:temp.data.count];
    for (int i = 0; i < temp.data.count; i++) {
        users[i] = [[User alloc] initWhithURL:temp.data[i][0] Name:temp.data[i][1]];
    }
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return users.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifer = @"Cell";
    TTVUserCell *cell = [self.tableView dequeueReusableCellWithIdentifier:simpleTableIdentifer];
    cell.user = users[indexPath.row];
    return cell;
}

@end
