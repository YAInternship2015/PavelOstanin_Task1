//
//  TTVDataSource.h
//  TaskTableView
//
//  Created by Pavel Ostanin on 13/08/2015.
//  Copyright (c) 2015 Pavel Ostanin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTVDataSource : NSObject

#warning Также не стоит в *.h показывать массив readwrite, тогда его можно менять извне. И вообще, вам здесь нет необходимости показывать массив наружу, это детали внутренней реализации. Вам необходимо показывать минимальный интерфейс, который необходим другим классам для работы с данным классом. Вью контроллеру всего лишь необходимо знать, сколько всего ячеек у него в таблице должно быть и какая модель должны быть в ячейке с конкретным индексом.  То есть необходимо реализовать методы вроде numberOfItems и itemAtIndex.

@property (strong, nonatomic) NSArray *data;
@end
