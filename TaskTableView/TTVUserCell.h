//
//  TTVUserCell.h
//  TaskTableView
//
//  Created by Pavel Ostanin on 13/08/2015.
//  Copyright (c) 2015 Pavel Ostanin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TTVUser.h"

@interface TTVUserCell : UITableViewCell

#warning это вообще лишнее. Достаточно создать отдельный метод вроде setupWithUser: и все
@property (strong, nonatomic) User *user;

@end
