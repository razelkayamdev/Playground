//
//  APXLocation.m
//  PlaygroundApp
//
//  Created by Raz Elkayam on 10/15/14.
//  Copyright (c) 2014 Appoxee. All rights reserved.
//

#import "APXLocation.h"

@implementation APXLocation

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
        
        self.state = keyedValues[@"state"];
        self.street = keyedValues[@"street"];
        self.city = keyedValues[@"city"];
        self.zip = keyedValues[@"zip"];
    }
}

- (NSDictionary *)dictionaryWithValuesForKeys:(NSArray *)keys
{
    NSMutableDictionary *keyedValues = [[NSMutableDictionary alloc] initWithCapacity:4];
    
    if (self.state) {
        
        keyedValues[@"state"] = self.state;
    }
    if (self.street) {
        
        keyedValues[@"street"] = self.street;
    }
    if (self.city) {
        
        keyedValues[@"city"] = self.city;
    }
    if (self.zip) {
        
        keyedValues[@"zip"] = self.zip;
    }

    return keyedValues;
}

@end
