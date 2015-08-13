//
//  TTVUser.h
//  TaskTableView
//
//  Created by Pavel Ostanin on 13/08/2015.
//  Copyright (c) 2015 Pavel Ostanin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface User : NSObject

@property (strong, nonatomic) UIImageView *userImage;
@property (strong, nonatomic) NSString *userName;

- (instancetype)initWhithURL:(NSString *)userImage Name:(NSString *)userName;

@end
