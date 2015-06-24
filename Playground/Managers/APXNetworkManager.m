//
//  APXNetworkManager.m
//  PlaygroundApp
//
//  Created by Raz Elkayam on 6/24/15.
//  Copyright (c) 2015 Appoxee. All rights reserved.
//

#import "APXNetworkManager.h"

#define BASE_URL @"http://api.randomuser.me/"

@implementation APXNetworkManager

+ (void)fetchRandomUser:(completionBlock)completionBlock;
{
    NSString *url = BASE_URL;
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    
    NSURLSession *sharedSession = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [sharedSession dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        
        dispatch_sync(dispatch_get_main_queue(), ^{
            
            if (!error) {
                
                if (completionBlock) {
                    
                    NSError *error;
                    
                    id jsonData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:&error];
                    
                    completionBlock(YES, jsonData);
                }
                
            } else {
                
                if (completionBlock) {
                    
                    completionBlock(NO, nil);
                }
            }
            
        });
    }];
    
    [dataTask resume];
}


@end
