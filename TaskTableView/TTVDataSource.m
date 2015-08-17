//
//  TTVDataSource.m
//  TaskTableView
//
//  Created by Pavel Ostanin on 13/08/2015.
//  Copyright (c) 2015 Pavel Ostanin. All rights reserved.
//

#import "TTVDataSource.h"

@implementation TTVDataSource
#warning перед init не нужен пробел
- (instancetype) init {
    self = [super init];
    if (self) {
        _data = @[@[@"images-1", @"Jacob"],
                  @[@"images-2", @"Michael"],
                  @[@"images-3", @"Joshua"],
                  @[@"images-4", @"Matthew"],
                  @[@"images-5", @"Andrew"],
                  @[@"images-6", @"Daniel"],
                  @[@"images-7", @"William"],
                  @[@"images-8", @"Joseph"],
                  @[@"images-9", @"Ryan"],
                  @[@"images-10", @"David"]];
    }
    return self;
}
@end
