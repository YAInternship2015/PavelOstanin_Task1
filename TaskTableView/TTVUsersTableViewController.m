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
#warning не нужно хранить во вью контроллере массив, он и так храниться в датасорсе. Нужно зранить датасорс, и то в @property
    NSMutableArray *users;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    TTVDataSource *temp = [[TTVDataSource alloc] init];
#warning создание моделей должно происходить в датасорсе, это не ответственности контроллера
    users = [NSMutableArray arrayWithCapacity:temp.data.count];
    for (int i = 0; i < temp.data.count; i++) {
        users[i] = [[User alloc] initWhithURL:temp.data[i][0] Name:temp.data[i][1]];
    }
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning здесь должно происходить обращение к датасорсу
    return users.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *simpleTableIdentifer = @"Cell";
    TTVUserCell *cell = [self.tableView dequeueReusableCellWithIdentifier:simpleTableIdentifer];
#warning здесь должно происходить обращение к датасорсу
    cell.user = users[indexPath.row];
    return cell;
}

@end
