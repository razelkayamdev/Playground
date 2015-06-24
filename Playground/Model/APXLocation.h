//
//  APXLocation.h
//  PlaygroundApp
//
//  Created by Raz Elkayam on 10/15/14.
//  Copyright (c) 2014 Appoxee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APXLocation : NSObject

@property (nonatomic, strong) NSString *state;
@property (nonatomic, strong) NSString *street;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *zip;

- (instancetype)initWithKeyedValues:(NSDictionary *)keyedValues;
- (void)setValuesForKeysWithDictionary:(NSDictionary *)keyedValues;
- (NSDictionary *)dictionaryWithValuesForKeys:(NSArray *)keys;

@end
