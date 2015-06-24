//
//  APXName.h
//  PlaygroundApp
//
//  Created by Raz Elkayam on 10/15/14.
//  Copyright (c) 2014 Appoxee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APXName : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *first;
@property (nonatomic, strong) NSString *last;

- (instancetype)initWithKeyedValues:(NSDictionary *)keyedValues;
- (void)setValuesForKeysWithDictionary:(NSDictionary *)keyedValues;
- (NSDictionary *)dictionaryWithValuesForKeys:(NSArray *)keys;

@end
