//
//  NewsModel.m
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 23.10.2020.
//

#import "NewsModel.h"

@implementation NewsModel
-(instancetype)initWithDictinary:(NSDictionary *)dictinary{
    self = [super init];
    if (self){
        _author = [dictinary valueForKey:@"author"];
        _title = [dictinary valueForKey:@"title"];
        _news_description = [dictinary valueForKey:@"description"];
    }
    
    return self;
}
@end
