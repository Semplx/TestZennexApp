//
//  DataLoader.m
//  TestApp
//
//  Created by Oleg Melnik on 28.10.14.
//  Copyright (c) 2014 Oleg Melnik. All rights reserved.
//

#import "DataLoader.h"

@implementation DataLoader

+ (DataLoader *)sharedInstance {
    static dispatch_once_t predicate;
    static DataLoader *sharedInstance = nil;
    dispatch_once(&predicate, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (NSString *)getDataStringFromUrl:(NSString *)url {

}

@end
