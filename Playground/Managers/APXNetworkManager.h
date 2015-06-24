//
//  APXNetworkManager.h
//  PlaygroundApp
//
//  Created by Raz Elkayam on 6/24/15.
//  Copyright (c) 2015 Appoxee. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^completionBlock)(BOOL success, id data);

@interface APXNetworkManager : NSObject

+ (void)fetchRandomUser:(completionBlock)completionBlock;

//[APXNetworkManager fetchRandomUser:^(BOOL success, id data) {
//
//    NSData *d = [NSJSONSerialization dataWithJSONObject:data options:NSJSONWritingPrettyPrinted error:nil];
//
//    NSLog(@"%@", [[NSString alloc] initWithData:d encoding:NSUTF8StringEncoding]);
//}];

@end
