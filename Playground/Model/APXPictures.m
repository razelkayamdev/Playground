//
//  APXPictures.m
//  PlaygroundApp
//
//  Created by Raz Elkayam on 10/15/14.
//  Copyright (c) 2014 Appoxee. All rights reserved.
//

#import "APXPictures.h"

@implementation APXPictures

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
        
        self.largeImageURLString = keyedValues[@"large"];
        self.medimImageURLString = keyedValues[@"medium"];
        self.thumbnailImageURLString = keyedValues[@"thumbnail"];
    }
}

- (NSDictionary *)dictionaryWithValuesForKeys:(NSArray *)keys
{
    NSMutableDictionary *keyedValues = [[NSMutableDictionary alloc] initWithCapacity:3];
    
    if (self.largeImageURLString){
    
        keyedValues[@"large"] = self.largeImageURLString;
    }
    
    if (self.medimImageURLString) {
        
        keyedValues[@"medium"] = self.medimImageURLString;
    }

    if (self.thumbnailImageURLString) {
        
        keyedValues[@"thumbnail"] = self.thumbnailImageURLString;
    }
    
    return keyedValues;
}

@end
