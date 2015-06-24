//
//  APXRandomUser.m
//  PlaygroundApp
//
//  Created by Raz Elkayam on 10/15/14.
//  Copyright (c) 2014 Appoxee. All rights reserved.
//

#import "APXRandomUser.h"

@implementation APXRandomUser

#pragma mark - Initialization

- (instancetype)initWithKeyedValues:(NSDictionary *)keyedValues
{
    self = [super init];
    
    if (self) {
        
        [self setValuesForKeysWithDictionary:keyedValues];
    }
    
    return self;
}

#pragma mark - Keyed Values

- (void)setValuesForKeysWithDictionary:(NSDictionary *)keyedValues
{
    if (keyedValues) {
        
        self.uniqeID = keyedValues[@"seed"];
        
        NSDictionary *innerKeyes = keyedValues[@"user"];
        
        if (innerKeyes) {
            
            self.sha256 = innerKeyes[@"sha256"];
            self.phoneCell = innerKeyes[@"cell"];
            self.phoneLandLine = innerKeyes[@"phone"];
            self.sha1 = innerKeyes[@"sha1"];
            self.ssn = innerKeyes[@"SSN"];
            self.registerd = innerKeyes[@"registered"];
            self.dob = innerKeyes[@"dob"];
            self.password = innerKeyes[@"password"];
            self.userName = innerKeyes[@"username"];
            self.email = innerKeyes[@"email"];
            self.gender = innerKeyes[@"gender"];
            self.salt = innerKeyes[@"salt"];
            self.md5 = innerKeyes[@"md5"];
            self.version = innerKeyes[@"version"];
            self.location = [[APXLocation alloc] initWithKeyedValues:innerKeyes[@"location"]];
            self.pictures = [[APXPictures alloc] initWithKeyedValues:innerKeyes[@"picture"]];
            self.name = [[APXName alloc] initWithKeyedValues:innerKeyes[@"name"]];
        }
    }
}

- (NSDictionary *)dictionaryWithValuesForKeys:(NSArray *)keys
{
    NSMutableDictionary *keyedValues = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary *innerKeyes = [[NSMutableDictionary alloc] init];
    
    if (self.sha256) {
        
        innerKeyes[@"sha256"] = self.sha256;
    }
    
    if (self.phoneCell) {
        
        innerKeyes[@"cell"] = self.phoneCell;
    }
    
    if (self.phoneLandLine) {
        
        innerKeyes[@"phone"] = self.phoneLandLine;
    }
    
    if (self.sha1) {
        
        innerKeyes[@"sha1"] = self.sha1;
    }
    
    if (self.ssn) {
        
        innerKeyes[@"SSN"] = self.ssn;
    }
    
    if (self.registerd) {
        
        innerKeyes[@"registered"] = self.registerd;
    }
    
    if (self.dob) {
        
        innerKeyes[@"dob"] = self.dob;
    }
    
    if (self.password) {
        
        innerKeyes[@"password"] = self.password;
    }
    
    if (self.userName) {
        
        innerKeyes[@"username"] = self.userName;
    }
    
    if (self.email) {
        
        innerKeyes[@"email"] = self.email;
    }
    
    if (self.gender) {
        
        innerKeyes[@"gender"] = self.gender;
    }
    
    if (self.salt) {
        
        innerKeyes[@"salt"] = self.salt;
    }
    
    if (self.md5) {
        
        innerKeyes[@"md5"] = self.md5;
    }
    
    if (self.version) {
        
        innerKeyes[@"version"] = self.version;
    }
    
    if (self.location) {
        
        innerKeyes[@"location"] = [self.location dictionaryWithValuesForKeys:nil];
    }
    
    if (self.name) {
        
        innerKeyes[@"name"] = [self.name dictionaryWithValuesForKeys:nil];
    }
    
    if (self.pictures) {
        
        innerKeyes[@"picture"] = [self.pictures dictionaryWithValuesForKeys:nil];
    }
    
    
    return keyedValues;
}

#pragma mark - Formating

- (NSString *)formatedName
{
    return [NSString stringWithFormat:@"%@ %@ %@", self.name.title, self.name.first, self.name.last];
}

- (NSString *)formatedAddress
{
    return [NSString stringWithFormat:@"%@\n%@\n%@\n%@", self.location.street, self.location.city, self.location.state, self.location.zip];
}

@end
