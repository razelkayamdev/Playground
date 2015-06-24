//
//  APXName.m
//  PlaygroundApp
//
//  Created by Raz Elkayam on 10/15/14.
//  Copyright (c) 2014 Appoxee. All rights reserved.
//

#import "APXName.h"

@implementation APXName

- (instancetype)initWithKeyedValues:(NSDictionary *)keyedValues
{
    self = [super init];
    
    if (self) {
    
        [self setValuesForKeysWithDictionary:keyedValues];
    }
    
    return self;
}

- (void)setValuesForKeysWithDictionary:(NSDictionary *)keyedValues
{
    if (keyedValues) {
        
        self.title = keyedValues[@"title"];
        self.first = keyedValues[@"first"];
        self.last = keyedValues[@"last"];
        
    }
}

- (NSDictionary *)dictionaryWithValuesForKeys:(NSArray *)keys
{
    NSMutableDictionary *keyedValues = [[NSMutableDictionary alloc] initWithCapacity:3];
    
    if (self.title) {
        
        keyedValues[@"title"] = self.title;
    }
    
    if (self.first) {
        
        keyedValues[@"first"] = self.first;
    }
    
    if (self.last) {
        
        keyedValues[@"last"] = self.last;
    }
    
    return keyedValues;
}

@end
