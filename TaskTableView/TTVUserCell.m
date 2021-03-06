//
//  TTVUserCell.m
//  TaskTableView
//
//  Created by Pavel Ostanin on 13/08/2015.
//  Copyright (c) 2015 Pavel Ostanin. All rights reserved.
//

#import "TTVUserCell.h"

@interface TTVUserCell ()

@property (weak, nonatomic) IBOutlet UIImageView *userImageView;
@property (weak, nonatomic) IBOutlet UILabel *userNameLabel;

@end

@implementation TTVUserCell

- (void)setUser:(User *)user {
    _user = user;
    [self setUpData];
}

- (void)setUpData {
    self.userImageView.image = self.user.userImage.image;
    self.userNameLabel.text = self.user.userName;
}

@end
