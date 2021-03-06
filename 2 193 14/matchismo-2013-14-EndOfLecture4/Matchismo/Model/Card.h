//
//  Card.h
//  Matchismo
//
//  Created by Roger Zou on 05.26.14.
//  Copyright (c) 2013 m2m server software gmbh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end
