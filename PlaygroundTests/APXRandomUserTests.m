//
//  APXRandomUserTests.m
//  PlaygroundApp
//
//  Created by Raz Elkayam on 6/23/15.
//  Copyright (c) 2015 Appoxee. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "APXRandomUser.h"

@interface APXRandomUserTests : XCTestCase

@end

@implementation APXRandomUserTests

- (NSDictionary *)getDictionary
{
    NSDictionary *keyedValues = @{
                                  @"seed" : @"519657d8cb5bb34504",
                                  @"user" :     @{
                                          @"NINO" : @"WG 92 01 62 P",
                                          @"cell" : @"0786-671-544",
                                          @"dob" : @"320621587",
                                          @"email" : @"victoria.henderson88@example.com",
                                          @"gender" : @"female",
                                          @"location" :         @{
                                                  @"city" : @"newport",
                                                  @"postcode" : @"U4M 2PB",
                                                  @"state" : @"borders",
                                                  @"street" : @"2253 richmond road",
                                                  @"zip" : @"12345"},
            
                                          @"md5" : @"36b393512da08acaf3a3a67782e0ce63",
                                          @"name" :         @{
                                                  @"first" : @"victoria",
                                                  @"last" : @"henderson",
                                                  @"title" : @"mrs"},
                                          @"nationality" : @"GB",
                                          @"password" : @"witch",
                                          @"phone" : @"025 2714 5480",
                                          @"picture" :         @{
                                                  @"large" : @"http://api.randomuser.me/portraits/women/68.jpg",
                                                  @"medium" : @"http://api.randomuser.me/portraits/med/women/68.jpg",
                                                  @"thumbnail" : @"http://api.randomuser.me/portraits/thumb/women/68.jpg"
                                                },
                                          @"registered" : @"1321666341",
                                          @"salt" : @"bz7SYZfd",
                                          @"sha1" : @"9ca3bb02b49d9cf8f4a8774e40e058ac1e131062",
                                          @"sha256" : @"952fd680a5b28770a243159b56635d7da2ccb09f60bf95e91ed8a9bd4c08db74",
                                          @"username" : @"brownpeacock454",
                                          @"version@" : @"0.6"
                                        }
                                  };
    
    return keyedValues;
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testinitialization
{
    APXRandomUser *randomUser = [[APXRandomUser alloc] initWithKeyedValues:[self getDictionary]];
    
    XCTAssertNotNil(randomUser.name.title);
    XCTAssertNotNil(randomUser.name.first);
    XCTAssertNotNil(randomUser.name.last);
    XCTAssertNotNil(randomUser.location.state);
    XCTAssertNotNil(randomUser.location.street);
    XCTAssertNotNil(randomUser.location.city);
    XCTAssertNotNil(randomUser.location.zip);
    XCTAssertNotNil(randomUser.pictures.largeImageURLString);
    XCTAssertNotNil(randomUser.pictures.thumbnailImageURLString);
    XCTAssertNotNil(randomUser.pictures.medimImageURLString);
    XCTAssertNotNil(randomUser.sha256);
    XCTAssertNotNil(randomUser.sha1);
    XCTAssertNotNil(randomUser.salt);
    XCTAssertNotNil(randomUser.md5);
    XCTAssertNotNil(randomUser.uniqeID);
    XCTAssertNotNil(randomUser.phoneCell);
    XCTAssertNotNil(randomUser.phoneLandLine);
    XCTAssertNotNil(randomUser.gender);
    XCTAssertNotNil(randomUser.password);
    XCTAssertNotNil(randomUser.userName);
    XCTAssertNotNil(randomUser.email);
    XCTAssertNil(randomUser.ssn);
    XCTAssertNil(randomUser.version);
    XCTAssertNotNil(randomUser.registerd);
    XCTAssertNotNil(randomUser.dob);
}

- (void)testFormattedStrings
{
    APXRandomUser *randomUser = [[APXRandomUser alloc] initWithKeyedValues:[self getDictionary]];
    
    NSString *formatedName = [randomUser formatedName];
    
    NSString *formatedAddress = [randomUser formatedAddress];
    
    XCTAssert([formatedName isEqualToString:@"mrs victoria henderson"]);
    
    XCTAssert([formatedAddress isEqualToString:@"2253 richmond road\nnewport\nborders\n12345"]);
}

//- (void)testExample {
//    // This is an example of a functional test case.
//    XCTAssert(YES, @"Pass");
//}
//
//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
