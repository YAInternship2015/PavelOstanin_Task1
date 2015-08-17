//
//  TTVUser.h
//  TaskTableView
//
//  Created by Pavel Ostanin on 13/08/2015.
//  Copyright (c) 2015 Pavel Ostanin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#warning Где префикс проекта?
@interface User : NSObject

#warning не стоит показывать в *.h файле свойства с доступом readwrite. Так их значения можно будет изменять извне. В *.h файле из стоит показать как readonly, а в *.m - как readwrite
@property (strong, nonatomic) UIImageView *userImage;
@property (strong, nonatomic) NSString *userName;

#warning в слове With опечатка, также название второй части селектора должно быть с маленькой буквы
- (instancetype)initWhithURL:(NSString *)userImage Name:(NSString *)userName;

@end
