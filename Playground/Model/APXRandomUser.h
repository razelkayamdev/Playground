//
//  APXRandomUser.h
//  PlaygroundApp
//
//  Created by Raz Elkayam on 10/15/14.
//  Copyright (c) 2014 Appoxee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "APXName.h"
#import "APXLocation.h"
#import "APXPictures.h"

@interface APXRandomUser : NSObject

@property (nonatomic, strong) APXName *name;
@property (nonatomic, strong) APXLocation *location;
@property (nonatomic, strong) APXPictures *pictures;
@property (nonatomic, strong) NSString *sha256;
@property (nonatomic, strong) NSString *sha1;
@property (nonatomic, strong) NSString *salt;
@property (nonatomic, strong) NSString *md5;
@property (nonatomic, strong) NSString *uniqeID;
@property (nonatomic, strong) NSString *phoneCell;
@property (nonatomic, strong) NSString *phoneLandLine;
@property (nonatomic, strong) NSString *gender;
@property (nonatomic, strong) NSString *password;
@property (nonatomic, strong) NSString *userName;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, strong) NSString *ssn;
@property (nonatomic, strong) NSString *version;
@property (nonatomic, strong) NSString *registerd;
@property (nonatomic, strong) NSString *dob;

- (instancetype)initWithKeyedValues:(NSDictionary *)keyedValues;
- (void)setValuesForKeysWithDictionary:(NSDictionary *)keyedValues;
- (NSDictionary *)dictionaryWithValuesForKeys:(NSArray *)keys;

- (NSString *)formatedName;
- (NSString *)formatedAddress;


@end
