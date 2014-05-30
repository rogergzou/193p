//
//  SetCardDeck.m
//  1 193 13
//
//  Created by Roger on 12/21/13.
//  Copyright (c) 2013 fleija. All rights reserved.
//

#import "SetCardDeck.h"
#import "SetCard.h"

@implementation SetCardDeck

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        for (NSString *symbol in [SetCard validSymbols])
        {
            for (NSString *shading in [SetCard validShadings])
            {
                for (NSString *color in [SetCard validColors])
                {
                    for (NSNumber *number in [SetCard validNumbers])
                    {
                        SetCard *card = [[SetCard alloc]init];
                        card.symbol = symbol;
                        card.shading = shading;
                        card.color = color;
                        card.number = [number integerValue];
                        [self addCard:card];
                    }
                }
            }
        }
    }
    
    return self;
}


@end
