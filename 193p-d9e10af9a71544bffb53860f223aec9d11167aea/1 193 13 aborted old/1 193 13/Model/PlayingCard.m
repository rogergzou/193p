//
//  PlayingCard.m
//  1 193 13
//
//  Created by Roger on 11/27/13.
//  Copyright (c) 2013 fleija. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard


@synthesize suit = _suit;

-(int)match:(NSArray *)otherCards
{
    int score = 0;
    if ([otherCards count])
    {
        for (PlayingCard *otherCard in otherCards)
        {
            if (otherCard.rank == self.rank)
            {
                score += 4;
            } else if ([otherCard.suit isEqualToString:self.suit])
            {
                score += 1;
            } /*else {
                //score = 0;
                return 0; //cuz no match
            }
            */
        }
        if (score != [otherCards count] && score != [otherCards count] * 4)
        {
            //score = 0; diff matches
            return 0;
        }
    }
   
    return score;
}

-(NSString *)contents
{
    NSArray *rankStrings = [PlayingCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}


- (void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits] containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString *)suit
{
    return _suit ? _suit : @"?";
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

+ (NSArray *)validSuits
{
    return @[@"♥", @"♦", @"♠", @"♣"];
}

+ (NSArray *)rankStrings
{
    return @[@"?", @"A", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"10", @"J", @"Q", @"K"];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count] - 1;
}


@end
