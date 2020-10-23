//
//  NewsRequestModel.h
//  OBJ-C_Dev
//
//  Created by Даниил Мурыгин on 23.10.2020.
//

#import <Foundation/Foundation.h>
#import "NewsModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface NewsRequestModel : NSObject
@property (nonatomic,strong) NSString *status;
@property (nonatomic,strong) NSString *totalResults;
@property (nonatomic,strong) NSArray<NewsModel *> *news;

-(instancetype)initWithDictinary:(NSDictionary *)dictinary;
@end

NS_ASSUME_NONNULL_END
