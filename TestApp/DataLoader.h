//
//  DataLoader.h
//  TestApp
//
//  Created by Oleg Melnik on 28.10.14.
//  Copyright (c) 2014 Oleg Melnik. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataLoader : NSObject

+ (DataLoader *)sharedInstance;
-(NSString *)getDataStringFromUrl:(NSString*)url;

@end
