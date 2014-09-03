//
//  Historylog.h
//  BNLogic Live
//
//  Created by Chuan Xiang dong on 2014-05-16.
//  Copyright (c) 2014 Chuan Xiang dong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Historylog : NSManagedObject

@property (nonatomic, retain) NSString * host;
@property (nonatomic, retain) NSString * recDomain;
@property (nonatomic, retain) NSNumber * score;
@property (nonatomic, retain) NSString * sendDomain;
@property (nonatomic, retain) NSString * subject;
@property (nonatomic, retain) NSNumber * total;

@end
