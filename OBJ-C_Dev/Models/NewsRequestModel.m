//
//  NewsRequestModel.m
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 23.10.2020.
//

#import "NewsRequestModel.h"


@implementation NewsRequestModel
-(instancetype)initWithDictinary:(NSDictionary *)dictinary{
    
    self = [super init];
    if (self){
        _status = [dictinary valueForKey:@"status"];
        _totalResults = [dictinary valueForKey:@"totalResults"];
        NSMutableArray *tempArray = [[NSMutableArray alloc] init];
        
        for (NSDictionary *value in [dictinary valueForKey:@"articles"]){
            [tempArray addObject:[[NewsModel alloc] initWithDictinary:value]];
        }
        _news = tempArray;
    }
    
    return self;
}
@end
