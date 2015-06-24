//
//  APXPictures.h
//  PlaygroundApp
//
//  Created by Raz Elkayam on 10/15/14.
//  Copyright (c) 2014 Appoxee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APXPictures : NSObject

@property (nonatomic, strong) NSString *largeImageURLString;
@property (nonatomic, strong) NSString *thumbnailImageURLString;
@property (nonatomic, strong) NSString *medimImageURLString;

- (instancetype)initWithKeyedValues:(NSDictionary *)keyedValues;
- (void)setValuesForKeysWithDictionary:(NSDictionary *)keyedValues;
- (NSDictionary *)dictionaryWithValuesForKeys:(NSArray *)keys;

@end
