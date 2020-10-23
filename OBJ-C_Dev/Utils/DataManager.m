//
//  DataManager.m
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 23.10.2020.
//

#import "DataManager.h"

@implementation DataManager
+ (instancetype)sharedInstance
{
    static DataManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[DataManager alloc] init];
    });
    return instance;
}


- (void)loadData
{
    
}


@end
