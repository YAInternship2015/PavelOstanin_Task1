//
//  TTVUser.m
//  TaskTableView
//
//  Created by Pavel Ostanin on 13/08/2015.
//  Copyright (c) 2015 Pavel Ostanin. All rights reserved.
//

#import "TTVUser.h"

@implementation User
- (instancetype)initWhithURL:(NSString *)userImage Name:(NSString *)userName {
    self = [super init];
    if (self) {
        self.userImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:userImage]];
        self.userName = userName;
    }
    return self;
}

@end

